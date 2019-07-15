.class public Lcom/phicomm/speaker/player/EchoThread;
.super Ljava/lang/Object;
.source "EchoThread.java"


# static fields
.field private static mEchoThread:Lcom/phicomm/speaker/player/EchoThread;


# instance fields
.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mThreadHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/phicomm/speaker/player/EchoThread;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/EchoThread;->mHandlerThread:Landroid/os/HandlerThread;

    .line 22
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoThread;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/player/EchoThread;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/EchoThread;->mThreadHandler:Landroid/os/Handler;

    .line 24
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/phicomm/speaker/player/EchoThread;
    .locals 2

    .prologue
    .line 27
    const-class v1, Lcom/phicomm/speaker/player/EchoThread;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/phicomm/speaker/player/EchoThread;->mEchoThread:Lcom/phicomm/speaker/player/EchoThread;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/phicomm/speaker/player/EchoThread;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/EchoThread;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/player/EchoThread;->mEchoThread:Lcom/phicomm/speaker/player/EchoThread;

    .line 30
    :cond_0
    sget-object v0, Lcom/phicomm/speaker/player/EchoThread;->mEchoThread:Lcom/phicomm/speaker/player/EchoThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoThread;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/phicomm/speaker/player/EchoThread;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/EchoThread;->mHandlerThread:Landroid/os/HandlerThread;

    .line 51
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoThread;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/player/EchoThread;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/EchoThread;->mThreadHandler:Landroid/os/Handler;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoThread;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLooper()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoThread;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/phicomm/speaker/player/EchoThread;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/EchoThread;->mHandlerThread:Landroid/os/HandlerThread;

    .line 42
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoThread;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/player/EchoThread;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/EchoThread;->mThreadHandler:Landroid/os/Handler;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoThread;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoThread;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/EchoThread;->mHandlerThread:Landroid/os/HandlerThread;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/EchoThread;->mThreadHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/EchoThread;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Landroid/os/HandlerThread;

    const-class v2, Lcom/phicomm/speaker/player/EchoThread;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/EchoThread;->mHandlerThread:Landroid/os/HandlerThread;

    .line 70
    iget-object v1, p0, Lcom/phicomm/speaker/player/EchoThread;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 71
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/phicomm/speaker/player/EchoThread;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/EchoThread;->mThreadHandler:Landroid/os/Handler;

    .line 73
    :cond_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 74
    .local v0, "futureTask":Ljava/util/concurrent/FutureTask;
    iget-object v1, p0, Lcom/phicomm/speaker/player/EchoThread;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-object v0

    .line 68
    .end local v0    # "futureTask":Ljava/util/concurrent/FutureTask;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized submit(Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/FutureTask",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoThread;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/phicomm/speaker/player/EchoThread;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/EchoThread;->mHandlerThread:Landroid/os/HandlerThread;

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoThread;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 61
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/player/EchoThread;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/EchoThread;->mThreadHandler:Landroid/os/Handler;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoThread;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-object p1

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
