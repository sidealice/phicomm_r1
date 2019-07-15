.class public Lcom/phicomm/speaker/device/custom/handler/PhicommAlarmHandler;
.super Lcom/unisound/vui/handler/session/memo/DefaultAlarmHandler;
.source "PhicommAlarmHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhicommAlarmHandler"


# instance fields
.field private mLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/memo/DefaultAlarmHandler;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommAlarmHandler;->mLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    .line 30
    return-void
.end method


# virtual methods
.method protected dealWithSetMemo(Lnluparser/scheme/Intent;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "intent"    # Lnluparser/scheme/Intent;
    .param p2, "mAndroidContext"    # Landroid/content/Context;

    .prologue
    .line 34
    move-object v0, p1

    check-cast v0, Lnluparser/scheme/AlarmIntent;

    .line 35
    .local v0, "alarmIntent":Lnluparser/scheme/AlarmIntent;
    invoke-virtual {v0}, Lnluparser/scheme/AlarmIntent;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 36
    const-string v1, "PhicommAlarmHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dealWithSetMemo countDown:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lnluparser/scheme/AlarmIntent;->getCountDown()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {v0}, Lnluparser/scheme/AlarmIntent;->getCountDown()I

    move-result v1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_0

    .line 38
    const v1, 0x7f050038

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    :goto_0
    return-object v1

    .line 39
    :cond_0
    invoke-virtual {v0}, Lnluparser/scheme/AlarmIntent;->getCountDown()I

    move-result v1

    const v2, 0x5265c00

    if-le v1, v2, :cond_1

    .line 40
    const v1, 0x7f050037

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 43
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/session/memo/DefaultAlarmHandler;->dealWithSetMemo(Lnluparser/scheme/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 2
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v1, 0x0

    .line 47
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommAlarmHandler;->eventReceived:Z

    if-eqz v0, :cond_1

    .line 48
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommAlarmHandler;->NEED_SUPPLEMENT:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommAlarmHandler;->NEED_SUPPLEMENT:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommAlarmHandler;->reset()V

    .line 50
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterASR()V

    .line 52
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommAlarmHandler;->mLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOnWakeupLastLight()V

    move v0, v1

    .line 58
    :goto_0
    return v0

    .line 55
    :cond_0
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/session/memo/DefaultAlarmHandler;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 58
    goto :goto_0
.end method
