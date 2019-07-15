.class public abstract Lcom/easydlna/dlna/service/IDMCService$Stub;
.super Landroid/os/Binder;
.source "IDMCService.java"

# interfaces
.implements Lcom/easydlna/dlna/service/IDMCService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easydlna/dlna/service/IDMCService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easydlna/dlna/service/IDMCService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.easydlna.dlna.service.IDMCService"

.field static final TRANSACTION_addDMCCallback:I = 0x2

.field static final TRANSACTION_getContents:I = 0x7

.field static final TRANSACTION_getOnLineDevices:I = 0x4

.field static final TRANSACTION_playControl:I = 0x6

.field static final TRANSACTION_refreshContents:I = 0x8

.field static final TRANSACTION_removeDMCCallback:I = 0x3

.field static final TRANSACTION_searchDevice:I = 0x5

.field static final TRANSACTION_setAutoStartup:I = 0x9

.field static final TRANSACTION_start_stop_DMC:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 11
    const-string v0, "com.easydlna.dlna.service.IDMCService"

    invoke-virtual {p0, p0, v0}, Lcom/easydlna/dlna/service/IDMCService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/easydlna/dlna/service/IDMCService;
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
    const-string v1, "com.easydlna.dlna.service.IDMCService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 24
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/easydlna/dlna/service/IDMCService;

    if-eqz v1, :cond_1

    .line 25
    check-cast v0, Lcom/easydlna/dlna/service/IDMCService;

    goto :goto_0

    .line 27
    :cond_1
    new-instance v0, Lcom/easydlna/dlna/service/IDMCService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/easydlna/dlna/service/IDMCService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 41
    :sswitch_0
    const-string v0, "com.easydlna.dlna.service.IDMCService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :sswitch_1
    const-string v10, "com.easydlna.dlna.service.IDMCService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    move v1, v9

    .line 48
    .local v1, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v1}, Lcom/easydlna/dlna/service/IDMCService$Stub;->start_stop_DMC(Z)V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1    # "_arg0":Z
    :cond_0
    move v1, v0

    .line 47
    goto :goto_1

    .line 53
    :sswitch_2
    const-string v0, "com.easydlna.dlna.service.IDMCService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/easydlna/dlna/service/IDMCCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/easydlna/dlna/service/IDMCCallback;

    move-result-object v1

    .line 57
    .local v1, "_arg0":Lcom/easydlna/dlna/service/IDMCCallback;
    invoke-virtual {p0, v1}, Lcom/easydlna/dlna/service/IDMCService$Stub;->addDMCCallback(Lcom/easydlna/dlna/service/IDMCCallback;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 62
    .end local v1    # "_arg0":Lcom/easydlna/dlna/service/IDMCCallback;
    :sswitch_3
    const-string v0, "com.easydlna.dlna.service.IDMCService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/easydlna/dlna/service/IDMCCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/easydlna/dlna/service/IDMCCallback;

    move-result-object v1

    .line 66
    .restart local v1    # "_arg0":Lcom/easydlna/dlna/service/IDMCCallback;
    invoke-virtual {p0, v1}, Lcom/easydlna/dlna/service/IDMCService$Stub;->removeDMCCallback(Lcom/easydlna/dlna/service/IDMCCallback;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 71
    .end local v1    # "_arg0":Lcom/easydlna/dlna/service/IDMCCallback;
    :sswitch_4
    const-string v0, "com.easydlna.dlna.service.IDMCService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v6, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/easydlna/dlna/service/DlnaDevice;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 76
    .local v2, "_arg1":I
    invoke-virtual {p0, v6, v2}, Lcom/easydlna/dlna/service/IDMCService$Stub;->getOnLineDevices(Ljava/util/List;I)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 82
    .end local v2    # "_arg1":I
    .end local v6    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/easydlna/dlna/service/DlnaDevice;>;"
    :sswitch_5
    const-string v0, "com.easydlna.dlna.service.IDMCService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 85
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/easydlna/dlna/service/IDMCService$Stub;->searchDevice(I)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 90
    .end local v1    # "_arg0":I
    :sswitch_6
    const-string v0, "com.easydlna.dlna.service.IDMCService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 96
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v7}, Lcom/easydlna/dlna/service/IDMCService$Stub;->playControl(Ljava/lang/String;ILjava/lang/String;)I

    move-result v8

    .line 98
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 103
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":I
    :sswitch_7
    const-string v0, "com.easydlna.dlna.service.IDMCService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 107
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 109
    .restart local v2    # "_arg1":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/easydlna/dlna/service/ContentInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 113
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 114
    invoke-virtual/range {v0 .. v5}, Lcom/easydlna/dlna/service/IDMCService$Stub;->getContents(Ljava/lang/String;ILjava/util/List;II)I

    move-result v8

    .line 116
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 122
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/easydlna/dlna/service/ContentInfo;>;"
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v8    # "_result":I
    :sswitch_8
    const-string v0, "com.easydlna.dlna.service.IDMCService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/easydlna/dlna/service/IDMCService$Stub;->refreshContents(Ljava/lang/String;)I

    move-result v8

    .line 126
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 131
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":I
    :sswitch_9
    const-string v10, "com.easydlna.dlna.service.IDMCService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    move v1, v9

    .line 134
    .local v1, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v1}, Lcom/easydlna/dlna/service/IDMCService$Stub;->setAutoStartup(Z)Z

    move-result v8

    .line 135
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v8, :cond_1

    move v0, v9

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_2
    move v1, v0

    .line 133
    goto :goto_2

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
