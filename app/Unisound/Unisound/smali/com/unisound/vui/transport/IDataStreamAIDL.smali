.class public interface abstract Lcom/unisound/vui/transport/IDataStreamAIDL;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract getDataStream()Lcom/unisound/vui/transport/DataStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startDataTransport()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopDataTransport()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract useStereo(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
