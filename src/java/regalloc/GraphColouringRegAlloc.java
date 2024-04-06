package regalloc;

import gen.asm.*;
import gen.asm.AssemblyProgram.Section;
import gen.asm.Instruction.*;
import gen.asm.Register.Arch;
import gen.asm.Register.Virtual;

import java.util.*;
import java.util.stream.Collectors;
import java.io.*;

public final class GraphColouringRegAlloc implements AssemblyPass {

    public static final GraphColouringRegAlloc INSTANCE = new GraphColouringRegAlloc();

    public static int dotOutputIndex = 0;

    public final static List<Arch> archRegisters = new ArrayList<Arch>(
            Arrays.asList(Arch.t0, Arch.t1, Arch.t2, Arch.t3, Arch.t4,
                    Arch.t5, Arch.t6, Arch.t7, Arch.t8, Arch.t9, Arch.s0, Arch.s1, Arch.s2, Arch.s3, Arch.s4, Arch.s5));

    public final static List<Arch> spillArchRegs = new ArrayList<Arch>(Arrays.asList(Arch.s6, Arch.s7));

    @Override
    public AssemblyProgram apply(AssemblyProgram program) {

        AssemblyProgram newProg = run(program);

        return newProg;
    }

    private AssemblyProgram run(AssemblyProgram program) {

        AssemblyProgram newProg = new AssemblyProgram();

        // we assume that each function has a single corresponding text section
        program.sections.forEach(section -> {
            switch (section.type) {
                case Section.Type.DATA:
                    newProg.emitSection(section);
                    break;

                case Section.Type.TEXT:

                    final Map<Register, Register> vrToAr;

                    final Map<Register.Virtual, Label> spilledRegToLabel;

                    ControlFlowGraph controlFlowGraph = constructControlFlowGraph(section);

                    livenessAnalysis(controlFlowGraph);

                    InterferenceGraph interferenceGraph = constructInterferenceGraph(controlFlowGraph);

                    vrToAr = mapVirtualToArchReg(interferenceGraph, controlFlowGraph);

                    spilledRegToLabel = mapSpilledRegToLabel(interferenceGraph);

                    if (spilledRegToLabel.size() > 0) {
                        final Section dataSection = newProg.newSection(AssemblyProgram.Section.Type.DATA);
                        spilledRegToLabel.forEach((sr, lbl) -> {
                            dataSection.emit("Allocated label for a spilled register");
                            dataSection.emit(lbl);
                            dataSection.emit(new Directive("space " + 4));
                        });
                    }

                    final Section textSection = newProg.newSection(AssemblyProgram.Section.Type.TEXT);

                    List<Register.Virtual> registersToPush = new ArrayList<Register.Virtual>();

                    for (AssemblyItem item : section.items) {
                        switch (item) {
                            case Comment comment -> textSection.emit(comment);
                            case Label label -> textSection.emit(label);
                            case Directive directive -> textSection.emit(directive);
                            case Instruction insn -> {
                                if (insn == Instruction.Nullary.pushRegisters) {
                                    textSection.emit("Original instruction: pushRegisters");

                                    registersToPush = getModifiedRegisters(controlFlowGraph);

                                    for (Register reg : registersToPush) {

                                        List<Register> spilledRegisters = interferenceGraph.getSpilledRegisters()
                                                .stream()
                                                .map(RegisterNode::getVirtualRegister)
                                                .collect(Collectors.toList());

                                        if (spilledRegisters.contains(reg)) {
                                            Label l = spilledRegToLabel.get(reg);
                                            textSection.emit(OpCode.LA, Register.Arch.s6, l);
                                            textSection.emit(OpCode.LW, Register.Arch.s6, Register.Arch.s6, 0);

                                            textSection.emit(OpCode.ADDI, Register.Arch.sp, Register.Arch.sp, -4);
                                            textSection.emit(OpCode.SW, Register.Arch.s6, Register.Arch.sp, 0);
                                        } else {
                                            Register arch = vrToAr.get(reg);
                                            textSection.emit(OpCode.ADDI, Register.Arch.sp, Register.Arch.sp, -4);
                                            textSection.emit(OpCode.SW, arch, Register.Arch.sp, 0);
                                        }

                                    }

                                } else if (insn == Instruction.Nullary.popRegisters) {
                                    textSection.emit("Original instruction: popRegisters");
                                    List<Register.Virtual> registersToPop = registersToPush.reversed();

                                    for (Register reg : registersToPop) {

                                        List<Register> spilledRegisters = interferenceGraph.getSpilledRegisters()
                                                .stream()
                                                .map(RegisterNode::getVirtualRegister)
                                                .collect(Collectors.toList());

                                        if (spilledRegisters.contains(reg)) {
                                            Label l = spilledRegToLabel.get(reg);

                                            textSection.emit(OpCode.LW, Register.Arch.s6, Register.Arch.sp, 0);
                                            textSection.emit(OpCode.ADDI, Register.Arch.sp, Register.Arch.sp, 4);

                                            textSection.emit(OpCode.LA, Register.Arch.s7, l);
                                            textSection.emit(OpCode.SW, Register.Arch.s6, Register.Arch.s7, 0);
                                        } else {
                                            Register arch = vrToAr.get(reg);
                                            textSection.emit(OpCode.LW, arch, Register.Arch.sp, 0);
                                            textSection.emit(OpCode.ADDI, Register.Arch.sp, Register.Arch.sp, 4);
                                        }
                                    }
                                } else {
                                    emitInstructionWithoutVirtualRegister(interferenceGraph, insn, vrToAr,
                                            spilledRegToLabel, textSection);
                                }

                            }
                        }
                    }

                    break;
            }
        });

        return newProg;
    }

