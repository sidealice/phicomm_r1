.class public abstract Lcom/phicomm/speaker/player/IPlayerCallback$Stub;
.super Landroid/os/Binder;
.source "IPlayerCallback.java"

# interfaces
.implements Lcom/phicomm/speaker/player/IPlayerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/IPlayerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/IPlayerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.phicomm.speaker.player.IPlayerCallback"

.field static final TRANSACTION_onMediaState:I = 0x1

.field static final TRANSACTION_onReqNewPage:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.phicomm.speaker.player.IPlayerCallback"

    invoke-virtual {p0, p0, v0}, Lcom/phicomm/speaker/player/IPlayerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/phicomm/speaker/player/IPlayerCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "com.phicomm.speaker.player.IPlayerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/phicomm/speaker/player/IPlayerCallback;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/phicomm/speaker/player/IPlayerCallback;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/phicomm/speaker/player/IPlayerCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/IPlayerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 44
    :sswitch_0
    const-string v3, "com.phicomm.speaker.player.IPlayerCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v3, "com.phicomm.speaker.player.IPlayerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 53
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    sget-object v3, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    .line 59
    .local v1, "_arg1":Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/player/IPlayerCallback$Stub;->onMediaState(ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 57
    .end local v1    # "_arg1":Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    goto :goto_1

    .line 65
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    :sswitch_2
    const-string v3, "com.phicomm.speaker.player.IPlayerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 68
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/IPlayerCallback$Stub;->onReqNewPage(I)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
