.class public final Lcom/unisound/vui/util/internal/d;
.super Ljava/util/Random;


# static fields
.field private static b:Ljava/util/concurrent/atomic/AtomicLong;

.field private static volatile c:J

.field private static d:Ljava/lang/Thread;

.field private static e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private static f:J

.field private static volatile g:J

.field private static i:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/unisound/vui/util/internal/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Z

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/unisound/vui/util/internal/d;->b:Ljava/util/concurrent/atomic/AtomicLong;

    sput-wide v2, Lcom/unisound/vui/util/internal/d;->c:J

    sget-wide v0, Lcom/unisound/vui/util/internal/d;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lcom/unisound/vui/util/internal/d$1;

    const-string v1, "initialSeedUniquifierGenerator"

    invoke-direct {v0, v1}, Lcom/unisound/vui/util/internal/d$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/unisound/vui/util/internal/d;->d:Ljava/lang/Thread;

    sget-object v0, Lcom/unisound/vui/util/internal/d;->d:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    sget-object v0, Lcom/unisound/vui/util/internal/d;->d:Ljava/lang/Thread;

    new-instance v1, Lcom/unisound/vui/util/internal/d$2;

    invoke-direct {v1}, Lcom/unisound/vui/util/internal/d$2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/unisound/vui/util/internal/d;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/unisound/vui/util/internal/d;->f:J

    sget-object v0, Lcom/unisound/vui/util/internal/d;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    new-instance v0, Lcom/unisound/vui/util/internal/d$3;

    invoke-direct {v0}, Lcom/unisound/vui/util/internal/d$3;-><init>()V

    sput-object v0, Lcom/unisound/vui/util/internal/d;->i:Ljava/lang/ThreadLocal;

    return-void

    :cond_0
    sput-object v4, Lcom/unisound/vui/util/internal/d;->d:Ljava/lang/Thread;

    sput-object v4, Lcom/unisound/vui/util/internal/d;->e:Ljava/util/concurrent/BlockingQueue;

    sput-wide v2, Lcom/unisound/vui/util/internal/d;->f:J

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/unisound/vui/util/internal/d;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/vui/util/internal/d;->a:Z

    return-void
.end method

.method public static a()J
    .locals 16

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v12, 0xff

    sget-wide v0, Lcom/unisound/vui/util/internal/d;->c:J

    cmp-long v2, v0, v14

    if-eqz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-class v6, Lcom/unisound/vui/util/internal/d;

    monitor-enter v6

    :try_start_0
    sget-wide v2, Lcom/unisound/vui/util/internal/d;->c:J

    cmp-long v0, v2, v14

    if-eqz v0, :cond_1

    monitor-exit v6

    move-wide v0, v2

    goto :goto_0

    :cond_1
    sget-wide v0, Lcom/unisound/vui/util/internal/d;->f:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x3

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    add-long/2addr v8, v0

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    sub-long v10, v8, v0

    cmp-long v0, v10, v14

    if-gtz v0, :cond_5

    :try_start_1
    sget-object v0, Lcom/unisound/vui/util/internal/d;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_1
    if-eqz v0, :cond_6

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    int-to-long v8, v1

    and-long/2addr v8, v12

    const/16 v1, 0x38

    shl-long/2addr v8, v1

    const/4 v1, 0x1

    aget-byte v1, v0, v1

    int-to-long v10, v1

    and-long/2addr v10, v12

    const/16 v1, 0x30

    shl-long/2addr v10, v1

    or-long/2addr v8, v10

    const/4 v1, 0x2

    aget-byte v1, v0, v1

    int-to-long v10, v1

    and-long/2addr v10, v12

    const/16 v1, 0x28

    shl-long/2addr v10, v1

    or-long/2addr v8, v10

    const/4 v1, 0x3

    aget-byte v1, v0, v1

    int-to-long v10, v1

    and-long/2addr v10, v12

    const/16 v1, 0x20

    shl-long/2addr v10, v1

    or-long/2addr v8, v10

    const/4 v1, 0x4

    aget-byte v1, v0, v1

    int-to-long v10, v1

    and-long/2addr v10, v12

    const/16 v1, 0x18

    shl-long/2addr v10, v1

    or-long/2addr v8, v10

    const/4 v1, 0x5

    aget-byte v1, v0, v1

    int-to-long v10, v1

    and-long/2addr v10, v12

    const/16 v1, 0x10

    shl-long/2addr v10, v1

    or-long/2addr v8, v10

    const/4 v1, 0x6

    aget-byte v1, v0, v1

    int-to-long v10, v1

    and-long/2addr v10, v12

    const/16 v1, 0x8

    shl-long/2addr v10, v1

    or-long/2addr v8, v10

    const/4 v1, 0x7

    aget-byte v0, v0, v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v0, v0

    and-long/2addr v0, v12

    or-long v2, v8, v0

    move-wide v0, v2

    move v2, v5

    :goto_2
    const-wide v4, 0x3255ecdc33bae119L    # 3.253008663204319E-66

    xor-long/2addr v0, v4

    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->reverse(J)J

    move-result-wide v4

    xor-long/2addr v0, v4

    sput-wide v0, Lcom/unisound/vui/util/internal/d;->c:J

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    sget-object v2, Lcom/unisound/vui/util/internal/d;->d:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    sget-wide v2, Lcom/unisound/vui/util/internal/d;->g:J

    cmp-long v2, v2, v14

    if-nez v2, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sput-wide v2, Lcom/unisound/vui/util/internal/d;->g:J

    :cond_4
    monitor-exit v6

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    :try_start_3
    sget-object v0, Lcom/unisound/vui/util/internal/d;->e:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v10, v11, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    const-string v0, "ThreadLocalRandom"

    const-string v1, "Failed to generate a seed from SecureRandom due to an InterruptedException."

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v2

    move v2, v4

    goto :goto_2

    :cond_6
    cmp-long v0, v10, v14

    if-gtz v0, :cond_2

    sget-object v0, Lcom/unisound/vui/util/internal/d;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const-string v0, "ThreadLocalRandom"

    const-string v1, "Failed to generate a seed from SecureRandom within %d seconds Not enough entrophy?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/16 v8, 0x3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v0, v1, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-wide v0, v2

    move v2, v5

    goto :goto_2
