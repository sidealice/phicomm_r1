.class public Lcom/phicomm/speaker/device/custom/udid/DeviceIdProcessor;
.super Ljava/lang/Object;
.source "DeviceIdProcessor.java"

# interfaces
.implements Lcom/phicomm/speaker/device/ipc/IpcReceiver;


# static fields
.field public static final SP_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field public static final TAG:Ljava/lang/String; = "DeviceIdProcessor"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIpcRegister:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister;

.field private mMessageSender:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/udid/DeviceIdProcessor;->mContext:Landroid/content/Context;

    .line 28
    invoke-static {}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->getInstance()Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/udid/DeviceIdProcessor;->mMessageSender:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    .line 29
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/udid/DeviceIdProcessor;->mIpcRegister:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister;

    .line 30
    return-void
.end method

.method private parseDeviceId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 71
    move-object v0, p1

    check-cast v0, Landroid/os/ParcelableUtil;

    .line 72
    .local v0, "parcelable":Landroid/os/ParcelableUtil;
    invoke-virtual {v0}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private register()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/udid/DeviceIdProcessor;->mIpcRegister:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister;

    const v1, 0x8000

    invoke-virtual {v0, p0, v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister;->registerReceiver(Lcom/phicomm/speaker/device/ipc/IpcReceiver;I)V

    .line 51
    return-void
.end method

.method private saveDeviceId(Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/udid/DeviceIdProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/unisound/vui/util/UserPerferenceUtil;->setDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    const-string v0, "DeviceIdProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveDeviceId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method private sendFetchDeviceIdOrder()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 55
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/udid/DeviceIdProcessor;->mMessageSender:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    const v2, 0x8000

    sget v3, Lcom/phicomm/speaker/device/utils/PhicommMessageManager;->DOMAIN_DEVICE_ID:I

    const/16 v4, 0x4000

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v5, v1

    invoke-virtual/range {v0 .. v7}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->send(ZIIIIILandroid/os/Parcelable;)V

    .line 58
    return-void
.end method

.method private unRegister()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/udid/DeviceIdProcessor;->mIpcRegister:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister;->unRegisterReceiver(Lcom/phicomm/speaker/device/ipc/IpcReceiver;)V

    .line 84
    return-void
.end method


# virtual methods
.method public fetchDeviceId()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/udid/DeviceIdProcessor;->register()V

    .line 37
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/udid/DeviceIdProcessor;->sendFetchDeviceIdOrder()V

    .line 38
    return-void
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/udid/DeviceIdProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/vui/util/SharedPreferencesHelper;->getInstance(Landroid/content/Context;)Lcom/unisound/vui/util/SharedPreferencesHelper;

    move-result-object v0

    const-string v1, "deviceId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/util/SharedPreferencesHelper;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "domain"    # I
    .param p2, "subDomain"    # I
    .param p3, "sessionId"    # I
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    .line 62
    sget v1, Lcom/phicomm/speaker/device/utils/PhicommMessageManager;->DOMAIN_DEVICE_ID:I

    if-ne p2, v1, :cond_0

    .line 63
    invoke-direct {p0, p4}, Lcom/phicomm/speaker/device/custom/udid/DeviceIdProcessor;->parseDeviceId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "deviceId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/udid/DeviceIdProcessor;->saveDeviceId(Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/udid/DeviceIdProcessor;->unRegister()V

    .line 67
    .end local v0    # "deviceId":Ljava/lang/String;
    :cond_0
    return-void
.end method
