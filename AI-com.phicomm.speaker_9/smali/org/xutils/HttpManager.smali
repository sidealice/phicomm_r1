.class public interface abstract Lorg/xutils/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"


# virtual methods
.method public abstract get(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
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
.end method

.method public abstract getSync(Lorg/xutils/http/RequestParams;Ljava/lang/Class;)Ljava/lang/Object;
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
.end method

.method public abstract post(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
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
.end method

.method public abstract postSync(Lorg/xutils/http/RequestParams;Ljava/lang/Class;)Ljava/lang/Object;
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
.end method

.method public abstract request(Lorg/xutils/http/HttpMethod;Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
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
.end method

.method public abstract requestSync(Lorg/xutils/http/HttpMethod;Lorg/xutils/http/RequestParams;Ljava/lang/Class;)Ljava/lang/Object;
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
.end method

.method public abstract requestSync(Lorg/xutils/http/HttpMethod;Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$TypedCallback;)Ljava/lang/Object;
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
.end method
