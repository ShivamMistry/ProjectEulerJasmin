.class public Euler03
.super java/lang/Object

.method public static primeFactor(JJ)J
    .limit stack 3
    .limit locals 5

    lload_0
     lload_1
     lsub
     ifne OtherThings
     lload_0
     lreturn
OtherThings:
     lload_0
     lload_1
     lrem
     ifne Inc
     lload_0
     lload_1
     ldiv
     lload_1
     invokestatic Euler03/primeFactor(JJ)J
     lreturn
Inc:
     lload_0
     lload_1
     iconst_1
     i2l
     ladd
     invokestatic Euler03/primeFactor(JJ)J
     lreturn
.end method


.method public static main([Ljava/lang/String;)V
    .limit stack 5
    .limit locals 3
    ldc 600851475143
    iconst_3
    i2l
    invokestatic Euler03/primeFactor(JJ)J
    lstore_1
    getstatic java/lang/System/out Ljava/io/PrintStream;
    lload_1
    invokevirtual java/io/PrintStream/println(J)V
    return

.end method
