.class Lorg/xutils/common/task/TaskProxy;
.super Lorg/xutils/common/task/AbsTask;
.source "TaskProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/common/task/TaskProxy$InternalHandler;,
        Lorg/xutils/common/task/TaskProxy$ArgsObj;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/xutils/common/task/AbsTask",
        "<TResultType;>;"
    }
.end annotation


# static fields
.field private static final MSG_WHAT_BASE:I = 0x3b9aca00

.field private static final MSG_WHAT_ON_CANCEL:I = 0x3b9aca06

.field private static final MSG_WHAT_ON_ERROR:I = 0x3b9aca04

.field private static final MSG_WHAT_ON_FINISHED:I = 0x3b9aca07

.field private static final MSG_WHAT_ON_START:I = 0x3b9aca02

.field private static final MSG_WHAT_ON_SUCCESS:I = 0x3b9aca03

.field private static final MSG_WHAT_ON_UPDATE:I = 0x3b9aca05

.field private static final MSG_WHAT_ON_WAITING:I = 0x3b9aca01

.field static final sDefaultExecutor:Lorg/xutils/common/task/PriorityExecutor;

.field static final sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;


# instance fields
.field private volatile callOnCanceled:Z

.field private volatile callOnFinished:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private final task:Lorg/xutils/common/task/AbsTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/task/AbsTask",
            "<TResultType;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lorg/xutils/common/task/TaskProxy$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/xutils/common/task/TaskProxy$InternalHandler;-><init>(Lorg/xutils/common/task/TaskProxy$1;)V

    sput-object v0, Lorg/xutils/common/task/TaskProxy;->sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;

    .line 21
    new-instance v0, Lorg/xutils/common/task/PriorityExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/xutils/common/task/PriorityExecutor;-><init>(Z)V

    sput-object v0, Lorg/xutils/common/task/TaskProxy;->sDefaultExecutor:Lorg/xutils/common/task/PriorityExecutor;

    return-void
.end method

.method constructor <init>(Lorg/xutils/common/task/AbsTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/common/task/AbsTask",
            "<TResultType;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/xutils/common/task/TaskProxy;, "Lorg/xutils/common/task/TaskProxy<TResultType;>;"
    .local p1, "task":Lorg/xutils/common/task/AbsTask;, "Lorg/xutils/common/task/AbsTask<TResultType;>;"
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1}, Lorg/xutils/common/task/AbsTask;-><init>(Lorg/xutils/common/Callback$Cancelable;)V

    .line 25
    iput-boolean v1, p0, Lorg/xutils/common/task/TaskProxy;->callOnCanceled:Z

    .line 26
    iput-boolean v1, p0, Lorg/xutils/common/task/TaskProxy;->callOnFinished:Z

    .line 30
    iput-object p1, p0, Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;

    .line 31
    iget-object v1, p0, Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;

    invoke-virtual {v1, p0}, Lorg/xutils/common/task/AbsTask;->setTaskProxy(Lorg/xutils/common/task/TaskProxy;)V

    .line 32
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/xutils/common/task/TaskProxy;->setTaskProxy(Lorg/xutils/common/task/TaskProxy;)V

    .line 33
    invoke-virtual {p1}, Lorg/xutils/common/task/AbsTask;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 34
    .local v0, "taskExecutor":Ljava/util/concurrent/Executor;
    if-nez v0, :cond_0

    .line 35
    sget-object v0, Lorg/xutils/common/task/TaskProxy;->sDefaultExecutor:Lorg/xutils/common/task/PriorityExecutor;

    .line 37
    :cond_0
    iput-object v0, p0, Lorg/xutils/common/task/TaskProxy;->executor:Ljava/util/concurrent/Executor;

    .line 38
    return-void
.end method

.method static synthetic access$100(Lorg/xutils/common/task/TaskProxy;)Z
    .locals 1
    .param p0, "x0"    # Lorg/xutils/common/task/TaskProxy;

    .prologue
    .line 18
    iget-boolean v0, p0, Lorg/xutils/common/task/TaskProxy;->callOnCanceled:Z

    return v0
.end method

