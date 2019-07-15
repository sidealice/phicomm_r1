.class public Lcom/phicomm/speaker/device/custom/handler/PhicommReminderHandler;
.super Lcom/unisound/vui/handler/session/memo/DefaultReminderHandler;
.source "PhicommReminderHandler.java"


# instance fields
.field private mLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/memo/DefaultReminderHandler;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommReminderHandler;->mLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    .line 24
    return-void
.end method


# virtual methods
.method protected onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 2
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v1, 0x0

    .line 27
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommReminderHandler;->eventReceived:Z

    if-eqz v0, :cond_1

    .line 28
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommReminderHandler;->NEED_SUPPLEMENT:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommReminderHandler;->NEED_SUPPLEMENT:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommReminderHandler;->reset()V

    .line 30
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterASR()V

    .line 32
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommReminderHandler;->mLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOnWakeupLastLight()V

    move v0, v1

    .line 38
    :goto_0
    return v0

    .line 35
    :cond_0
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/session/memo/DefaultReminderHandler;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 38
    goto :goto_0
.end method