    private List<Virtual> getModifiedRegisters(ControlFlowGraph controlFlowGraph) {

        List<Virtual> registers = new ArrayList<>();
        for (Node node : controlFlowGraph.getNodes()) {
            Register def = node.getInsn().def();
            if (def != null && def.isVirtual()) {
                registers.add((Virtual) def);
            }
        }

        return registers;
    }

    private void emitInstructionWithoutVirtualRegister(InterferenceGraph interferenceGraph, Instruction insn,
            Map<Register, Register> vrToAr, Map<Register.Virtual, Label> spilledRegToLabel,
            Section section) {

        Map<Register, Register> tempVrToAr = new HashMap<>(vrToAr);
        Stack<Arch> spillRegStack = new Stack<Arch>();
        spillRegStack.addAll(spillArchRegs);

        Register defReg = insn.def();
        List<Register> uses = insn.uses();

        section.emit("Original instruction: " + insn);

        for (Register reg : uses) {
            if (reg.isVirtual() && spilledRegToLabel.containsKey(reg)) {
                Arch tmp = spillRegStack.pop();
                interferenceGraph.getRegisterNodeByRegister(reg).setArchRegister(tmp);
                tempVrToAr.put(reg, tmp);
            }
        }

        spillRegStack = new Stack<Arch>();
        spillRegStack.addAll(spillArchRegs);

        if (defReg != null && defReg.isVirtual() && spilledRegToLabel.containsKey(defReg)) {
            Arch tmp = spillRegStack.pop();
            interferenceGraph.getRegisterNodeByRegister(defReg).setArchRegister(tmp);
            tempVrToAr.put(defReg, tmp);
        }

        for (Register reg : uses) {
            if (reg.isVirtual() && spilledRegToLabel.containsKey(reg)) {
                Register tmp = tempVrToAr.get(reg);
                Label label = spilledRegToLabel.get(reg);
                section.emit(OpCode.LA, tmp, label);
                section.emit(OpCode.LW, tmp, tmp, 0);
            }
        }

        section.emit(insn.rebuild(tempVrToAr));

        if (defReg != null && defReg.isVirtual() && spilledRegToLabel.containsKey(defReg)) {

            Register tmpVal = tempVrToAr.get(defReg);
            Register tmpAddr = spillRegStack.pop();
            Label label = spilledRegToLabel.get(defReg);

            section.emit(OpCode.LA, tmpAddr, label);
            section.emit(OpCode.SW, tmpVal, tmpAddr, 0);
        }
    }

