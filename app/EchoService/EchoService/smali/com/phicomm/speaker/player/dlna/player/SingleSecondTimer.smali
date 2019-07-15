.class public Lcom/phicomm/speaker/player/dlna/player/SingleSecondTimer;
.super Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;
.source "SingleSecondTimer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;-><init>(Landroid/content/Context;)V

    .line 9
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/dlna/player/SingleSecondTimer;->setTimeInterval(I)V

    .line 10
    return-void
.end method
