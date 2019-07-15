.class public interface abstract Lorg/xutils/http/app/RequestTracker;
.super Ljava/lang/Object;
.source "RequestTracker.java"


# virtual methods
.method public abstract onCache(Lorg/xutils/http/request/UriRequest;Ljava/lang/Object;)V
.end method

.method public abstract onCancelled(Lorg/xutils/http/request/UriRequest;)V
.end method

.method public abstract onError(Lorg/xutils/http/request/UriRequest;Ljava/lang/Throwable;Z)V
.end method

.method public abstract onFinished(Lorg/xutils/http/request/UriRequest;)V
.end method

.method public abstract onRequestCreated(Lorg/xutils/http/request/UriRequest;)V
.end method

.method public abstract onStart(Lorg/xutils/http/RequestParams;)V
.end method

.method public abstract onSuccess(Lorg/xutils/http/request/UriRequest;Ljava/lang/Object;)V
.end method

.method public abstract onWaiting(Lorg/xutils/http/RequestParams;)V
.end method
