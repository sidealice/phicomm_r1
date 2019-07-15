.class Lorg/xutils/common/task/TaskControllerImpl$2;
.super Lorg/xutils/common/task/b;
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
.field final synthetic a:Lorg/xutils/common/Callback$GroupCallback;

.field final synthetic b:Lorg/xutils/common/task/AbsTask;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Lorg/xutils/common/task/TaskControllerImpl;


# direct methods
.method constructor <init>(Lorg/xutils/common/task/TaskControllerImpl;Lorg/xutils/common/task/AbsTask;Lorg/xutils/common/Callback$GroupCallback;Lorg/xutils/common/task/AbsTask;Ljava/lang/Runnable;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/xutils/common/task/TaskControllerImpl$2;->d:Lorg/xutils/common/task/TaskControllerImpl;

    iput-object p3, p0, Lorg/xutils/common/task/TaskControllerImpl$2;->a:Lorg/xutils/common/Callback$GroupCallback;

    iput-object p4, p0, Lorg/xutils/common/task/TaskControllerImpl$2;->b:Lorg/xutils/common/task/AbsTask;

    iput-object p5, p0, Lorg/xutils/common/task/TaskControllerImpl$2;->c:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Lorg/xutils/common/task/b;-><init>(Lorg/xutils/common/task/AbsTask;)V

    return-void
.end method


# virtual methods
.method protected onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .locals 2

    .line 116
    invoke-super {p0, p1}, Lorg/xutils/common/task/b;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V

    .line 117
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2;->d:Lorg/xutils/common/task/TaskControllerImpl;

    new-instance v1, Lorg/xutils/common/task/TaskControllerImpl$2$2;

    invoke-direct {v1, p0, p1}, Lorg/xutils/common/task/TaskControllerImpl$2$2;-><init>(Lorg/xutils/common/task/TaskControllerImpl$2;Lorg/xutils/common/Callback$CancelledException;)V

    invoke-virtual {v0, v1}, Lorg/xutils/common/task/TaskControllerImpl;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onError(Ljava/lang/Throwable;Z)V
    .locals 2

    .line 129
    invoke-super {p0, p1, p2}, Lorg/xutils/common/task/b;->onError(Ljava/lang/Throwable;Z)V

    .line 130
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2;->d:Lorg/xutils/common/task/TaskControllerImpl;

    new-instance v1, Lorg/xutils/common/task/TaskControllerImpl$2$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/xutils/common/task/TaskControllerImpl$2$3;-><init>(Lorg/xutils/common/task/TaskControllerImpl$2;Ljava/lang/Throwable;Z)V

    invoke-virtual {v0, v1}, Lorg/xutils/common/task/TaskControllerImpl;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onFinished()V
    .locals 2

    .line 142
    invoke-super {p0}, Lorg/xutils/common/task/b;->onFinished()V

    .line 143
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2;->d:Lorg/xutils/common/task/TaskControllerImpl;

    new-instance v1, Lorg/xutils/common/task/TaskControllerImpl$2$4;

    invoke-direct {v1, p0}, Lorg/xutils/common/task/TaskControllerImpl$2$4;-><init>(Lorg/xutils/common/task/TaskControllerImpl$2;)V

    invoke-virtual {v0, v1}, Lorg/xutils/common/task/TaskControllerImpl;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lorg/xutils/common/task/b;->onSuccess(Ljava/lang/Object;)V

    .line 104
    iget-object p1, p0, Lorg/xutils/common/task/TaskControllerImpl$2;->d:Lorg/xutils/common/task/TaskControllerImpl;

    new-instance v0, Lorg/xutils/common/task/TaskControllerImpl$2$1;

    invoke-direct {v0, p0}, Lorg/xutils/common/task/TaskControllerImpl$2$1;-><init>(Lorg/xutils/common/task/TaskControllerImpl$2;)V

    invoke-virtual {p1, v0}, Lorg/xutils/common/task/TaskControllerImpl;->post(Ljava/lang/Runnable;)V

    return-void
.end method
