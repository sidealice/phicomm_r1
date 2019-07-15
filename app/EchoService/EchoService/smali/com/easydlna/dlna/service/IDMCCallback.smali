.class public interface abstract Lcom/easydlna/dlna/service/IDMCCallback;
.super Ljava/lang/Object;
.source "IDMCCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easydlna/dlna/service/IDMCCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract ContentNotify(Ljava/lang/String;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract DeviceNotify(Lcom/easydlna/dlna/service/DlnaDevice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract PlayStatusNotify(Ljava/lang/String;Lcom/easydlna/dlna/service/RenderStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
