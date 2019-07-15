.class public interface abstract Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$IMediaControlListener;
.super Ljava/lang/Object;
.source "MediaControlProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMediaControlListener"
.end annotation


# virtual methods
.method public abstract onGetPositionCommand()I
.end method

.method public abstract onPauseCommand()V
.end method

.method public abstract onPlayCommand(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V
.end method

.method public abstract onSeekCommand(I)V
.end method

.method public abstract onStartCommand()V
.end method

.method public abstract onStopCommand()V
.end method
