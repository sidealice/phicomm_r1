.class public Lorg/xutils/http/HttpTask;
.super Lorg/xutils/common/task/AbsTask;
.source "HttpTask.java"

# interfaces
.implements Lorg/xutils/http/ProgressHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/http/HttpTask$RequestWorker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/xutils/common/task/AbsTask",
        "<TResultType;>;",
        "Lorg/xutils/http/ProgressHandler;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CACHE_EXECUTOR:Lorg/xutils/common/task/PriorityExecutor;

.field private static final DOWNLOAD_TASK:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/xutils/http/HttpTask",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private static final FLAG_CACHE:I = 0x2

.field private static final FLAG_PROGRESS:I = 0x3

.field private static final FLAG_REQUEST_CREATED:I = 0x1

.field private static final HTTP_EXECUTOR:Lorg/xutils/common/task/PriorityExecutor;

.field private static final MAX_FILE_LOAD_WORKER:I = 0x3

.field private static final sCurrFileLoadCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private cacheCallback:Lorg/xutils/common/Callback$CacheCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$CacheCallback",
            "<TResultType;>;"
        }
    .end annotation
.end field

.field private final cacheLock:Ljava/lang/Object;

.field private final callback:Lorg/xutils/common/Callback$CommonCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$CommonCallback",
            "<TResultType;>;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;

.field private volatile hasException:Z

.field private lastUpdateTime:J

.field private loadType:Ljava/lang/reflect/Type;

.field private loadingUpdateMaxTimeSpan:J

.field private params:Lorg/xutils/http/RequestParams;

.field private prepareCallback:Lorg/xutils/common/Callback$PrepareCallback;

.field private progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

.field private rawResult:Ljava/lang/Object;

.field private request:Lorg/xutils/http/request/UriRequest;

.field private requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

.field private requestWorker:Lorg/xutils/http/HttpTask$RequestWorker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/http/HttpTask",
            "<TResultType;>.RequestWorker;"
        }
    .end annotation
.end field

.field private tracker:Lorg/xutils/http/app/RequestTracker;

.field private volatile trustCache:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 36
    const-class v0, Lorg/xutils/http/HttpTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/xutils/http/HttpTask;->$assertionsDisabled:Z

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/xutils/http/HttpTask;->sCurrFileLoadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/xutils/http/HttpTask;->DOWNLOAD_TASK:Ljava/util/HashMap;

    .line 69
    new-instance v0, Lorg/xutils/common/task/PriorityExecutor;

    invoke-direct {v0, v3, v1}, Lorg/xutils/common/task/PriorityExecutor;-><init>(IZ)V

    sput-object v0, Lorg/xutils/http/HttpTask;->HTTP_EXECUTOR:Lorg/xutils/common/task/PriorityExecutor;

    .line 70
    new-instance v0, Lorg/xutils/common/task/PriorityExecutor;

    invoke-direct {v0, v3, v1}, Lorg/xutils/common/task/PriorityExecutor;-><init>(IZ)V

    sput-object v0, Lorg/xutils/http/HttpTask;->CACHE_EXECUTOR:Lorg/xutils/common/task/PriorityExecutor;

    return-void

    :cond_0
    move v0, v2

    .line 36
    goto :goto_0
.end method

