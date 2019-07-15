.class public Lcom/unisound/vui/util/ThreadUtils;
.super Ljava/lang/Object;


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE:I = 0x1e

.field private static final MAXIMUM_POOL_SIZE:I

.field private static sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private static sThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/unisound/vui/util/ThreadUtils;->CPU_COUNT:I

    sget v0, Lcom/unisound/vui/util/ThreadUtils;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/unisound/vui/util/ThreadUtils;->CORE_POOL_SIZE:I

    sget v0, Lcom/unisound/vui/util/ThreadUtils;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/unisound/vui/util/ThreadUtils;->MAXIMUM_POOL_SIZE:I

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/unisound/vui/util/ThreadUtils;->CORE_POOL_SIZE:I

    sget v3, Lcom/unisound/vui/util/ThreadUtils;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    sget v0, Lcom/unisound/vui/util/ThreadUtils;->CORE_POOL_SIZE:I

    mul-int/lit8 v0, v0, 0x5

    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/unisound/vui/util/ThreadUtils;->sThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/util/ThreadUtils;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    invoke-static {p0}, Lcom/unisound/vui/util/ThreadUtils;->executeInMultiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static executeInMultiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    sget-object v0, Lcom/unisound/vui/util/ThreadUtils;->sThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static executeInSingle(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    sget-object v0, Lcom/unisound/vui/util/ThreadUtils;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sleep(J)V
    .locals 2
    .param p0, "time"    # J

    .prologue
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
