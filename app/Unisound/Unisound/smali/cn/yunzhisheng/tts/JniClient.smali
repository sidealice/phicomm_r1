.class public Lcn/yunzhisheng/tts/JniClient;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static c:I = 0x0

.field public static d:I = 0x0

.field public static final e:I = 0x0

.field public static final f:I = 0x8

.field public static final g:I = 0xe

.field public static final h:I = 0xf

.field public static final i:I = 0x16

.field public static final j:I = 0x68

.field public static final k:I = 0xcb

.field public static final l:I = 0xcc


# instance fields
.field public m:Lcn/yunzhisheng/tts/a;

.field private n:J

.field private o:[I

.field private p:[I

.field private q:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcn/yunzhisheng/tts/JniClient;->c:I

    sput v0, Lcn/yunzhisheng/tts/JniClient;->d:I

    const-string v0, "uscasr"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/yunzhisheng/tts/JniClient;->n:J

    new-array v0, v2, [I

    iput-object v0, p0, Lcn/yunzhisheng/tts/JniClient;->o:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcn/yunzhisheng/tts/JniClient;->p:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcn/yunzhisheng/tts/JniClient;->q:[I

    new-instance v0, Lcn/yunzhisheng/tts/a;

    invoke-direct {v0, p0}, Lcn/yunzhisheng/tts/a;-><init>(Lcn/yunzhisheng/tts/JniClient;)V

    iput-object v0, p0, Lcn/yunzhisheng/tts/JniClient;->m:Lcn/yunzhisheng/tts/a;

    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcn/yunzhisheng/tts/JniClient;->nativeGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native nativeGetVersion()Ljava/lang/String;
.end method


# virtual methods
.method public a(ILjava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/JniClient;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/tts/JniClient;->n:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcn/yunzhisheng/tts/JniClient;->nativeSetOption(JILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x16379

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/JniClient;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/tts/JniClient;->n:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcn/yunzhisheng/tts/JniClient;->nativeStart(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x16379

    goto :goto_0
.end method

.method public a(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/JniClient;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/tts/JniClient;->n:J

    invoke-virtual {p0, v0, v1, p1}, Lcn/yunzhisheng/tts/JniClient;->nativeGetOption(JI)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public a()Z
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/tts/JniClient;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/JniClient;->b()I

    invoke-virtual {p0, p1}, Lcn/yunzhisheng/tts/JniClient;->nativeCreate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/yunzhisheng/tts/JniClient;->n:J

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/JniClient;->a()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/JniClient;->b()I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcn/yunzhisheng/tts/JniClient;->nativeCreateExt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/yunzhisheng/tts/JniClient;->n:J

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/JniClient;->a()Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/JniClient;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/tts/JniClient;->n:J

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/tts/JniClient;->nativeRelease(J)I

    move-result v0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcn/yunzhisheng/tts/JniClient;->n:J

    :cond_0
    return v0
.end method

.method public b(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/JniClient;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/tts/JniClient;->n:J

    invoke-virtual {p0, v0, v1, p1}, Lcn/yunzhisheng/tts/JniClient;->nativeTextPut(JLjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x16379

    goto :goto_0
.end method

.method public c()I
    .locals 2

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/JniClient;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/tts/JniClient;->n:J

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/tts/JniClient;->nativeStop(J)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, -0x16379

    goto :goto_0
.end method

.method public d()[B
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/JniClient;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcn/yunzhisheng/tts/JniClient;->n:J

    iget-object v4, p0, Lcn/yunzhisheng/tts/JniClient;->o:[I

    iget-object v5, p0, Lcn/yunzhisheng/tts/JniClient;->p:[I

    iget-object v6, p0, Lcn/yunzhisheng/tts/JniClient;->q:[I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcn/yunzhisheng/tts/JniClient;->nativeGetResult(J[I[I[I)[B

    move-result-object v0

    iget-object v1, p0, Lcn/yunzhisheng/tts/JniClient;->m:Lcn/yunzhisheng/tts/a;

    iget-object v2, p0, Lcn/yunzhisheng/tts/JniClient;->o:[I

    aget v2, v2, v7

    iput v2, v1, Lcn/yunzhisheng/tts/a;->a:I

    iget-object v1, p0, Lcn/yunzhisheng/tts/JniClient;->m:Lcn/yunzhisheng/tts/a;

    iget-object v2, p0, Lcn/yunzhisheng/tts/JniClient;->p:[I

    aget v2, v2, v7

    iput v2, v1, Lcn/yunzhisheng/tts/a;->b:I

    iget-object v1, p0, Lcn/yunzhisheng/tts/JniClient;->m:Lcn/yunzhisheng/tts/a;

    iget-object v2, p0, Lcn/yunzhisheng/tts/JniClient;->q:[I

    aget v2, v2, v7

    iput v2, v1, Lcn/yunzhisheng/tts/a;->c:I

    iget-object v1, p0, Lcn/yunzhisheng/tts/JniClient;->m:Lcn/yunzhisheng/tts/a;

    iget v1, v1, Lcn/yunzhisheng/tts/a;->c:I

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/JniClient;->b()I

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public native nativeCreate(Ljava/lang/String;)J
.end method

.method public native nativeCreateExt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public native nativeGetOption(JI)Ljava/lang/String;
.end method

.method public native nativeGetResult(J[I[I[I)[B
.end method

.method public native nativeRelease(J)I
.end method

.method public native nativeSetOption(JILjava/lang/String;)I
.end method

.method public native nativeStart(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method public native nativeStop(J)I
.end method

.method public native nativeTextPut(JLjava/lang/String;)I
.end method
