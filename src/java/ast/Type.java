package ast;

public sealed interface Type extends ASTNode
                permits BaseType, StructType, PointerType, ArrayType, ClassType {

        public static boolean equals(Type t1, Type t2) {
                return switch (t1) {
                        case null -> {
                                yield false;
                        }
                        case ArrayType at1 -> {
                                yield switch (t2) {
                                        case ArrayType at2 -> {
                                                if (at1.arraySize == at2.arraySize) {
                                                        yield Type.equals(at1.type, at2.type);
                                                } else {
                                                        yield false;
                                                }
                                        }
                                        case null, default -> {
                                                yield false;
                                        }
                                };
                        }
                        case PointerType pt1 -> {
                                yield switch (t2) {
                                        case PointerType pt2 -> {
                                                yield Type.equals(pt1.type, pt2.type);
                                        }
                                        case null, default -> {
                                                yield false;
                                        }
                                };
                        }
                        case StructType st1 -> {
                                yield switch (t2) {
                                        case StructType st2 -> {
                                                yield st1.std != null && st1.std.equals(st2.std);
                                        }
                                        case null, default -> {
                                                yield false;
                                        }
                                };
                        }
                        case BaseType bt1 -> {
                                yield switch (t2) {
                                        case BaseType bt2 -> {
                                                yield bt1.equals(bt2);
                                        }
                                        case null, default -> {
                                                yield false;
                                        }
                                };
                        }
                        case ClassType ct1 -> {
                                yield switch (t2) {
                                        case ClassType ct2 ->{
                                                yield ct1.name.equals(ct2.name);
                                        }
                                        case null, default -> {
                                                yield false;
                                        }
                                };
                        }
                };
        }

        public static int getSize(Type type) {
                return switch (type) {
                        case BaseType.VOID -> 0;
                        case BaseType.INT -> 4;
                        case BaseType.CHAR -> 1;
                        case ArrayType a -> a.arraySize * getSize(a.type);
                        case PointerType p -> 4;
                        case StructType s -> s.std.size;
                        default -> throw new IllegalStateException("can't compute size for this type");
                };
        }

        public static int getStackSize(Type type) {
                return switch (type) {
                        case BaseType.VOID -> 0;
                        case BaseType.INT -> 4;
                        case BaseType.CHAR -> 1;
                        case ArrayType a -> 4;
                        case PointerType p -> 4;
                        case StructType s -> s.std.size;
                        default -> throw new IllegalStateException("can't compute size for this type");
                };
        }
}