.method public constructor <init>(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$Cancelable;Lorg/xutils/common/Callback$CommonCallback;)V
    .locals 4
    .param p1, "params"    # Lorg/xutils/http/RequestParams;
    .param p2, "cancelHandler"    # Lorg/xutils/common/Callback$Cancelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/http/RequestParams;",
            "Lorg/xutils/common/Callback$Cancelable;",
            "Lorg/xutils/common/Callback$CommonCallback",
            "<TResultType;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/xutils/http/HttpTask;, "Lorg/xutils/http/HttpTask<TResultType;>;"
    .local p3, "callback":Lorg/xutils/common/Callback$CommonCallback;, "Lorg/xutils/common/Callback$CommonCallback<TResultType;>;"
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0, p2}, Lorg/xutils/common/task/AbsTask;-><init>(Lorg/xutils/common/Callback$Cancelable;)V

    .line 43
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/xutils/http/HttpTask;->hasException:Z

    .line 47
    iput-object v2, p0, Lorg/xutils/http/HttpTask;->rawResult:Ljava/lang/Object;

    .line 48
    iput-object v2, p0, Lorg/xutils/http/HttpTask;->trustCache:Ljava/lang/Boolean;

    .line 49
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/xutils/http/HttpTask;->cacheLock:Ljava/lang/Object;

    .line 520
    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lorg/xutils/http/HttpTask;->loadingUpdateMaxTimeSpan:J

    .line 77
    sget-boolean v1, Lorg/xutils/http/HttpTask;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 78
    :cond_0
    sget-boolean v1, Lorg/xutils/http/HttpTask;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p3, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 81
    :cond_1
    iput-object p1, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    .line 82
    iput-object p3, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    .line 83
    instance-of v1, p3, Lorg/xutils/common/Callback$CacheCallback;

    if-eqz v1, :cond_2

    move-object v1, p3

    .line 84
    check-cast v1, Lorg/xutils/common/Callback$CacheCallback;

    iput-object v1, p0, Lorg/xutils/http/HttpTask;->cacheCallback:Lorg/xutils/common/Callback$CacheCallback;

    .line 86
    :cond_2
    instance-of v1, p3, Lorg/xutils/common/Callback$PrepareCallback;

    if-eqz v1, :cond_3

    move-object v1, p3

    .line 87
    check-cast v1, Lorg/xutils/common/Callback$PrepareCallback;

    iput-object v1, p0, Lorg/xutils/http/HttpTask;->prepareCallback:Lorg/xutils/common/Callback$PrepareCallback;

    .line 89
    :cond_3
    instance-of v1, p3, Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v1, :cond_4

    move-object v1, p3

    .line 90
    check-cast v1, Lorg/xutils/common/Callback$ProgressCallback;

    iput-object v1, p0, Lorg/xutils/http/HttpTask;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    .line 92
    :cond_4
    instance-of v1, p3, Lorg/xutils/http/app/RequestInterceptListener;

    if-eqz v1, :cond_5

    move-object v1, p3

    .line 93
    check-cast v1, Lorg/xutils/http/app/RequestInterceptListener;

    iput-object v1, p0, Lorg/xutils/http/HttpTask;->requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

    .line 98
    :cond_5
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getRequestTracker()Lorg/xutils/http/app/RequestTracker;

    move-result-object v0

    .line 99
    .local v0, "customTracker":Lorg/xutils/http/app/RequestTracker;
    if-nez v0, :cond_6

    .line 100
    instance-of v1, p3, Lorg/xutils/http/app/RequestTracker;

    if-eqz v1, :cond_8

    move-object v0, p3

    .line 101
    check-cast v0, Lorg/xutils/http/app/RequestTracker;

    .line 106
    :cond_6
    :goto_0
    if-eqz v0, :cond_7

    .line 107
    new-instance v1, Lorg/xutils/http/RequestTrackerWrapper;

    invoke-direct {v1, v0}, Lorg/xutils/http/RequestTrackerWrapper;-><init>(Lorg/xutils/http/app/RequestTracker;)V

    iput-object v1, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    .line 112
    :cond_7
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 113
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/HttpTask;->executor:Ljava/util/concurrent/Executor;

    .line 121
    :goto_1
    return-void

    .line 103
    :cond_8
    invoke-static {}, Lorg/xutils/http/request/UriRequestFactory;->getDefaultTracker()Lorg/xutils/http/app/RequestTracker;

    move-result-object v0

    goto :goto_0

    .line 115
    :cond_9
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->cacheCallback:Lorg/xutils/common/Callback$CacheCallback;

    if-eqz v1, :cond_a

    .line 116
    sget-object v1, Lorg/xutils/http/HttpTask;->CACHE_EXECUTOR:Lorg/xutils/common/task/PriorityExecutor;

    iput-object v1, p0, Lorg/xutils/http/HttpTask;->executor:Ljava/util/concurrent/Executor;

    goto :goto_1

    .line 118
    :cond_a
    sget-object v1, Lorg/xutils/http/HttpTask;->HTTP_EXECUTOR:Lorg/xutils/common/task/PriorityExecutor;

    iput-object v1, p0, Lorg/xutils/http/HttpTask;->executor:Ljava/util/concurrent/Executor;

    goto :goto_1
.end method

.method static synthetic access$100(Lorg/xutils/http/HttpTask;)V
    .locals 0
    .param p0, "x0"    # Lorg/xutils/http/HttpTask;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->closeRequestSync()V

    return-void
.end method

