.class final Lorg/xutils/http/b;
.super Ljava/lang/Object;
.source "RequestTrackerWrapper.java"

# interfaces
.implements Lorg/xutils/http/app/RequestTracker;


# instance fields
.field private final a:Lorg/xutils/http/app/RequestTracker;


# direct methods
.method public constructor <init>(Lorg/xutils/http/app/RequestTracker;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/xutils/http/b;->a:Lorg/xutils/http/app/RequestTracker;

    return-void
.end method


# virtual methods
.method public onCache(Lorg/xutils/http/request/UriRequest;Ljava/lang/Object;)V
    .locals 1

    .line 49
    :try_start_0
    iget-object v0, p0, Lorg/xutils/http/b;->a:Lorg/xutils/http/app/RequestTracker;

    invoke-interface {v0, p1, p2}, Lorg/xutils/http/app/RequestTracker;->onCache(Lorg/xutils/http/request/UriRequest;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onCancelled(Lorg/xutils/http/request/UriRequest;)V
    .locals 1

    .line 67
    :try_start_0
    iget-object v0, p0, Lorg/xutils/http/b;->a:Lorg/xutils/http/app/RequestTracker;

    invoke-interface {v0, p1}, Lorg/xutils/http/app/RequestTracker;->onCancelled(Lorg/xutils/http/request/UriRequest;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onError(Lorg/xutils/http/request/UriRequest;Ljava/lang/Throwable;Z)V
    .locals 1

    .line 76
    :try_start_0
    iget-object v0, p0, Lorg/xutils/http/b;->a:Lorg/xutils/http/app/RequestTracker;

    invoke-interface {v0, p1, p2, p3}, Lorg/xutils/http/app/RequestTracker;->onError(Lorg/xutils/http/request/UriRequest;Ljava/lang/Throwable;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onFinished(Lorg/xutils/http/request/UriRequest;)V
    .locals 1

    .line 85
    :try_start_0
    iget-object v0, p0, Lorg/xutils/http/b;->a:Lorg/xutils/http/app/RequestTracker;

    invoke-interface {v0, p1}, Lorg/xutils/http/app/RequestTracker;->onFinished(Lorg/xutils/http/request/UriRequest;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onRequestCreated(Lorg/xutils/http/request/UriRequest;)V
    .locals 1

    .line 40
    :try_start_0
    iget-object v0, p0, Lorg/xutils/http/b;->a:Lorg/xutils/http/app/RequestTracker;

    invoke-interface {v0, p1}, Lorg/xutils/http/app/RequestTracker;->onRequestCreated(Lorg/xutils/http/request/UriRequest;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onStart(Lorg/xutils/http/RequestParams;)V
    .locals 1

    .line 31
    :try_start_0
    iget-object v0, p0, Lorg/xutils/http/b;->a:Lorg/xutils/http/app/RequestTracker;

    invoke-interface {v0, p1}, Lorg/xutils/http/app/RequestTracker;->onStart(Lorg/xutils/http/RequestParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onSuccess(Lorg/xutils/http/request/UriRequest;Ljava/lang/Object;)V
    .locals 1

    .line 58
    :try_start_0
    iget-object v0, p0, Lorg/xutils/http/b;->a:Lorg/xutils/http/app/RequestTracker;

    invoke-interface {v0, p1, p2}, Lorg/xutils/http/app/RequestTracker;->onSuccess(Lorg/xutils/http/request/UriRequest;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onWaiting(Lorg/xutils/http/RequestParams;)V
    .locals 1

    .line 22
    :try_start_0
    iget-object v0, p0, Lorg/xutils/http/b;->a:Lorg/xutils/http/app/RequestTracker;

    invoke-interface {v0, p1}, Lorg/xutils/http/app/RequestTracker;->onWaiting(Lorg/xutils/http/RequestParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
