.class public abstract Lcom/easydlna/dlna/service/IDMSService$Stub;
.super Landroid/os/Binder;
.source "IDMSService.java"

# interfaces
.implements Lcom/easydlna/dlna/service/IDMSService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easydlna/dlna/service/IDMSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easydlna/dlna/service/IDMSService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.easydlna.dlna.service.IDMSService"

.field static final TRANSACTION_addSharedContents:I = 0x5

.field static final TRANSACTION_getAutoStartup:I = 0x9

.field static final TRANSACTION_getServerFriendlyName:I = 0x3

.field static final TRANSACTION_getSharedType:I = 0x4

.field static final TRANSACTION_isStarted:I = 0xa

.field static final TRANSACTION_removeSharedContents:I = 0x6

.field static final TRANSACTION_sendBroadcast:I = 0xb

.field static final TRANSACTION_setAutoStartup:I = 0x8

.field static final TRANSACTION_setServerFriendlyName:I = 0x2

.field static final TRANSACTION_setSharedType:I = 0x7

.field static final TRANSACTION_start_stop_DMS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 11
    const-string v0, "com.easydlna.dlna.service.IDMSService"

    invoke-virtual {p0, p0, v0}, Lcom/easydlna/dlna/service/IDMSService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/easydlna/dlna/service/IDMSService;
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
    const-string v1, "com.easydlna.dlna.service.IDMSService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 24
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/easydlna/dlna/service/IDMSService;

    if-eqz v1, :cond_1

    .line 25
    check-cast v0, Lcom/easydlna/dlna/service/IDMSService;

    goto :goto_0

    .line 27
    :cond_1
    new-instance v0, Lcom/easydlna/dlna/service/IDMSService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/easydlna/dlna/service/IDMSService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 41
    :sswitch_0
    const-string v4, "com.easydlna.dlna.service.IDMSService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :sswitch_1
    const-string v5, "com.easydlna.dlna.service.IDMSService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 48
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/easydlna/dlna/service/IDMSService$Stub;->start_stop_DMS(Z)I

    move-result v2

    .line 49
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v2    # "_result":I
    :cond_0
    move v0, v4

    .line 47
    goto :goto_1

    .line 54
    :sswitch_2
    const-string v5, "com.easydlna.dlna.service.IDMSService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 59
    .local v1, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/easydlna/dlna/service/IDMSService$Stub;->setServerFriendlyName(Ljava/lang/String;Z)I

    move-result v2

    .line 60
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_arg1":Z
    .end local v2    # "_result":I
    :cond_1
    move v1, v4

    .line 58
    goto :goto_2

    .line 65
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string v4, "com.easydlna.dlna.service.IDMSService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/easydlna/dlna/service/IDMSService$Stub;->getServerFriendlyName()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string v4, "com.easydlna.dlna.service.IDMSService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/easydlna/dlna/service/IDMSService$Stub;->getSharedType()I

    move-result v2

    .line 74
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    .end local v2    # "_result":I
    :sswitch_5
    const-string v4, "com.easydlna.dlna.service.IDMSService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 82
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/easydlna/dlna/service/IDMSService$Stub;->addSharedContents(I)I

    move-result v2

    .line 83
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 88
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_6
    const-string v4, "com.easydlna.dlna.service.IDMSService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 91
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/easydlna/dlna/service/IDMSService$Stub;->removeSharedContents(I)I

    move-result v2

    .line 92
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 97
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_7
    const-string v4, "com.easydlna.dlna.service.IDMSService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/easydlna/dlna/service/IDMSService$Stub;->setSharedType(I)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 105
    .end local v0    # "_arg0":I
    :sswitch_8
    const-string v5, "com.easydlna.dlna.service.IDMSService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    move v0, v3

    .line 108
    .local v0, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/easydlna/dlna/service/IDMSService$Stub;->setAutoStartup(Z)Z

    move-result v2

    .line 109
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v2, :cond_2

    move v4, v3

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v2    # "_result":Z
    :cond_3
    move v0, v4

    .line 107
    goto :goto_3

    .line 114
    :sswitch_9
    const-string v5, "com.easydlna.dlna.service.IDMSService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/easydlna/dlna/service/IDMSService$Stub;->getAutoStartup()Z

    move-result v2

    .line 116
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v2, :cond_4

    move v4, v3

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 121
    .end local v2    # "_result":Z
    :sswitch_a
    const-string v5, "com.easydlna.dlna.service.IDMSService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/easydlna/dlna/service/IDMSService$Stub;->isStarted()Z

    move-result v2

    .line 123
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v2, :cond_5

    move v4, v3

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 128
    .end local v2    # "_result":Z
    :sswitch_b
    const-string v4, "com.easydlna.dlna.service.IDMSService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 131
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/easydlna/dlna/service/IDMSService$Stub;->sendBroadcast(I)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 39
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
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