.method static synthetic access$200(Lorg/xutils/http/HttpTask;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "x0"    # Lorg/xutils/http/HttpTask;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->loadType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lorg/xutils/http/HttpTask;->sCurrFileLoadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/app/RequestInterceptListener;
    .locals 1
    .param p0, "x0"    # Lorg/xutils/http/HttpTask;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

    return-object v0
.end method

.method static synthetic access$500(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;
    .locals 1
    .param p0, "x0"    # Lorg/xutils/http/HttpTask;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    return-object v0
.end method

.method static synthetic access$502(Lorg/xutils/http/HttpTask;Lorg/xutils/http/request/UriRequest;)Lorg/xutils/http/request/UriRequest;
    .locals 0
    .param p0, "x0"    # Lorg/xutils/http/HttpTask;
    .param p1, "x1"    # Lorg/xutils/http/request/UriRequest;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    return-object p1
.end method

.method static synthetic access$600(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/RequestParams;
    .locals 1
    .param p0, "x0"    # Lorg/xutils/http/HttpTask;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    return-object v0
.end method

.method static synthetic access$602(Lorg/xutils/http/HttpTask;Lorg/xutils/http/RequestParams;)Lorg/xutils/http/RequestParams;
    .locals 0
    .param p0, "x0"    # Lorg/xutils/http/HttpTask;
    .param p1, "x1"    # Lorg/xutils/http/RequestParams;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    return-object p1
.end method

.method static synthetic access$700(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;
    .locals 1
    .param p0, "x0"    # Lorg/xutils/http/HttpTask;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->createNewRequest()Lorg/xutils/http/request/UriRequest;

    move-result-object v0

    return-object v0
.end method

.method private checkDownloadTask()V
    .locals 9

    .prologue
    .line 149
    .local p0, "this":Lorg/xutils/http/HttpTask;, "Lorg/xutils/http/HttpTask<TResultType;>;"
    const-class v6, Ljava/io/File;

    iget-object v7, p0, Lorg/xutils/http/HttpTask;->loadType:Ljava/lang/reflect/Type;

    if-ne v6, v7, :cond_6

    .line 150
    sget-object v7, Lorg/xutils/http/HttpTask;->DOWNLOAD_TASK:Ljava/util/HashMap;

    monitor-enter v7

    .line 151
    :try_start_0
    iget-object v6, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v6}, Lorg/xutils/http/RequestParams;->getSaveFilePath()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "downloadTaskKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 161
    sget-object v6, Lorg/xutils/http/HttpTask;->DOWNLOAD_TASK:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 162
    .local v4, "taskRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/xutils/http/HttpTask<*>;>;"
    if-eqz v4, :cond_1

    .line 163
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xutils/http/HttpTask;

    .line 164
    .local v3, "task":Lorg/xutils/http/HttpTask;, "Lorg/xutils/http/HttpTask<*>;"
    if-eqz v3, :cond_0

    .line 165
    invoke-virtual {v3}, Lorg/xutils/http/HttpTask;->cancel()V

    .line 166
    invoke-direct {v3}, Lorg/xutils/http/HttpTask;->closeRequestSync()V

    .line 168
    :cond_0
    sget-object v6, Lorg/xutils/http/HttpTask;->DOWNLOAD_TASK:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .end local v3    # "task":Lorg/xutils/http/HttpTask;, "Lorg/xutils/http/HttpTask<*>;"
    :cond_1
    sget-object v6, Lorg/xutils/http/HttpTask;->DOWNLOAD_TASK:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .end local v4    # "taskRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/xutils/http/HttpTask<*>;>;"
    :cond_2
    sget-object v6, Lorg/xutils/http/HttpTask;->DOWNLOAD_TASK:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    const/4 v8, 0x3

    if-le v6, v8, :cond_5

    .line 175
    sget-object v6, Lorg/xutils/http/HttpTask;->DOWNLOAD_TASK:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 176
    .local v1, "entryItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lorg/xutils/http/HttpTask<*>;>;>;>;"
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 178
    .local v2, "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lorg/xutils/http/HttpTask<*>;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 179
    .local v5, "value":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/xutils/http/HttpTask<*>;>;"
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    .line 180
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 184
    .end local v0    # "downloadTaskKey":Ljava/lang/String;
    .end local v1    # "entryItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lorg/xutils/http/HttpTask<*>;>;>;>;"
    .end local v2    # "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lorg/xutils/http/HttpTask<*>;>;>;"
    .end local v5    # "value":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/xutils/http/HttpTask<*>;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v0    # "downloadTaskKey":Ljava/lang/String;
    :cond_5
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .end local v0    # "downloadTaskKey":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private clearRawResult()V
    .locals 1

    .prologue
    .line 482
    .local p0, "this":Lorg/xutils/http/HttpTask;, "Lorg/xutils/http/HttpTask<TResultType;>;"
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->rawResult:Ljava/lang/Object;

    instance-of v0, v0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->rawResult:Ljava/lang/Object;

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 485
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xutils/http/HttpTask;->rawResult:Ljava/lang/Object;

    .line 486
    return-void
.end method

.method private closeRequestSync()V
    .locals 1

    .prologue
    .line 504
    .local p0, "this":Lorg/xutils/http/HttpTask;, "Lorg/xutils/http/HttpTask<TResultType;>;"
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    .line 505
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 506
    return-void
.end method

.method private createNewRequest()Lorg/xutils/http/request/UriRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/xutils/http/HttpTask;, "Lorg/xutils/http/HttpTask<TResultType;>;"
    const/4 v4, 0x1

    .line 138
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->init()V

    .line 139
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    iget-object v2, p0, Lorg/xutils/http/HttpTask;->loadType:Ljava/lang/reflect/Type;

    invoke-static {v1, v2}, Lorg/xutils/http/request/UriRequestFactory;->getUriRequest(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)Lorg/xutils/http/request/UriRequest;

    move-result-object v0

    .line 140
    .local v0, "result":Lorg/xutils/http/request/UriRequest;
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/http/request/UriRequest;->setCallingClassLoader(Ljava/lang/ClassLoader;)V

    .line 141
    invoke-virtual {v0, p0}, Lorg/xutils/http/request/UriRequest;->setProgressHandler(Lorg/xutils/http/ProgressHandler;)V

    .line 142
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getLoadingUpdateMaxTimeSpan()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lorg/xutils/http/HttpTask;->loadingUpdateMaxTimeSpan:J

    .line 143
    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v4, v1}, Lorg/xutils/http/HttpTask;->update(I[Ljava/lang/Object;)V

    .line 144
    return-object v0
.end method

.method private resolveLoadType()V
    .locals 3

    .prologue
    .local p0, "this":Lorg/xutils/http/HttpTask;, "Lorg/xutils/http/HttpTask<TResultType;>;"
    const/4 v2, 0x0

    .line 125
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 126
    .local v0, "callBackType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    instance-of v1, v1, Lorg/xutils/common/Callback$TypedCallback;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    check-cast v1, Lorg/xutils/common/Callback$TypedCallback;

    invoke-interface {v1}, Lorg/xutils/common/Callback$TypedCallback;->getLoadType()Ljava/lang/reflect/Type;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/HttpTask;->loadType:Ljava/lang/reflect/Type;

    .line 133
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    instance-of v1, v1, Lorg/xutils/common/Callback$PrepareCallback;

    if-eqz v1, :cond_1

    .line 129
    const-class v1, Lorg/xutils/common/Callback$PrepareCallback;

    invoke-static {v0, v1, v2}, Lorg/xutils/common/util/ParameterizedTypeUtil;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/HttpTask;->loadType:Ljava/lang/reflect/Type;

    goto :goto_0

    .line 131
    :cond_1
    const-class v1, Lorg/xutils/common/Callback$CommonCallback;

    invoke-static {v0, v1, v2}, Lorg/xutils/common/util/ParameterizedTypeUtil;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/HttpTask;->loadType:Ljava/lang/reflect/Type;

    goto :goto_0
.end method


# virtual methods
.method protected cancelWorks()V
    .locals 2

    .prologue
    .line 490
    .local p0, "this":Lorg/xutils/http/HttpTask;, "Lorg/xutils/http/HttpTask<TResultType;>;"
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lorg/xutils/http/HttpTask$2;

    invoke-direct {v1, p0}, Lorg/xutils/http/HttpTask$2;-><init>(Lorg/xutils/http/HttpTask;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->run(Ljava/lang/Runnable;)V

    .line 496
    return-void
.end method

.method protected doBackground()Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/xutils/http/HttpTask;, "Lorg/xutils/http/HttpTask<TResultType;>;"
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v10, 0x0

    .line 192
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 193
    new-instance v9, Lorg/xutils/common/Callback$CancelledException;

    const-string v10, "cancelled before request"

    invoke-direct {v9, v10}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 197
    :cond_0
    const/4 v5, 0x0

    .line 198
    .local v5, "result":Ljava/lang/Object;, "TResultType;"
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->resolveLoadType()V

    .line 199
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->createNewRequest()Lorg/xutils/http/request/UriRequest;

    move-result-object v9

    iput-object v9, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    .line 200
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->checkDownloadTask()V

    .line 202
    const/4 v6, 0x1

    .line 203
    .local v6, "retry":Z
    const/4 v7, 0x0

    .line 204
    .local v7, "retryCount":I
    const/4 v2, 0x0

    .line 205
    .local v2, "exception":Ljava/lang/Throwable;
    iget-object v9, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v9}, Lorg/xutils/http/RequestParams;->getHttpRetryHandler()Lorg/xutils/http/app/HttpRetryHandler;

    move-result-object v8

    .line 206
    .local v8, "retryHandler":Lorg/xutils/http/app/HttpRetryHandler;
    if-nez v8, :cond_1

    .line 207
    new-instance v8, Lorg/xutils/http/app/HttpRetryHandler;

    .end local v8    # "retryHandler":Lorg/xutils/http/app/HttpRetryHandler;
    invoke-direct {v8}, Lorg/xutils/http/app/HttpRetryHandler;-><init>()V

    .line 209
    .restart local v8    # "retryHandler":Lorg/xutils/http/app/HttpRetryHandler;
    :cond_1
    iget-object v9, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v9}, Lorg/xutils/http/RequestParams;->getMaxRetryCount()I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/xutils/http/app/HttpRetryHandler;->setMaxRetryCount(I)V

    .line 211
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 212
    new-instance v9, Lorg/xutils/common/Callback$CancelledException;

    const-string v10, "cancelled before request"

    invoke-direct {v9, v10}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 216
    :cond_2
    const/4 v0, 0x0

    .line 217
    .local v0, "cacheResult":Ljava/lang/Object;
    iget-object v9, p0, Lorg/xutils/http/HttpTask;->cacheCallback:Lorg/xutils/common/Callback$CacheCallback;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v9}, Lorg/xutils/http/RequestParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v9

    invoke-static {v9}, Lorg/xutils/http/HttpMethod;->permitsCache(Lorg/xutils/http/HttpMethod;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 220
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    .line 221
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "load cache: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v11}, Lorg/xutils/http/request/UriRequest;->getRequestUri()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 222
    iget-object v9, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v9}, Lorg/xutils/http/request/UriRequest;->loadResultFromCache()Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lorg/xutils/http/HttpTask;->rawResult:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 228
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    .line 229
    new-instance v9, Lorg/xutils/common/Callback$CancelledException;

    const-string v10, "cancelled before request"

    invoke-direct {v9, v10}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v9, "load disk cache error"

    invoke-static {v9, v1}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 232
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_3
    iget-object v9, p0, Lorg/xutils/http/HttpTask;->rawResult:Ljava/lang/Object;

    if-eqz v9, :cond_8

    .line 233
    iget-object v9, p0, Lorg/xutils/http/HttpTask;->prepareCallback:Lorg/xutils/common/Callback$PrepareCallback;

    if-eqz v9, :cond_4

    .line 235
    :try_start_1
    iget-object v9, p0, Lorg/xutils/http/HttpTask;->prepareCallback:Lorg/xutils/common/Callback$PrepareCallback;

    iget-object v11, p0, Lorg/xutils/http/HttpTask;->rawResult:Ljava/lang/Object;

    invoke-interface {v9, v11}, Lorg/xutils/common/Callback$PrepareCallback;->prepare(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 240
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    .line 246
    .end local v0    # "cacheResult":Ljava/lang/Object;
    :goto_1
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 247
    new-instance v9, Lorg/xutils/common/Callback$CancelledException;

    const-string v10, "cancelled before request"

    invoke-direct {v9, v10}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 236
    .restart local v0    # "cacheResult":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 237
    .restart local v1    # "ex":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 238
    :try_start_2
    const-string v9, "prepare disk cache error"

    invoke-static {v9, v1}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    goto :goto_1

    .end local v1    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v9

    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    throw v9

    .line 243
    :cond_4
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->rawResult:Ljava/lang/Object;

    goto :goto_1

    .line 250
    .end local v0    # "cacheResult":Ljava/lang/Object;
    :cond_5
    if-eqz v0, :cond_8

    .line 252
    const/4 v9, 0x2

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v0, v11, v12

    invoke-virtual {p0, v9, v11}, Lorg/xutils/http/HttpTask;->update(I[Ljava/lang/Object;)V

    .line 253
    iget-object v11, p0, Lorg/xutils/http/HttpTask;->cacheLock:Ljava/lang/Object;

    monitor-enter v11

    .line 254
    :goto_2
    :try_start_3
    iget-object v9, p0, Lorg/xutils/http/HttpTask;->trustCache:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v9, :cond_6

    .line 256
    :try_start_4
    iget-object v9, p0, Lorg/xutils/http/HttpTask;->cacheLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 257
    :catch_2
    move-exception v3

    .line 258
    .local v3, "iex":Ljava/lang/InterruptedException;
    :try_start_5
    new-instance v9, Lorg/xutils/common/Callback$CancelledException;

    const-string v10, "cancelled before request"

    invoke-direct {v9, v10}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 262
    .end local v3    # "iex":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v9

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v9

    :cond_6
    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 265
    iget-object v9, p0, Lorg/xutils/http/HttpTask;->trustCache:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v9, v10

    .line 368
    .end local v5    # "result":Ljava/lang/Object;, "TResultType;"
    :cond_7
    :goto_3
    return-object v9

    .line 272
    .restart local v5    # "result":Ljava/lang/Object;, "TResultType;"
    :cond_8
    iget-object v9, p0, Lorg/xutils/http/HttpTask;->trustCache:Ljava/lang/Boolean;

    if-nez v9, :cond_9

    .line 273
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lorg/xutils/http/HttpTask;->trustCache:Ljava/lang/Boolean;

    .line 276
    :cond_9
    if-nez v0, :cond_a

    .line 277
    iget-object v9, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v9}, Lorg/xutils/http/request/UriRequest;->clearCacheHeader()V

    .line 281
    :cond_a
    iget-object v9, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    instance-of v9, v9, Lorg/xutils/common/Callback$ProxyCacheCallback;

    if-eqz v9, :cond_b

    .line 282
    iget-object v9, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    check-cast v9, Lorg/xutils/common/Callback$ProxyCacheCallback;

    invoke-interface {v9}, Lorg/xutils/common/Callback$ProxyCacheCallback;->onlyCache()Z

    move-result v9

    if-eqz v9, :cond_b

    move-object v9, v10

    .line 283
    goto :goto_3

    .line 288
    :cond_b
    const/4 v6, 0x1

    move-object v9, v5

    .line 289
    .end local v5    # "result":Ljava/lang/Object;, "TResultType;"
    :goto_4
    if-eqz v6, :cond_14

    .line 290
    const/4 v6, 0x0

    .line 293
    :try_start_7
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 294
    new-instance v11, Lorg/xutils/common/Callback$CancelledException;

    const-string v12, "cancelled before request"

    invoke-direct {v11, v12}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_7
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    .line 342
    :catch_3
    move-exception v4

    .line 343
    .local v4, "redirectEx":Lorg/xutils/ex/HttpRedirectException;
    :goto_5
    const/4 v6, 0x1

    .line 344
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Http Redirect:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v12}, Lorg/xutils/http/RequestParams;->getUri()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_4

    .line 298
    .end local v4    # "redirectEx":Lorg/xutils/ex/HttpRedirectException;
    :cond_c
    :try_start_8
    iget-object v11, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v11}, Lorg/xutils/http/request/UriRequest;->close()V
    :try_end_8
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    .line 301
    :try_start_9
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    .line 303
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "load: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v12}, Lorg/xutils/http/request/UriRequest;->getRequestUri()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 304
    new-instance v11, Lorg/xutils/http/HttpTask$RequestWorker;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lorg/xutils/http/HttpTask$RequestWorker;-><init>(Lorg/xutils/http/HttpTask;Lorg/xutils/http/HttpTask$1;)V

    iput-object v11, p0, Lorg/xutils/http/HttpTask;->requestWorker:Lorg/xutils/http/HttpTask$RequestWorker;

    .line 305
    iget-object v11, p0, Lorg/xutils/http/HttpTask;->requestWorker:Lorg/xutils/http/HttpTask$RequestWorker;

    invoke-virtual {v11}, Lorg/xutils/http/HttpTask$RequestWorker;->request()V

    .line 306
    iget-object v11, p0, Lorg/xutils/http/HttpTask;->requestWorker:Lorg/xutils/http/HttpTask$RequestWorker;

    iget-object v11, v11, Lorg/xutils/http/HttpTask$RequestWorker;->ex:Ljava/lang/Throwable;

    if-eqz v11, :cond_e

    .line 307
    iget-object v11, p0, Lorg/xutils/http/HttpTask;->requestWorker:Lorg/xutils/http/HttpTask$RequestWorker;

    iget-object v11, v11, Lorg/xutils/http/HttpTask$RequestWorker;->ex:Ljava/lang/Throwable;

    throw v11
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_9 .. :try_end_9} :catch_3

    .line 310
    :catch_4
    move-exception v1

    .line 311
    .restart local v1    # "ex":Ljava/lang/Throwable;
    :try_start_a
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    .line 312
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 313
    new-instance v11, Lorg/xutils/common/Callback$CancelledException;

    const-string v12, "cancelled during request"

    invoke-direct {v11, v12}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_a
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    .line 345
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catch_5
    move-exception v1

    .line 346
    .restart local v1    # "ex":Ljava/lang/Throwable;
    :goto_6
    iget-object v11, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v11}, Lorg/xutils/http/request/UriRequest;->getResponseCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    .line 352
    move-object v2, v1

    .line 353
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_d

    instance-of v11, v2, Lorg/xutils/common/Callback$CancelledException;

    if-nez v11, :cond_d

    .line 354
    new-instance v2, Lorg/xutils/common/Callback$CancelledException;

    .end local v2    # "exception":Ljava/lang/Throwable;
    const-string v11, "canceled by user"

    invoke-direct {v2, v11}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    .line 356
    .restart local v2    # "exception":Ljava/lang/Throwable;
    :cond_d
    iget-object v11, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v8, v11, v2, v7}, Lorg/xutils/http/app/HttpRetryHandler;->canRetry(Lorg/xutils/http/request/UriRequest;Ljava/lang/Throwable;I)Z

    move-result v6

    .line 359
    goto/16 :goto_4

    .line 309
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_e
    :try_start_b
    iget-object v11, p0, Lorg/xutils/http/HttpTask;->requestWorker:Lorg/xutils/http/HttpTask$RequestWorker;

    iget-object v11, v11, Lorg/xutils/http/HttpTask$RequestWorker;->result:Ljava/lang/Object;

    iput-object v11, p0, Lorg/xutils/http/HttpTask;->rawResult:Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_b .. :try_end_b} :catch_3

    .line 319
    :try_start_c
    iget-object v11, p0, Lorg/xutils/http/HttpTask;->prepareCallback:Lorg/xutils/common/Callback$PrepareCallback;

    if-eqz v11, :cond_12

    .line 321
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 322
    new-instance v11, Lorg/xutils/common/Callback$CancelledException;

    const-string v12, "cancelled before request"

    invoke-direct {v11, v12}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 315
    .restart local v1    # "ex":Ljava/lang/Throwable;
    :cond_f
    throw v1
    :try_end_c
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    .line 326
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_10
    :try_start_d
    iget-object v11, p0, Lorg/xutils/http/HttpTask;->prepareCallback:Lorg/xutils/common/Callback$PrepareCallback;

    iget-object v12, p0, Lorg/xutils/http/HttpTask;->rawResult:Ljava/lang/Object;

    invoke-interface {v11, v12}, Lorg/xutils/common/Callback$PrepareCallback;->prepare(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-result-object v5

    .line 328
    .restart local v5    # "result":Ljava/lang/Object;, "TResultType;"
    :try_start_e
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    .line 335
    :goto_7
    iget-object v9, p0, Lorg/xutils/http/HttpTask;->cacheCallback:Lorg/xutils/common/Callback$CacheCallback;

    if-eqz v9, :cond_11

    iget-object v9, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v9}, Lorg/xutils/http/RequestParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v9

    invoke-static {v9}, Lorg/xutils/http/HttpMethod;->permitsCache(Lorg/xutils/http/HttpMethod;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 336
    iget-object v9, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v9}, Lorg/xutils/http/request/UriRequest;->save2Cache()V

    .line 339
    :cond_11
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 340
    new-instance v9, Lorg/xutils/common/Callback$CancelledException;

    const-string v11, "cancelled after request"

    invoke-direct {v9, v11}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_e
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7

    .line 342
    :catch_6
    move-exception v4

    move-object v9, v5

    goto/16 :goto_5

    .line 328
    .end local v5    # "result":Ljava/lang/Object;, "TResultType;"
    :catchall_2
    move-exception v11

    :try_start_f
    invoke-direct {p0}, Lorg/xutils/http/HttpTask;->clearRawResult()V

    throw v11

    .line 331
    :cond_12
    iget-object v5, p0, Lorg/xutils/http/HttpTask;->rawResult:Ljava/lang/Object;
    :try_end_f
    .catch Lorg/xutils/ex/HttpRedirectException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5

    .restart local v5    # "result":Ljava/lang/Object;, "TResultType;"
    goto :goto_7

    :cond_13
    move-object v9, v5

    .line 359
    goto/16 :goto_4

    .end local v5    # "result":Ljava/lang/Object;, "TResultType;"
    .restart local v1    # "ex":Ljava/lang/Throwable;
    :sswitch_0
    move-object v9, v10

    .line 350
    goto/16 :goto_3

    .line 363
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_14
    if-eqz v2, :cond_7

    if-nez v9, :cond_7

    iget-object v10, p0, Lorg/xutils/http/HttpTask;->trustCache:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_7

    .line 364
    iput-boolean v13, p0, Lorg/xutils/http/HttpTask;->hasException:Z

    .line 365
    throw v2

    .line 345
    .restart local v5    # "result":Ljava/lang/Object;, "TResultType;"
    :catch_7
    move-exception v1

    move-object v9, v5

    goto/16 :goto_6

    .line 259
    :catch_8
    move-exception v9

    goto/16 :goto_2

    .line 346
    nop

    :sswitch_data_0
    .sparse-switch
        0xcc -> :sswitch_0
        0xcd -> :sswitch_0
        0x130 -> :sswitch_0
    .end sparse-switch
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 510
    .local p0, "this":Lorg/xutils/http/HttpTask;, "Lorg/xutils/http/HttpTask<TResultType;>;"
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getPriority()Lorg/xutils/common/task/Priority;
    .locals 1

    .prologue
    .line 515
    .local p0, "this":Lorg/xutils/http/HttpTask;, "Lorg/xutils/http/HttpTask<TResultType;>;"
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getPriority()Lorg/xutils/common/task/Priority;

    move-result-object v0

    return-object v0
