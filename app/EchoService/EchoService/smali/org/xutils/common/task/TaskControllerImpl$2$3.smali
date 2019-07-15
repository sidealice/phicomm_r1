.class Lorg/xutils/common/task/TaskControllerImpl$2$3;
.super Ljava/lang/Object;
.source "TaskControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/common/task/TaskControllerImpl$2;->onError(Ljava/lang/Throwable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

.field final synthetic val$ex:Ljava/lang/Throwable;

.field final synthetic val$isCallbackError:Z


# direct methods
.method constructor <init>(Lorg/xutils/common/task/TaskControllerImpl$2;Ljava/lang/Throwable;Z)V
    .locals 0
    .param p1, "this$1"    # Lorg/xutils/common/task/TaskControllerImpl$2;

    .prologue
    .line 130
    iput-object p1, p0, Lorg/xutils/common/task/TaskControllerImpl$2$3;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iput-object p2, p0, Lorg/xutils/common/task/TaskControllerImpl$2$3;->val$ex:Ljava/lang/Throwable;

    iput-boolean p3, p0, Lorg/xutils/common/task/TaskControllerImpl$2$3;->val$isCallbackError:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2$3;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v0, v0, Lorg/xutils/common/task/TaskControllerImpl$2;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2$3;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v0, v0, Lorg/xutils/common/task/TaskControllerImpl$2;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    iget-object v1, p0, Lorg/xutils/common/task/TaskControllerImpl$2$3;->this$1:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v1, v1, Lorg/xutils/common/task/TaskControllerImpl$2;->val$task:Lorg/xutils/common/task/AbsTask;

    iget-object v2, p0, Lorg/xutils/common/task/TaskControllerImpl$2$3;->val$ex:Ljava/lang/Throwable;

    iget-boolean v3, p0, Lorg/xutils/common/task/TaskControllerImpl$2$3;->val$isCallbackError:Z

    invoke-interface {v0, v1, v2, v3}, Lorg/xutils/common/Callback$GroupCallback;->onError(Ljava/lang/Object;Ljava/lang/Throwable;Z)V

    .line 136
    :cond_0
    return-void
.end method
