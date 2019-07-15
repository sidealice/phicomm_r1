.class public Lcom/phicomm/speaker/player/exomedia/util/StopWatch;
.super Ljava/lang/Object;
.source "StopWatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;,
        Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickListener;
    }
.end annotation


# static fields
.field protected static final DEFAULT_TICK_DELAY:I = 0x21

.field protected static final HANDLER_THREAD_NAME:Ljava/lang/String; = "ExoMedia_StopWatch_HandlerThread"


# instance fields
.field protected currentTime:J

.field protected delayedHandler:Landroid/os/Handler;

.field protected handlerThread:Landroid/os/HandlerThread;

.field protected volatile isRunning:Z

.field protected listener:Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickListener;

.field protected startTime:J

.field protected storedTime:J

.field protected tickDelay:I

.field protected tickRunnable:Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;

.field protected useHandlerThread:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;-><init>(Z)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->isRunning:Z

    .line 36
    const/16 v0, 0x21

    iput v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->tickDelay:I

    .line 40
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->useHandlerThread:Z

    .line 43
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;-><init>(Lcom/phicomm/speaker/player/exomedia/util/StopWatch;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->tickRunnable:Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;

    .line 45
    iput-wide v2, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->startTime:J

    .line 46
    iput-wide v2, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->currentTime:J

    .line 47
    iput-wide v2, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->storedTime:J

    .line 69
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->delayedHandler:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4
    .param p1, "processOnStartingThread"    # Z

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->isRunning:Z

    .line 36
    const/16 v0, 0x21

    iput v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->tickDelay:I

    .line 40
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->useHandlerThread:Z

    .line 43
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;-><init>(Lcom/phicomm/speaker/player/exomedia/util/StopWatch;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->tickRunnable:Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;

    .line 45
    iput-wide v2, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->startTime:J

    .line 46
    iput-wide v2, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->currentTime:J

    .line 47
    iput-wide v2, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->storedTime:J

    .line 57
    if-eqz p1, :cond_0

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->delayedHandler:Landroid/os/Handler;

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->useHandlerThread:Z

    goto :goto_0
.end method


# virtual methods
.method public getTickDelay()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->tickDelay:I

    return v0
.end method

.method public getTime()J
    .locals 4

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->currentTime:J

    iget-wide v2, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->storedTime:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTimeInt()I
    .locals 6

    .prologue
    .line 175
    iget-wide v2, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->currentTime:J

    iget-wide v4, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->storedTime:J

    add-long v0, v2, v4

    .line 176
    .local v0, "time":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v2, v0

    :goto_0
    return v2

    :cond_0
    const v2, 0x7fffffff

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->isRunning:Z

    return v0
.end method

.method public overrideCurrentTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->startTime:J

    .line 145
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->currentTime:J

    .line 146
    iput-wide p1, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->storedTime:J

    .line 147
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 133
    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->currentTime:J

    .line 134
    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->storedTime:J

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->startTime:J

    .line 136
    return-void
.end method

.method public setTickDelay(I)V
    .locals 0
    .param p1, "milliSeconds"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->tickDelay:I

    .line 79
    return-void
.end method

.method public setTickListener(Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickListener;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->listener:Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickListener;

    .line 186
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->isRunning:Z

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->startTime:J

    .line 102
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->useHandlerThread:Z

    if-eqz v0, :cond_1

    .line 103
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoMedia_StopWatch_HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->handlerThread:Landroid/os/HandlerThread;

    .line 104
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 105
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->delayedHandler:Landroid/os/Handler;

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->tickRunnable:Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;->performTick()V

    goto :goto_0
.end method

.method public stop()V
    .locals 6

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->delayedHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 124
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->isRunning:Z

    .line 125
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->currentTime:J

    .line 126
    iget-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->storedTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->startTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->storedTime:J

    goto :goto_0
.end method
