.class public Lcom/unisound/jni/AEC;
.super Ljava/lang/Object;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "aec"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/unisound/jni/AEC;->init(II)I

    move-result v0

    iput v0, p0, Lcom/unisound/jni/AEC;->a:I

    return-void
.end method

.method private native init(II)I
.end method


# virtual methods
.method public native getlast()[B
.end method

.method public native process([B[B)[B
.end method

.method public native process2([BI[BI[B)I
.end method

.method public native release()V
.end method

.method public native reset(FF)V
.end method

.method public native setOptionInt(II)I
.end method

.method public write([B[B)[B
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/unisound/jni/AEC;->process([B[B)[B

    move-result-object v0

    return-object v0
.end method
