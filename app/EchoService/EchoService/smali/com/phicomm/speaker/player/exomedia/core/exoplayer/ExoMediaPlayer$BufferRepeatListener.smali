.class Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$BufferRepeatListener;
.super Ljava/lang/Object;
.source "ExoMediaPlayer.java"

# interfaces
.implements Lcom/phicomm/speaker/player/exomedia/util/Repeater$RepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferRepeatListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$BufferRepeatListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;
    .param p2, "x1"    # Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$1;

    .prologue
    .line 614
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$BufferRepeatListener;-><init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public onRepeat()V
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$BufferRepeatListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->access$500(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$BufferRepeatListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->access$500(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$BufferRepeatListener;->this$0:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getBufferedPercentage()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;->onBufferingUpdate(I)V

    .line 620
    :cond_0
    return-void
.end method