    private Map<Register.Virtual, Label> mapSpilledRegToLabel(InterferenceGraph interferenceGraph) {

        Map<Register.Virtual, Label> spilledRegToLabel = new HashMap<>();
        List<RegisterNode> spilledRegisters = interferenceGraph.getSpilledRegisters();

        for (RegisterNode node : spilledRegisters) {
            Register.Virtual vr = node.getVirtualRegister();
            Label l = Label.create(vr.toString());
            spilledRegToLabel.put(vr, l);
        }

        return spilledRegToLabel;
    }

    private ControlFlowGraph constructControlFlowGraph(Section section) {

        ControlFlowGraph controlFlowGraph = new ControlFlowGraph();

        List<Label> prevLabels = new ArrayList<>();
        Node prevNode = null;
        int nodeId = 0;
        boolean hasSuccessor = true;

        for (AssemblyItem item : section.items) {
            switch (item) {
                case Label label -> {
                    prevLabels.add(label);
                }
                case Instruction insn -> {

                    Node node = new Node(insn, nodeId++);

                    if (prevLabels.size() > 0) {
                        for (Label l : prevLabels) {
                            controlFlowGraph.addLabelNodePair(l, node);
                        }
                        prevLabels.clear();
                    }

                    if (prevNode != null && hasSuccessor) {
                        prevNode.addSuccessor(node);
                    }

                    if (insn.opcode.mnemonic.equals("b")) {
                        hasSuccessor = false;
                    } else {
                        hasSuccessor = true;
                    }

                    controlFlowGraph.addNode(node);
                    prevNode = node;
                }
                default -> {

                }
            }
        }

        nodeId = 0;

        for (AssemblyItem item : section.items) {
            switch (item) {

                case Instruction insn -> {
                    switch (insn) {
                        case BinaryBranch bb -> {
                            Node targetNode = controlFlowGraph.getNodeByLabel(bb.label);
                            Node branchNode = controlFlowGraph.getNodes().get(nodeId);
                            branchNode.addSuccessor(targetNode);
                        }
                        case UnaryBranch ub -> {
                            Node targetNode = controlFlowGraph.getNodeByLabel(ub.label);
                            Node branchNode = controlFlowGraph.getNodes().get(nodeId);
                            branchNode.addSuccessor(targetNode);
                        }
                        case Jump j -> {
                            if (j.opcode.mnemonic.equals("b")) {
                                Node targetNode = controlFlowGraph.getNodeByLabel(j.label);
                                Node branchNode = controlFlowGraph.getNodes().get(nodeId);
                                branchNode.addSuccessor(targetNode);
                            }
                        }
                        default -> {
                        }
                    }

                    nodeId++;
                }
                default -> {
                    break;
                }
            }
        }

        return controlFlowGraph;

    }

    private void livenessAnalysis(ControlFlowGraph controlFlowGraph) {

        while (true) {
            for (Node node : controlFlowGraph.getNodes().reversed()) {
                node.setPrevLiveIn(node.getLiveIn());
                node.setPrevLiveOut(node.getLiveOut());

                Set<Register.Virtual> successorLiveInUnion = new HashSet<Register.Virtual>();

                for (Node successor : node.getSuccessors()) {
                    successorLiveInUnion.addAll(successor.getLiveIn());
                }

                node.setLiveOut(successorLiveInUnion);

                Set<Register.Virtual> liveIn = new HashSet<Register.Virtual>();
                liveIn.addAll(filterVirtualRegisters(node.getInsn().uses()));

                Set<Register.Virtual> liveOutDiffDef = new HashSet<Register.Virtual>(node.getLiveOut());

                Register defRegister = node.getInsn().def();
                if (defRegister != null && defRegister.isVirtual()) {
                    liveOutDiffDef.remove(defRegister);
                }

                liveIn.addAll(liveOutDiffDef);

                node.setLiveIn(liveIn);

            }

            if (fixedPointReached(controlFlowGraph)) {
                break;
            }
        }

        for (Node node : controlFlowGraph.getNodes()) {
            Register defRegister = node.getInsn().def();
            if (defRegister != null && defRegister.isVirtual() && !node.getLiveOut().contains(defRegister)
                    && !isRegisterUsed(defRegister, controlFlowGraph)) {
                node.addLiveOut((Register.Virtual) defRegister);
            }
        }
    }

