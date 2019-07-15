.class public final Lorg/xutils/http/HttpManagerImpl;
.super Ljava/lang/Object;
.source "HttpManagerImpl.java"

# interfaces
.implements Lorg/xutils/HttpManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback;
    }
.end annotation


# static fields
.field private static volatile instance:Lorg/xutils/http/HttpManagerImpl;

.field private static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/xutils/http/HttpManagerImpl;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static registerInstance()V
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lorg/xutils/http/HttpManagerImpl;->instance:Lorg/xutils/http/HttpManagerImpl;

    if-nez v0, :cond_1

    .line 23
    sget-object v1, Lorg/xutils/http/HttpManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lorg/xutils/http/HttpManagerImpl;->instance:Lorg/xutils/http/HttpManagerImpl;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lorg/xutils/http/HttpManagerImpl;

    invoke-direct {v0}, Lorg/xutils/http/HttpManagerImpl;-><init>()V

    sput-object v0, Lorg/xutils/http/HttpManagerImpl;->instance:Lorg/xutils/http/HttpManagerImpl;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lorg/xutils/http/HttpManagerImpl;->instance:Lorg/xutils/http/HttpManagerImpl;

    invoke-static {v0}, Lorg/xutils/x$Ext;->setHttpManager(Lorg/xutils/HttpManager;)V

    .line 30
    return-void

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public get(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    .locals 1
    .param p1, "entity"    # Lorg/xutils/http/RequestParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/http/RequestParams;",
            "Lorg/xutils/common/Callback$CommonCallback",
            "<TT;>;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "callback":Lorg/xutils/common/Callback$CommonCallback;, "Lorg/xutils/common/Callback$CommonCallback<TT;>;"
    sget-object v0, Lorg/xutils/http/HttpMethod;->GET:Lorg/xutils/http/HttpMethod;

    invoke-virtual {p0, v0, p1, p2}, Lorg/xutils/http/HttpManagerImpl;->request(Lorg/xutils/http/HttpMethod;Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object v0

    return-object v0
.end method

.method public getSync(Lorg/xutils/http/RequestParams;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "entity"    # Lorg/xutils/http/RequestParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/http/RequestParams;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "resultType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lorg/xutils/http/HttpMethod;->GET:Lorg/xutils/http/HttpMethod;

    invoke-virtual {p0, v0, p1, p2}, Lorg/xutils/http/HttpManagerImpl;->requestSync(Lorg/xutils/http/HttpMethod;Lorg/xutils/http/RequestParams;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public post(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    .locals 1
    .param p1, "entity"    # Lorg/xutils/http/RequestParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/http/RequestParams;",
            "Lorg/xutils/common/Callback$CommonCallback",
            "<TT;>;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "callback":Lorg/xutils/common/Callback$CommonCallback;, "Lorg/xutils/common/Callback$CommonCallback<TT;>;"
    sget-object v0, Lorg/xutils/http/HttpMethod;->POST:Lorg/xutils/http/HttpMethod;

    invoke-virtual {p0, v0, p1, p2}, Lorg/xutils/http/HttpManagerImpl;->request(Lorg/xutils/http/HttpMethod;Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object v0

    return-object v0
.end method

.method public postSync(Lorg/xutils/http/RequestParams;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "entity"    # Lorg/xutils/http/RequestParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/http/RequestParams;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "resultType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lorg/xutils/http/HttpMethod;->POST:Lorg/xutils/http/HttpMethod;

    invoke-virtual {p0, v0, p1, p2}, Lorg/xutils/http/HttpManagerImpl;->requestSync(Lorg/xutils/http/HttpMethod;Lorg/xutils/http/RequestParams;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public request(Lorg/xutils/http/HttpMethod;Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    .locals 3
    .param p1, "method"    # Lorg/xutils/http/HttpMethod;
    .param p2, "entity"    # Lorg/xutils/http/RequestParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/http/HttpMethod;",
            "Lorg/xutils/http/RequestParams;",
            "Lorg/xutils/common/Callback$CommonCallback",
            "<TT;>;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    .prologue
    .line 44
    .local p3, "callback":Lorg/xutils/common/Callback$CommonCallback;, "Lorg/xutils/common/Callback$CommonCallback<TT;>;"
    invoke-virtual {p2, p1}, Lorg/xutils/http/RequestParams;->setMethod(Lorg/xutils/http/HttpMethod;)V

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "cancelable":Lorg/xutils/common/Callback$Cancelable;
    instance-of v2, p3, Lorg/xutils/common/Callback$Cancelable;

    if-eqz v2, :cond_0

    move-object v0, p3

    .line 47
    check-cast v0, Lorg/xutils/common/Callback$Cancelable;

    .line 49
    :cond_0
    new-instance v1, Lorg/xutils/http/HttpTask;

    invoke-direct {v1, p2, v0, p3}, Lorg/xutils/http/HttpTask;-><init>(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$Cancelable;Lorg/xutils/common/Callback$CommonCallback;)V

    .line 50
    .local v1, "task":Lorg/xutils/http/HttpTask;, "Lorg/xutils/http/HttpTask<TT;>;"
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/xutils/common/TaskController;->start(Lorg/xutils/common/task/AbsTask;)Lorg/xutils/common/task/AbsTask;

    move-result-object v2

    return-object v2
.end method

.method public requestSync(Lorg/xutils/http/HttpMethod;Lorg/xutils/http/RequestParams;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "method"    # Lorg/xutils/http/HttpMethod;
    .param p2, "entity"    # Lorg/xutils/http/RequestParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/http/HttpMethod;",
            "Lorg/xutils/http/RequestParams;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 65
    .local p3, "resultType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback;

    invoke-direct {v0, p0, p3}, Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback;-><init>(Lorg/xutils/http/HttpManagerImpl;Ljava/lang/Class;)V

    .line 66
    .local v0, "callback":Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback;, "Lorg/xutils/http/HttpManagerImpl$DefaultSyncCallback<TT;>;"
    invoke-virtual {p0, p1, p2, v0}, Lorg/xutils/http/HttpManagerImpl;->requestSync(Lorg/xutils/http/HttpMethod;Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$TypedCallback;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public requestSync(Lorg/xutils/http/HttpMethod;Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$TypedCallback;)Ljava/lang/Object;
    .locals 2
    .param p1, "method"    # Lorg/xutils/http/HttpMethod;
    .param p2, "entity"    # Lorg/xutils/http/RequestParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/http/HttpMethod;",
            "Lorg/xutils/http/RequestParams;",
            "Lorg/xutils/common/Callback$TypedCallback",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 71
    .local p3, "callback":Lorg/xutils/common/Callback$TypedCallback;, "Lorg/xutils/common/Callback$TypedCallback<TT;>;"
    invoke-virtual {p2, p1}, Lorg/xutils/http/RequestParams;->setMethod(Lorg/xutils/http/HttpMethod;)V

    .line 72
    new-instance v0, Lorg/xutils/http/HttpTask;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p3}, Lorg/xutils/http/HttpTask;-><init>(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$Cancelable;Lorg/xutils/common/Callback$CommonCallback;)V

    .line 73
    .local v0, "task":Lorg/xutils/http/HttpTask;, "Lorg/xutils/http/HttpTask<TT;>;"
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/xutils/common/TaskController;->startSync(Lorg/xutils/common/task/AbsTask;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
