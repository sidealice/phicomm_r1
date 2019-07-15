.class public Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;
.super Ljava/lang/Object;
.source "PhicommKeyProxy.java"


# instance fields
.field private doubleClickProcessor:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;

.field private longClickprocessor:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;

.field private oneClickProcessor:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;

.field private tripleClickProcessor:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;


# direct methods
.method public constructor <init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V
    .locals 1
    .param p1, "engine"    # Lcom/unisound/vui/engine/ANTEngine;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;

    invoke-direct {v0, p1, p2}, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;-><init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;->oneClickProcessor:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;

    .line 19
    new-instance v0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;

    invoke-direct {v0, p1, p2}, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;-><init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;->doubleClickProcessor:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;

    .line 20
    new-instance v0, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;

    invoke-direct {v0, p1, p2}, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;-><init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;->tripleClickProcessor:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;

    .line 21
    new-instance v0, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;

    invoke-direct {v0, p1, p2}, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;-><init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;->longClickprocessor:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;

    .line 22
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;->oneClickProcessor:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->onTriggered()V

    .line 29
    return-void
.end method

.method public onDoubleClick()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;->doubleClickProcessor:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->onTriggered()V

    .line 36
    return-void
.end method

.method public onLongClick()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;->longClickprocessor:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->onTriggered()V

    .line 50
    return-void
.end method

.method public onTripleClick()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;->tripleClickProcessor:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->onTriggered()V

    .line 43
    return-void
.end method