    private boolean fixedPointReached(ControlFlowGraph controlFlowGraph) {
        for (Node node : controlFlowGraph.getNodes()) {
            if (!(node.getLiveIn().equals(node.getPrevLiveIn()) && node.getLiveOut().equals(node.getPrevLiveOut()))) {
                return false;
            }
        }

        return true;
    }

    private Set<Register.Virtual> filterVirtualRegisters(List<Register> registers) {
        Set<Register.Virtual> filteredRegisters = new HashSet<>();

        for (Register register : registers) {
            if (register != null && register.isVirtual()) {
                filteredRegisters.add((Register.Virtual) register);
            }
        }

        return filteredRegisters;
    }

    private boolean isRegisterUsed(Register register, ControlFlowGraph controlFlowGraph) {
        for (Node node : controlFlowGraph.getNodes()) {
            if (node.getInsn().uses().contains(register)) {
                return true;
            }
        }
        return false;
    }

    private InterferenceGraph constructInterferenceGraph(ControlFlowGraph controlFlowGraph) {
        InterferenceGraph interferenceGraph = new InterferenceGraph();

        for (Node node : controlFlowGraph.getNodes()) {

            for (Register register : node.getInsn().registers()) {
                if (register.isVirtual()) {
                    interferenceGraph.addNode((Virtual) register);
                }
            }

            for (Register.Virtual r1 : node.getLiveIn()) {
                for (Register.Virtual r2 : node.getLiveIn()) {
                    if (!r1.equals(r2)) {
                        interferenceGraph.addEdge(r1, r2);
                    }
                }
            }

            for (Register.Virtual r1 : node.getLiveOut()) {
                for (Register.Virtual r2 : node.getLiveOut()) {
                    if (!r1.equals(r2)) {
                        interferenceGraph.addEdge(r1, r2);
                    }
                }
            }

        }

        return interferenceGraph;
    }

    private Map<Register, Register> mapVirtualToArchReg(InterferenceGraph interferenceGraph,
            ControlFlowGraph controlFlowGraph) {

        Map<Register, Register> vrToAr = new HashMap<>();

        Set<RegisterNode> registerNodes = new HashSet<RegisterNode>(interferenceGraph.getRegisterNodes());
        Stack<RegisterNode> stack = new Stack<RegisterNode>();
        List<RegisterNode> spilledRegisters = new ArrayList<RegisterNode>();

        while (registerNodes.size() > (stack.size() + spilledRegisters.size())) {
            RegisterNode vertex = getVertexWithDegreeLessK(registerNodes, stack, spilledRegisters,
                    archRegisters.size());

            if (vertex != null) {
                stack.push(vertex);
            } else {
                vertex = getVertexToSpill(registerNodes, stack, spilledRegisters, archRegisters.size(),
                        controlFlowGraph);
                spilledRegisters.add(vertex);
            }
        }

        interferenceGraph.setSpilledRegisters(spilledRegisters);

        while (!stack.empty()) {
            RegisterNode node = stack.pop();
            Set<RegisterNode> neighbours = new HashSet<RegisterNode>(node.getNeighbours());
            neighbours.removeAll(stack);
            neighbours.removeAll(spilledRegisters);

            List<Arch> availableArchRegisters = new ArrayList<Arch>(archRegisters);

            for (RegisterNode neighbour : neighbours) {
                if (neighbour.getArchRegister() != null) {
                    availableArchRegisters.remove(neighbour.getArchRegister());
                }
            }

            if (availableArchRegisters.size() > 0) {
                node.setArchRegister(availableArchRegisters.get(0));
                vrToAr.put(node.getVirtualRegister(), node.getArchRegister());
            } else {
                throw new IllegalStateException("no available arch registers to assign to a virtual register");
            }
        }

        return vrToAr;
    }

    private RegisterNode getVertexToSpill(Set<RegisterNode> registerNodes, Stack<RegisterNode> stack,
            List<RegisterNode> spilledRegisters, int k, ControlFlowGraph controlFlowGraph) {

        Set<RegisterNode> nodes = new HashSet<RegisterNode>(registerNodes);
        nodes.removeAll(stack);
        nodes.removeAll(spilledRegisters);

        RegisterNode nodeToSpill = null;
        int maxDegree = k;

        for (RegisterNode node : nodes) {

            Set<RegisterNode> neighbours = new HashSet<RegisterNode>(node.getNeighbours());
            neighbours.removeAll(stack);
            neighbours.removeAll(spilledRegisters);

            if (neighbours.size() > maxDegree) {
                nodeToSpill = node;
                maxDegree = neighbours.size();
            } else if (neighbours.size() == maxDegree) {
                if (nodeToSpill != null) {
                    if (getNumberOfUses(node, controlFlowGraph) < getNumberOfUses(nodeToSpill, controlFlowGraph)) {
                        nodeToSpill = node;
                    }
                } else {
                    nodeToSpill = node;
                }
            }

        }

        return nodeToSpill;
    }

