.class public Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;
.super Ljava/lang/Object;
.source "RingingEventProcessor.java"

# interfaces
.implements Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$OnRingingListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEngine:Lcom/unisound/vui/engine/ANTEngine;

.field private mMessageCenter:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

.field protected mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

.field private mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

.field private mStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V
    .locals 1
    .param p1, "engine"    # Lcom/unisound/vui/engine/ANTEngine;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mContext:Landroid/content/Context;

    .line 30
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    .line 31
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-direct {v0, p2}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    .line 32
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-direct {v0, p2}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    .line 33
    invoke-static {}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->getInstance()Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mMessageCenter:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    .line 34
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    .line 35
    return-void
.end method

.method private processRingingEvent(Z)V
    .locals 4
    .param p1, "ringing"    # Z

    .prologue
    .line 51
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v0

    .line 52
    .local v0, "status":I
    sget-object v2, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "\u51c6\u5907\u54cd\u94c3"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", \u5f53\u524d\u72b6\u6001"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_1
    :pswitch_0
    return-void

    .line 52
    :cond_0
    const-string v1, "\u54cd\u94c3\u7ed3\u675f"

    goto :goto_0

    .line 55
    :pswitch_1
    if-eqz p1, :cond_1

    .line 56
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->ringStartOnStatusReady()V

    goto :goto_1

    .line 58
    :cond_1
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->ringStoppedOnStatusReady()V

    goto :goto_1

    .line 62
    :pswitch_2
    if-eqz p1, :cond_2

    .line 63
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->ringStartOnStatusMusic()V

    goto :goto_1

    .line 65
    :cond_2
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->ringStoppedOnStatusMusic()V

    goto :goto_1

    .line 69
    :pswitch_3
    if-eqz p1, :cond_3

    .line 70
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->ringStartOnStatusSetupNet()V

    goto :goto_1

    .line 72
    :cond_3
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->ringStoppedOnStatusSetupNet()V

    goto :goto_1

    .line 76
    :pswitch_4
    if-eqz p1, :cond_4

    .line 77
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->ringStartOnStatusBluetooth()V

    goto :goto_1

    .line 79
    :cond_4
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->ringStoppedOnStatusBluetooth()V

    goto :goto_1

    .line 83
    :pswitch_5
    if-eqz p1, :cond_5

    .line 84
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->ringStartOnStatusSleeping()V

    goto :goto_1

    .line 86
    :cond_5
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->ringStoppedOnStatusSleeping()V

    goto :goto_1

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private ringStartOnStatusBluetooth()V
    .locals 5

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->turnOffWakeupLightsIfNeeds()V

    .line 145
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mMessageCenter:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->send(IIILandroid/os/Parcelable;)V

    .line 146
    return-void
.end method

.method private ringStartOnStatusMusic()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->turnOffWakeupLightsIfNeeds()V

    .line 116
    return-void
.end method

.method private ringStartOnStatusReady()V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->turnOffWakeupLightsIfNeeds()V

    .line 98
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    const-string v1, "doActiveInterrupt"

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 99
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->cancelTTS()V

    .line 100
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->cancelASR()V

    .line 101
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->enterWakeup(Z)V

    .line 102
    return-void
.end method

.method private ringStartOnStatusSetupNet()V
    .locals 5

    .prologue
    .line 129
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mMessageCenter:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    const/high16 v1, 0x40000

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->send(IIILandroid/os/Parcelable;)V

    .line 130
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->enterWakeup(Z)V

    .line 131
    return-void
.end method

.method private ringStartOnStatusSleeping()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffDormantLight()V

    .line 168
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    sget-object v1, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->Speech:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->syncDeviceStatus(Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;)V

    .line 169
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->enterWakeup(Z)V

    .line 170
    return-void
.end method

.method private ringStoppedOnStatusBluetooth()V
    .locals 5

    .prologue
    .line 160
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mMessageCenter:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->send(IIILandroid/os/Parcelable;)V

    .line 161
    return-void
.end method

.method private ringStoppedOnStatusMusic()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method private ringStoppedOnStatusReady()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method private ringStoppedOnStatusSetupNet()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method private ringStoppedOnStatusSleeping()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method private turnOffWakeupLightsIfNeeds()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffALLWakeupLight()V

    .line 154
    return-void
.end method


# virtual methods
.method public onRingingStart()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->processRingingEvent(Z)V

    .line 39
    return-void
.end method

.method public onRingingStop()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->processRingingEvent(Z)V

    .line 43
    return-void
.end method
