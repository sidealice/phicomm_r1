.class public Lcom/phicomm/speaker/player/dlna/player/CheckDelayTimer;
.super Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;
.source "CheckDelayTimer.java"


# instance fields
.field private lastPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;-><init>(Landroid/content/Context;)V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/phicomm/speaker/player/dlna/player/CheckDelayTimer;->lastPos:I

    .line 14
    return-void
.end method


# virtual methods
.method public isDelay(I)Z
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 22
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/phicomm/speaker/player/dlna/player/CheckDelayTimer;->lastPos:I

    if-eq p1, v0, :cond_1

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPos(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/phicomm/speaker/player/dlna/player/CheckDelayTimer;->lastPos:I

    .line 19
    return-void
.end method
