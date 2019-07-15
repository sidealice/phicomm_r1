.class public final Lorg/xutils/http/HttpManagerImpl;
.super Ljava/lang/Object;
.source "HttpManagerImpl.java"

# interfaces
.implements Lorg/xutils/HttpManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/http/HttpManagerImpl$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static volatile b:Lorg/xutils/http/HttpManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/xutils/http/HttpManagerImpl;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerInstance()V
    .locals 2

    .line 22
    sget-object v0, Lorg/xutils/http/HttpManagerImpl;->b:Lorg/xutils/http/HttpManagerImpl;

    if-nez v0, :cond_1

    .line 23
    sget-object v0, Lorg/xutils/http/HttpManagerImpl;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lorg/xutils/http/HttpManagerImpl;->b:Lorg/xutils/http/HttpManagerImpl;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lorg/xutils/http/HttpManagerImpl;

    invoke-direct {v1}, Lorg/xutils/http/HttpManagerImpl;-><init>()V

    sput-object v1, Lorg/xutils/http/HttpManagerImpl;->b:Lorg/xutils/http/HttpManagerImpl;

    .line 27
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 29
    :cond_1
    :goto_0
    sget-object v0, Lorg/xutils/http/HttpManagerImpl;->b:Lorg/xutils/http/HttpManagerImpl;

    invoke-static {v0}, Lorg/xutils/x$Ext;->setHttpManager(Lorg/xutils/HttpManager;)V

    return-void
.end method


# virtual methods
.method public get(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/http/RequestParams;",
            "Lorg/xutils/common/Callback$CommonCallback<",
            "TT;>;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    .line 34
    sget-object v0, Lorg/xutils/http/HttpMethod;->GET:Lorg/xutils/http/HttpMethod;

    invoke-virtual {p0, v0, p1, p2}, Lorg/xutils/http/HttpManagerImpl;->request(Lorg/xutils/http/HttpMethod;Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object p1

    return-object p1
.end method

.method public getSync(Lorg/xutils/http/RequestParams;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/http/RequestParams;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 55
    sget-object v0, Lorg/xutils/http/HttpMethod;->GET:Lorg/xutils/http/HttpMethod;

    invoke-virtual {p0, v0, p1, p2}, Lorg/xutils/http/HttpManagerImpl;->requestSync(Lorg/xutils/http/HttpMethod;Lorg/xutils/http/RequestParams;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public post(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/http/RequestParams;",
            "Lorg/xutils/common/Callback$CommonCallback<",
            "TT;>;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    .line 39
    sget-object v0, Lorg/xutils/http/HttpMethod;->POST:Lorg/xutils/http/HttpMethod;

    invoke-virtual {p0, v0, p1, p2}, Lorg/xutils/http/HttpManagerImpl;->request(Lorg/xutils/http/HttpMethod;Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object p1

    return-object p1
.end method

.method public postSync(Lorg/xutils/http/RequestParams;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/http/RequestParams;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 60
    sget-object v0, Lorg/xutils/http/HttpMethod;->POST:Lorg/xutils/http/HttpMethod;

    invoke-virtual {p0, v0, p1, p2}, Lorg/xutils/http/HttpManagerImpl;->requestSync(Lorg/xutils/http/HttpMethod;Lorg/xutils/http/RequestParams;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public request(Lorg/xutils/http/HttpMethod;Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/http/HttpMethod;",
            "Lorg/xutils/http/RequestParams;",
            "Lorg/xutils/common/Callback$CommonCallback<",
            "TT;>;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    .line 44
    invoke-virtual {p2, p1}, Lorg/xutils/http/RequestParams;->setMethod(Lorg/xutils/http/HttpMethod;)V

    .line 46
    instance-of p1, p3, Lorg/xutils/common/Callback$Cancelable;

    if-eqz p1, :cond_0

    .line 47
    move-object p1, p3

    check-cast p1, Lorg/xutils/common/Callback$Cancelable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 49
    :goto_0
    new-instance v0, Lorg/xutils/http/HttpTask;

    invoke-direct {v0, p2, p1, p3}, Lorg/xutils/http/HttpTask;-><init>(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$Cancelable;Lorg/xutils/common/Callback$CommonCallback;)V

    .line 50
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/xutils/common/TaskController;->start(Lorg/xutils/common/task/AbsTask;)Lorg/xutils/common/task/AbsTask;

    move-result-object p1

    return-object p1
.end method

.method public requestSync(Lorg/xutils/http/HttpMethod;Lorg/xutils/http/RequestParams;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/http/HttpMethod;",
            "Lorg/xutils/http/RequestParams;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 65
    new-instance v0, Lorg/xutils/http/HttpManagerImpl$a;

    invoke-direct {v0, p0, p3}, Lorg/xutils/http/HttpManagerImpl$a;-><init>(Lorg/xutils/http/HttpManagerImpl;Ljava/lang/Class;)V

    .line 66
    invoke-virtual {p0, p1, p2, v0}, Lorg/xutils/http/HttpManagerImpl;->requestSync(Lorg/xutils/http/HttpMethod;Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$TypedCallback;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public requestSync(Lorg/xutils/http/HttpMethod;Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$TypedCallback;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/http/HttpMethod;",
            "Lorg/xutils/http/RequestParams;",
            "Lorg/xutils/common/Callback$TypedCallback<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 71
    invoke-virtual {p2, p1}, Lorg/xutils/http/RequestParams;->setMethod(Lorg/xutils/http/HttpMethod;)V

    .line 72
    new-instance p1, Lorg/xutils/http/HttpTask;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, p3}, Lorg/xutils/http/HttpTask;-><init>(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$Cancelable;Lorg/xutils/common/Callback$CommonCallback;)V

    .line 73
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/xutils/common/TaskController;->startSync(Lorg/xutils/common/task/AbsTask;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