.end method

.method static synthetic a(J)J
    .locals 0

    sput-wide p0, Lcom/unisound/vui/util/internal/d;->g:J

    return-wide p0
.end method

.method public static b()Lcom/unisound/vui/util/internal/d;
    .locals 1

    sget-object v0, Lcom/unisound/vui/util/internal/d;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/util/internal/d;

    return-object v0
.end method

.method static synthetic c()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    sget-object v0, Lcom/unisound/vui/util/internal/d;->e:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private static d()J
    .locals 13

    const/4 v12, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    :cond_0
    sget-object v0, Lcom/unisound/vui/util/internal/d;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v2, v8

    if-eqz v0, :cond_2

    move-wide v0, v2

    :goto_0
    const-wide v4, 0x285d320ad33fdb5L

    mul-long/2addr v4, v0

    sget-object v6, Lcom/unisound/vui/util/internal/d;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    cmp-long v2, v2, v8

    if-nez v2, :cond_1

    sget-wide v2, Lcom/unisound/vui/util/internal/d;->g:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_3

    const-string v2, "ThreadLocalRandom"

    const-string v3, "-Dio.netty.initialSeedUniquifier: 0x%016x (took %d ms)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v8, Lcom/unisound/vui/util/internal/d;->g:J

    sget-wide v10, Lcom/unisound/vui/util/internal/d;->f:J

    sub-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v12

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    xor-long/2addr v0, v4

    return-wide v0

    :cond_2
    invoke-static {}, Lcom/unisound/vui/util/internal/d;->a()J

    move-result-wide v0

    goto :goto_0

    :cond_3
    const-string v2, "ThreadLocalRandom"

    const-string v3, "-Dio.netty.initialSeedUniquifier: 0x%016x"

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected next(I)I
    .locals 4
    .param p1, "bits"    # I

    .prologue
    iget-wide v0, p0, Lcom/unisound/vui/util/internal/d;->h:J

    const-wide v2, 0x5deece66dL

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xb

    add-long/2addr v0, v2

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/unisound/vui/util/internal/d;->h:J

    iget-wide v0, p0, Lcom/unisound/vui/util/internal/d;->h:J

    rsub-int/lit8 v2, p1, 0x30

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public setSeed(J)V
    .locals 5
    .param p1, "seed"    # J

    .prologue
    iget-boolean v0, p0, Lcom/unisound/vui/util/internal/d;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    const-wide v0, 0x5deece66dL

    xor-long/2addr v0, p1

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/unisound/vui/util/internal/d;->h:J

    return-void
.end method
