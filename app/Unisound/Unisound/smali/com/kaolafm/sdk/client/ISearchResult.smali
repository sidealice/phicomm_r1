.class public interface abstract Lcom/kaolafm/sdk/client/ISearchResult;
.super Ljava/lang/Object;
.source "ISearchResult.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaolafm/sdk/client/ISearchResult$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFailure(Lcom/kaolafm/sdk/client/ErrorInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kaolafm/sdk/client/Music;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
