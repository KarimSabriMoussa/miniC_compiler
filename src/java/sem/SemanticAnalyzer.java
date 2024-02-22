package sem;

import util.CompilerPass;

public class SemanticAnalyzer extends CompilerPass {

	public void analyze(ast.Program prog) {

		prog.addMiniCStdLib();

		NameAnalyzer na = new NameAnalyzer();
		na.visit(prog);
		this.numErrors += na.getNumErrors();

		FunProtoAnalyzer fpa = new FunProtoAnalyzer();
		fpa.visit(prog);
		this.numErrors += fpa.getNumErrors();

		TypeAnalyzer tc = new TypeAnalyzer();
		tc.visit(prog);
		this.numErrors += tc.getNumErrors();
	}
}
