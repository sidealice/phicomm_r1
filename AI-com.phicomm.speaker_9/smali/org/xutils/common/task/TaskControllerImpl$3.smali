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
.field final synthetic a:[Lorg/xutils/common/task/AbsTask;

.field final synthetic b:Lorg/xutils/common/task/TaskControllerImpl;


# direct methods
.method constructor <init>(Lorg/xutils/common/task/TaskControllerImpl;[Lorg/xutils/common/task/AbsTask;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lorg/xutils/common/task/TaskControllerImpl$3;->b:Lorg/xutils/common/task/TaskControllerImpl;

    iput-object p2, p0, Lorg/xutils/common/task/TaskControllerImpl$3;->a:[Lorg/xutils/common/task/AbsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .line 160
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$3;->a:[Lorg/xutils/common/task/AbsTask;

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 161
    invoke-virtual {v3}, Lorg/xutils/common/task/AbsTask;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isCancelled()Z
    .locals 6

    .line 168
    iget-object v0, p0, Lorg/xutils/common/task/TaskControllerImpl$3;->a:[Lorg/xutils/common/task/AbsTask;

    const/4 v1, 0x0

    const/4 v2, 0x1

    array-length v3, v0

    move v4, v2

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 169
    invoke-virtual {v5}, Lorg/xutils/common/task/AbsTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    move v4, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method
