.class public Lcom/alibaba/mtl/log/e/r;
.super Ljava/lang/Object;
.source "TaskExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/log/e/r$a;
    }
.end annotation


# static fields
.field private static F:I = 0x1

.field private static G:I = 0x2

.field private static H:I = 0xa

.field private static I:I = 0x3c

.field public static a:Lcom/alibaba/mtl/log/e/r;

.field private static a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final f:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private b:Landroid/os/HandlerThread;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/log/e/r;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppMonitor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/mtl/log/e/r;->b:Landroid/os/HandlerThread;

    .line 93
    iget-object v0, p0, Lcom/alibaba/mtl/log/e/r;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 94
    new-instance v0, Lcom/alibaba/mtl/log/e/r$1;

    iget-object v1, p0, Lcom/alibaba/mtl/log/e/r;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/mtl/log/e/r$1;-><init>(Lcom/alibaba/mtl/log/e/r;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/mtl/log/e/r;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized a()Lcom/alibaba/mtl/log/e/r;
    .locals 2

    const-class v0, Lcom/alibaba/mtl/log/e/r;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Lcom/alibaba/mtl/log/e/r;->a:Lcom/alibaba/mtl/log/e/r;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lcom/alibaba/mtl/log/e/r;

    invoke-direct {v1}, Lcom/alibaba/mtl/log/e/r;-><init>()V

    sput-object v1, Lcom/alibaba/mtl/log/e/r;->a:Lcom/alibaba/mtl/log/e/r;

    .line 88
    :cond_0
    sget-object v1, Lcom/alibaba/mtl/log/e/r;->a:Lcom/alibaba/mtl/log/e/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 84
    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized a()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 6

    const-class v0, Lcom/alibaba/mtl/log/e/r;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Lcom/alibaba/mtl/log/e/r;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_0

    .line 79
    sget v1, Lcom/alibaba/mtl/log/e/r;->F:I

    sget v2, Lcom/alibaba/mtl/log/e/r;->G:I

    sget v3, Lcom/alibaba/mtl/log/e/r;->H:I

    sget v4, Lcom/alibaba/mtl/log/e/r;->I:I

    const/16 v5, 0x1f4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/alibaba/mtl/log/e/r;->a(IIIII)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    sput-object v1, Lcom/alibaba/mtl/log/e/r;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 81
    :cond_0
    sget-object v1, Lcom/alibaba/mtl/log/e/r;->a:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 77
    monitor-exit v0

    throw v1
.end method

.method private static a(IIIII)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    if-lez p4, :cond_0

    .line 68
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    :goto_0
    move-object v7, v0

    goto :goto_1

    .line 70
    :cond_0
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    goto :goto_0

    .line 72
    :goto_1
    new-instance v8, Lcom/alibaba/mtl/log/e/r$a;

    invoke-direct {v8, p0}, Lcom/alibaba/mtl/log/e/r$a;-><init>(I)V

    .line 73
    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor;

    int-to-long v4, p3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object p0
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 20
    sget-object v0, Lcom/alibaba/mtl/log/e/r;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic b()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 20
    invoke-static {}, Lcom/alibaba/mtl/log/e/r;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/Runnable;J)V
    .locals 1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/log/e/r;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 112
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 113
    iget-object p2, p0, Lcom/alibaba/mtl/log/e/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 115
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/b/b;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    .line 130
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/log/e/r;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final b(I)Z
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/alibaba/mtl/log/e/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    return p1
.end method

.method public final f(I)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/alibaba/mtl/log/e/r;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
