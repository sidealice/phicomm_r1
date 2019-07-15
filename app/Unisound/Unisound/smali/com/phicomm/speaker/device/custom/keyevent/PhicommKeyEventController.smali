.class public Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventController;
.super Ljava/lang/Object;
.source "PhicommKeyEventController.java"

# interfaces
.implements Lcom/unisound/vui/custom/event/interaction/key/KeyEventController;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private keyProxy:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V
    .locals 1
    .param p1, "engine"    # Lcom/unisound/vui/engine/ANTEngine;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;

    invoke-direct {v0, p1, p2}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;-><init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventController;->keyProxy:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;

    .line 21
    return-void
.end method


# virtual methods
.method public onClickEvent()V
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventController;->TAG:Ljava/lang/String;

    const-string v1, "--------------------onClickEvent-----------------"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventController;->keyProxy:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;->onClick()V

    .line 26
    return-void
.end method

.method public onDoubleClickEvent()V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventController;->TAG:Ljava/lang/String;

    const-string v1, "--------------------onDoubleClickEvent-----------------"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventController;->keyProxy:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;->onDoubleClick()V

    .line 31
    return-void
.end method

.method public onLongClickEvent()V
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventController;->TAG:Ljava/lang/String;

    const-string v1, "--------------------onLongClickEvent-----------------"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventController;->keyProxy:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;->onLongClick()V

    .line 41
    return-void
.end method

.method public onTripleClickEvent()V
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventController;->TAG:Ljava/lang/String;

    const-string v1, "--------------------onTripleClickEvent-----------------"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventController;->keyProxy:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;->onTripleClick()V

    .line 36
    return-void
.end method
