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
.field final synthetic a:Lorg/xutils/common/Callback$CancelledException;

.field final synthetic b:Lorg/xutils/common/task/TaskControllerImpl$2;


# direct methods
.method constructor <init>(Lorg/xutils/common/task/TaskControllerImpl$2;Lorg/xutils/common/Callback$CancelledException;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lorg/xutils/common/task/TaskControllerImpl$2$2;->b:Lorg/xutils/common/task/TaskControllerImpl$2;

    iput-object p2, p0, Lorg/xutils/common/task/TaskControllerImpl$2$2;->a:Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 120
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2$2;->b:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v0, v0, Lorg/xutils/common/task/TaskControllerImpl$2;->a:Lorg/xutils/common/Callback$GroupCallback;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$2$2;->b:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v0, v0, Lorg/xutils/common/task/TaskControllerImpl$2;->a:Lorg/xutils/common/Callback$GroupCallback;

    iget-object v1, p0, Lorg/xutils/common/task/TaskControllerImpl$2$2;->b:Lorg/xutils/common/task/TaskControllerImpl$2;

    iget-object v1, v1, Lorg/xutils/common/task/TaskControllerImpl$2;->b:Lorg/xutils/common/task/AbsTask;

    iget-object v2, p0, Lorg/xutils/common/task/TaskControllerImpl$2$2;->a:Lorg/xutils/common/Callback$CancelledException;

    invoke-interface {v0, v1, v2}, Lorg/xutils/common/Callback$GroupCallback;->onCancelled(Ljava/lang/Object;Lorg/xutils/common/Callback$CancelledException;)V

    :cond_0
    return-void
.end method