.end method

.method protected isCancelFast()Z
    .locals 1

    .prologue
    .line 500
    .local p0, "this":Lorg/xutils/http/HttpTask;, "Lorg/xutils/http/HttpTask<TResultType;>;"
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->isCancelFast()Z

    move-result v0

    return v0
.end method

.method protected onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .locals 2
    .param p1, "cex"    # Lorg/xutils/common/Callback$CancelledException;

    .prologue
    .line 461
    .local p0, "this":Lorg/xutils/http/HttpTask;, "Lorg/xutils/http/HttpTask<TResultType;>;"
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    iget-object v1, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-interface {v0, v1}, Lorg/xutils/http/app/RequestTracker;->onCancelled(Lorg/xutils/http/request/UriRequest;)V

    .line 464
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v0, p1}, Lorg/xutils/common/Callback$CommonCallback;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V

    .line 465
    return-void
.end method

.method protected onError(Ljava/lang/Throwable;Z)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "isCallbackError"    # Z

    .prologue
    .line 452
    .local p0, "this":Lorg/xutils/http/HttpTask;, "Lorg/xutils/http/HttpTask<TResultType;>;"
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    iget-object v1, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-interface {v0, v1, p1, p2}, Lorg/xutils/http/app/RequestTracker;->onError(Lorg/xutils/http/request/UriRequest;Ljava/lang/Throwable;Z)V

    .line 455
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v0, p1, p2}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V

    .line 456
    return-void
