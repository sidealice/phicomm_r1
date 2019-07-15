.class public abstract Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;
.super Ljava/lang/Object;
.source "AbstractTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/dlna/player/AbstractTimer$MyTimeTask;
    }
.end annotation


# static fields
.field private static final TIMER_INTERVAL:I = 0x3e8


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field protected mTimeInterval:I

.field protected mTimeTask:Lcom/phicomm/speaker/player/dlna/player/AbstractTimer$MyTimeTask;

.field private mTimer:Ljava/util/Timer;

.field protected msgID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;->mTimeInterval:I

    .line 23
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;->mContext:Landroid/content/Context;

    .line 24
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;->mTimer:Ljava/util/Timer;

    .line 25
    return-void
.end method


# virtual methods
.method public setHandler(Landroid/os/Handler;I)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msgID"    # I

    .prologue
    .line 28
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;->mHandler:Landroid/os/Handler;

    .line 29
    iput p2, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;->msgID:I

    .line 30
    return-void
.end method

.method public setTimeInterval(I)V
    .locals 0
    .param p1, "interval"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;->mTimeInterval:I

    .line 34
    return-void
.end method

.method public startTimer()V
    .locals 6

    .prologue
    .line 38
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;->mTimeTask:Lcom/phicomm/speaker/player/dlna/player/AbstractTimer$MyTimeTask;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer$MyTimeTask;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer$MyTimeTask;-><init>(Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;->mTimeTask:Lcom/phicomm/speaker/player/dlna/player/AbstractTimer$MyTimeTask;

    .line 41
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;->mTimeTask:Lcom/phicomm/speaker/player/dlna/player/AbstractTimer$MyTimeTask;

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;->mTimeInterval:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 43
    :cond_0
    return-void
.end method

.method public stopTimer()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;->mTimeTask:Lcom/phicomm/speaker/player/dlna/player/AbstractTimer$MyTimeTask;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;->mTimeTask:Lcom/phicomm/speaker/player/dlna/player/AbstractTimer$MyTimeTask;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer$MyTimeTask;->cancel()Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;->mTimeTask:Lcom/phicomm/speaker/player/dlna/player/AbstractTimer$MyTimeTask;

    .line 52
    :cond_0
    return-void
.end method
