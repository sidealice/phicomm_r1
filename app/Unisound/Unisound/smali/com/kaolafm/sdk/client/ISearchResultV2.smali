.class public interface abstract Lcom/kaolafm/sdk/client/ISearchResultV2;
.super Ljava/lang/Object;
.source "ISearchResultV2.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaolafm/sdk/client/ISearchResultV2$Stub;
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
            "Lcom/kaolafm/sdk/client/SearchData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