.end method

.method protected onFinished()V
    .locals 2

    .prologue
    .line 469
    .local p0, "this":Lorg/xutils/http/HttpTask;, "Lorg/xutils/http/HttpTask<TResultType;>;"
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    iget-object v1, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-interface {v0, v1}, Lorg/xutils/http/app/RequestTracker;->onFinished(Lorg/xutils/http/request/UriRequest;)V

    .line 472
    :cond_0
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lorg/xutils/http/HttpTask$1;

    invoke-direct {v1, p0}, Lorg/xutils/http/HttpTask$1;-><init>(Lorg/xutils/http/HttpTask;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->run(Ljava/lang/Runnable;)V

    .line 478
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v0}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V

    .line 479
    return-void
.end method

.method protected onStarted()V
    .locals 2

    .prologue
    .line 433
    .local p0, "this":Lorg/xutils/http/HttpTask;, "Lorg/xutils/http/HttpTask<TResultType;>;"
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    iget-object v1, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-interface {v0, v1}, Lorg/xutils/http/app/RequestTracker;->onStart(Lorg/xutils/http/RequestParams;)V

    .line 436
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    invoke-interface {v0}, Lorg/xutils/common/Callback$ProgressCallback;->onStarted()V

    .line 439
    :cond_1
    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p0, "this":Lorg/xutils/http/HttpTask;, "Lorg/xutils/http/HttpTask<TResultType;>;"
    .local p1, "result":Ljava/lang/Object;, "TResultType;"
    iget-boolean v0, p0, Lorg/xutils/http/HttpTask;->hasException:Z

    if-eqz v0, :cond_0

    .line 448
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    iget-object v1, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-interface {v0, v1, p1}, Lorg/xutils/http/app/RequestTracker;->onSuccess(Lorg/xutils/http/request/UriRequest;Ljava/lang/Object;)V

    .line 447
    :cond_1
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v0, p1}, Lorg/xutils/common/Callback$CommonCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected varargs onUpdate(I[Ljava/lang/Object;)V
    .locals 9
    .param p1, "flag"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/xutils/http/HttpTask;, "Lorg/xutils/http/HttpTask<TResultType;>;"
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 378
    packed-switch p1, :pswitch_data_0

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 380
    :pswitch_0
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    if-eqz v1, :cond_0

    .line 381
    iget-object v2, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    aget-object v1, p2, v3

    check-cast v1, Lorg/xutils/http/request/UriRequest;

    invoke-interface {v2, v1}, Lorg/xutils/http/app/RequestTracker;->onRequestCreated(Lorg/xutils/http/request/UriRequest;)V

    goto :goto_0

    .line 386
    :pswitch_1
    iget-object v2, p0, Lorg/xutils/http/HttpTask;->cacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 388
    const/4 v1, 0x0

    :try_start_0
    aget-object v7, p2, v1

    .line 389
    .local v7, "result":Ljava/lang/Object;, "TResultType;"
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    if-eqz v1, :cond_1

    .line 390
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    iget-object v3, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-interface {v1, v3, v7}, Lorg/xutils/http/app/RequestTracker;->onCache(Lorg/xutils/http/request/UriRequest;Ljava/lang/Object;)V

    .line 392
    :cond_1
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->cacheCallback:Lorg/xutils/common/Callback$CacheCallback;

    invoke-interface {v1, v7}, Lorg/xutils/common/Callback$CacheCallback;->onCache(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/HttpTask;->trustCache:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 397
    :try_start_1
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->cacheLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 399
    .end local v7    # "result":Ljava/lang/Object;, "TResultType;"
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "ex":Ljava/lang/Throwable;
    const/4 v1, 0x0

    :try_start_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/HttpTask;->trustCache:Ljava/lang/Boolean;

    .line 395
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 397
    :try_start_3
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->cacheLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1

    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    iget-object v3, p0, Lorg/xutils/http/HttpTask;->cacheLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 403
    :pswitch_2
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v1, :cond_0

    array-length v1, p2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 405
    :try_start_4
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Number;

    .line 406
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const/4 v4, 0x1

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/Number;

    .line 407
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const/4 v6, 0x2

    aget-object v6, p2, v6

    check-cast v6, Ljava/lang/Boolean;

    .line 408
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 405
    invoke-interface/range {v1 .. v6}, Lorg/xutils/common/Callback$ProgressCallback;->onLoading(JJZ)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 409
    :catch_1
    move-exception v0

    .line 410
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/xutils/http/HttpTask;->callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v1, v0, v8}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V

    goto :goto_0

    .line 378
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onWaiting()V
    .locals 2

    .prologue
    .line 423
    .local p0, "this":Lorg/xutils/http/HttpTask;, "Lorg/xutils/http/HttpTask<TResultType;>;"
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->tracker:Lorg/xutils/http/app/RequestTracker;

    iget-object v1, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-interface {v0, v1}, Lorg/xutils/http/app/RequestTracker;->onWaiting(Lorg/xutils/http/RequestParams;)V

    .line 426
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    invoke-interface {v0}, Lorg/xutils/common/Callback$ProgressCallback;->onWaiting()V

    .line 429
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    .local p0, "this":Lorg/xutils/http/HttpTask;, "Lorg/xutils/http/HttpTask<TResultType;>;"
    iget-object v0, p0, Lorg/xutils/http/HttpTask;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateProgress(JJZ)Z
    .locals 11
    .param p1, "total"    # J
    .param p3, "current"    # J
    .param p5, "forceUpdateUI"    # Z

    .prologue
    .local p0, "this":Lorg/xutils/http/HttpTask;, "Lorg/xutils/http/HttpTask<TResultType;>;"
    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v8, 0x3

    const/4 v3, 0x0

    .line 531
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 551
    :cond_1
    :goto_0
    return v2

    .line 535
    :cond_2
    iget-object v4, p0, Lorg/xutils/http/HttpTask;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    if-eqz v4, :cond_4

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_4

    .line 536
    cmp-long v4, p1, p3

    if-gez v4, :cond_3

    .line 537
    move-wide p1, p3

    .line 539
    :cond_3
    if-eqz p5, :cond_6

    .line 540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/xutils/http/HttpTask;->lastUpdateTime:J

    .line 541
    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v5}, Lorg/xutils/http/request/UriRequest;->isLoading()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {p0, v8, v4}, Lorg/xutils/http/HttpTask;->update(I[Ljava/lang/Object;)V

    .line 551
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lorg/xutils/http/HttpTask;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_5
    move v2, v3

    goto :goto_0

    .line 543
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 544
    .local v0, "currTime":J
    iget-wide v4, p0, Lorg/xutils/http/HttpTask;->lastUpdateTime:J

    sub-long v4, v0, v4

    iget-wide v6, p0, Lorg/xutils/http/HttpTask;->loadingUpdateMaxTimeSpan:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_4

    .line 545
    iput-wide v0, p0, Lorg/xutils/http/HttpTask;->lastUpdateTime:J

    .line 546
    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p0, Lorg/xutils/http/HttpTask;->request:Lorg/xutils/http/request/UriRequest;

    invoke-virtual {v5}, Lorg/xutils/http/request/UriRequest;->isLoading()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {p0, v8, v4}, Lorg/xutils/http/HttpTask;->update(I[Ljava/lang/Object;)V

    goto :goto_1
.end method
