.class Lorg/xutils/common/task/TaskControllerImpl$2$1;
.super Ljava/lang/Object;
.source "TaskControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/common/task/TaskControllerImpl$2;->onSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/xutils/common/task/TaskControllerImpl$2;


# direct methods
.method constructor <init>(Lorg/xutils/common/task/TaskControllerImpl$2;)V
    .locals 0
    .param p1, "this$1"    # Lorg/xutils/common/task/TaskControllerImpl$2;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/xutils/common/task/TaskControllerImpl$2$1;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2$1;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v0, v0, Lorg/xutils/common/task/TaskControllerImpl$2;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2$1;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v0, v0, Lorg/xutils/common/task/TaskControllerImpl$2;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    iget-object v1, p0, Lorg/xutils/common/task/TaskControllerImpl$2$1;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v1, v1, Lorg/xutils/common/task/TaskControllerImpl$2;->val$task:Lorg/xutils/common/task/AbsTask;

    invoke-interface {v0, v1}, Lorg/xutils/common/Callback$GroupCallback;->onSuccess(Ljava/lang/Object;)V

    .line 110
    :cond_0
    return-void
.end method
