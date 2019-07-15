.class Lorg/xutils/common/task/TaskControllerImpl$1;
.super Ljava/lang/Object;
.source "TaskControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/common/task/TaskControllerImpl;->startTasks(Lorg/xutils/common/Callback$GroupCallback;[Lorg/xutils/common/task/AbsTask;)Lorg/xutils/common/Callback$Cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final count:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lorg/xutils/common/task/TaskControllerImpl;

.field private final total:I

.field final synthetic val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

.field final synthetic val$tasks:[Lorg/xutils/common/task/AbsTask;


# direct methods
.method constructor <init>(Lorg/xutils/common/task/TaskControllerImpl;[Lorg/xutils/common/task/AbsTask;Lorg/xutils/common/Callback$GroupCallback;)V
    .locals 2
    .param p1, "this$0"    # Lorg/xutils/common/task/TaskControllerImpl;

    .prologue
    .line 85
    iput-object p1, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->this$0:Lorg/xutils/common/task/TaskControllerImpl;

    iput-object p2, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->val$tasks:[Lorg/xutils/common/task/AbsTask;

    iput-object p3, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->val$tasks:[Lorg/xutils/common/task/AbsTask;

    array-length v0, v0

    iput v0, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->total:I

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget v1, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->total:I

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$1;->val$groupCallback:Lorg/xutils/common/Callback$GroupCallback;

    invoke-interface {v0}, Lorg/xutils/common/Callback$GroupCallback;->onAllFinished()V

    .line 96
    :cond_0
    return-void
.end method
