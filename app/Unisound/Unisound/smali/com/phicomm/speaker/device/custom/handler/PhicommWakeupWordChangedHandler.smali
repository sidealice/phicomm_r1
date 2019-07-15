.class public Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;
.super Lcom/unisound/vui/handler/UpdateWakeupWordHandler;
.source "PhicommWakeupWordChangedHandler.java"


# static fields
.field public static final UPDATE_WAKEUPWORD:Lcom/unisound/vui/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/AttributeKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-class v0, Lcom/unisound/vui/handler/UpdateWakeupWordHandler;

    const-string v1, "UPDATE_WAKEUPWORD"

    .line 18
    invoke-static {v0, v1}, Lcom/unisound/vui/util/AttributeKey;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;->UPDATE_WAKEUPWORD:Lcom/unisound/vui/util/AttributeKey;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/unisound/vui/handler/UpdateWakeupWordHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "interruptType"    # Ljava/lang/String;

    .prologue
    .line 59
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;->UPDATE_WAKEUPWORD:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;->UPDATE_WAKEUPWORD:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V

    .line 62
    :cond_0
    return-void
.end method

.method protected onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 49
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;->UPDATE_WAKEUPWORD:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;->UPDATE_WAKEUPWORD:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;->fireResume(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 52
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/UpdateWakeupWordHandler;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onWakeupEventSetWakeupwordDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v1, 0x1

    .line 28
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;->UPDATE_WAKEUPWORD:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;->UPDATE_WAKEUPWORD:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getDeviceBindState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 36
    :goto_0
    return v0

    .line 33
    :cond_0
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f05009a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    move v0, v1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/UpdateWakeupWordHandler;->onWakeupEventSetWakeupwordDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onWakeupEventUpdateWakeupWordFail(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 40
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;->UPDATE_WAKEUPWORD:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;->UPDATE_WAKEUPWORD:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const v0, 0x7f050099

    const/4 v1, -0x1

    .line 42
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v2

    invoke-interface {v2}, Lcom/unisound/vui/engine/ANTEngine;->androidContext()Landroid/content/Context;

    move-result-object v2

    .line 41
    invoke-static {v0, v1, v2}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/UpdateWakeupWordHandler;->onWakeupEventUpdateWakeupWordFail(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/util/List;)V
    .locals 2
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/vui/engine/ANTHandlerContext;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "wakeup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;->fireActiveInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 23
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;->UPDATE_WAKEUPWORD:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 24
    invoke-interface {p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->updateWakeupWord(Ljava/util/List;)V

    .line 25
    return-void
.end method
