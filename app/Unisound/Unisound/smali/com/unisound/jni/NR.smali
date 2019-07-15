.class public Lcom/unisound/jni/NR;
.super Ljava/lang/Object;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "nr"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/unisound/jni/NR;->init()I

    move-result v0

    iput v0, p0, Lcom/unisound/jni/NR;->a:I

    return-void
.end method

.method private native process([B[B)I
.end method

.method private native process2([B)[B
.end method


# virtual methods
.method public native init()I
.end method

.method public process([B)[B
    .locals 1

    invoke-direct {p0, p1}, Lcom/unisound/jni/NR;->process2([B)[B

    move-result-object v0

    return-object v0
.end method

.method public native release()V
.end method

.method public native reset()V
.end method
