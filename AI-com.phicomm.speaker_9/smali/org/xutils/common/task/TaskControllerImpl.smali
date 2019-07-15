.class public final Lorg/xutils/common/task/TaskControllerImpl;
.super Ljava/lang/Object;
.source "TaskControllerImpl.java"

# interfaces
.implements Lorg/xutils/common/TaskController;


# static fields
.field private static volatile a:Lorg/xutils/common/TaskController;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerInstance()V
    .locals 2

    .line 24
    sget-object v0, Lorg/xutils/common/task/TaskControllerImpl;->a:Lorg/xutils/common/TaskController;

    if-nez v0, :cond_1

    .line 25
    const-class v0, Lorg/xutils/common/TaskController;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lorg/xutils/common/task/TaskControllerImpl;->a:Lorg/xutils/common/TaskController;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lorg/xutils/common/task/TaskControllerImpl;

    invoke-direct {v1}, Lorg/xutils/common/task/TaskControllerImpl;-><init>()V

    sput-object v1, Lorg/xutils/common/task/TaskControllerImpl;->a:Lorg/xutils/common/TaskController;

    .line 29
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 31
    :cond_1
    :goto_0
    sget-object v0, Lorg/xutils/common/task/TaskControllerImpl;->a:Lorg/xutils/common/TaskController;

    invoke-static {v0}, Lorg/xutils/x$Ext;->setTaskController(Lorg/xutils/common/TaskController;)V

    return-void
.end method


# virtual methods
.method public autoPost(Ljava/lang/Runnable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 181
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 182
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 184
    :cond_1
    sget-object v0, Lorg/xutils/common/task/b;->e:Lorg/xutils/common/task/b$b;

    invoke-virtual {v0, p1}, Lorg/xutils/common/task/b$b;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 196
    :cond_0
    sget-object v0, Lorg/xutils/common/task/b;->e:Lorg/xutils/common/task/b$b;

    invoke-virtual {v0, p1}, Lorg/xutils/common/task/b$b;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 208
    :cond_0
    sget-object v0, Lorg/xutils/common/task/b;->e:Lorg/xutils/common/task/b$b;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xutils/common/task/b$b;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    .line 232
    sget-object v0, Lorg/xutils/common/task/b;->e:Lorg/xutils/common/task/b$b;

    invoke-virtual {v0, p1}, Lorg/xutils/common/task/b$b;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run(Ljava/lang/Runnable;)V
    .locals 1

    .line 218
    sget-object v0, Lorg/xutils/common/task/b;->f:Lorg/xutils/common/task/PriorityExecutor;

    invoke-virtual {v0}, Lorg/xutils/common/task/PriorityExecutor;->isBusy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    sget-object v0, Lorg/xutils/common/task/b;->f:Lorg/xutils/common/task/PriorityExecutor;

    invoke-virtual {v0, p1}, Lorg/xutils/common/task/PriorityExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method

.method public start(Lorg/xutils/common/task/AbsTask;)Lorg/xutils/common/task/AbsTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/common/task/AbsTask<",
            "TT;>;)",
            "Lorg/xutils/common/task/AbsTask<",
            "TT;>;"
        }
    .end annotation

    .line 44
    instance-of v0, p1, Lorg/xutils/common/task/b;

    if-eqz v0, :cond_0

    .line 45
    check-cast p1, Lorg/xutils/common/task/b;

    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Lorg/xutils/common/task/b;

    invoke-direct {v0, p1}, Lorg/xutils/common/task/b;-><init>(Lorg/xutils/common/task/AbsTask;)V

    move-object p1, v0

    .line 50
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/xutils/common/task/b;->doBackground()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object p1
.end method

.method public startSync(Lorg/xutils/common/task/AbsTask;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/common/task/AbsTask<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 61
    :try_start_0
    invoke-virtual {p1}, Lorg/xutils/common/task/AbsTask;->onWaiting()V

    .line 62
    invoke-virtual {p1}, Lorg/xutils/common/task/AbsTask;->onStarted()V

    .line 63
    invoke-virtual {p1}, Lorg/xutils/common/task/AbsTask;->doBackground()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :try_start_1
    invoke-virtual {p1, v1}, Lorg/xutils/common/task/AbsTask;->onSuccess(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    invoke-virtual {p1}, Lorg/xutils/common/task/AbsTask;->onFinished()V

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    .line 68
    :try_start_2
    invoke-virtual {p1, v0, v1}, Lorg/xutils/common/task/AbsTask;->onError(Ljava/lang/Throwable;Z)V

    .line 69
    throw v0

    :catch_2
    move-exception v1

    .line 66
    :goto_0
    invoke-virtual {p1, v1}, Lorg/xutils/common/task/AbsTask;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    invoke-virtual {p1}, Lorg/xutils/common/task/AbsTask;->onFinished()V

    :goto_1
    return-object v0

    :goto_2
    invoke-virtual {p1}, Lorg/xutils/common/task/AbsTask;->onFinished()V

    throw v0
.end method

.method public varargs startTasks(Lorg/xutils/common/Callback$GroupCallback;[Lorg/xutils/common/task/AbsTask;)Lorg/xutils/common/Callback$Cancelable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/xutils/common/task/AbsTask<",
            "*>;>(",
            "Lorg/xutils/common/Callback$GroupCallback<",
            "TT;>;[TT;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 82
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "task must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_0
    new-instance v6, Lorg/xutils/common/task/TaskControllerImpl$1;

    invoke-direct {v6, p0, p2, p1}, Lorg/xutils/common/task/TaskControllerImpl$1;-><init>(Lorg/xutils/common/task/TaskControllerImpl;[Lorg/xutils/common/task/AbsTask;Lorg/xutils/common/Callback$GroupCallback;)V

    .line 99
    array-length v7, p2

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v4, p2, v8

    .line 100
    new-instance v9, Lorg/xutils/common/task/TaskControllerImpl$2;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v4

    move-object v3, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/xutils/common/task/TaskControllerImpl$2;-><init>(Lorg/xutils/common/task/TaskControllerImpl;Lorg/xutils/common/task/AbsTask;Lorg/xutils/common/Callback$GroupCallback;Lorg/xutils/common/task/AbsTask;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v9}, Lorg/xutils/common/task/TaskControllerImpl;->start(Lorg/xutils/common/task/AbsTask;)Lorg/xutils/common/task/AbsTask;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 156
    :cond_1
    new-instance p1, Lorg/xutils/common/task/TaskControllerImpl$3;

    invoke-direct {p1, p0, p2}, Lorg/xutils/common/task/TaskControllerImpl$3;-><init>(Lorg/xutils/common/task/TaskControllerImpl;[Lorg/xutils/common/task/AbsTask;)V

    return-object p1
.end method
