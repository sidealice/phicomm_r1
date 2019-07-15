.class public Lcom/unisound/sdk/aa;
.super Ljava/lang/Thread;


# static fields
.field protected static g:J


# instance fields
.field protected volatile a:Z

.field protected b:Lcom/unisound/sdk/au;

.field protected c:Lcn/yunzhisheng/asr/a;

.field protected d:Lcn/yunzhisheng/asr/VAD;

.field protected e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field f:[B

.field private h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1e

    sput-wide v0, Lcom/unisound/sdk/aa;->g:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/au;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v2, p0, Lcom/unisound/sdk/aa;->a:Z

    iput-object v0, p0, Lcom/unisound/sdk/aa;->b:Lcom/unisound/sdk/au;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->c:Lcn/yunzhisheng/asr/a;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->d:Lcn/yunzhisheng/asr/VAD;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/aa;->e:Ljava/util/concurrent/BlockingQueue;

    iput-object p1, p0, Lcom/unisound/sdk/aa;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/unisound/sdk/aa;->c:Lcn/yunzhisheng/asr/a;

    iput-object p3, p0, Lcom/unisound/sdk/aa;->b:Lcom/unisound/sdk/au;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InputVadThread::VAD new"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    new-instance v0, Lcn/yunzhisheng/asr/VAD;

    invoke-direct {v0, p2, p3}, Lcn/yunzhisheng/asr/VAD;-><init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/cr;)V

    iput-object v0, p0, Lcom/unisound/sdk/aa;->d:Lcn/yunzhisheng/asr/VAD;

    iget-object v0, p0, Lcom/unisound/sdk/aa;->d:Lcn/yunzhisheng/asr/VAD;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/VAD;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/au;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/aa;->a:Z

    iput-object v1, p0, Lcom/unisound/sdk/aa;->b:Lcom/unisound/sdk/au;

    iput-object v1, p0, Lcom/unisound/sdk/aa;->c:Lcn/yunzhisheng/asr/a;

    iput-object v1, p0, Lcom/unisound/sdk/aa;->d:Lcn/yunzhisheng/asr/VAD;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/aa;->e:Ljava/util/concurrent/BlockingQueue;

    iput-object p1, p0, Lcom/unisound/sdk/aa;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/unisound/sdk/aa;->c:Lcn/yunzhisheng/asr/a;

    iput-object p3, p0, Lcom/unisound/sdk/aa;->b:Lcom/unisound/sdk/au;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/unisound/sdk/aa;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "InputVadThread::stopVad"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/unisound/sdk/aa;->a:Z

    :cond_0
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<[B>;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "inputVADThread::addAll"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "inputVADThread::addAll"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/aa;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public a([B)V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "inputVADThread::addData size ="

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

    const/4 v1, 0x4

    const-string v2, " thread = "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/aa;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/aa;->a:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aa;->b:Lcom/unisound/sdk/au;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 3

    invoke-virtual {p0}, Lcom/unisound/sdk/aa;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/unisound/sdk/aa;->a()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "InputVadThread::cancel"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/aa;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/aa;->b:Lcom/unisound/sdk/au;

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/aa;->a:Z

    return v0
.end method

.method public f()V
    .locals 3

    invoke-virtual {p0}, Lcom/unisound/sdk/aa;->d()V

    invoke-virtual {p0}, Lcom/unisound/sdk/aa;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xfa0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/unisound/sdk/aa;->join(J)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "InputVadThread::waitEnd()"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aa;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->T()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/aa;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/aa;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/aa;->d:Lcn/yunzhisheng/asr/VAD;

    iget-object v0, v0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/aa;->d:Lcn/yunzhisheng/asr/VAD;

    iget-object v0, v0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public h()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InputVadThread setVadEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/unisound/sdk/aa;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v3}, Lcn/yunzhisheng/asr/a;->am()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/aa;->d:Lcn/yunzhisheng/asr/VAD;

    iget-object v1, p0, Lcom/unisound/sdk/aa;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->am()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/VAD;->a(Z)V

    return-void
.end method

.method public run()V
    .locals 8

    const/4 v2, 0x4

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "InputVadThread start"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/unisound/common/y;->g([Ljava/lang/Object;)V

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "InputVadThread -> run ThreadName = "

    aput-object v1, v0, v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, ", ThreadId = "

    aput-object v1, v0, v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/unisound/sdk/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/aa;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/unisound/sdk/aa;->c()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/unisound/sdk/aa;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->B()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/aa;->d:Lcn/yunzhisheng/asr/VAD;

    iget-object v0, v0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/aa;->d:Lcn/yunzhisheng/asr/VAD;

    iget-boolean v0, v0, Lcn/yunzhisheng/asr/VAD;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/aa;->d:Lcn/yunzhisheng/asr/VAD;

    iget-object v0, v0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lcom/unisound/sdk/aa;->d:Lcn/yunzhisheng/asr/VAD;

    iget-object v2, p0, Lcom/unisound/sdk/aa;->d:Lcn/yunzhisheng/asr/VAD;

    iget-boolean v2, v2, Lcn/yunzhisheng/asr/VAD;->h:Z

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcn/yunzhisheng/asr/VAD;->a(Z[BII)V

    sget-boolean v1, Lcom/unisound/common/y;->l:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "inputVADThread::ondata size="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, " first byte "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aget-byte v0, v0, v3

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x4

    const-string v2, " thread = "

    aput-object v2, v1, v0

    const/4 v0, 0x5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InputVadThread::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/unisound/sdk/aa;->b:Lcom/unisound/sdk/au;

    invoke-interface {v0}, Lcom/unisound/sdk/au;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "InputVadThread::VAD destory"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/aa;->d:Lcn/yunzhisheng/asr/VAD;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/VAD;->d()V

    iget-object v0, p0, Lcom/unisound/sdk/aa;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    :goto_1
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "InputVadThread stop"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/unisound/common/y;->g([Ljava/lang/Object;)V

    return-void

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/unisound/sdk/aa;->e:Ljava/util/concurrent/BlockingQueue;

    sget-wide v2, Lcom/unisound/sdk/aa;->g:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/unisound/sdk/aa;->f:[B

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unisound/sdk/aa;->f:[B

    array-length v0, v0

    if-ne v0, v6, :cond_5

    iget-object v0, p0, Lcom/unisound/sdk/aa;->f:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/unisound/sdk/aa;->d()V

    :cond_3
    iget-object v0, p0, Lcom/unisound/sdk/aa;->b:Lcom/unisound/sdk/au;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unisound/sdk/aa;->d:Lcn/yunzhisheng/asr/VAD;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/VAD;->e()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "InputVadThread::VAD destory"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/aa;->d:Lcn/yunzhisheng/asr/VAD;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/VAD;->d()V

    iget-object v0, p0, Lcom/unisound/sdk/aa;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    goto :goto_1

    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/unisound/sdk/aa;->f:[B

    array-length v0, v0

    if-ne v0, v7, :cond_7

    iget-object v0, p0, Lcom/unisound/sdk/aa;->f:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v1, -0x38

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/unisound/sdk/aa;->f:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    const/16 v1, -0x38

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/unisound/sdk/aa;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->z()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/unisound/sdk/aa;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/common/j;->b(ZLjava/lang/String;)Z

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/unisound/sdk/aa;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/common/j;->b(ZLjava/lang/String;)Z

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/unisound/sdk/aa;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/common/j;->b(ZLjava/lang/String;)Z

    :cond_6
    iget-object v0, p0, Lcom/unisound/sdk/aa;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->S()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "InputVadThread::VAD destory"

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/unisound/sdk/aa;->d:Lcn/yunzhisheng/asr/VAD;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/VAD;->d()V

    iget-object v1, p0, Lcom/unisound/sdk/aa;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    throw v0

    :cond_7
    :try_start_4
    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "inputVADThread::write size ="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/unisound/sdk/aa;->f:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " first byte "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/unisound/sdk/aa;->f:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, " thread = "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Lcom/unisound/sdk/aa;->d:Lcn/yunzhisheng/asr/VAD;

    iget-object v1, p0, Lcom/unisound/sdk/aa;->f:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/unisound/sdk/aa;->f:[B

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/yunzhisheng/asr/VAD;->a([BII)I

    goto/16 :goto_0

    :cond_9
    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method
