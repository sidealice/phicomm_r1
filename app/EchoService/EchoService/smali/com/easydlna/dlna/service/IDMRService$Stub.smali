.class public abstract Lcom/easydlna/dlna/service/IDMRService$Stub;
.super Landroid/os/Binder;
.source "IDMRService.java"

# interfaces
.implements Lcom/easydlna/dlna/service/IDMRService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easydlna/dlna/service/IDMRService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easydlna/dlna/service/IDMRService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.easydlna.dlna.service.IDMRService"

.field static final TRANSACTION_addDMRCallback:I = 0x2

.field static final TRANSACTION_getRenderFriendlyName:I = 0x6

.field static final TRANSACTION_removeDMRCallback:I = 0x3

.field static final TRANSACTION_sendBroadcast:I = 0x8

.field static final TRANSACTION_setAutoStartup:I = 0x7

.field static final TRANSACTION_setRenderFriendlyName:I = 0x5

.field static final TRANSACTION_setRenderStatus:I = 0x4

.field static final TRANSACTION_start_stop_DMR:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 11
    const-string v0, "com.easydlna.dlna.service.IDMRService"

    invoke-virtual {p0, p0, v0}, Lcom/easydlna/dlna/service/IDMRService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/easydlna/dlna/service/IDMRService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 20
    if-nez p0, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 27
    :goto_0
    return-object v0

    .line 23
    :cond_0
    const-string v1, "com.easydlna.dlna.service.IDMRService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 24
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/easydlna/dlna/service/IDMRService;

    if-eqz v1, :cond_1

    .line 25
    check-cast v0, Lcom/easydlna/dlna/service/IDMRService;

    goto :goto_0

    .line 27
    :cond_1
    new-instance v0, Lcom/easydlna/dlna/service/IDMRService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/easydlna/dlna/service/IDMRService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 32
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 41
    :sswitch_0
    const-string v4, "com.easydlna.dlna.service.IDMRService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :sswitch_1
    const-string v5, "com.easydlna.dlna.service.IDMRService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 48
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/easydlna/dlna/service/IDMRService$Stub;->start_stop_DMR(Z)V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_0
    move v0, v4

    .line 47
    goto :goto_1

    .line 53
    :sswitch_2
    const-string v4, "com.easydlna.dlna.service.IDMRService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/easydlna/dlna/service/IDMRCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/easydlna/dlna/service/IDMRCallback;

    move-result-object v0

    .line 57
    .local v0, "_arg0":Lcom/easydlna/dlna/service/IDMRCallback;
    invoke-virtual {p0, v0}, Lcom/easydlna/dlna/service/IDMRService$Stub;->addDMRCallback(Lcom/easydlna/dlna/service/IDMRCallback;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 62
    .end local v0    # "_arg0":Lcom/easydlna/dlna/service/IDMRCallback;
    :sswitch_3
    const-string v4, "com.easydlna.dlna.service.IDMRService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/easydlna/dlna/service/IDMRCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/easydlna/dlna/service/IDMRCallback;

    move-result-object v0

    .line 66
    .restart local v0    # "_arg0":Lcom/easydlna/dlna/service/IDMRCallback;
    invoke-virtual {p0, v0}, Lcom/easydlna/dlna/service/IDMRService$Stub;->removeDMRCallback(Lcom/easydlna/dlna/service/IDMRCallback;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 71
    .end local v0    # "_arg0":Lcom/easydlna/dlna/service/IDMRCallback;
    :sswitch_4
    const-string v4, "com.easydlna.dlna.service.IDMRService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 74
    sget-object v4, Lcom/easydlna/dlna/service/RenderStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easydlna/dlna/service/RenderStatus;

    .line 79
    .local v0, "_arg0":Lcom/easydlna/dlna/service/RenderStatus;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/easydlna/dlna/service/IDMRService$Stub;->setRenderStatus(Lcom/easydlna/dlna/service/RenderStatus;)I

    move-result v2

    .line 80
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    .end local v0    # "_arg0":Lcom/easydlna/dlna/service/RenderStatus;
    .end local v2    # "_result":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/easydlna/dlna/service/RenderStatus;
    goto :goto_2

    .line 85
    .end local v0    # "_arg0":Lcom/easydlna/dlna/service/RenderStatus;
    :sswitch_5
    const-string v5, "com.easydlna.dlna.service.IDMRService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v1, v3

    .line 90
    .local v1, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/easydlna/dlna/service/IDMRService$Stub;->setRenderFriendlyName(Ljava/lang/String;Z)I

    move-result v2

    .line 91
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_arg1":Z
    .end local v2    # "_result":I
    :cond_2
    move v1, v4

    .line 89
    goto :goto_3

    .line 96
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string v4, "com.easydlna.dlna.service.IDMRService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/easydlna/dlna/service/IDMRService$Stub;->getRenderFriendlyName()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string v5, "com.easydlna.dlna.service.IDMRService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    move v0, v3

    .line 106
    .local v0, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/easydlna/dlna/service/IDMRService$Stub;->setAutoStartup(Z)Z

    move-result v2

    .line 107
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v2, :cond_3

    move v4, v3

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v2    # "_result":Z
    :cond_4
    move v0, v4

    .line 105
    goto :goto_4

    .line 112
    :sswitch_8
    const-string v4, "com.easydlna.dlna.service.IDMRService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 115
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/easydlna/dlna/service/IDMRService$Stub;->sendBroadcast(I)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 39
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
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
