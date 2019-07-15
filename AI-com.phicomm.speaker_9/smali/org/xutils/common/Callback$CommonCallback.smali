.class public interface abstract Lorg/xutils/common/Callback$CommonCallback;
.super Ljava/lang/Object;
.source "Callback.java"

# interfaces
.implements Lorg/xutils/common/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/common/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CommonCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/xutils/common/Callback;"
    }
.end annotation


# virtual methods
.method public abstract onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
.end method

.method public abstract onError(Ljava/lang/Throwable;Z)V
.end method

.method public abstract onFinished()V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation
.end method
