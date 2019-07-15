.class Lorg/xutils/common/task/b$1;
.super Ljava/lang/Object;
.source "TaskProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/common/task/b;->doBackground()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/xutils/common/task/b;


# direct methods
.method constructor <init>(Lorg/xutils/common/task/b;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/xutils/common/task/b$1;->a:Lorg/xutils/common/task/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 50
    :try_start_0
    iget-object v0, p0, Lorg/xutils/common/task/b$1;->a:Lorg/xutils/common/task/b;

    invoke-static {v0}, Lorg/xutils/common/task/b;->b(Lorg/xutils/common/task/b;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/xutils/common/task/b$1;->a:Lorg/xutils/common/task/b;

    invoke-virtual {v0}, Lorg/xutils/common/task/b;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/xutils/common/task/b$1;->a:Lorg/xutils/common/task/b;

    invoke-virtual {v0}, Lorg/xutils/common/task/b;->onStarted()V

    .line 57
    iget-object v0, p0, Lorg/xutils/common/task/b$1;->a:Lorg/xutils/common/task/b;

    invoke-virtual {v0}, Lorg/xutils/common/task/b;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    iget-object v0, p0, Lorg/xutils/common/task/b$1;->a:Lorg/xutils/common/task/b;

    invoke-static {v0}, Lorg/xutils/common/task/b;->c(Lorg/xutils/common/task/b;)Lorg/xutils/common/task/AbsTask;

    move-result-object v0

    iget-object v1, p0, Lorg/xutils/common/task/b$1;->a:Lorg/xutils/common/task/b;

    invoke-static {v1}, Lorg/xutils/common/task/b;->c(Lorg/xutils/common/task/b;)Lorg/xutils/common/task/AbsTask;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xutils/common/task/AbsTask;->doBackground()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/common/task/AbsTask;->a(Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lorg/xutils/common/task/b$1;->a:Lorg/xutils/common/task/b;

    iget-object v1, p0, Lorg/xutils/common/task/b$1;->a:Lorg/xutils/common/task/b;

    invoke-static {v1}, Lorg/xutils/common/task/b;->c(Lorg/xutils/common/task/b;)Lorg/xutils/common/task/AbsTask;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xutils/common/task/AbsTask;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/common/task/b;->a(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lorg/xutils/common/task/b$1;->a:Lorg/xutils/common/task/b;

    invoke-virtual {v0}, Lorg/xutils/common/task/b;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_2
    iget-object v0, p0, Lorg/xutils/common/task/b$1;->a:Lorg/xutils/common/task/b;

    iget-object v1, p0, Lorg/xutils/common/task/b$1;->a:Lorg/xutils/common/task/b;

    invoke-static {v1}, Lorg/xutils/common/task/b;->c(Lorg/xutils/common/task/b;)Lorg/xutils/common/task/AbsTask;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xutils/common/task/AbsTask;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/common/task/b;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 51
    :cond_3
    :goto_0
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 75
    :try_start_1
    iget-object v1, p0, Lorg/xutils/common/task/b$1;->a:Lorg/xutils/common/task/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/xutils/common/task/b;->onError(Ljava/lang/Throwable;Z)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 73
    iget-object v1, p0, Lorg/xutils/common/task/b$1;->a:Lorg/xutils/common/task/b;

    invoke-virtual {v1, v0}, Lorg/xutils/common/task/b;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :goto_1
    iget-object v0, p0, Lorg/xutils/common/task/b$1;->a:Lorg/xutils/common/task/b;

    invoke-virtual {v0}, Lorg/xutils/common/task/b;->onFinished()V

    return-void

    :goto_2
    iget-object v1, p0, Lorg/xutils/common/task/b$1;->a:Lorg/xutils/common/task/b;

    invoke-virtual {v1}, Lorg/xutils/common/task/b;->onFinished()V

    throw v0
.end method
