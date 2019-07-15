.class Lorg/xutils/common/task/TaskControllerImpl$2;
.super Lorg/xutils/common/task/TaskProxy;
.source "TaskControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/common/task/TaskControllerImpl;->startTasks(Lorg/xutils/common/Callback$GroupCallback;[Lorg/xutils/common/task/AbsTask;)Lorg/xutils/common/Callback$Cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xutils/common/task/TaskControllerImpl;

.field final synthetic val$callIfOnAllFinished:Ljava/lang/Runnable;

.field final synthetic val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

.field final synthetic val$task:Lorg/xutils/common/task/AbsTask;


# direct methods
.method constructor <init>(Lorg/xutils/common/task/TaskControllerImpl;Lorg/xutils/common/task/AbsTask;Lorg/xutils/common/Callback$GroupCallback;Lorg/xutils/common/task/AbsTask;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/xutils/common/task/TaskControllerImpl;
    .param p2, "task"    # Lorg/xutils/common/task/AbsTask;

    .prologue
    .line 100
    iput-object p1, p0, Lorg/xutils/common/task/TaskControllerImpl$2;->this$0:Lorg/xutils/common/task/TaskControllerImpl;

    iput-object p3, p0, Lorg/xutils/common/task/TaskControllerImpl$2;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    iput-object p4, p0, Lorg/xutils/common/task/TaskControllerImpl$2;->val$task:Lorg/xutils/common/task/AbsTask;

    iput-object p5, p0, Lorg/xutils/common/task/TaskControllerImpl$2;->val$callIfOnAllFinished:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Lorg/xutils/common/task/TaskProxy;-><init>(Lorg/xutils/common/task/AbsTask;)V

    return-void
.end method


# virtual methods
.method protected onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .locals 2
    .param p1, "cex"    # Lorg/xutils/common/Callback$CancelledException;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lorg/xutils/common/task/TaskProxy;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V

    .line 117
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2;->this$0:Lorg/xutils/common/task/TaskControllerImpl;

    new-instance v1, Lorg/xutils/common/task/TaskControllerImpl$2$2;

    invoke-direct {v1, p0, p1}, Lorg/xutils/common/task/TaskControllerImpl$2$2;-><init>(Lorg/xutils/common/task/TaskControllerImpl$2;Lorg/xutils/common/Callback$CancelledException;)V

    invoke-virtual {v0, v1}, Lorg/xutils/common/task/TaskControllerImpl;->post(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method protected onError(Ljava/lang/Throwable;Z)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "isCallbackError"    # Z

    .prologue
    .line 129
    invoke-super {p0, p1, p2}, Lorg/xutils/common/task/TaskProxy;->onError(Ljava/lang/Throwable;Z)V

    .line 130
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2;->this$0:Lorg/xutils/common/task/TaskControllerImpl;

    new-instance v1, Lorg/xutils/common/task/TaskControllerImpl$2$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/xutils/common/task/TaskControllerImpl$2$3;-><init>(Lorg/xutils/common/task/TaskControllerImpl$2;Ljava/lang/Throwable;Z)V

    invoke-virtual {v0, v1}, Lorg/xutils/common/task/TaskControllerImpl;->post(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

.method protected onFinished()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Lorg/xutils/common/task/TaskProxy;->onFinished()V

    .line 143
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2;->this$0:Lorg/xutils/common/task/TaskControllerImpl;

    new-instance v1, Lorg/xutils/common/task/TaskControllerImpl$2$4;

    invoke-direct {v1, p0}, Lorg/xutils/common/task/TaskControllerImpl$2$4;-><init>(Lorg/xutils/common/task/TaskControllerImpl$2;)V

    invoke-virtual {v0, v1}, Lorg/xutils/common/task/TaskControllerImpl;->post(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lorg/xutils/common/task/TaskProxy;->onSuccess(Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2;->this$0:Lorg/xutils/common/task/TaskControllerImpl;

    new-instance v1, Lorg/xutils/common/task/TaskControllerImpl$2$1;

    invoke-direct {v1, p0}, Lorg/xutils/common/task/TaskControllerImpl$2$1;-><init>(Lorg/xutils/common/task/TaskControllerImpl$2;)V

    invoke-virtual {v0, v1}, Lorg/xutils/common/task/TaskControllerImpl;->post(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method
