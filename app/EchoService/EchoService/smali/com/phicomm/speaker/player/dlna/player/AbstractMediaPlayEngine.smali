.class public abstract Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;
.super Ljava/lang/Object;
.source "AbstractMediaPlayEngine.java"

# interfaces
.implements Lcom/phicomm/speaker/player/dlna/player/IBasePlayEngine;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# static fields
.field private static final log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

.field protected mMediaPlayer:Landroid/media/MediaPlayer;

.field protected mPlayState:I

.field protected mPlayerEngineListener:Lcom/phicomm/speaker/player/dlna/player/PlayerEngineListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/util/LogFactory;->createLog()Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->defaultParam()V

    .line 46
    return-void
.end method

.method private reviceSeekValue(I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 210
    if-gez p1, :cond_0

    .line 212
    const/4 p1, 0x0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    .line 220
    :cond_1
    return p1
.end method


# virtual methods
.method protected defaultParam()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 34
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 35
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mPlayState:I

    .line 40
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->stop()Z

    .line 120
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mPlayState:I

    .line 123
    return-void
.end method

.method public getCurPosition()I
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mPlayState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mPlayState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 165
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mPlayState:I

    packed-switch v0, :pswitch_data_0

    .line 177
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 174
    :pswitch_1
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPlayState()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mPlayState:I

    return v0
.end method

.method public isPause()Z
    .locals 2

    .prologue
    .line 147
    iget v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mPlayState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 143
    iget v1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mPlayState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 135
    sget-object v0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    const-string v1, "onCompletion..."

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mPlayerEngineListener:Lcom/phicomm/speaker/player/dlna/player/PlayerEngineListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mPlayerEngineListener:Lcom/phicomm/speaker/player/dlna/player/PlayerEngineListener;

    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/player/dlna/player/PlayerEngineListener;->onTrackPlayComplete(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V

    .line 140
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 226
    sget-object v0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError --> what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->prepareComplete(Landroid/media/MediaPlayer;)Z

    .line 129
    return-void
.end method

.method public pause()Z
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "result":Z
    iget v1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mPlayState:I

    packed-switch v1, :pswitch_data_0

    .line 85
    :goto_0
    return v0

    .line 77
    :pswitch_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 78
    const/4 v1, 0x2

    iput v1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mPlayState:I

    .line 79
    iget v1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mPlayState:I

    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->performPlayListener(I)V

    .line 80
    const/4 v0, 0x1

    .line 81
    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected performPlayListener(I)V
    .locals 2
    .param p1, "playState"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mPlayerEngineListener:Lcom/phicomm/speaker/player/dlna/player/PlayerEngineListener;

    if-eqz v0, :cond_0

    .line 188
    packed-switch p1, :pswitch_data_0

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 190
    :pswitch_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mPlayerEngineListener:Lcom/phicomm/speaker/player/dlna/player/PlayerEngineListener;

    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/player/dlna/player/PlayerEngineListener;->onTrackStreamError(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V

    goto :goto_0

    .line 193
    :pswitch_1
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mPlayerEngineListener:Lcom/phicomm/speaker/player/dlna/player/PlayerEngineListener;

    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/player/dlna/player/PlayerEngineListener;->onTrackStop(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V

    goto :goto_0

    .line 196
    :pswitch_2
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mPlayerEngineListener:Lcom/phicomm/speaker/player/dlna/player/PlayerEngineListener;

    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/player/dlna/player/PlayerEngineListener;->onTrackPlay(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V

    goto :goto_0

    .line 199
    :pswitch_3
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mPlayerEngineListener:Lcom/phicomm/speaker/player/dlna/player/PlayerEngineListener;

    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/player/dlna/player/PlayerEngineListener;->onTrackPause(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V

    goto :goto_0

    .line 202
    :pswitch_4
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mPlayerEngineListener:Lcom/phicomm/speaker/player/dlna/player/PlayerEngineListener;

    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/player/dlna/player/PlayerEngineListener;->onTrackPrepareSync(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public play()Z
    .locals 2

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "result":Z
    iget v1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mPlayState:I

    packed-switch v1, :pswitch_data_0

    .line 69
    :goto_0
    return v0

    .line 57
    :pswitch_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 58
    const/4 v1, 0x1

    iput v1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mPlayState:I

    .line 59
    iget v1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mPlayState:I

    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->performPlayListener(I)V

    .line 60
    const/4 v0, 0x1

    .line 61
    goto :goto_0

    .line 63
    :pswitch_1
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->prepareSelf()Z

    .line 64
    const/4 v0, 0x1

    .line 65
    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public playMedia(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V
    .locals 0
    .param p1, "mediaInfo"    # Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 153
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .line 154
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->prepareSelf()Z

    .line 156
    :cond_0
    return-void
.end method

.method protected abstract prepareComplete(Landroid/media/MediaPlayer;)Z
.end method

.method protected abstract prepareSelf()Z
.end method

.method public setPlayerListener(Lcom/phicomm/speaker/player/dlna/player/PlayerEngineListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/phicomm/speaker/player/dlna/player/PlayerEngineListener;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mPlayerEngineListener:Lcom/phicomm/speaker/player/dlna/player/PlayerEngineListener;

    .line 50
    return-void
.end method

.method public skipTo(I)Z
    .locals 3
    .param p1, "time"    # I

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "result":Z
    iget v2, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mPlayState:I

    packed-switch v2, :pswitch_data_0

    .line 114
    :goto_0
    return v0

    .line 107
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->reviceSeekValue(I)I

    move-result v1

    .line 108
    .local v1, "time2":I
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 109
    const/4 v0, 0x1

    .line 110
    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public stop()Z
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "result":Z
    iget v1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mPlayState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 92
    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 93
    const/4 v1, 0x3

    iput v1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mPlayState:I

    .line 94
    iget v1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->mPlayState:I

    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->performPlayListener(I)V

    .line 95
    const/4 v0, 0x1

    .line 97
    :cond_0
    return v0
.end method
