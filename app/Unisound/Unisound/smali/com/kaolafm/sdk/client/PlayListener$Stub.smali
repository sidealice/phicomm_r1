.class public abstract Lcom/kaolafm/sdk/client/PlayListener$Stub;
.super Landroid/os/Binder;
.source "PlayListener.java"

# interfaces
.implements Lcom/kaolafm/sdk/client/PlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaolafm/sdk/client/PlayListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaolafm/sdk/client/PlayListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.kaolafm.sdk.client.PlayListener"

.field static final TRANSACTION_onCompleted:I = 0x6

.field static final TRANSACTION_onError:I = 0x7

.field static final TRANSACTION_onPause:I = 0x4

.field static final TRANSACTION_onPlayMusic:I = 0x5

.field static final TRANSACTION_onPlaying:I = 0x2

.field static final TRANSACTION_onProgress:I = 0x3

.field static final TRANSACTION_onStartPrepare:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.kaolafm.sdk.client.PlayListener"

    invoke-virtual {p0, p0, v0}, Lcom/kaolafm/sdk/client/PlayListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/kaolafm/sdk/client/PlayListener;
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
    const-string v1, "com.kaolafm.sdk.client.PlayListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/kaolafm/sdk/client/PlayListener;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/kaolafm/sdk/client/PlayListener;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/kaolafm/sdk/client/PlayListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/kaolafm/sdk/client/PlayListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 44
    :sswitch_0
    const-string v3, "com.kaolafm.sdk.client.PlayListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v3, "com.kaolafm.sdk.client.PlayListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/PlayListener$Stub;->onStartPrepare()V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    :sswitch_2
    const-string v3, "com.kaolafm.sdk.client.PlayListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/PlayListener$Stub;->onPlaying()V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    :sswitch_3
    const-string v3, "com.kaolafm.sdk.client.PlayListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 66
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/kaolafm/sdk/client/PlayListener$Stub;->onProgress(J)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 72
    .end local v0    # "_arg0":J
    :sswitch_4
    const-string v3, "com.kaolafm.sdk.client.PlayListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/PlayListener$Stub;->onPause()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 79
    :sswitch_5
    const-string v3, "com.kaolafm.sdk.client.PlayListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    sget-object v3, Lcom/kaolafm/sdk/client/Music;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaolafm/sdk/client/Music;

    .line 87
    .local v0, "_arg0":Lcom/kaolafm/sdk/client/Music;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/kaolafm/sdk/client/PlayListener$Stub;->onPlayMusic(Lcom/kaolafm/sdk/client/Music;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 85
    .end local v0    # "_arg0":Lcom/kaolafm/sdk/client/Music;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/kaolafm/sdk/client/Music;
    goto :goto_1

    .line 93
    .end local v0    # "_arg0":Lcom/kaolafm/sdk/client/Music;
    :sswitch_6
    const-string v3, "com.kaolafm.sdk.client.PlayListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/PlayListener$Stub;->onCompleted()V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 100
    :sswitch_7
    const-string v3, "com.kaolafm.sdk.client.PlayListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    sget-object v3, Lcom/kaolafm/sdk/client/ErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaolafm/sdk/client/ErrorInfo;

    .line 108
    .local v0, "_arg0":Lcom/kaolafm/sdk/client/ErrorInfo;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/kaolafm/sdk/client/PlayListener$Stub;->onError(Lcom/kaolafm/sdk/client/ErrorInfo;)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 106
    .end local v0    # "_arg0":Lcom/kaolafm/sdk/client/ErrorInfo;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/kaolafm/sdk/client/ErrorInfo;
    goto :goto_2

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
