.class public Lorg/xutils/common/task/PriorityExecutor;
.super Ljava/lang/Object;
.source "PriorityExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final CORE_POOL_SIZE:I = 0x5

.field private static final FIFO_CMP:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILO_CMP:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I = 0x100

.field private static final SEQ_SEED:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lorg/xutils/common/task/PriorityExecutor;->SEQ_SEED:Ljava/util/concurrent/atomic/AtomicLong;

    .line 24
    new-instance v0, Lorg/xutils/common/task/PriorityExecutor$1;

    invoke-direct {v0}, Lorg/xutils/common/task/PriorityExecutor$1;-><init>()V

    sput-object v0, Lorg/xutils/common/task/PriorityExecutor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 33
    new-instance v0, Lorg/xutils/common/task/PriorityExecutor$2;

    invoke-direct {v0}, Lorg/xutils/common/task/PriorityExecutor$2;-><init>()V

    sput-object v0, Lorg/xutils/common/task/PriorityExecutor;->FIFO_CMP:Ljava/util/Comparator;

    .line 47
    new-instance v0, Lorg/xutils/common/task/PriorityExecutor$3;

    invoke-direct {v0}, Lorg/xutils/common/task/PriorityExecutor$3;-><init>()V

    sput-object v0, Lorg/xutils/common/task/PriorityExecutor;->FILO_CMP:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 9
    .param p1, "poolSize"    # I
    .param p2, "fifo"    # Z

    .prologue
    const/16 v3, 0x100

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    if-eqz p2, :cond_0

    sget-object v0, Lorg/xutils/common/task/PriorityExecutor;->FIFO_CMP:Ljava/util/Comparator;

    :goto_0
    invoke-direct {v7, v3, v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    .line 79
    .local v7, "mPoolWorkQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lorg/xutils/common/task/PriorityExecutor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    move v2, p1

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lorg/xutils/common/task/PriorityExecutor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 86
    return-void

    .line 77
    .end local v7    # "mPoolWorkQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    :cond_0
    sget-object v0, Lorg/xutils/common/task/PriorityExecutor;->FILO_CMP:Ljava/util/Comparator;

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "fifo"    # Z

    .prologue
    .line 69
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lorg/xutils/common/task/PriorityExecutor;-><init>(IZ)V

    .line 70
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 108
    instance-of v0, p1, Lorg/xutils/common/task/PriorityRunnable;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 109
    check-cast v0, Lorg/xutils/common/task/PriorityRunnable;

    sget-object v1, Lorg/xutils/common/task/PriorityExecutor;->SEQ_SEED:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/xutils/common/task/PriorityRunnable;->SEQ:J

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/xutils/common/task/PriorityExecutor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method

.method public getPoolSize()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/xutils/common/task/PriorityExecutor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v0

    return v0
.end method

.method public getThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/xutils/common/task/PriorityExecutor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public isBusy()Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lorg/xutils/common/task/PriorityExecutor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    iget-object v1, p0, Lorg/xutils/common/task/PriorityExecutor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPoolSize(I)V
    .locals 1
    .param p1, "poolSize"    # I

    .prologue
    .line 93
    if-lez p1, :cond_0

    .line 94
    iget-object v0, p0, Lorg/xutils/common/task/PriorityExecutor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 96
    :cond_0
    return-void
.end method
