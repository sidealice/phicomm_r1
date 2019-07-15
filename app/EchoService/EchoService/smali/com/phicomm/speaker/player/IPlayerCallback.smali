.class public interface abstract Lcom/phicomm/speaker/player/IPlayerCallback;
.super Ljava/lang/Object;
.source "IPlayerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/IPlayerCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onMediaState(ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onReqNewPage(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
