.class Lorg/xutils/common/task/PriorityRunnable;
.super Ljava/lang/Object;
.source "PriorityRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field SEQ:J

.field public final priority:Lorg/xutils/common/task/Priority;

.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/xutils/common/task/Priority;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "priority"    # Lorg/xutils/common/task/Priority;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    if-nez p1, :cond_0

    sget-object p1, Lorg/xutils/common/task/Priority;->DEFAULT:Lorg/xutils/common/task/Priority;

    .end local p1    # "priority":Lorg/xutils/common/task/Priority;
    :cond_0
    iput-object p1, p0, Lorg/xutils/common/task/PriorityRunnable;->priority:Lorg/xutils/common/task/Priority;

    .line 16
    iput-object p2, p0, Lorg/xutils/common/task/PriorityRunnable;->runnable:Ljava/lang/Runnable;

    .line 17
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lorg/xutils/common/task/PriorityRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 22
    return-void
.end method
