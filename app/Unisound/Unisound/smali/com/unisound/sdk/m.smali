.class public Lcom/unisound/sdk/m;
.super Lcom/unisound/common/ab;

# interfaces
.implements Lcom/unisound/sdk/ak;
.implements Lcom/unisound/sdk/au;


# static fields
.field public static final a:I = 0x32

.field private static h:Lcn/yunzhisheng/asrfix/JniAsrFix;


# instance fields
.field b:Lcom/unisound/sdk/ar;

.field private c:Lcom/unisound/sdk/z;

.field private d:Lcom/unisound/sdk/aa;

.field private e:Lcom/unisound/sdk/aj;

.field private f:Lcom/unisound/sdk/k;

.field private g:Lcom/unisound/sdk/ai;

.field private i:Lcom/unisound/sdk/w;

.field private j:Z

.field private k:Z

.field private l:Landroid/os/Looper;

.field private m:Landroid/content/Context;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "uscasr"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/unisound/common/ab;-><init>()V

    iput-object v1, p0, Lcom/unisound/sdk/m;->c:Lcom/unisound/sdk/z;

    iput-object v1, p0, Lcom/unisound/sdk/m;->d:Lcom/unisound/sdk/aa;

    iput-object v1, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/aj;

    iput-object v1, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    new-instance v0, Lcom/unisound/sdk/ai;

    invoke-direct {v0}, Lcom/unisound/sdk/ai;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/m;->g:Lcom/unisound/sdk/ai;

    iput-object v1, p0, Lcom/unisound/sdk/m;->i:Lcom/unisound/sdk/w;

    iput-boolean v2, p0, Lcom/unisound/sdk/m;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/m;->k:Z

    iput-boolean v2, p0, Lcom/unisound/sdk/m;->n:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/unisound/common/ab;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/unisound/sdk/m;->c:Lcom/unisound/sdk/z;

    iput-object v1, p0, Lcom/unisound/sdk/m;->d:Lcom/unisound/sdk/aa;

    iput-object v1, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/aj;

    iput-object v1, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    new-instance v0, Lcom/unisound/sdk/ai;

    invoke-direct {v0}, Lcom/unisound/sdk/ai;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/m;->g:Lcom/unisound/sdk/ai;

    iput-object v1, p0, Lcom/unisound/sdk/m;->i:Lcom/unisound/sdk/w;

    iput-boolean v2, p0, Lcom/unisound/sdk/m;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/m;->k:Z

    iput-boolean v2, p0, Lcom/unisound/sdk/m;->n:Z

    iput-object p1, p0, Lcom/unisound/sdk/m;->l:Landroid/os/Looper;

    iput-object p2, p0, Lcom/unisound/sdk/m;->m:Landroid/content/Context;

    return-void
.end method

.method private B()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->c:Lcom/unisound/sdk/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/m;->c:Lcom/unisound/sdk/z;

    invoke-virtual {v0}, Lcom/unisound/sdk/z;->d()V

    :cond_0
    return-void
.end method

.method private C()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/ar;->d()V

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    return-void
.end method

