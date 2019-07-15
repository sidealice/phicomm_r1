.class Lorg/xutils/common/task/TaskControllerImpl$2$2;
.super Ljava/lang/Object;
.source "TaskControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/common/task/TaskControllerImpl$2;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

.field final synthetic val$cex:Lorg/xutils/common/Callback$CancelledException;


# direct methods
.method constructor <init>(Lorg/xutils/common/task/TaskControllerImpl$2;Lorg/xutils/common/Callback$CancelledException;)V
    .locals 0
    .param p1, "this$1"    # Lorg/xutils/common/task/TaskControllerImpl$2;

    .prologue
    .line 117
    iput-object p1, p0, Lorg/xutils/common/task/TaskControllerImpl$2$2;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iput-object p2, p0, Lorg/xutils/common/task/TaskControllerImpl$2$2;->val$cex:Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2$2;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v0, v0, Lorg/xutils/common/task/TaskControllerImpl$2;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2$2;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v0, v0, Lorg/xutils/common/task/TaskControllerImpl$2;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    iget-object v1, p0, Lorg/xutils/common/task/TaskControllerImpl$2$2;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v1, v1, Lorg/xutils/common/task/TaskControllerImpl$2;->val$task:Lorg/xutils/common/task/AbsTask;

    iget-object v2, p0, Lorg/xutils/common/task/TaskControllerImpl$2$2;->val$cex:Lorg/xutils/common/Callback$CancelledException;

    invoke-interface {v0, v1, v2}, Lorg/xutils/common/Callback$GroupCallback;->onCancelled(Ljava/lang/Object;Lorg/xutils/common/Callback$CancelledException;)V

    .line 123
    :cond_0
    return-void
.end method
