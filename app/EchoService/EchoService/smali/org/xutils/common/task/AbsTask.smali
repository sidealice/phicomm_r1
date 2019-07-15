.class public abstract Lorg/xutils/common/task/AbsTask;
.super Ljava/lang/Object;
.source "AbsTask.java"

# interfaces
.implements Lorg/xutils/common/Callback$Cancelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/common/task/AbsTask$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/xutils/common/Callback$Cancelable;"
    }
.end annotation


# instance fields
.field private final cancelHandler:Lorg/xutils/common/Callback$Cancelable;

.field private volatile isCancelled:Z

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResultType;"
        }
    .end annotation
.end field

.field private volatile state:Lorg/xutils/common/task/AbsTask$State;

.field private taskProxy:Lorg/xutils/common/task/TaskProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    .local p0, "this":Lorg/xutils/common/task/AbsTask;, "Lorg/xutils/common/task/AbsTask<TResultType;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/xutils/common/task/AbsTask;-><init>(Lorg/xutils/common/Callback$Cancelable;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/xutils/common/Callback$Cancelable;)V
    .locals 1
    .param p1, "cancelHandler"    # Lorg/xutils/common/Callback$Cancelable;

    .prologue
    .line 27
    .local p0, "this":Lorg/xutils/common/task/AbsTask;, "Lorg/xutils/common/task/AbsTask<TResultType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xutils/common/task/AbsTask;->taskProxy:Lorg/xutils/common/task/TaskProxy;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xutils/common/task/AbsTask;->isCancelled:Z

    .line 20
    sget-object v0, Lorg/xutils/common/task/AbsTask$State;->IDLE:Lorg/xutils/common/task/AbsTask$State;

    iput-object v0, p0, Lorg/xutils/common/task/AbsTask;->state:Lorg/xutils/common/task/AbsTask$State;

    .line 28
    iput-object p1, p0, Lorg/xutils/common/task/AbsTask;->cancelHandler:Lorg/xutils/common/Callback$Cancelable;

    .line 29
    return-void
.end method


# virtual methods
.method public final declared-synchronized cancel()V
    .locals 3

    .prologue
    .line 83
    .local p0, "this":Lorg/xutils/common/task/AbsTask;, "Lorg/xutils/common/task/AbsTask<TResultType;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/xutils/common/task/AbsTask;->isCancelled:Z

    if-nez v0, :cond_2

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xutils/common/task/AbsTask;->isCancelled:Z

    .line 85
    invoke-virtual {p0}, Lorg/xutils/common/task/AbsTask;->cancelWorks()V

    .line 86
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->cancelHandler:Lorg/xutils/common/Callback$Cancelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->cancelHandler:Lorg/xutils/common/Callback$Cancelable;

    invoke-interface {v0}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->cancelHandler:Lorg/xutils/common/Callback$Cancelable;

    invoke-interface {v0}, Lorg/xutils/common/Callback$Cancelable;->cancel()V

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->state:Lorg/xutils/common/task/AbsTask$State;

    sget-object v1, Lorg/xutils/common/task/AbsTask$State;->WAITING:Lorg/xutils/common/task/AbsTask$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->state:Lorg/xutils/common/task/AbsTask$State;

    sget-object v1, Lorg/xutils/common/task/AbsTask$State;->STARTED:Lorg/xutils/common/task/AbsTask$State;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/xutils/common/task/AbsTask;->isCancelFast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    :cond_1
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->taskProxy:Lorg/xutils/common/task/TaskProxy;

    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->taskProxy:Lorg/xutils/common/task/TaskProxy;

    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    const-string v2, "cancelled by user"

    invoke-direct {v1, v2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/xutils/common/task/TaskProxy;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V

    .line 92
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->taskProxy:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v0}, Lorg/xutils/common/task/TaskProxy;->onFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 93
    :cond_3
    :try_start_1
    instance-of v0, p0, Lorg/xutils/common/task/TaskProxy;

    if-eqz v0, :cond_2

    .line 94
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "cancelled by user"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xutils/common/task/AbsTask;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V

    .line 95
    invoke-virtual {p0}, Lorg/xutils/common/task/AbsTask;->onFinished()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected cancelWorks()V
    .locals 0

    .prologue
    .line 70
    .local p0, "this":Lorg/xutils/common/task/AbsTask;, "Lorg/xutils/common/task/AbsTask<TResultType;>;"
    return-void
.end method

.method protected abstract doBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lorg/xutils/common/task/AbsTask;, "Lorg/xutils/common/task/AbsTask<TResultType;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()Lorg/xutils/common/task/Priority;
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lorg/xutils/common/task/AbsTask;, "Lorg/xutils/common/task/AbsTask<TResultType;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultType;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lorg/xutils/common/task/AbsTask;, "Lorg/xutils/common/task/AbsTask<TResultType;>;"
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public final getState()Lorg/xutils/common/task/AbsTask$State;
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lorg/xutils/common/task/AbsTask;, "Lorg/xutils/common/task/AbsTask<TResultType;>;"
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->state:Lorg/xutils/common/task/AbsTask$State;

    return-object v0
