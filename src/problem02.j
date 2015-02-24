.class public Euler02
.super java/lang/Object


.method private static fib(I)I
    .limit stack 3
    .limit locals 1
    iconst_0
    iload_0
    if_icmpne Test1
    iconst_1
    ireturn
Test1:
    iconst_1
    iload_0
    if_icmpne Recurse
    iconst_2
    ireturn
Recurse:
    iload_0
    dup
    iconst_2
    isub
    invokestatic Euler02/fib(I)I
    swap
    iconst_1
    isub
    invokestatic Euler02/fib(I)I
    iadd
    ireturn
.end method

.method public static main([Ljava/lang/String;)V
    .limit stack 3
    .limit locals 4
    iconst_0
    dup
    istore_1
    istore_2
LoopStart:
    iload_1
    invokestatic Euler02/fib(I)I
    dup
    istore_3
    iconst_2
    irem
    ifne LoopStep
    iload_3
    ldc 4000000
    if_icmpge Result
    iload_3
    iload_2
    iadd
    istore_2
LoopStep:
    iload_1
    iconst_1
    iadd
    istore_1
    goto LoopStart
Result:
    getstatic java/lang/System/out Ljava/io/PrintStream;
    iload_2
    invokevirtual java/io/PrintStream/println(I)V
    return

.end method
