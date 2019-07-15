.class public abstract Lcom/unisound/vui/custom/event/interaction/key/AbsKeyEventProcessor;
.super Ljava/lang/Object;
.source "AbsKeyEventProcessor.java"


# instance fields
.field private mController:Lcom/unisound/vui/custom/event/interaction/key/KeyEventController;


# direct methods
.method public constructor <init>(Lcom/unisound/vui/custom/event/interaction/key/KeyEventController;)V
    .locals 0
    .param p1, "controller"    # Lcom/unisound/vui/custom/event/interaction/key/KeyEventController;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/unisound/vui/custom/event/interaction/key/AbsKeyEventProcessor;->mController:Lcom/unisound/vui/custom/event/interaction/key/KeyEventController;

    .line 15
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/unisound/vui/custom/event/interaction/key/AbsKeyEventProcessor;->mController:Lcom/unisound/vui/custom/event/interaction/key/KeyEventController;

    invoke-interface {v0}, Lcom/unisound/vui/custom/event/interaction/key/KeyEventController;->onClickEvent()V

    .line 22
    return-void
.end method

.method protected onDoubleClick()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/unisound/vui/custom/event/interaction/key/AbsKeyEventProcessor;->mController:Lcom/unisound/vui/custom/event/interaction/key/KeyEventController;

    invoke-interface {v0}, Lcom/unisound/vui/custom/event/interaction/key/KeyEventController;->onDoubleClickEvent()V

    .line 29
    return-void
.end method

.method protected onLongClick()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/unisound/vui/custom/event/interaction/key/AbsKeyEventProcessor;->mController:Lcom/unisound/vui/custom/event/interaction/key/KeyEventController;

    invoke-interface {v0}, Lcom/unisound/vui/custom/event/interaction/key/KeyEventController;->onLongClickEvent()V

    .line 43
    return-void
.end method

.method protected onTripleClick()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/unisound/vui/custom/event/interaction/key/AbsKeyEventProcessor;->mController:Lcom/unisound/vui/custom/event/interaction/key/KeyEventController;

    invoke-interface {v0}, Lcom/unisound/vui/custom/event/interaction/key/KeyEventController;->onTripleClickEvent()V

    .line 36
    return-void
.end method
