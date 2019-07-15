.class public interface abstract Lcom/unisound/lib/net/HttpCallBack;
.super Ljava/lang/Object;
.source "HttpCallBack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onFail(ILjava/lang/String;)V
.end method

.method public abstract onSuccess(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse<",
            "TT;>;)V"
        }
    .end annotation
.end method
