.class Lorg/xutils/common/task/TaskProxy$1;
.super Ljava/lang/Object;
.source "TaskProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/common/task/TaskProxy;->doBackground()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xutils/common/task/TaskProxy;


# direct methods
.method constructor <init>(Lorg/xutils/common/task/TaskProxy;)V
    .locals 0
    .param p1, "this$0"    # Lorg/xutils/common/task/TaskProxy;

    .prologue
    .line 45
    .local p0, "this":Lorg/xutils/common/task/TaskProxy$1;, "Lorg/xutils/common/task/TaskProxy$1;"
    iput-object p1, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 50
    .local p0, "this":Lorg/xutils/common/task/TaskProxy$1;, "Lorg/xutils/common/task/TaskProxy$1;"
    :try_start_0
    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-static {v2}, Lorg/xutils/common/task/TaskProxy;->access$100(Lorg/xutils/common/task/TaskProxy;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v2}, Lorg/xutils/common/task/TaskProxy;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    :cond_0
    new-instance v2, Lorg/xutils/common/Callback$CancelledException;

    const-string v3, ""

    invoke-direct {v2, v3}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "cex":Lorg/xutils/common/Callback$CancelledException;
    :try_start_1
    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v2, v0}, Lorg/xutils/common/task/TaskProxy;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v2}, Lorg/xutils/common/task/TaskProxy;->onFinished()V

    .line 79
    .end local v0    # "cex":Lorg/xutils/common/Callback$CancelledException;
    :goto_0
    return-void

    .line 55
    :cond_1
    :try_start_2
    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v2}, Lorg/xutils/common/task/TaskProxy;->onStarted()V

    .line 57
    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v2}, Lorg/xutils/common/task/TaskProxy;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    new-instance v2, Lorg/xutils/common/Callback$CancelledException;

    const-string v3, ""

    invoke-direct {v2, v3}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    :catch_1
    move-exception v1

    .line 75
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_3
    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/xutils/common/task/TaskProxy;->onError(Ljava/lang/Throwable;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v2}, Lorg/xutils/common/task/TaskProxy;->onFinished()V

    goto :goto_0

    .line 62
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_2
    :try_start_4
    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-static {v2}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v2

    iget-object v3, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xutils/common/task/AbsTask;->doBackground()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xutils/common/task/AbsTask;->setResult(Ljava/lang/Object;)V

    .line 63
    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    iget-object v3, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xutils/common/task/AbsTask;->getResult()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xutils/common/task/TaskProxy;->setResult(Ljava/lang/Object;)V

    .line 66
    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v2}, Lorg/xutils/common/task/TaskProxy;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 67
    new-instance v2, Lorg/xutils/common/Callback$CancelledException;

    const-string v3, ""

    invoke-direct {v2, v3}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 77
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v3}, Lorg/xutils/common/task/TaskProxy;->onFinished()V

    throw v2

    .line 71
    :cond_3
    :try_start_5
    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    iget-object v3, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xutils/common/task/AbsTask;->getResult()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xutils/common/task/TaskProxy;->onSuccess(Ljava/lang/Object;)V
    :try_end_5
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 77
    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v2}, Lorg/xutils/common/task/TaskProxy;->onFinished()V

    goto :goto_0
.end method
