.class public interface abstract Lorg/xutils/common/Callback$GroupCallback;
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
    name = "GroupCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ItemType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/xutils/common/Callback;"
    }
.end annotation


# virtual methods
.method public abstract onAllFinished()V
.end method

.method public abstract onCancelled(Ljava/lang/Object;Lorg/xutils/common/Callback$CancelledException;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItemType;",
            "Lorg/xutils/common/Callback$CancelledException;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onError(Ljava/lang/Object;Ljava/lang/Throwable;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItemType;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation
.end method

.method public abstract onFinished(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItemType;)V"
        }
    .end annotation
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItemType;)V"
        }
    .end annotation
.end method