    private int getNumberOfUses(RegisterNode node, ControlFlowGraph controlFlowGraph) {

        int numUses = 0;

        for (Node n : controlFlowGraph.getNodes()) {
            if (n.getInsn().uses().contains(node.getVirtualRegister())) {
                numUses++;
            }
            if (n.getInsn().def() != null && n.getInsn().def().equals(node.getVirtualRegister())) {
                numUses++;
            }
        }

        return numUses;
    }

    private RegisterNode getVertexWithDegreeLessK(Set<RegisterNode> registerNodes, Stack<RegisterNode> stack,
            List<RegisterNode> spilledRegisters, int k) {

        Set<RegisterNode> nodes = new HashSet<RegisterNode>(registerNodes);
        nodes.removeAll(stack);
        nodes.removeAll(spilledRegisters);

        for (RegisterNode node : nodes) {
            Set<RegisterNode> neighbours = new HashSet<RegisterNode>(node.getNeighbours());
            neighbours.removeAll(stack);
            neighbours.removeAll(spilledRegisters);
            if (neighbours.size() < k) {
                return node;
            }
        }

        return null;
    }

    private void outputDotGraph(String dotGraph) {

        PrintWriter file = null;
        try {
            file = new PrintWriter(".\\dot_output\\graph_" + dotOutputIndex++ + ".dot");
            file.println(dotGraph);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } finally {
            if (file != null) {
                file.close();
            }
        }
    }

    public class ControlFlowGraph {

        public List<Node> nodes;
        public Map<Label, Node> labelToNodeMap;

        public ControlFlowGraph() {
            nodes = new ArrayList<Node>();
            labelToNodeMap = new HashMap<Label, Node>();
        }

        public void addNode(Node node) {
            nodes.add(node);
        }

        public List<Node> getNodes() {
            return this.nodes;
        }

        public void addLabelNodePair(Label label, Node node) {
            this.labelToNodeMap.put(label, node);
        }

        public Node getNodeByLabel(Label label) {
            return labelToNodeMap.get(label);
        }

        public String toDotFormat() {
            StringBuilder builder = new StringBuilder();
            builder.append("digraph CFG {\n");

            for (Node node : nodes) {
                builder.append(String.format("\t%d [label=\"%s\"];\n", node.nodeId, node.insn.toString()));

                for (Node successor : node.successors) {
                    builder.append(String.format("\t%d -> %d;\n", node.nodeId, successor.nodeId));
                }
            }

            builder.append("}\n");

            return builder.toString();
        }
    }

    public class Node {

        public int nodeId;
        public Instruction insn;
        public List<Node> successors;
        public Set<Register.Virtual> liveIn;
        public Set<Register.Virtual> liveOut;
        public Set<Register.Virtual> prevLiveIn;
        public Set<Register.Virtual> prevLiveOut;

        public Node(Instruction insn, int nodeId) {
            this.insn = insn;
            this.nodeId = nodeId;
            successors = new ArrayList<Node>();
            liveIn = new HashSet<Register.Virtual>();
            liveOut = new HashSet<Register.Virtual>();
            prevLiveIn = new HashSet<Register.Virtual>();
            prevLiveOut = new HashSet<Register.Virtual>();
        }

        public Instruction getInsn() {
            return this.insn;
        }

        public void addSuccessor(Node node) {
            this.successors.add(node);
        }

        public List<Node> getSuccessors() {
            return this.successors;
        }

        public void addLiveIn(Register.Virtual register) {
            this.liveIn.add(register);
        }

        public void addLiveOut(Register.Virtual register) {
            this.liveOut.add(register);
        }

        public Set<Register.Virtual> getLiveIn() {
            return this.liveIn;
        }

