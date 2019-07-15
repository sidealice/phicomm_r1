.class public final Lrx/internal/schedulers/GenericScheduledExecutorService;
.super Ljava/lang/Object;
.source "GenericScheduledExecutorService.java"

# interfaces
.implements Lrx/internal/schedulers/SchedulerLifecycle;


# static fields
.field public static final INSTANCE:Lrx/internal/schedulers/GenericScheduledExecutorService;

.field static final NONE:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

.field private static final THREAD_NAME_PREFIX:Ljava/lang/String; = "RxScheduledExecutorPool-"


# instance fields
.field private final executor:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string v1, "RxScheduledExecutorPool-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/internal/schedulers/GenericScheduledExecutorService;->THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

    .line 40
    new-instance v0, Lrx/internal/schedulers/GenericScheduledExecutorService;

    invoke-direct {v0}, Lrx/internal/schedulers/GenericScheduledExecutorService;-><init>()V

    sput-object v0, Lrx/internal/schedulers/GenericScheduledExecutorService;->INSTANCE:Lrx/internal/schedulers/GenericScheduledExecutorService;

    .line 46
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lrx/internal/schedulers/GenericScheduledExecutorService;->NONE:Ljava/util/concurrent/ScheduledExecutorService;

    .line 47
    sget-object v0, Lrx/internal/schedulers/GenericScheduledExecutorService;->NONE:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 48
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/schedulers/GenericScheduledExecutorService;->NONE:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/internal/schedulers/GenericScheduledExecutorService;->executor:Ljava/util/concurrent/atomic/AtomicReference;

    .line 52
    invoke-virtual {p0}, Lrx/internal/schedulers/GenericScheduledExecutorService;->start()V

    .line 53
    return-void
.end method

.method public static getInstance()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lrx/internal/schedulers/GenericScheduledExecutorService;->INSTANCE:Lrx/internal/schedulers/GenericScheduledExecutorService;

    iget-object v0, v0, Lrx/internal/schedulers/GenericScheduledExecutorService;->executor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method


# virtual methods
.method public shutdown()V
    .locals 3

    .prologue
    .line 81
    :cond_0
    iget-object v1, p0, Lrx/internal/schedulers/GenericScheduledExecutorService;->executor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 82
    .local v0, "exec":Ljava/util/concurrent/ScheduledExecutorService;
    sget-object v1, Lrx/internal/schedulers/GenericScheduledExecutorService;->NONE:Ljava/util/concurrent/ScheduledExecutorService;

    if-ne v0, v1, :cond_1

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v1, p0, Lrx/internal/schedulers/GenericScheduledExecutorService;->executor:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/internal/schedulers/GenericScheduledExecutorService;->NONE:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-static {v0}, Lrx/internal/schedulers/NewThreadWorker;->deregisterExecutor(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 87
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 57
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 58
    .local v0, "count":I
    const/4 v2, 0x4

    if-le v0, v2, :cond_0

    .line 59
    div-int/lit8 v0, v0, 0x2

    .line 62
    :cond_0
    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    .line 63
    const/16 v0, 0x8

    .line 66
    :cond_1
    sget-object v2, Lrx/internal/schedulers/GenericScheduledExecutorService;->THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

    invoke-static {v0, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 67
    .local v1, "exec":Ljava/util/concurrent/ScheduledExecutorService;
    iget-object v2, p0, Lrx/internal/schedulers/GenericScheduledExecutorService;->executor:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lrx/internal/schedulers/GenericScheduledExecutorService;->NONE:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    invoke-static {v1}, Lrx/internal/schedulers/NewThreadWorker;->tryEnableCancelPolicy(Ljava/util/concurrent/ScheduledExecutorService;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 69
    instance-of v2, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v2, :cond_2

    .line 70
    check-cast v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .end local v1    # "exec":Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v1}, Lrx/internal/schedulers/NewThreadWorker;->registerExecutor(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    .line 76
    :cond_2
    :goto_0
    return-void

    .line 74
    .restart local v1    # "exec":Ljava/util/concurrent/ScheduledExecutorService;
    :cond_3
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0
.end method
