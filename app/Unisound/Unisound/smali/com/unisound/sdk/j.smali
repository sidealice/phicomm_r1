.class public Lcom/unisound/sdk/j;
.super Lcom/unisound/sdk/k;


# instance fields
.field a:Lcn/yunzhisheng/asr/VAD;

.field b:Lcom/unisound/sdk/aa;

.field c:Z

.field d:Z

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field f:Z

.field g:I

.field private t:Z

.field private u:I

.field private v:I

.field private w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/yunzhisheng/asrfix/JniAsrFix;Ljava/lang/String;Lcom/unisound/sdk/w;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unisound/sdk/k;-><init>(Lcn/yunzhisheng/asrfix/JniAsrFix;Ljava/lang/String;Lcom/unisound/sdk/w;Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/unisound/sdk/j;->c:Z

    iput-boolean v0, p0, Lcom/unisound/sdk/j;->d:Z

    iput-boolean v1, p0, Lcom/unisound/sdk/j;->t:Z

    iput-boolean v1, p0, Lcom/unisound/sdk/j;->f:Z

    iput v0, p0, Lcom/unisound/sdk/j;->g:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/unisound/sdk/j;->u:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/unisound/sdk/j;->v:I

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/j;->w:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcn/yunzhisheng/asrfix/JniAsrFix;Ljava/lang/String;Lcom/unisound/sdk/w;Lcom/unisound/sdk/aa;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/unisound/sdk/k;-><init>(Lcn/yunzhisheng/asrfix/JniAsrFix;Ljava/lang/String;Lcom/unisound/sdk/w;Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/unisound/sdk/j;->c:Z

    iput-boolean v0, p0, Lcom/unisound/sdk/j;->d:Z

    iput-boolean v1, p0, Lcom/unisound/sdk/j;->t:Z

    iput-boolean v1, p0, Lcom/unisound/sdk/j;->f:Z

    iput v0, p0, Lcom/unisound/sdk/j;->g:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/unisound/sdk/j;->u:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/unisound/sdk/j;->v:I

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/j;->w:Ljava/lang/String;

    iget-object v0, p4, Lcom/unisound/sdk/aa;->d:Lcn/yunzhisheng/asr/VAD;

    iput-object v0, p0, Lcom/unisound/sdk/j;->a:Lcn/yunzhisheng/asr/VAD;

    iput-object p4, p0, Lcom/unisound/sdk/j;->b:Lcom/unisound/sdk/aa;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/j;->e:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/util/concurrent/BlockingQueue;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->ak()J

    move-result-wide v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    long-to-int v4, v2

    invoke-direct {p0, v1, v0, v4}, Lcom/unisound/sdk/j;->a(Ljava/util/List;[BI)V

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 15

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/unisound/sdk/l;->d(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->E()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/common/j;->a(ZLjava/lang/String;)Z

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/unisound/sdk/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v1, v0}, Lcom/unisound/sdk/w;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/j;->m:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->l()I

    move-result v8

    iget-object v1, p0, Lcom/unisound/sdk/j;->m:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->q()I

    move-result v9

    sub-int v3, v9, v8

    iget-object v1, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->ag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->A(I)I

    move-result v1

    sub-int/2addr v1, v9

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "utteranceEndTime = "

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v2}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "utteranceStartTime = "

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v2}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "utteranceTime = "

    aput-object v5, v2, v4

    const/4 v4, 0x1

    sub-int v5, v9, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v2}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "delayTime = "

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v2}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v2, v8}, Lcom/unisound/sdk/w;->j(I)V

    iget-object v2, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v2, v3}, Lcom/unisound/sdk/w;->k(I)V

    iget-object v2, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->U()J

    move-result-wide v6

    iget-object v2, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->R()J

    move-result-wide v10

    iget-object v2, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    sub-long v4, v10, v6

    invoke-virtual {v2, v4, v5}, Lcom/unisound/sdk/w;->h(J)J

    move-result-wide v4

    int-to-long v12, v8

    add-long/2addr v4, v12

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "wakeupLength = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v14, v6, v7}, Lcom/unisound/sdk/w;->h(J)J

    move-result-wide v6

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v12

    invoke-static {v2}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "outCacheLength = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v12, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v12, v10, v11}, Lcom/unisound/sdk/w;->h(J)J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    invoke-static {v2}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/unisound/sdk/w;->l(Z)V

    invoke-static {}, Lcom/unisound/common/ba;->a()Lcom/unisound/common/ba;

    new-instance v2, Lcom/unisound/common/bd;

    invoke-direct {v2}, Lcom/unisound/common/bd;-><init>()V

    iget-object v6, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v6}, Lcom/unisound/sdk/w;->aZ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/unisound/common/bd;->a(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v6}, Lcom/unisound/sdk/w;->aZ()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/unisound/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/unisound/common/bd;->b(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v6}, Lcom/unisound/sdk/w;->bu()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/unisound/common/bd;->c(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/unisound/sdk/l;->d(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v2, v6}, Lcom/unisound/common/bd;->a(F)V

    invoke-virtual {v2, v0}, Lcom/unisound/common/bd;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/unisound/common/bd;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unisound/sdk/j;->e()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "dropWakeup end wakeupCacheList.size() =>"

    aput-object v7, v2, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/unisound/sdk/j;->e:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    invoke-static {v2}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/unisound/sdk/j;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/unisound/sdk/j;->q()V

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->ab()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, v1}, Lcom/unisound/common/s;->g(I)V

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, v3}, Lcom/unisound/common/s;->d(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aa()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/w;->p(I)V

    :cond_4
    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->A()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/w;->n(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/j;->b:Lcom/unisound/sdk/aa;

    invoke-virtual {v0}, Lcom/unisound/sdk/aa;->g()V

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->T()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/unisound/sdk/j;->i:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/unisound/sdk/j;->i:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    :cond_5
    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->u()I

    move-result v2

    iget-object v6, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v6}, Lcom/unisound/sdk/w;->W()I

    move-result v6

    invoke-virtual {v0, v2, v6}, Lcom/unisound/sdk/w;->a(II)V

    :cond_6
    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->A()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/j;->f:Z

    :cond_7
    int-to-long v6, v1

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {v0 .. v9}, Lcom/unisound/sdk/j;->a(Ljava/lang/String;ZIJJII)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, v1}, Lcom/unisound/common/s;->f(I)V

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, v3}, Lcom/unisound/common/s;->c(I)V

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/unisound/sdk/j;->q()V

    goto/16 :goto_0
