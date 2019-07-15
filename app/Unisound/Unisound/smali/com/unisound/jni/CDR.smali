.class public Lcom/unisound/jni/CDR;
.super Ljava/lang/Object;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "cdr"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/unisound/jni/CDR;->init()I

    move-result v0

    iput v0, p0, Lcom/unisound/jni/CDR;->a:I

    return-void
.end method


# virtual methods
.method public native init()I
.end method

.method public native process([B)[B
.end method

.method public release()V
    .locals 1

    iget v0, p0, Lcom/unisound/jni/CDR;->a:I

    invoke-virtual {p0, v0}, Lcom/unisound/jni/CDR;->release(I)V

    return-void
.end method

.method public native release(I)V
.end method

.method public write([B)[B
    .locals 1

    invoke-virtual {p0, p1}, Lcom/unisound/jni/CDR;->process([B)[B

    move-result-object v0

    return-object v0
.end method
