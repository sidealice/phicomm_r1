.class public Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;
.super Ljava/lang/Object;
.source "PhicommLightController.java"


# static fields
.field private static final LIGHT_ACTION_CLOSE:I = 0x1

.field private static final LIGHT_ACTION_OPEN:I = 0x0

.field private static final LIGHT_ID_DORMANT:I = 0x64

.field private static final LIGHT_ID_LOADING:I = 0xcb

.field private static final LIGHT_ID_NET_DISCONNECT:I = 0xfe

.field private static final LIGHT_WHAT:I = 0x1000

.field private static lastLightIndex:I


# instance fields
.field private mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, -0x1

    sput v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->lastLightIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    .line 25
    return-void
.end method


# virtual methods
.method public turnOffALLWakeupLight()V
    .locals 7

    .prologue
    .line 48
    const/4 v0, 0x1

    .line 49
    .local v0, "FIRST_WAKEUP_LIGHT_INDEX":I
    const/16 v1, 0x18

    .line 50
    .local v1, "LAST_WAKEUP_LIGHT_INDEX":I
    move v2, v0

    .local v2, "index":I
    :goto_0
    if-gt v2, v1, :cond_0

    .line 51
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v4, 0x1000

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method public turnOffDormantLight()V
    .locals 5

    .prologue
    .line 80
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x1000

    const/16 v2, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 81
    return-void
.end method

.method public turnOffLoadingLight()V
    .locals 5

    .prologue
    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x1000

    const/16 v2, 0xcb

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 67
    return-void
.end method

.method public turnOffNetDisconenctedLight()V
    .locals 5

    .prologue
    .line 94
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x1000

    const/16 v2, 0xfe

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 95
    return-void
.end method

.method public turnOnDormantLight()V
    .locals 5

    .prologue
    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x1000

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 74
    return-void
.end method

.method public turnOnLoadingLight()V
    .locals 5

    .prologue
    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x1000

    const/16 v2, 0xcb

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 60
    return-void
.end method

.method public turnOnNetDisconnectedLight()V
    .locals 5

    .prologue
    .line 87
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x1000

    const/16 v2, 0xfe

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 88
    return-void
.end method

.method public turnOnWakeupIndexLight(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 32
    sput p1, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->lastLightIndex:I

    .line 33
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x1000

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 34
    return-void
.end method

.method public turnOnWakeupLastLight()V
    .locals 5

    .prologue
    .line 40
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x1000

    sget v2, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->lastLightIndex:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 41
    return-void
.end method
