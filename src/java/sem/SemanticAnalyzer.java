package sem;

import util.CompilerPass;

public class SemanticAnalyzer extends CompilerPass {

	public void analyze(ast.Program prog) {

		prog.addMiniCStdLib();

		NameAnalyzer na = new NameAnalyzer();
		na.visit(prog);
		this.numErrors += na.getNumErrors();

		FunAnalyzer fpa = new FunAnalyzer();
		fpa.visit(prog);
		this.numErrors += fpa.getNumErrors();

		FunDeclAnalyzer fda = new FunDeclAnalyzer();
		fda.visit(prog);
		this.numErrors += fda.getNumErrors();

		StructDeclAnalyzer sda = new StructDeclAnalyzer();
		sda.visit(prog);
		this.numErrors += sda.getNumErrors();

		TypeAnalyzer tc = new TypeAnalyzer();
		tc.visit(prog);
		this.numErrors += tc.getNumErrors();
	}
}