.end method

.method private declared-synchronized a(Ljava/util/List;[BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;[BI)V"
        }
    .end annotation

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    move v3, v2

    :goto_0
    if-ltz v1, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v0, v3

    if-lt v0, p3, :cond_0

    move v0, v1

    :goto_1
    if-ge v2, v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    move v3, v0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private b(Z)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-boolean v6, p0, Lcom/unisound/sdk/j;->o:Z

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->L()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->ag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->A(I)I

    move-result v1

    iget-object v2, p0, Lcom/unisound/sdk/j;->m:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v2}, Lcn/yunzhisheng/asrfix/JniAsrFix;->q()I

    move-result v2

    sub-int/2addr v1, v2

    iput v5, p0, Lcom/unisound/sdk/j;->g:I

    iput-boolean v6, p0, Lcom/unisound/sdk/j;->f:Z

    iget-object v2, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v2, v0}, Lcom/unisound/sdk/w;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "continue oneshot"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/unisound/sdk/j;->p()V

    iget-object v2, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v2, v6}, Lcom/unisound/sdk/w;->k(Z)V

    iget-object v2, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget v3, p0, Lcom/unisound/sdk/j;->u:I

    iget-object v4, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v4}, Lcom/unisound/sdk/w;->O()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/unisound/sdk/w;->z(I)V

    iget-boolean v2, p0, Lcom/unisound/sdk/j;->t:Z

    if-eqz v2, :cond_0

    iput-boolean v5, p0, Lcom/unisound/sdk/j;->t:Z

    iget-object v2, p0, Lcom/unisound/sdk/j;->r:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/unisound/sdk/j;->b:Lcom/unisound/sdk/aa;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/unisound/sdk/j;->b:Lcom/unisound/sdk/aa;

    invoke-virtual {v2}, Lcom/unisound/sdk/aa;->h()V

    iget-object v2, p0, Lcom/unisound/sdk/j;->b:Lcom/unisound/sdk/aa;

    iget-object v3, p0, Lcom/unisound/sdk/j;->r:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0, v3}, Lcom/unisound/sdk/j;->a(Ljava/util/concurrent/BlockingQueue;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/unisound/sdk/aa;->a(Ljava/util/Collection;)V

    :cond_0
    iget-object v2, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v2, v0}, Lcom/unisound/sdk/w;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->k()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/w;->d(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0, v5}, Lcom/unisound/sdk/w;->h(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, v6}, Lcom/unisound/common/s;->g(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    iget-object v2, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v3, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v3, v3, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v3}, Lcom/unisound/common/s;->m()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/unisound/sdk/w;->A(I)I

    move-result v2

    iget-object v3, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v3}, Lcom/unisound/sdk/w;->O()I

    move-result v3

    add-int/2addr v1, v3

    sub-int v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/unisound/common/s;->l(I)V

    :goto_0
    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0, v6}, Lcom/unisound/sdk/w;->n(Z)V

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v1, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->ay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/w;->F(I)V

    invoke-virtual {p0}, Lcom/unisound/sdk/j;->k()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, v6}, Lcom/unisound/common/s;->f(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    iget-object v2, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v3, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v3, v3, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v3}, Lcom/unisound/common/s;->m()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/unisound/sdk/w;->A(I)I

    move-result v2

    iget-object v3, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v3}, Lcom/unisound/sdk/w;->O()I

    move-result v3

    add-int/2addr v1, v3

    sub-int v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/unisound/common/s;->k(I)V

    goto :goto_0

    :cond_4
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "continue wakeup"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0, v5}, Lcom/unisound/sdk/w;->k(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/w;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0, v5}, Lcom/unisound/sdk/w;->l(Z)V

    invoke-virtual {p0}, Lcom/unisound/sdk/j;->o()V

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aa()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0, v5}, Lcom/unisound/sdk/w;->p(I)V

    goto :goto_1