.end method

.method protected isCancelFast()Z
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lorg/xutils/common/task/AbsTask;, "Lorg/xutils/common/task/AbsTask<TResultType;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final isCancelled()Z
    .locals 2

    .prologue
    .line 103
    .local p0, "this":Lorg/xutils/common/task/AbsTask;, "Lorg/xutils/common/task/AbsTask<TResultType;>;"
    iget-boolean v0, p0, Lorg/xutils/common/task/AbsTask;->isCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->state:Lorg/xutils/common/task/AbsTask$State;

    sget-object v1, Lorg/xutils/common/task/AbsTask$State;->CANCELLED:Lorg/xutils/common/task/AbsTask$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->cancelHandler:Lorg/xutils/common/Callback$Cancelable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->cancelHandler:Lorg/xutils/common/Callback$Cancelable;

    .line 104
    invoke-interface {v0}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFinished()Z
    .locals 2

    .prologue
    .line 108
    .local p0, "this":Lorg/xutils/common/task/AbsTask;, "Lorg/xutils/common/task/AbsTask<TResultType;>;"
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->state:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {v0}, Lorg/xutils/common/task/AbsTask$State;->value()I

    move-result v0

    sget-object v1, Lorg/xutils/common/task/AbsTask$State;->STARTED:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {v1}, Lorg/xutils/common/task/AbsTask$State;->value()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .locals 0
    .param p1, "cex"    # Lorg/xutils/common/Callback$CancelledException;

    .prologue
    .line 47
    .local p0, "this":Lorg/xutils/common/task/AbsTask;, "Lorg/xutils/common/task/AbsTask<TResultType;>;"
    return-void
.end method

.method protected abstract onError(Ljava/lang/Throwable;Z)V
.end method

.method protected onFinished()V
    .locals 0

    .prologue
    .line 50
    .local p0, "this":Lorg/xutils/common/task/AbsTask;, "Lorg/xutils/common/task/AbsTask<TResultType;>;"
    return-void
.end method

.method protected onStarted()V
    .locals 0

    .prologue
    .line 41
    .local p0, "this":Lorg/xutils/common/task/AbsTask;, "Lorg/xutils/common/task/AbsTask<TResultType;>;"
    return-void
.end method

.method protected abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation
.end method

.method protected varargs onUpdate(I[Ljava/lang/Object;)V
    .locals 0
    .param p1, "flag"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Lorg/xutils/common/task/AbsTask;, "Lorg/xutils/common/task/AbsTask<TResultType;>;"
    return-void
.end method

.method protected onWaiting()V
    .locals 0

    .prologue
    .line 38
    .local p0, "this":Lorg/xutils/common/task/AbsTask;, "Lorg/xutils/common/task/AbsTask<TResultType;>;"
    return-void
.end method

.method final setResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lorg/xutils/common/task/AbsTask;, "Lorg/xutils/common/task/AbsTask<TResultType;>;"
    .local p1, "result":Ljava/lang/Object;, "TResultType;"
    iput-object p1, p0, Lorg/xutils/common/task/AbsTask;->result:Ljava/lang/Object;

    .line 132
    return-void
.end method

.method setState(Lorg/xutils/common/task/AbsTask$State;)V
    .locals 0
    .param p1, "state"    # Lorg/xutils/common/task/AbsTask$State;

    .prologue
    .line 121
    .local p0, "this":Lorg/xutils/common/task/AbsTask;, "Lorg/xutils/common/task/AbsTask<TResultType;>;"
    iput-object p1, p0, Lorg/xutils/common/task/AbsTask;->state:Lorg/xutils/common/task/AbsTask$State;

    .line 122
    return-void
.end method

.method final setTaskProxy(Lorg/xutils/common/task/TaskProxy;)V
    .locals 0
    .param p1, "taskProxy"    # Lorg/xutils/common/task/TaskProxy;

    .prologue
    .line 126
    .local p0, "this":Lorg/xutils/common/task/AbsTask;, "Lorg/xutils/common/task/AbsTask<TResultType;>;"
    iput-object p1, p0, Lorg/xutils/common/task/AbsTask;->taskProxy:Lorg/xutils/common/task/TaskProxy;

    .line 127
    return-void
.end method

.method protected final varargs update(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "flag"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 61
    .local p0, "this":Lorg/xutils/common/task/AbsTask;, "Lorg/xutils/common/task/AbsTask<TResultType;>;"
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->taskProxy:Lorg/xutils/common/task/TaskProxy;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->taskProxy:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v0, p1, p2}, Lorg/xutils/common/task/TaskProxy;->onUpdate(I[Ljava/lang/Object;)V

    .line 64
    :cond_0
    return-void
.end method