.method static synthetic access$102(Lorg/xutils/common/task/TaskProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/xutils/common/task/TaskProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lorg/xutils/common/task/TaskProxy;->callOnCanceled:Z

    return p1
.end method

.method static synthetic access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;
    .locals 1
    .param p0, "x0"    # Lorg/xutils/common/task/TaskProxy;

    .prologue
    .line 18
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;

    return-object v0
.end method

.method static synthetic access$300(Lorg/xutils/common/task/TaskProxy;)Z
    .locals 1
    .param p0, "x0"    # Lorg/xutils/common/task/TaskProxy;

    .prologue
    .line 18
    iget-boolean v0, p0, Lorg/xutils/common/task/TaskProxy;->callOnFinished:Z

    return v0
.end method

.method static synthetic access$302(Lorg/xutils/common/task/TaskProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/xutils/common/task/TaskProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lorg/xutils/common/task/TaskProxy;->callOnFinished:Z

    return p1
.end method


# virtual methods
.method protected final doBackground()Ljava/lang/Object;
    .locals 3
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

    .prologue
    .line 42
    .local p0, "this":Lorg/xutils/common/task/TaskProxy;, "Lorg/xutils/common/task/TaskProxy<TResultType;>;"
    invoke-virtual {p0}, Lorg/xutils/common/task/TaskProxy;->onWaiting()V

    .line 43
    new-instance v0, Lorg/xutils/common/task/PriorityRunnable;

    iget-object v1, p0, Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;

    .line 44
    invoke-virtual {v1}, Lorg/xutils/common/task/AbsTask;->getPriority()Lorg/xutils/common/task/Priority;

    move-result-object v1

    new-instance v2, Lorg/xutils/common/task/TaskProxy$1;

    invoke-direct {v2, p0}, Lorg/xutils/common/task/TaskProxy$1;-><init>(Lorg/xutils/common/task/TaskProxy;)V

    invoke-direct {v0, v1, v2}, Lorg/xutils/common/task/PriorityRunnable;-><init>(Lorg/xutils/common/task/Priority;Ljava/lang/Runnable;)V

    .line 81
    .local v0, "runnable":Lorg/xutils/common/task/PriorityRunnable;
    iget-object v1, p0, Lorg/xutils/common/task/TaskProxy;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 82
    const/4 v1, 0x0

    return-object v1
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 139
    .local p0, "this":Lorg/xutils/common/task/TaskProxy;, "Lorg/xutils/common/task/TaskProxy<TResultType;>;"
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getPriority()Lorg/xutils/common/task/Priority;
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Lorg/xutils/common/task/TaskProxy;, "Lorg/xutils/common/task/TaskProxy<TResultType;>;"
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;

    invoke-virtual {v0}, Lorg/xutils/common/task/AbsTask;->getPriority()Lorg/xutils/common/task/Priority;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .locals 5
    .param p1, "cex"    # Lorg/xutils/common/Callback$CancelledException;

    .prologue
    .line 117
    .local p0, "this":Lorg/xutils/common/task/TaskProxy;, "Lorg/xutils/common/task/TaskProxy<TResultType;>;"
    sget-object v0, Lorg/xutils/common/task/AbsTask$State;->CANCELLED:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {p0, v0}, Lorg/xutils/common/task/TaskProxy;->setState(Lorg/xutils/common/task/AbsTask$State;)V

    .line 118
    sget-object v0, Lorg/xutils/common/task/TaskProxy;->sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;

    const v1, 0x3b9aca06

    new-instance v2, Lorg/xutils/common/task/TaskProxy$ArgsObj;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, p0, v3}, Lorg/xutils/common/task/TaskProxy$ArgsObj;-><init>(Lorg/xutils/common/task/TaskProxy;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lorg/xutils/common/task/TaskProxy$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 119
    return-void
.end method

.method protected onError(Ljava/lang/Throwable;Z)V
    .locals 5
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "isCallbackError"    # Z

    .prologue
    .line 105
    .local p0, "this":Lorg/xutils/common/task/TaskProxy;, "Lorg/xutils/common/task/TaskProxy<TResultType;>;"
    sget-object v0, Lorg/xutils/common/task/AbsTask$State;->ERROR:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {p0, v0}, Lorg/xutils/common/task/TaskProxy;->setState(Lorg/xutils/common/task/AbsTask$State;)V

    .line 106
    sget-object v0, Lorg/xutils/common/task/TaskProxy;->sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;

    const v1, 0x3b9aca04

    new-instance v2, Lorg/xutils/common/task/TaskProxy$ArgsObj;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, p0, v3}, Lorg/xutils/common/task/TaskProxy$ArgsObj;-><init>(Lorg/xutils/common/task/TaskProxy;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lorg/xutils/common/task/TaskProxy$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 107
    return-void
.end method

.method protected onFinished()V
    .locals 2

    .prologue
    .line 123
    .local p0, "this":Lorg/xutils/common/task/TaskProxy;, "Lorg/xutils/common/task/TaskProxy<TResultType;>;"
    sget-object v0, Lorg/xutils/common/task/TaskProxy;->sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;

    const v1, 0x3b9aca07

    invoke-virtual {v0, v1, p0}, Lorg/xutils/common/task/TaskProxy$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 124
    return-void
.end method

.method protected onStarted()V
    .locals 2

    .prologue
    .line 93
    .local p0, "this":Lorg/xutils/common/task/TaskProxy;, "Lorg/xutils/common/task/TaskProxy<TResultType;>;"
    sget-object v0, Lorg/xutils/common/task/AbsTask$State;->STARTED:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {p0, v0}, Lorg/xutils/common/task/TaskProxy;->setState(Lorg/xutils/common/task/AbsTask$State;)V

    .line 94
    sget-object v0, Lorg/xutils/common/task/TaskProxy;->sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;

    const v1, 0x3b9aca02

    invoke-virtual {v0, v1, p0}, Lorg/xutils/common/task/TaskProxy$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 95
    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lorg/xutils/common/task/TaskProxy;, "Lorg/xutils/common/task/TaskProxy<TResultType;>;"
    .local p1, "result":Ljava/lang/Object;, "TResultType;"
    sget-object v0, Lorg/xutils/common/task/AbsTask$State;->SUCCESS:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {p0, v0}, Lorg/xutils/common/task/TaskProxy;->setState(Lorg/xutils/common/task/AbsTask$State;)V

    .line 100
    sget-object v0, Lorg/xutils/common/task/TaskProxy;->sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;

    const v1, 0x3b9aca03

    invoke-virtual {v0, v1, p0}, Lorg/xutils/common/task/TaskProxy$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 101
    return-void
.end method

.method protected varargs onUpdate(I[Ljava/lang/Object;)V
    .locals 3
    .param p1, "flag"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 112
    .local p0, "this":Lorg/xutils/common/task/TaskProxy;, "Lorg/xutils/common/task/TaskProxy<TResultType;>;"
    sget-object v0, Lorg/xutils/common/task/TaskProxy;->sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;

    const v1, 0x3b9aca05

    new-instance v2, Lorg/xutils/common/task/TaskProxy$ArgsObj;

    invoke-direct {v2, p0, p2}, Lorg/xutils/common/task/TaskProxy$ArgsObj;-><init>(Lorg/xutils/common/task/TaskProxy;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p1, p1, v2}, Lorg/xutils/common/task/TaskProxy$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    return-void
.end method

.method protected onWaiting()V
    .locals 2

    .prologue
    .line 87
    .local p0, "this":Lorg/xutils/common/task/TaskProxy;, "Lorg/xutils/common/task/TaskProxy<TResultType;>;"
    sget-object v0, Lorg/xutils/common/task/AbsTask$State;->WAITING:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {p0, v0}, Lorg/xutils/common/task/TaskProxy;->setState(Lorg/xutils/common/task/AbsTask$State;)V

    .line 88
    sget-object v0, Lorg/xutils/common/task/TaskProxy;->sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;

    const v1, 0x3b9aca01

    invoke-virtual {v0, v1, p0}, Lorg/xutils/common/task/TaskProxy$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 89
    return-void
.end method

.method final setState(Lorg/xutils/common/task/AbsTask$State;)V
    .locals 1
    .param p1, "state"    # Lorg/xutils/common/task/AbsTask$State;

    .prologue
    .line 128
    .local p0, "this":Lorg/xutils/common/task/TaskProxy;, "Lorg/xutils/common/task/TaskProxy<TResultType;>;"
    invoke-super {p0, p1}, Lorg/xutils/common/task/AbsTask;->setState(Lorg/xutils/common/task/AbsTask$State;)V

    .line 129
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;

    invoke-virtual {v0, p1}, Lorg/xutils/common/task/AbsTask;->setState(Lorg/xutils/common/task/AbsTask$State;)V

    .line 130
    return-void
.end method
