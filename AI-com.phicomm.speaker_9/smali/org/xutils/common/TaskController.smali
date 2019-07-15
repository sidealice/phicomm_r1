.class public interface abstract Lorg/xutils/common/TaskController;
.super Ljava/lang/Object;
.source "TaskController.java"


# virtual methods
.method public abstract autoPost(Ljava/lang/Runnable;)V
.end method

.method public abstract post(Ljava/lang/Runnable;)V
.end method

.method public abstract postDelayed(Ljava/lang/Runnable;J)V
.end method

.method public abstract removeCallbacks(Ljava/lang/Runnable;)V
.end method

.method public abstract run(Ljava/lang/Runnable;)V
.end method

.method public abstract start(Lorg/xutils/common/task/AbsTask;)Lorg/xutils/common/task/AbsTask;
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
.end method

.method public abstract startSync(Lorg/xutils/common/task/AbsTask;)Ljava/lang/Object;
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
.end method

.method public varargs abstract startTasks(Lorg/xutils/common/Callback$GroupCallback;[Lorg/xutils/common/task/AbsTask;)Lorg/xutils/common/Callback$Cancelable;
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
.end method