        public Set<Register.Virtual> getLiveOut() {
            return this.liveOut;
        }

        public void setLiveIn(Set<Register.Virtual> liveIn) {
            this.liveIn = new HashSet<>(liveIn);
        }

        public void setLiveOut(Set<Register.Virtual> liveOut) {
            this.liveOut = new HashSet<>(liveOut);
        }

        public Set<Register.Virtual> getPrevLiveIn() {
            return this.prevLiveIn;
        }

        public Set<Register.Virtual> getPrevLiveOut() {
            return this.prevLiveOut;
        }

        public void setPrevLiveIn(Set<Register.Virtual> prevLiveIn) {
            this.prevLiveIn = new HashSet<>(prevLiveIn);
        }

        public void setPrevLiveOut(Set<Register.Virtual> prevLiveOut) {
            this.prevLiveOut = new HashSet<>(prevLiveOut);
        }

    }

    public class InterferenceGraph {
        public Map<Register.Virtual, RegisterNode> registerNodes;
        public List<RegisterNode> spilledRegisters;

        public InterferenceGraph() {
            registerNodes = new HashMap<>();
            spilledRegisters = new ArrayList<>();
        }

        public RegisterNode addNode(Register.Virtual register) {
            return registerNodes.computeIfAbsent(register, r -> new RegisterNode(r));
        }

        public void addEdge(Register.Virtual r1, Register.Virtual r2) {
            RegisterNode rn1 = addNode(r1);
            RegisterNode rn2 = addNode(r2);
            rn1.addNeighbour(rn2);
            rn2.addNeighbour(rn1);
        }

        public List<RegisterNode> getSpilledRegisters() {
            return this.spilledRegisters;
        }

        public void setSpilledRegisters(List<RegisterNode> spilledRegisters) {
            this.spilledRegisters = spilledRegisters;
        }

        public Collection<RegisterNode> getRegisterNodes() {
            return registerNodes.values();
        }

        public RegisterNode getRegisterNodeByRegister(Register register) {
            return registerNodes.get(register);
        }

        public String toDotFormat() {
            StringBuilder builder = new StringBuilder();
            Set<String> visitedEdges = new HashSet<>();
            builder.append("graph InterferenceGraph {\n");

            for (RegisterNode node : registerNodes.values()) {
                if (node.getNeighbours().size() == 0) {
                    builder.append("    \"" + node.virtualregister.toString() + "\";\n");
                }
            }

            for (RegisterNode node : registerNodes.values()) {
                for (RegisterNode neighbor : node.neighbours) {
                    String edgeString = node.virtualregister.toString()
                            .compareTo(neighbor.virtualregister.toString()) < 0
                                    ? "\"" + node.virtualregister.toString() + "\" -- \""
                                            + neighbor.virtualregister.toString()
                                            + "\""
                                    : "\"" + neighbor.virtualregister.toString() + "\" -- \""
                                            + node.virtualregister.toString()
                                            + "\"";

                    if (!visitedEdges.contains(edgeString)) {
                        builder.append("    " + edgeString + ";\n");
                        visitedEdges.add(edgeString);
                    }
                }
            }

            builder.append("}\n");
            return builder.toString();
        }
    }

    public class RegisterNode {

        public Register.Virtual virtualregister;
        public Register.Arch archRegister;
        public Set<RegisterNode> neighbours;

        public RegisterNode(Register.Virtual virtualregister) {
            this.virtualregister = virtualregister;
            this.neighbours = new HashSet<RegisterNode>();
        }

        public void addNeighbour(RegisterNode neighbour) {
            neighbours.add(neighbour);
        }

        public Set<RegisterNode> getNeighbours() {
            return this.neighbours;
        }

        public void setNeighbours(Set<RegisterNode> neighbours) {
            this.neighbours = new HashSet<RegisterNode>(neighbours);
        }

        public Register.Virtual getVirtualRegister() {
            return this.virtualregister;
        }

        public void setVirtualRegister(Register.Virtual virtualregister) {
            this.virtualregister = virtualregister;
        }

        public Register.Arch getArchRegister() {
            return this.archRegister;
        }

        public void setArchRegister(Register.Arch archRegister) {
            this.archRegister = archRegister;
        }
    }

}
