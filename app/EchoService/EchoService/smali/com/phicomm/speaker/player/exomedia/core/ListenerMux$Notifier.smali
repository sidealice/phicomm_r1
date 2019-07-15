.class public abstract Lcom/phicomm/speaker/player/exomedia/core/ListenerMux$Notifier;
.super Ljava/lang/Object;
.source "ListenerMux.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/exomedia/core/ListenerMux;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Notifier"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferUpdated(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 305
    return-void
.end method

.method public abstract onExoPlayerError(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;Ljava/lang/Exception;)V
.end method

.method public abstract onMediaPlaybackEnded()V
.end method

.method public onPrepared()V
    .locals 0

    .prologue
    .line 313
    return-void
.end method

.method public onPreviewImageStateChanged(Z)V
    .locals 0
    .param p1, "toVisible"    # Z

    .prologue
    .line 317
    return-void
.end method

.method public onSeekComplete()V
    .locals 0

    .prologue
    .line 301
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unAppliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 309
    return-void
.end method

.method public abstract shouldNotifyCompletion(J)Z
.end method
