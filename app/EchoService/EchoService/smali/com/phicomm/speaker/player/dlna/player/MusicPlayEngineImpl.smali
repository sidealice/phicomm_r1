.class public Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;
.super Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;
.source "MusicPlayEngineImpl.java"


# instance fields
.field private final log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

.field private mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/util/LogFactory;->createLog()Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    .line 26
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->exit()V

    .line 61
    return-void
.end method

.method public pause()Z
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->pause()Z

    move-result v0

    .line 49
    .local v0, "result":Z
    return v0
.end method

.method public play()Z
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->play()Z

    move-result v0

    .line 43
    .local v0, "result":Z
    return v0
.end method

.method protected prepareComplete(Landroid/media/MediaPlayer;)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x1

    .line 97
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    const-string v1, "prepareComplete"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 98
    const/4 v0, 0x5

    iput v0, p0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->mPlayState:I

    .line 99
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->mPlayerEngineListener:Lcom/phicomm/speaker/player/dlna/player/PlayerEngineListener;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->mPlayerEngineListener:Lcom/phicomm/speaker/player/dlna/player/PlayerEngineListener;

    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->mMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/player/dlna/player/PlayerEngineListener;->onTrackPrepareComplete(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 105
    iput v2, p0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->mPlayState:I

    .line 106
    iget v0, p0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->mPlayState:I

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->performPlayListener(I)V

    .line 107
    return v2
.end method

.method protected prepareSelf()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->mMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    invoke-virtual {v3}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 74
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 76
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 80
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMediaPlayer.prepareAsync path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->mMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    invoke-virtual {v4}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 82
    const/4 v2, 0x4

    iput v2, p0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->mPlayState:I

    .line 83
    iget v2, p0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->mPlayState:I

    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->performPlayListener(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    iput v1, p0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->mPlayState:I

    .line 88
    iget v2, p0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->mPlayState:I

    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->performPlayListener(I)V

    goto :goto_0
.end method

.method public setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->mDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 38
    return-void
.end method

.method public setOnBuffUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 30
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 34
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .prologue
    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 66
    return-void
.end method

.method public stop()Z
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;->stop()Z

    move-result v0

    .line 55
    .local v0, "result":Z
    return v0
.end method
