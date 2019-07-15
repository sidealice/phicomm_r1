.class final Lorg/xutils/common/task/PriorityExecutor$3;
.super Ljava/lang/Object;
.source "PriorityExecutor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/common/task/PriorityExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 47
    check-cast p1, Ljava/lang/Runnable;

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lorg/xutils/common/task/PriorityExecutor$3;->compare(Ljava/lang/Runnable;Ljava/lang/Runnable;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/Runnable;Ljava/lang/Runnable;)I
    .locals 8
    .param p1, "lhs"    # Ljava/lang/Runnable;
    .param p2, "rhs"    # Ljava/lang/Runnable;

    .prologue
    .line 50
    instance-of v3, p1, Lorg/xutils/common/task/PriorityRunnable;

    if-eqz v3, :cond_1

    instance-of v3, p2, Lorg/xutils/common/task/PriorityRunnable;

    if-eqz v3, :cond_1

    move-object v0, p1

    .line 51
    check-cast v0, Lorg/xutils/common/task/PriorityRunnable;

    .local v0, "lpr":Lorg/xutils/common/task/PriorityRunnable;
    move-object v2, p2

    .line 52
    check-cast v2, Lorg/xutils/common/task/PriorityRunnable;

    .line 53
    .local v2, "rpr":Lorg/xutils/common/task/PriorityRunnable;
    iget-object v3, v0, Lorg/xutils/common/task/PriorityRunnable;->priority:Lorg/xutils/common/task/Priority;

    invoke-virtual {v3}, Lorg/xutils/common/task/Priority;->ordinal()I

    move-result v3

    iget-object v4, v2, Lorg/xutils/common/task/PriorityRunnable;->priority:Lorg/xutils/common/task/Priority;

    invoke-virtual {v4}, Lorg/xutils/common/task/Priority;->ordinal()I

    move-result v4

    sub-int v1, v3, v4

    .line 54
    .local v1, "result":I
    if-nez v1, :cond_0

    iget-wide v4, v2, Lorg/xutils/common/task/PriorityRunnable;->SEQ:J

    iget-wide v6, v0, Lorg/xutils/common/task/PriorityRunnable;->SEQ:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 56
    .end local v0    # "lpr":Lorg/xutils/common/task/PriorityRunnable;
    .end local v1    # "result":I
    .end local v2    # "rpr":Lorg/xutils/common/task/PriorityRunnable;
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
