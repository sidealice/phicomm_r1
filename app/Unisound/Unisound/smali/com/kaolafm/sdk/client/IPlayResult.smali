.class public interface abstract Lcom/kaolafm/sdk/client/IPlayResult;
.super Ljava/lang/Object;
.source "IPlayResult.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaolafm/sdk/client/IPlayResult$Stub;
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

.method public abstract onSuccuss()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
