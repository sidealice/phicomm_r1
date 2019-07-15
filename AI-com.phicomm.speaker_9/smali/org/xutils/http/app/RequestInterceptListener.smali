.class public interface abstract Lorg/xutils/http/app/RequestInterceptListener;
.super Ljava/lang/Object;
.source "RequestInterceptListener.java"


# virtual methods
.method public abstract afterRequest(Lorg/xutils/http/request/UriRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract beforeRequest(Lorg/xutils/http/request/UriRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
