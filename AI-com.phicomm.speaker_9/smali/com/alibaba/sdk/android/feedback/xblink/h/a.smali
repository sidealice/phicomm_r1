.class public Lcom/alibaba/sdk/android/feedback/xblink/h/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static d:Lcom/alibaba/sdk/android/feedback/xblink/h/a;


# instance fields
.field private e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/alibaba/sdk/android/feedback/xblink/h/a;->a:I

    sget v0, Lcom/alibaba/sdk/android/feedback/xblink/h/a;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alibaba/sdk/android/feedback/xblink/h/a;->b:I

    sget v0, Lcom/alibaba/sdk/android/feedback/xblink/h/a;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alibaba/sdk/android/feedback/xblink/h/a;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/h/a;->e:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/h/a;->e:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/alibaba/sdk/android/feedback/xblink/h/a;->b:I

    sget v3, Lcom/alibaba/sdk/android/feedback/xblink/h/a;->c:I

    const-wide/16 v4, 0x1f4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/h/a;->e:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public static declared-synchronized a()Lcom/alibaba/sdk/android/feedback/xblink/h/a;
    .locals 2

    const-class v0, Lcom/alibaba/sdk/android/feedback/xblink/h/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alibaba/sdk/android/feedback/xblink/h/a;->d:Lcom/alibaba/sdk/android/feedback/xblink/h/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alibaba/sdk/android/feedback/xblink/h/a;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/feedback/xblink/h/a;-><init>()V

    sput-object v1, Lcom/alibaba/sdk/android/feedback/xblink/h/a;->d:Lcom/alibaba/sdk/android/feedback/xblink/h/a;

    :cond_0
    sget-object v1, Lcom/alibaba/sdk/android/feedback/xblink/h/a;->d:Lcom/alibaba/sdk/android/feedback/xblink/h/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "WVThreadPool"

    const-string v0, "execute task is null."

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/h/a;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
