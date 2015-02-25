.class public Euler03
.super java/lang/Object

.method public static primeFactor(JJ)J
    .limit stack 6
    .limit locals 5
    lload_0
    lload_2
    lsub
    l2i
    ifne OtherThings
    lload_0
    lreturn
OtherThings:
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
    iconst_1
    i2l
    ladd
    invokestatic Euler03/primeFactor(JJ)J
    lreturn
.end method


.method public static main([Ljava/lang/String;)V
    .limit stack 5
    .limit locals 3
    ldc2_w 600851475143
    iconst_3
    i2l
    invokestatic Euler03/primeFactor(JJ)J
    lstore_1
    getstatic java/lang/System/out Ljava/io/PrintStream;
    lload_1
    invokevirtual java/io/PrintStream/println(J)V
    return

.end method