.method private g(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/k;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    :cond_0
    return-void
.end method

.method private l(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    invoke-interface {v0, p1}, Lcom/unisound/sdk/ar;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0, p1, p2}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->c:Lcom/unisound/sdk/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/m;->c:Lcom/unisound/sdk/z;

    invoke-virtual {v0}, Lcom/unisound/sdk/z;->k()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/m;->c:Lcom/unisound/sdk/z;

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/m;->c:Lcom/unisound/sdk/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/m;->c:Lcom/unisound/sdk/z;

    invoke-virtual {v0}, Lcom/unisound/sdk/z;->d()V

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "FixRecognizer MSG_RECOGNITION_ERROR"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/unisound/sdk/m;->l(I)V

    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    invoke-interface {v0, p1, p2, p3}, Lcom/unisound/sdk/ar;->a(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lcn/yunzhisheng/asr/VAD;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->c:Lcom/unisound/sdk/z;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/m;->c:Lcom/unisound/sdk/z;

    invoke-virtual {v0}, Lcom/unisound/sdk/z;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    invoke-interface {v0, p1}, Lcom/unisound/sdk/ar;->a(Lcn/yunzhisheng/asr/VAD;)V

    goto :goto_0
.end method

.method public a(Lcom/unisound/sdk/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/aj;

    return-void
.end method

.method public a(Lcom/unisound/sdk/al;)V
    .locals 5

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    invoke-virtual {p1}, Lcom/unisound/sdk/al;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/unisound/sdk/al;->c()Z

    move-result v2

    invoke-virtual {p1}, Lcom/unisound/sdk/al;->f()I

    move-result v3

    invoke-virtual {p1}, Lcom/unisound/sdk/al;->g()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/unisound/sdk/ar;->a(Ljava/lang/String;ZII)V

    :cond_0
    return-void
.end method

.method public a(Lcom/unisound/sdk/ar;)V
    .locals 2

    iget-object v1, p0, Lcom/unisound/sdk/m;->l:Landroid/os/Looper;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/m;->setMessageLisenter(Lcom/unisound/common/ac;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/unisound/sdk/u;)V
    .locals 1

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(Lcom/unisound/sdk/u;)V

    return-void
.end method

.method public a(Lcom/unisound/sdk/w;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/m;->i:Lcom/unisound/sdk/w;

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/unisound/sdk/z;Lcom/unisound/sdk/aa;)V
    .locals 9

    const v2, -0xf80e

    const/16 v8, 0xa

    const/4 v7, 0x0

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/unisound/sdk/m;->n:Z

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    invoke-virtual {v0, v6}, Lcom/unisound/sdk/k;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/m;->g:Lcom/unisound/sdk/ai;

    invoke-virtual {v0}, Lcom/unisound/sdk/ai;->a()V

    iget-boolean v0, p0, Lcom/unisound/sdk/m;->j:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/unisound/sdk/m;->k:Z

    if-nez v0, :cond_2

    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "FixRecognizer MSG_RECOGNITION_ERROR"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/unisound/sdk/m;->l(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/unisound/sdk/j;

    sget-object v1, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iget-object v3, p0, Lcom/unisound/sdk/m;->i:Lcom/unisound/sdk/w;

    iget-object v5, p0, Lcom/unisound/sdk/m;->m:Landroid/content/Context;

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/unisound/sdk/j;-><init>(Lcn/yunzhisheng/asrfix/JniAsrFix;Ljava/lang/String;Lcom/unisound/sdk/w;Lcom/unisound/sdk/aa;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    invoke-virtual {v0, p0}, Lcom/unisound/sdk/k;->a(Lcom/unisound/sdk/ak;)V

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    iget-object v1, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/aj;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/k;->a(Lcom/unisound/sdk/aj;)V

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    const-string v1, "usc_fix_thread"

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/k;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    invoke-virtual {v0, v8}, Lcom/unisound/sdk/k;->setPriority(I)V

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    invoke-virtual {v0}, Lcom/unisound/sdk/k;->start()V

    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "Recognition Thread Start"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/unisound/common/y;->f([Ljava/lang/Object;)V

    :cond_3
    iput-object p3, p0, Lcom/unisound/sdk/m;->d:Lcom/unisound/sdk/aa;

    iget-object v0, p0, Lcom/unisound/sdk/m;->d:Lcom/unisound/sdk/aa;

    const-string v1, "usc_vad_thread"

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/aa;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/m;->d:Lcom/unisound/sdk/aa;

    invoke-virtual {v0, v8}, Lcom/unisound/sdk/aa;->setPriority(I)V

    iget-object v0, p0, Lcom/unisound/sdk/m;->d:Lcom/unisound/sdk/aa;

    invoke-virtual {v0}, Lcom/unisound/sdk/aa;->start()V

    iput-object p2, p0, Lcom/unisound/sdk/m;->c:Lcom/unisound/sdk/z;

    iget-object v0, p0, Lcom/unisound/sdk/m;->c:Lcom/unisound/sdk/z;

    const-string v1, "usc_record_thread"

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/z;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/m;->c:Lcom/unisound/sdk/z;

    invoke-virtual {v0, v8}, Lcom/unisound/sdk/z;->setPriority(I)V

    iget-object v0, p0, Lcom/unisound/sdk/m;->c:Lcom/unisound/sdk/z;

    invoke-virtual {v0}, Lcom/unisound/sdk/z;->start()V

    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "Recording Thread Start"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/unisound/common/y;->f([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    invoke-interface {v0}, Lcom/unisound/sdk/ar;->e()V

    goto :goto_0

    :cond_4
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "FixRecognizer MSG_RECOGNITION_ERROR"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/unisound/sdk/m;->l(I)V

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    if-nez v0, :cond_3

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Lcom/unisound/sdk/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FixRecognizer Engine is not init, wrong cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "FixRecognizer MSG_RECOGNITION_ERROR"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const v0, -0xf80e

    invoke-direct {p0, v0}, Lcom/unisound/sdk/m;->l(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ZIJJII)V
    .locals 12

    new-instance v11, Lcom/unisound/sdk/al;

    invoke-direct {v11}, Lcom/unisound/sdk/al;-><init>()V

    invoke-virtual {v11, p1}, Lcom/unisound/sdk/al;->a(Ljava/lang/String;)V

    invoke-virtual {v11, p2}, Lcom/unisound/sdk/al;->a(Z)V

    invoke-virtual {v11, p3}, Lcom/unisound/sdk/al;->c(I)V

    move-wide/from16 v0, p4

    invoke-virtual {v11, v0, v1}, Lcom/unisound/sdk/al;->a(J)V

    move-wide/from16 v0, p6

    invoke-virtual {v11, v0, v1}, Lcom/unisound/sdk/al;->b(J)V

    move/from16 v0, p8

    invoke-virtual {v11, v0}, Lcom/unisound/sdk/al;->a(I)V

    move/from16 v0, p9

    invoke-virtual {v11, v0}, Lcom/unisound/sdk/al;->b(I)V

    iget-object v2, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    invoke-virtual {v11}, Lcom/unisound/sdk/al;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/unisound/sdk/al;->c()Z

    move-result v4

    invoke-virtual {v11}, Lcom/unisound/sdk/al;->i()I

    move-result v5

    invoke-virtual {v11}, Lcom/unisound/sdk/al;->j()J

    move-result-wide v6

    invoke-virtual {v11}, Lcom/unisound/sdk/al;->k()J

    move-result-wide v8

    invoke-virtual {v11}, Lcom/unisound/sdk/al;->f()I

    move-result v10

    invoke-virtual {v11}, Lcom/unisound/sdk/al;->g()I

    move-result v11

    invoke-interface/range {v2 .. v11}, Lcom/unisound/sdk/ar;->a(Ljava/lang/String;ZIJJII)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->b()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FixRecognizer Cancel and wait end +"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unisound/sdk/m;->a()V

    iget-object v0, p0, Lcom/unisound/sdk/m;->d:Lcom/unisound/sdk/aa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/m;->d:Lcom/unisound/sdk/aa;

    invoke-virtual {v0}, Lcom/unisound/sdk/aa;->f()V

    iput-object v3, p0, Lcom/unisound/sdk/m;->d:Lcom/unisound/sdk/aa;

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/k;->a(Z)V

    iput-object v3, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    :cond_2
    invoke-virtual {p0}, Lcom/unisound/sdk/m;->removeSendMessage()V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z[BII)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->d:Lcom/unisound/sdk/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/m;->d:Lcom/unisound/sdk/aa;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/aa;->a([B)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Message;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "init_asr"

    if-ne v2, p3, :cond_1

    sget-object v2, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iget-object v3, p0, Lcom/unisound/sdk/m;->i:Lcom/unisound/sdk/w;

    invoke-virtual {v2, p1, p2, p3, v3}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/sdk/w;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jac.init path="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " error:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unisound/sdk/m;->c(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v2, v0, v1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(II)I

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(II)I

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(II)I

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/unisound/sdk/m;->i:Lcom/unisound/sdk/w;

    invoke-virtual {v3}, Lcom/unisound/sdk/w;->aZ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(ILjava/lang/String;)I

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iget-object v1, p0, Lcom/unisound/sdk/m;->i:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p1, p2, v1, p3}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/sdk/w;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    invoke-direct {p0}, Lcom/unisound/sdk/m;->B()V

    iget-object v0, p0, Lcom/unisound/sdk/m;->c:Lcom/unisound/sdk/z;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    invoke-virtual {v0}, Lcom/unisound/sdk/k;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    invoke-interface {v0}, Lcom/unisound/sdk/ar;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/unisound/sdk/m;->g()V

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/m;->d:Lcom/unisound/sdk/aa;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/m;->d:Lcom/unisound/sdk/aa;

    invoke-virtual {v0}, Lcom/unisound/sdk/aa;->a()V

    :cond_2
    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    invoke-interface {v0, p1}, Lcom/unisound/sdk/ar;->b(I)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/m;->g:Lcom/unisound/sdk/ai;

    invoke-virtual {v0}, Lcom/unisound/sdk/ai;->a()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "msg onRecordingStart true"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    invoke-interface {v0}, Lcom/unisound/sdk/ar;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/unisound/sdk/m;->f()V

    const v0, -0xee49

    invoke-direct {p0, v0}, Lcom/unisound/sdk/m;->l(I)V

    goto :goto_0
.end method

.method public b(Z[BII)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/m;->g:Lcom/unisound/sdk/ai;

    invoke-virtual {v0, p2, p3, p4}, Lcom/unisound/sdk/ai;->a([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unisound/sdk/m;->C()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/m;->g:Lcom/unisound/sdk/ai;

    invoke-virtual {v0}, Lcom/unisound/sdk/ai;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/k;->b([B)V

    :cond_1
    iget-object v1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    if-eqz v1, :cond_2

    sget-boolean v0, Lcom/unisound/sdk/ai;->a:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unisound/sdk/m;->g:Lcom/unisound/sdk/ai;

    invoke-virtual {v0}, Lcom/unisound/sdk/ai;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0, p2, p3, p4}, Lcom/unisound/sdk/ar;->b(Z[BII)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/unisound/sdk/ar;->b(Z[BII)V

    goto :goto_1
.end method

.method public c(I)I
    .locals 1

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->b(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected c()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    invoke-interface {v0}, Lcom/unisound/sdk/ar;->f()V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/m;->j:Z

    return-void
.end method

.method public d(I)I
    .locals 1

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->c(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected d()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/ar;->n()V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/m;->k:Z

    return-void
.end method

.method public e(I)I
    .locals 1

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->d(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public e(Z)I
    .locals 1

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(Z)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected e()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/ar;->o()V

    :cond_0
    return-void
.end method

.method public f(I)I
    .locals 1

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->e(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public f(Z)I
    .locals 1

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->b(Z)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected f()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    invoke-virtual {v0}, Lcom/unisound/sdk/k;->c()V

    :cond_0
    return-void
.end method

.method public g(I)I
    .locals 1

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->f(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    invoke-virtual {v0}, Lcom/unisound/sdk/k;->d()V

    :cond_0
    return-void
.end method

.method public h(I)I
    .locals 1

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->g(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected h()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->c:Lcom/unisound/sdk/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/m;->c:Lcom/unisound/sdk/z;

    invoke-virtual {v0}, Lcom/unisound/sdk/z;->g()V

    :cond_0
    return-void
.end method

.method public i(I)I
    .locals 1

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->h(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public i()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FixRecognizer MSG_RECOGNITION_STOP"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/unisound/sdk/m;->l(I)V

    return-void
.end method

.method public j(I)I
    .locals 1

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->i(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    invoke-interface {v0}, Lcom/unisound/sdk/ar;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/unisound/sdk/m;->g()V

    return-void
.end method

.method public k()V
    .locals 1

    invoke-virtual {p0}, Lcom/unisound/sdk/m;->f()V

    const v0, -0xee4a

    invoke-direct {p0, v0}, Lcom/unisound/sdk/m;->l(I)V

    return-void
.end method

.method public k(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/ar;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/sdk/ar;->d(I)V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->c:Lcom/unisound/sdk/z;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    invoke-virtual {p0}, Lcom/unisound/sdk/m;->f()V

    invoke-direct {p0}, Lcom/unisound/sdk/m;->B()V

    const v0, -0xf876

    invoke-direct {p0, v0}, Lcom/unisound/sdk/m;->l(I)V

    return-void
.end method

.method public n()V
    .locals 0

    invoke-virtual {p0}, Lcom/unisound/sdk/m;->d()V

    return-void
.end method

.method public o()V
    .locals 0

    invoke-virtual {p0}, Lcom/unisound/sdk/m;->e()V

    return-void
.end method

.method public p()V
    .locals 4

    sget-object v1, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/unisound/sdk/m;->c:Lcom/unisound/sdk/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/m;->c:Lcom/unisound/sdk/z;

    invoke-virtual {v0}, Lcom/unisound/sdk/z;->d()V

    :cond_0
    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->d()V

    iget-object v0, p0, Lcom/unisound/sdk/m;->c:Lcom/unisound/sdk/z;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/m;->c:Lcom/unisound/sdk/z;

    invoke-virtual {v0}, Lcom/unisound/sdk/z;->k()V

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/m;->d:Lcom/unisound/sdk/aa;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/m;->d:Lcom/unisound/sdk/aa;

    invoke-virtual {v0}, Lcom/unisound/sdk/aa;->f()V

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/unisound/sdk/m;->g(Z)V

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->i()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "jac.unLoad();"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public q()Z
    .locals 1

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->h()Z

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/k;

    invoke-virtual {v0}, Lcom/unisound/sdk/k;->isAlive()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()V
    .locals 1

    invoke-static {}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a()Lcn/yunzhisheng/asrfix/JniAsrFix;

    move-result-object v0

    sput-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    return-void
.end method

.method public t()I
    .locals 1

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->k()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->m()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()I
    .locals 1

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->n()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->o()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->p()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public y()I
    .locals 1

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->r()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public z()I
    .locals 1

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/sdk/m;->h:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->s()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
