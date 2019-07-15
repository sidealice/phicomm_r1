.class Lorg/xutils/common/task/TaskControllerImpl$3;
.super Ljava/lang/Object;
.source "TaskControllerImpl.java"

# interfaces
.implements Lorg/xutils/common/Callback$Cancelable;


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

.field final synthetic val$tasks:[Lorg/xutils/common/task/AbsTask;


# direct methods
.method constructor <init>(Lorg/xutils/common/task/TaskControllerImpl;[Lorg/xutils/common/task/AbsTask;)V
    .locals 0
    .param p1, "this$0"    # Lorg/xutils/common/task/TaskControllerImpl;

    .prologue
    .line 156
    iput-object p1, p0, Lorg/xutils/common/task/TaskControllerImpl$3;->this$0:Lorg/xutils/common/task/TaskControllerImpl;

    iput-object p2, p0, Lorg/xutils/common/task/TaskControllerImpl$3;->val$tasks:[Lorg/xutils/common/task/AbsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 160
    iget-object v2, p0, Lorg/xutils/common/task/TaskControllerImpl$3;->val$tasks:[Lorg/xutils/common/task/AbsTask;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 161
    .local v0, "task":Lorg/xutils/common/task/AbsTask;, "TT;"
    invoke-virtual {v0}, Lorg/xutils/common/task/AbsTask;->cancel()V

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "task":Lorg/xutils/common/task/AbsTask;, "TT;"
    :cond_0
    return-void
.end method

.method public isCancelled()Z
    .locals 6

    .prologue
    .line 167
    const/4 v0, 0x1

    .line 168
    .local v0, "isCancelled":Z
    iget-object v3, p0, Lorg/xutils/common/task/TaskControllerImpl$3;->val$tasks:[Lorg/xutils/common/task/AbsTask;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 169
    .local v1, "task":Lorg/xutils/common/task/AbsTask;, "TT;"
    invoke-virtual {v1}, Lorg/xutils/common/task/AbsTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 170
    const/4 v0, 0x0

    .line 168
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .end local v1    # "task":Lorg/xutils/common/task/AbsTask;, "TT;"
    :cond_1
    return v0
.end method
