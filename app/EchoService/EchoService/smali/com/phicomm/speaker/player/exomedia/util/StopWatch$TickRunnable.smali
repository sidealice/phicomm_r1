.class public Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;
.super Ljava/lang/Object;
.source "StopWatch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/exomedia/util/StopWatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TickRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/exomedia/util/StopWatch;


# direct methods
.method protected constructor <init>(Lcom/phicomm/speaker/player/exomedia/util/StopWatch;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/phicomm/speaker/player/exomedia/util/StopWatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public performTick()V
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/phicomm/speaker/player/exomedia/util/StopWatch;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->delayedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/phicomm/speaker/player/exomedia/util/StopWatch;

    iget-object v1, v1, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->tickRunnable:Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;

    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/phicomm/speaker/player/exomedia/util/StopWatch;

    iget v2, v2, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->tickDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 191
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/phicomm/speaker/player/exomedia/util/StopWatch;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/phicomm/speaker/player/exomedia/util/StopWatch;

    iget-wide v4, v1, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->startTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->currentTime:J

    .line 193
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/phicomm/speaker/player/exomedia/util/StopWatch;

    iget-boolean v0, v0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->isRunning:Z

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;->performTick()V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/phicomm/speaker/player/exomedia/util/StopWatch;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->listener:Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickListener;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/phicomm/speaker/player/exomedia/util/StopWatch;

    iget-object v0, v0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->listener:Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickListener;

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/phicomm/speaker/player/exomedia/util/StopWatch;

    iget-wide v2, v1, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->currentTime:J

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/phicomm/speaker/player/exomedia/util/StopWatch;

    iget-wide v4, v1, Lcom/phicomm/speaker/player/exomedia/util/StopWatch;->storedTime:J

    add-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcom/phicomm/speaker/player/exomedia/util/StopWatch$TickListener;->onStopWatchTick(J)V

    .line 200
    :cond_1
    return-void
.end method
