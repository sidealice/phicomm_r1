.class public interface abstract Lorg/xutils/common/Callback$PrepareCallback;
.super Ljava/lang/Object;
.source "Callback.java"

# interfaces
.implements Lorg/xutils/common/Callback$CommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/common/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PrepareCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PrepareType:",
        "Ljava/lang/Object;",
        "ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/xutils/common/Callback$CommonCallback<",
        "TResultType;>;"
    }
.end annotation


# virtual methods
.method public abstract prepare(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPrepareType;)TResultType;"
        }
    .end annotation
.end method
