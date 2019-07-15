.class public Lcom/unisound/sdk/k;
.super Ljava/lang/Thread;


# static fields
.field protected static h:J


# instance fields
.field protected i:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field protected j:Lcom/unisound/sdk/aj;

.field protected k:Lcom/unisound/sdk/ak;

.field protected l:Lcom/unisound/sdk/w;

.field protected m:Lcn/yunzhisheng/asrfix/JniAsrFix;

.field protected n:Z

.field protected o:Z

.field protected p:Ljava/lang/String;

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public r:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field public s:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1e

    sput-wide v0, Lcom/unisound/sdk/k;->h:J

    return-void
.end method

.method public constructor <init>(Lcn/yunzhisheng/asrfix/JniAsrFix;Ljava/lang/String;Lcom/unisound/sdk/w;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/k;->i:Ljava/util/concurrent/BlockingQueue;

    iput-object v1, p0, Lcom/unisound/sdk/k;->j:Lcom/unisound/sdk/aj;

    iput-object v1, p0, Lcom/unisound/sdk/k;->k:Lcom/unisound/sdk/ak;

    iput-object v1, p0, Lcom/unisound/sdk/k;->l:Lcom/unisound/sdk/w;

    iput-object v1, p0, Lcom/unisound/sdk/k;->m:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iput-boolean v2, p0, Lcom/unisound/sdk/k;->n:Z

    iput-boolean v2, p0, Lcom/unisound/sdk/k;->o:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/k;->p:Ljava/lang/String;

    iput-object p4, p0, Lcom/unisound/sdk/k;->s:Landroid/content/Context;

    iput-object p1, p0, Lcom/unisound/sdk/k;->m:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iput-object p2, p0, Lcom/unisound/sdk/k;->p:Ljava/lang/String;

    iput-object p3, p0, Lcom/unisound/sdk/k;->l:Lcom/unisound/sdk/w;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/k;->q:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/k;->r:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "RecognitionThreadInterface:doRecognitionError="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/k;->k:Lcom/unisound/sdk/ak;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/sdk/ak;->a(I)V

    :cond_0
    return-void
.end method

.method protected a(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/k;->k:Lcom/unisound/sdk/ak;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/unisound/sdk/ak;->a(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/unisound/sdk/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/k;->j:Lcom/unisound/sdk/aj;

    return-void
.end method

.method public a(Lcom/unisound/sdk/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/k;->k:Lcom/unisound/sdk/ak;

    return-void
.end method

.method protected a(Ljava/lang/String;ZII)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "RecognitionThreadInterface:doRecognitionResult partial="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", utteranceStartTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", utteranceEndTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/k;->k:Lcom/unisound/sdk/ak;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/unisound/sdk/al;

    invoke-direct {v1}, Lcom/unisound/sdk/al;-><init>()V

    invoke-virtual {v1, p1}, Lcom/unisound/sdk/al;->a(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/al;->a(Z)V

    invoke-virtual {v1, p3}, Lcom/unisound/sdk/al;->a(I)V

    invoke-virtual {v1, p4}, Lcom/unisound/sdk/al;->b(I)V

    invoke-interface {v0, v1}, Lcom/unisound/sdk/ak;->a(Lcom/unisound/sdk/al;)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;ZIJJII)V
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "RecognitionThreadInterface:doRecognitionResult partial="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/k;->k:Lcom/unisound/sdk/ak;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    move-object v1, p1

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/unisound/sdk/ak;->a(Ljava/lang/String;ZIJJII)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/unisound/sdk/k;->c()V

    :cond_0
    invoke-virtual {p0}, Lcom/unisound/sdk/k;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0xf3c

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/unisound/sdk/k;->join(J)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/unisound/sdk/k;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "waitEnd()"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected a()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/k;->i:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecognitionThreadInterface: onRecognitionEvent event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/k;->k:Lcom/unisound/sdk/ak;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/sdk/ak;->k(I)V

    :cond_0
    return-void
.end method

.method public declared-synchronized b(J)V
    .locals 13

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v5, "dropTime =>"

    aput-object v5, v0, v1

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/k;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/sdk/w;->i(J)J

    move-result-wide v8

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v5, "dropCacheByteLength =>"

    aput-object v5, v0, v1

    const/4 v1, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    move v1, v4

    move-wide v6, v2

    :goto_0
    iget-object v0, p0, Lcom/unisound/sdk/k;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/k;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    int-to-long v10, v0

    add-long/2addr v6, v10

    cmp-long v0, v6, v8

    if-ltz v0, :cond_0

    int-to-long v0, v1

    :goto_1
    move v2, v4

    :goto_2
    int-to-long v4, v2

    cmp-long v3, v4, v0

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/unisound/sdk/k;->q:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public b([B)V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FixRecognitionThread::addData size ="

    aput-object v1, v0, v3

    const/4 v1, 0x1

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " first byte "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aget-byte v2, p1, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/k;->i:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/unisound/sdk/k;->l()Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "RecognitionThreadInterface::cancel"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/k;->k:Lcom/unisound/sdk/ak;

    iput-boolean v3, p0, Lcom/unisound/sdk/k;->n:Z

    :cond_0
    return-void
.end method

.method public declared-synchronized c(J)V
    .locals 11

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v5, "dropPcmFromByteLength =>"

    aput-object v5, v0, v1

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    move v1, v4

    move-wide v6, v2

    :goto_0
    iget-object v0, p0, Lcom/unisound/sdk/k;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/k;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    int-to-long v8, v0

    add-long/2addr v6, v8

    cmp-long v0, v6, p1

    if-ltz v0, :cond_0

    int-to-long v0, v1

    :goto_1
    move v2, v4

    :goto_2
    int-to-long v4, v2

    cmp-long v3, v4, v0

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/unisound/sdk/k;->q:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method protected declared-synchronized c([B)V
    .locals 4

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/unisound/sdk/k;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/sdk/k;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    move v3, v2

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/k;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/unisound/sdk/k;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v3}, Lcom/unisound/sdk/w;->J()I

    move-result v3

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v1, p0, Lcom/unisound/sdk/k;->q:Ljava/util/List;

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

.method public d()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/unisound/sdk/k;->n:Z

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "RecognitionThreadInterface::stopRecognition"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/unisound/sdk/k;->n:Z

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/k;->j:Lcom/unisound/sdk/aj;

    iput-object v0, p0, Lcom/unisound/sdk/k;->k:Lcom/unisound/sdk/ak;

    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/k;->n:Z

    return v0
.end method

.method protected h()[B
    .locals 4

    iget-object v0, p0, Lcom/unisound/sdk/k;->i:Ljava/util/concurrent/BlockingQueue;

    sget-wide v2, Lcom/unisound/sdk/k;->h:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method protected i()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "RecognitionThreadInterface:doRecognitionMaxSpeechTimeout"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/k;->k:Lcom/unisound/sdk/ak;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/ak;->m()V

    :cond_0
    return-void
.end method

.method protected j()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "RecognitionThreadInterface:onRecognitionVADTimeout"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/k;->k:Lcom/unisound/sdk/ak;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/ak;->l()V

    :cond_0
    return-void
.end method

.method protected k()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "RecognitionThreadInterface:doOneshotStart"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/k;->k:Lcom/unisound/sdk/ak;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/unisound/sdk/m;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->c()V

    :cond_0
    return-void
.end method

.method protected l()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/unisound/sdk/k;->m:Lcn/yunzhisheng/asrfix/JniAsrFix;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unisound/sdk/k;->m:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/unisound/sdk/k;->k:Lcom/unisound/sdk/ak;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected m()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/k;->k:Lcom/unisound/sdk/ak;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/ak;->i()V

    :cond_0
    return-void
.end method

.method protected n()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/k;->j:Lcom/unisound/sdk/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/k;->j:Lcom/unisound/sdk/aj;

    invoke-interface {v0}, Lcom/unisound/sdk/aj;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/k;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/k;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->B()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/k;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 6

    iget-object v0, p0, Lcom/unisound/sdk/k;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/k;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/k;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/unisound/sdk/k;->l:Lcom/unisound/sdk/w;

    iget-object v3, p0, Lcom/unisound/sdk/k;->l:Lcom/unisound/sdk/w;

    invoke-virtual {v3}, Lcom/unisound/sdk/w;->O()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/unisound/sdk/w;->i(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/k;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/common/j;->a(Landroid/content/Context;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/k;->r:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/k;->r:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lcom/unisound/sdk/k;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/unisound/sdk/k;->r:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lcom/unisound/sdk/k;->i:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/unisound/sdk/k;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
