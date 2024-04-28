package sem;

import util.CompilerPass;

public class SemanticAnalyzer extends CompilerPass {

	public void analyze(ast.Program prog) {

		prog.addMiniCStdLib();

		NameAnalyzer na = new NameAnalyzer();
		na.visit(prog);
		this.numErrors += na.getNumErrors();

		ClassAnalyzer ca = new ClassAnalyzer();
		ca.visit(prog);
		this.numErrors += ca.getNumErrors();

		FunAnalyzer fpa = new FunAnalyzer();
		fpa.visit(prog);
		this.numErrors += fpa.getNumErrors();

		FunDeclAnalyzer fda = new FunDeclAnalyzer();
		fda.visit(prog);
		this.numErrors += fda.getNumErrors();

		StructDeclAnalyzer sda = new StructDeclAnalyzer();
		sda.visit(prog);
		this.numErrors += sda.getNumErrors();

		TypeAnalyzer ta = new TypeAnalyzer();
		ta.visit(prog);
		this.numErrors += ta.getNumErrors();

		LValueAnalyzer lva = new LValueAnalyzer();
		lva.visit(prog);
		this.numErrors += lva.getNumErrors();
	}
}
