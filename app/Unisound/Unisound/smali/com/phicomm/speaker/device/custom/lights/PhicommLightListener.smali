.class public Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;
.super Lcom/unisound/vui/handler/session/light/SimpleLightListener;
.source "PhicommLightListener.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private phicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/light/SimpleLightListener;-><init>()V

    .line 20
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;->phicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    .line 21
    return-void
.end method


# virtual methods
.method public onInterrupt()V
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;->TAG:Ljava/lang/String;

    const-string v1, "----------onInterrupt----------"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;->phicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffALLWakeupLight()V

    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;->phicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffLoadingLight()V

    .line 47
    return-void
.end method

.method public onRecognizeStart()V
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;->TAG:Ljava/lang/String;

    const-string v1, "----------onRecognizeStart----------"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;->phicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffALLWakeupLight()V

    .line 37
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;->phicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOnLoadingLight()V

    .line 38
    return-void
.end method

.method public onTTSEnd()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;->phicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffLoadingLight()V

    .line 52
    return-void
.end method

.method public onWakeupSuccess(I)V
    .locals 4
    .param p1, "angle"    # I

    .prologue
    .line 25
    sget-object v1, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----------onWakeupSuccess---------- \u5904\u7406\u524d\u89d2\u5ea6 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Lcom/phicomm/speaker/device/custom/lights/PhicommLightIndexProcessor;->getIndex(I)I

    move-result v0

    .line 27
    .local v0, "currentLightIndex":I
    sget-object v1, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----------onWakeupSuccess---------- \u5904\u7406\u540e\u89d2\u5ea6 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " light index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;->phicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOnWakeupIndexLight(I)V

    .line 30
    return-void
.end method
