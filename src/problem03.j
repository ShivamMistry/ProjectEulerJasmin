.class public Euler03
.super java/lang/Object

.method public static primeFactor(JJ)J
    .limit stack 6
    .limit locals 5
    lload_0
    lload_2
    lcmp
    ifne Factor
    lload_0
    lreturn
Factor:
    lload_0
    lload_2
    lrem
    l2i
    ifne Inc
    lload_0
    lload_2
    ldiv
    lload_2
    invokestatic Euler03/primeFactor(JJ)J
    lreturn
Inc:
    lload_0
    lload_2
    lconst_1
    ladd
    invokestatic Euler03/primeFactor(JJ)J
    lreturn
.end method


.method public static main([Ljava/lang/String;)V
    .limit stack 5
    .limit locals 1
    getstatic java/lang/System/out Ljava/io/PrintStream;
    ldc2_w 600851475143
    ldc2_w 3
    invokestatic Euler03/primeFactor(JJ)J
    invokevirtual java/io/PrintStream/println(J)V
    return

.end method
