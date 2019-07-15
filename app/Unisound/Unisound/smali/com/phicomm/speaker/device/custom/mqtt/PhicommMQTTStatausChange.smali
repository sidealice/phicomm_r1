.class public Lcom/phicomm/speaker/device/custom/mqtt/PhicommMQTTStatausChange;
.super Ljava/lang/Object;
.source "PhicommMQTTStatausChange.java"

# interfaces
.implements Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PhicommMQTTStatausChange"


# instance fields
.field private phicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/mqtt/PhicommMQTTStatausChange;->phicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    .line 19
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v1, "PhicommMQTTStatausChange"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 32
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 36
    .local v0, "errorNumberCode":I
    :goto_0
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/mqtt/PhicommMQTTStatausChange;->phicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->syncBindFailEvent(I)V

    .line 37
    return-void

    .line 34
    .end local v0    # "errorNumberCode":I
    :cond_0
    const-string v1, "9999"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0    # "errorNumberCode":I
    goto :goto_0
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 23
    const-string v0, "PhicommMQTTStatausChange"

    const-string v1, "onSuccess: "

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/mqtt/PhicommMQTTStatausChange;->phicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->syncBindSuccessEvent()V

    .line 25
    return-void
.end method