.end method

.method private d([B)I
    .locals 13

    const/4 v0, -0x1

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    array-length v2, p1

    if-ne v2, v10, :cond_1

    aget-byte v2, p1, v1

    const/16 v3, 0x64

    if-eq v2, v3, :cond_0

    aget-byte v2, p1, v1

    const/16 v3, 0x63

    if-ne v2, v3, :cond_1

    :cond_0
    iput-boolean v10, p0, Lcom/unisound/sdk/j;->o:Z

    :goto_0
    return v0

    :cond_1
    new-array v2, v10, [Ljava/lang/Object;

    const-string v3, "Before recognize"

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/unisound/common/y;->f([Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-boolean v4, Lcom/unisound/common/y;->l:Z

    if-eqz v4, :cond_2

    new-array v4, v11, [Ljava/lang/Object;

    const-string v5, "FixRecognitionThread::BF_recognize ; current Time ="

    aput-object v5, v4, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v4}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0, v10, v12, p1}, Lcom/unisound/sdk/j;->a(IILjava/lang/Object;)V

    sget-boolean v4, Lcom/unisound/common/y;->l:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "FixRecognitionThread::read size ="

    aput-object v5, v4, v1

    array-length v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    const-string v5, " first byte "

    aput-object v5, v4, v11

    aget-byte v5, p1, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-static {v4}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_3
    iget-object v4, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v4, v4, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    array-length v5, p1

    invoke-virtual {v4, v5}, Lcom/unisound/common/s;->e(I)V

    sget-boolean v4, Lcom/unisound/common/y;->r:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/unisound/common/y;->s:Ljava/lang/String;

    if-eqz v4, :cond_4

    sget-object v4, Lcom/unisound/common/y;->s:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sdcard/asrtest/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/unisound/common/y;->s:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".pcm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/unisound/common/j;->a([BLjava/lang/String;)Z

    :cond_4
    iget-object v4, p0, Lcom/unisound/sdk/j;->m:Lcn/yunzhisheng/asrfix/JniAsrFix;

    array-length v5, p1

    invoke-virtual {v4, p1, v5}, Lcn/yunzhisheng/asrfix/JniAsrFix;->b([BI)I

    move-result v4

    iget-object v5, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    array-length v6, p1

    invoke-virtual {v5, v6}, Lcom/unisound/sdk/w;->w(I)V

    iget-object v5, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v5}, Lcom/unisound/sdk/w;->A()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v5}, Lcom/unisound/sdk/w;->B()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v5, v5, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v5, v5, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v5}, Lcom/unisound/common/s;->a()Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    iget-object v5, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    array-length v6, p1

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/unisound/sdk/w;->g(J)V

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/j;->c([B)V

    :cond_6
    iget-object v5, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v5}, Lcom/unisound/sdk/w;->B()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v5}, Lcom/unisound/sdk/w;->D()Z

    move-result v5

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/unisound/sdk/j;->g:I

    array-length v6, p1

    add-int/2addr v5, v6

    iput v5, p0, Lcom/unisound/sdk/j;->g:I

    iget-object v5, p0, Lcom/unisound/sdk/j;->m:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v5}, Lcn/yunzhisheng/asrfix/JniAsrFix;->u()I

    move-result v5

    new-array v6, v10, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wakeupsuccess check oneshotdata status = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v6}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const/4 v6, 0x4

    if-ne v5, v6, :cond_10

    invoke-direct {p0, v10}, Lcom/unisound/sdk/j;->b(Z)V

    :cond_7
    :goto_1
    new-array v5, v11, [Ljava/lang/Object;

    const-string v6, "queueHeadBuffer = "

    aput-object v6, v5, v1

    array-length v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v5}, Lcom/unisound/common/y;->f([Ljava/lang/Object;)V

    new-array v5, v10, [Ljava/lang/Object;

    const-string v6, "After recognize "

    aput-object v6, v5, v1

    invoke-static {v5}, Lcom/unisound/common/y;->f([Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-boolean v5, Lcom/unisound/common/y;->l:Z

    if-eqz v5, :cond_8

    new-array v5, v11, [Ljava/lang/Object;

    const-string v8, "FixRecognitionThread::AF_recognize ; current Time ="

    aput-object v8, v5, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v10

    invoke-static {v5}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_8
    sget-boolean v5, Lcom/unisound/common/y;->l:Z

    if-eqz v5, :cond_9

    new-array v5, v11, [Ljava/lang/Object;

    const-string v8, "FixRecognitionThread::recognize_process_time ="

    aput-object v8, v5, v1

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v10

    invoke-static {v5}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_9
    iget-object v2, p0, Lcom/unisound/sdk/j;->w:Ljava/lang/String;

    const-string v3, "wakeup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/j;->a([B)V

    :cond_a
    if-ne v4, v11, :cond_14

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->z()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x3e80

    iget-object v2, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/unisound/common/j;->a(ZILjava/lang/String;)Z

    :cond_b
    iget-object v0, p0, Lcom/unisound/sdk/j;->m:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/unisound/sdk/j;->m:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v2}, Lcn/yunzhisheng/asrfix/JniAsrFix;->l()I

    move-result v2

    iget-object v3, p0, Lcom/unisound/sdk/j;->m:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v3}, Lcn/yunzhisheng/asrfix/JniAsrFix;->q()I

    move-result v3

    iget-object v5, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v5}, Lcom/unisound/sdk/w;->A()Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v5}, Lcom/unisound/sdk/w;->y()Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v2, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->D()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-direct {p0, v0, v1}, Lcom/unisound/sdk/j;->a(Ljava/lang/String;Z)V

    :cond_c
    :goto_2
    iget-object v2, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->A()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->B()Z

    move-result v2

    if-eqz v2, :cond_d

    iput-boolean v10, p0, Lcom/unisound/sdk/j;->c:Z

    :cond_d
    new-array v2, v11, [Ljava/lang/Object;

    const-string v3, "FixRecognitionThread:recognize="

    aput-object v3, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v2}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    new-array v2, v11, [Ljava/lang/Object;

    const-string v3, "FixRecognitionThread:partial = "

    aput-object v3, v2, v1

    aput-object v0, v2, v10

    invoke-static {v2}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {p0, v12, v11, v0}, Lcom/unisound/sdk/j;->a(IILjava/lang/Object;)V

    :cond_e
    :goto_3
    iget-boolean v0, p0, Lcom/unisound/sdk/j;->o:Z

    if-nez v0, :cond_f

    :cond_f
    move v0, v1

    goto/16 :goto_0

    :cond_10
    iget v5, p0, Lcom/unisound/sdk/j;->g:I

    int-to-long v6, v5

    iget-object v5, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v8, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v8}, Lcom/unisound/sdk/w;->aK()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v5, v8, v9}, Lcom/unisound/sdk/w;->i(J)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-ltz v5, :cond_7

    const/16 v5, 0x489

    invoke-virtual {p0, v5}, Lcom/unisound/sdk/j;->b(I)V

    invoke-direct {p0, v1}, Lcom/unisound/sdk/j;->b(Z)V

    goto/16 :goto_1

    :cond_11
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/unisound/sdk/j;->a(Ljava/lang/String;ZII)V

    goto :goto_2

    :cond_12
    iget-object v5, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v5}, Lcom/unisound/sdk/w;->y()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-direct {p0, v0, v1}, Lcom/unisound/sdk/j;->a(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_13
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/unisound/sdk/j;->a(Ljava/lang/String;ZII)V

    goto :goto_2

    :cond_14
    if-ne v4, v12, :cond_15

    invoke-virtual {p0}, Lcom/unisound/sdk/j;->j()V

    new-array v0, v10, [Ljava/lang/Object;

    const-string v2, "FixRecognitionThread:onRecognitionVADTimeout"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_3

    :cond_15
    const/4 v2, -0x6

    if-ne v4, v2, :cond_16

    invoke-virtual {p0}, Lcom/unisound/sdk/j;->i()V

    new-array v0, v10, [Ljava/lang/Object;

    const-string v2, "FixRecognitionThread:max timeout"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_3

    :cond_16
    if-eq v4, v10, :cond_e

    if-gez v4, :cond_e

    invoke-virtual {p0}, Lcom/unisound/sdk/j;->d()V

    invoke-static {v4}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/unisound/sdk/j;->a(I)V

    iput-boolean v10, p0, Lcom/unisound/sdk/j;->d:Z

    goto/16 :goto_0
.end method

.method private q()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(J)V
    .locals 11

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "dropWakeupPcmFromByteLength =>"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "dropWakeup wakeupCacheList.size() =>"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/unisound/sdk/j;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move-wide v6, v2

    :goto_0
    if-ltz v4, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/j;->e:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    int-to-long v8, v0

    add-long/2addr v6, v8

    cmp-long v0, v6, p1

    if-ltz v0, :cond_1

    int-to-long v2, v4

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dropWakeup enabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    move v0, v1

    :goto_1
    int-to-long v4, v0

    cmp-long v1, v4, v2

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/unisound/sdk/j;->e:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a([B)V
    .locals 5

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/unisound/sdk/j;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->be()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/unisound/sdk/j;->v:I

    mul-int/2addr v0, v1

    mul-int/lit8 v4, v0, 0x2

    iget-object v0, p0, Lcom/unisound/sdk/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    move v3, v2

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/j;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v0, v3

    if-lt v0, v4, :cond_0

    move v0, v1

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v1, p0, Lcom/unisound/sdk/j;->e:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    move v3, v0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method protected a()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/j;->i:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/j;->b:Lcom/unisound/sdk/aa;

    iget-object v0, v0, Lcom/unisound/sdk/aa;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/j;->b:Lcom/unisound/sdk/aa;

    invoke-virtual {v0}, Lcom/unisound/sdk/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 7

    const/4 v6, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/unisound/sdk/j;->n()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/j;->a(I)V

    iput-boolean v2, p0, Lcom/unisound/sdk/j;->d:Z

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/unisound/sdk/j;->m:Lcn/yunzhisheng/asrfix/JniAsrFix;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->g()V

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->V()V

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->ah()V

    invoke-direct {p0}, Lcom/unisound/sdk/j;->q()V

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->A()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->B()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/w;->l(Z)V

    const-string v0, "wakeup"

    iput-object v0, p0, Lcom/unisound/sdk/j;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/unisound/sdk/j;->m:Lcn/yunzhisheng/asrfix/JniAsrFix;

    const-string v2, "wakeup"

    iget-object v4, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v4}, Lcom/unisound/sdk/w;->aB()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FixRecognitionThread:jac::start error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",model="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/sdk/j;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",modelId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->aB()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/j;->a(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/j;->d:Z

    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x4

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "FixRecognitionThread:jac::start model="

    aput-object v4, v0, v2

    const/4 v2, 0x1

    const-string v4, "wakeup"

    aput-object v4, v0, v2

    const/4 v2, 0x2

    const-string v4, ",modelId="

    aput-object v4, v0, v2

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v4}, Lcom/unisound/sdk/w;->aB()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unisound/sdk/j;->b:Lcom/unisound/sdk/aa;

    iget-object v0, v0, Lcom/unisound/sdk/aa;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    iget-object v2, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->ai()I

    move-result v2

    mul-int/2addr v0, v2

    iget-object v2, p0, Lcom/unisound/sdk/j;->i:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    iget-object v4, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v4}, Lcom/unisound/sdk/w;->ai()I

    move-result v4

    mul-int/2addr v2, v4

    iget-object v4, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v4, v4, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v4}, Lcom/unisound/common/s;->n()V

    iget-object v4, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v4, v4, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v4}, Lcom/unisound/common/s;->s()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v4, v4, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/unisound/common/s;->g(Z)V

    iget-object v4, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v4, v4, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    iget-object v5, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    add-int/2addr v0, v2

    invoke-virtual {v5, v0}, Lcom/unisound/sdk/w;->A(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/unisound/common/s;->j(I)V

    :cond_3
    :goto_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v4}, Lcom/unisound/sdk/j;->a(IILjava/lang/Object;)V

    :cond_4
    invoke-virtual {p0}, Lcom/unisound/sdk/j;->l()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_6

    :try_start_2
    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/unisound/sdk/j;->i:Ljava/util/concurrent/BlockingQueue;

    sget-wide v4, Lcom/unisound/sdk/j;->h:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v2}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_f

    iget-object v2, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v2, v2, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v2, v2, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v2}, Lcom/unisound/common/s;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->A()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v2, v2, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    array-length v4, v0

    invoke-virtual {v2, v4}, Lcom/unisound/common/s;->p(I)V

    :cond_5
    invoke-direct {p0, v0}, Lcom/unisound/sdk/j;->d([B)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-ne v2, v6, :cond_e

    :cond_6
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/unisound/sdk/j;->m:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->e()I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "FixRecognitionThread:recog stopped"

    aput-object v4, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/j;->m:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->f()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "FixRecognitionThread:partial: "

    aput-object v5, v0, v4

    const/4 v4, 0x1

    aput-object v2, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->ag()I

    move-result v0

    iget-object v4, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v4}, Lcom/unisound/sdk/w;->g()I

    move-result v4

    mul-int/lit8 v4, v4, 0x20

    if-ge v0, v4, :cond_7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "FixRecognitionThread:Give Up Result:"

    aput-object v4, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    const-string v2, ""

    :cond_7
    if-eqz v2, :cond_8

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_8
    const-string v0, "\n-20.0"

    move-object v2, v0

    move v0, v1

    :goto_3
    const/4 v4, 0x4

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5, v2}, Lcom/unisound/sdk/j;->a(IILjava/lang/Object;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/unisound/sdk/j;->a(IILjava/lang/Object;)V

    iget-object v4, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v4}, Lcom/unisound/sdk/w;->y()Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/unisound/sdk/j;->a(Ljava/lang/String;Z)V

    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->Y()I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->A()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->B()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/unisound/sdk/j;->m:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->t()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/unisound/sdk/j;->m:Lcn/yunzhisheng/asrfix/JniAsrFix;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->b(I)I

    :cond_a
    :goto_5
    monitor-exit v3

    goto/16 :goto_0

    :cond_b
    iget-object v4, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v4, v4, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/unisound/common/s;->f(Z)V

    iget-object v4, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v4, v4, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    iget-object v5, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    add-int/2addr v0, v2

    invoke-virtual {v5, v0}, Lcom/unisound/sdk/w;->A(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/unisound/common/s;->i(I)V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/unisound/sdk/j;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/j;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/unisound/sdk/j;->m:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iget-object v2, p0, Lcom/unisound/sdk/j;->p:Ljava/lang/String;

    iget-object v4, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v4}, Lcom/unisound/sdk/w;->aB()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FixRecognitionThread:jac::start error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",model="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/sdk/j;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",modelId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->aB()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/j;->a(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/j;->d:Z

    monitor-exit v3

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "FixRecognitionThread:jac::start model="

    aput-object v4, v0, v2

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/unisound/sdk/j;->p:Ljava/lang/String;

    aput-object v4, v0, v2

    const/4 v2, 0x2

    const-string v4, ",modelId="

    aput-object v4, v0, v2

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v4}, Lcom/unisound/sdk/w;->aB()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_e
    :try_start_4
    sget-boolean v2, Lcom/unisound/common/y;->q:Z

    if-eqz v2, :cond_f

    const-string v2, "/sdcard/asrtest/oneshotofflineFourMic.pcm"

    invoke-static {v0, v2}, Lcom/unisound/common/j;->a([BLjava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_f
    :goto_6
    :try_start_5
    iget-boolean v0, p0, Lcom/unisound/sdk/j;->o:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/unisound/sdk/j;->n:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/unisound/sdk/j;->a()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_10
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "FixRecognitionThread:recog break"

    aput-object v4, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    :cond_11
    :try_start_6
    iget-object v0, p0, Lcom/unisound/sdk/j;->i:Ljava/util/concurrent/BlockingQueue;

    sget-wide v4, Lcom/unisound/sdk/j;->h:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v2}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_f

    invoke-direct {p0, v0}, Lcom/unisound/sdk/j;->d([B)I

    move-result v2

    if-eq v2, v6, :cond_6

    sget-boolean v2, Lcom/unisound/common/y;->q:Z

    if-eqz v2, :cond_f

    const-string v2, "/sdcard/asrtest/offline.pcm"

    invoke-static {v0, v2}, Lcom/unisound/common/j;->a([BLjava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :catch_0
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_12
    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aO()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/unisound/sdk/j;->w:Ljava/lang/String;

    const-string v4, "wakeup"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/unisound/sdk/j;->m:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->l()I

    move-result v1

    iget-object v0, p0, Lcom/unisound/sdk/j;->m:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->q()I

    move-result v0

    goto/16 :goto_3

    :cond_13
    iget-object v4, p0, Lcom/unisound/sdk/j;->w:Ljava/lang/String;

    const-string v5, "wakeup"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v1, v0}, Lcom/unisound/sdk/j;->a(Ljava/lang/String;ZII)V

    goto/16 :goto_4

    :cond_14
    iget-object v0, p0, Lcom/unisound/sdk/j;->m:Lcn/yunzhisheng/asrfix/JniAsrFix;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->b(I)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_5

    :cond_15
    move v0, v1

    goto/16 :goto_3
.end method

.method public c()V
    .locals 0

    invoke-super {p0}, Lcom/unisound/sdk/k;->c()V

    return-void
.end method

.method public d()V
    .locals 0

    invoke-super {p0}, Lcom/unisound/sdk/k;->d()V

    return-void
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lcom/unisound/sdk/j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleWakeupWordBuffer UtteranceTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v3}, Lcom/unisound/sdk/w;->O()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v1, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->O()I

    move-result v1

    add-int/lit16 v1, v1, 0xc8

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/unisound/sdk/w;->i(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/unisound/sdk/j;->a(J)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 6

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-boolean v1, p0, Lcom/unisound/sdk/j;->t:Z

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->ah()V

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/w;->k(Z)V

    iput-boolean v2, p0, Lcom/unisound/sdk/j;->c:Z

    new-array v0, v4, [Ljava/lang/Object;

    const-string v3, "modelTag =>"

    aput-object v3, v0, v2

    iget-object v3, p0, Lcom/unisound/sdk/j;->p:Ljava/lang/String;

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/j;->m:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iget-object v3, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v3}, Lcom/unisound/sdk/w;->aK()I

    move-result v3

    invoke-virtual {v0, v3}, Lcn/yunzhisheng/asrfix/JniAsrFix;->i(I)I

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/j;->p:Ljava/lang/String;

    const-string v3, "wakeup"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->A()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aa()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/w;->p(I)V

    :cond_2
    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "FixRecognitionThread start"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->g([Ljava/lang/Object;)V

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "FixRecognitionThread ::run ThreadName = "

    aput-object v3, v0, v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v3, ", ThreadId = "

    aput-object v3, v0, v4

    const/4 v3, 0x3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p0}, Lcom/unisound/sdk/j;->l()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/unisound/sdk/j;->m:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-nez v0, :cond_5

    :cond_4
    :goto_0
    return-void

    :cond_5
    iput-boolean v2, p0, Lcom/unisound/sdk/j;->d:Z

    move v0, v1

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/unisound/sdk/j;->l()Z

    move-result v3

    if-nez v3, :cond_d

    iget-boolean v3, p0, Lcom/unisound/sdk/j;->n:Z

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/unisound/sdk/j;->a()Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_7
    iget-boolean v3, p0, Lcom/unisound/sdk/j;->d:Z

    if-nez v3, :cond_d

    sget-boolean v3, Lcom/unisound/common/y;->r:Z

    if-eqz v3, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/unisound/common/y;->s:Ljava/lang/String;

    :cond_8
    if-nez v0, :cond_9

    iput-boolean v2, p0, Lcom/unisound/sdk/j;->o:Z

    :cond_9
    iget-object v3, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v3}, Lcom/unisound/sdk/w;->A()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v3}, Lcom/unisound/sdk/w;->B()Z

    move-result v3

    if-eqz v3, :cond_a

    iput-boolean v1, p0, Lcom/unisound/sdk/j;->c:Z

    :cond_a
    iget-object v3, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v3, v3, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    iget-object v3, v3, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v3}, Lcom/unisound/common/s;->a()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v3}, Lcom/unisound/sdk/w;->T()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p0}, Lcom/unisound/sdk/j;->b()V

    if-eqz v0, :cond_b

    move v0, v2

    :cond_b
    iget-object v3, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v3}, Lcom/unisound/sdk/w;->A()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v3}, Lcom/unisound/sdk/w;->B()Z

    move-result v3

    if-nez v3, :cond_c

    :cond_c
    iget-boolean v3, p0, Lcom/unisound/sdk/j;->c:Z

    if-eqz v3, :cond_6

    :cond_d
    :goto_2
    invoke-virtual {p0}, Lcom/unisound/sdk/j;->m()V

    iget-object v0, p0, Lcom/unisound/sdk/j;->i:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "FixRecognitionThread stop"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->g([Ljava/lang/Object;)V

    goto :goto_0

    :cond_e
    const-wide/16 v4, 0x1

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    :cond_f
    iget-object v3, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v3}, Lcom/unisound/sdk/w;->A()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-boolean v3, p0, Lcom/unisound/sdk/j;->f:Z

    if-nez v3, :cond_10

    const-wide/16 v4, 0x1

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_10
    :goto_3
    invoke-virtual {p0}, Lcom/unisound/sdk/j;->b()V

    if-eqz v0, :cond_11

    move v0, v2

    :cond_11
    iget-object v3, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v3}, Lcom/unisound/sdk/w;->A()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/unisound/sdk/j;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v3}, Lcom/unisound/sdk/w;->B()Z

    move-result v3

    if-nez v3, :cond_12

    :cond_12
    iget-boolean v3, p0, Lcom/unisound/sdk/j;->c:Z

    if-eqz v3, :cond_6

    goto :goto_2

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method
