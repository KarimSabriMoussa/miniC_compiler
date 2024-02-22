package sem;

import java.util.HashMap;
import java.util.Map;

public class Scope {
	private Scope outer;
	private Map<String, Symbol> symbolTable;

	public Scope(Scope outer) {
		this.outer = outer;
		this.symbolTable = new HashMap<String, Symbol>();
	}

	public Scope() {
		this(null);
		this.symbolTable = new HashMap<String, Symbol>();
	}

	public Symbol lookup(String name) {

		Scope sc = this;

		while (sc != null) {
			Symbol symbol = sc.lookupCurrent(name);
			if (symbol != null) {
				return symbol;
			}

			sc = sc.outer;
		}

		return null;
	}

	public Symbol lookupCurrent(String name) {
		return symbolTable.get(name);
	}

	public void put(Symbol sym) {
		symbolTable.put(sym.name, sym);
	}
}
