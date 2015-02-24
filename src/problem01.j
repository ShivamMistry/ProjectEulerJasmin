.class public Euler01
.super java/lang/Object


.method public static main([Ljava/lang/String;)V
    .limit stack 3
    .limit locals 3
    iconst_0
    dup
    istore_1
    istore_2
LoopStart:
    sipush 1000
    iload_1
    if_icmple Result
    iload_1
    iconst_3
    irem
    ifne Try5
LoopTrue:
    iload_2
    iload_1
    iadd
    istore_2
    goto LoopStep
Try5:
    iload_1
    iconst_5
    irem
    ifeq LoopTrue
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
