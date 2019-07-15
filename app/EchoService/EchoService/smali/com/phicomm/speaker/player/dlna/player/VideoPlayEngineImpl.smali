.class public Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;
.super Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;
.source "VideoPlayEngineImpl.java"


# instance fields
.field private final log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/dlna/player/AbstractMediaPlayEngine;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/util/LogFactory;->createLog()Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mHolder:Landroid/view/SurfaceHolder;

    .line 28
    invoke-virtual {p0, p2}, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->setHolder(Landroid/view/SurfaceHolder;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected prepareComplete(Landroid/media/MediaPlayer;)Z
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v4, 0x1

    .line 83
    const/4 v1, 0x5

    iput v1, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mPlayState:I

    .line 84
    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mPlayerEngineListener:Lcom/phicomm/speaker/player/dlna/player/PlayerEngineListener;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mPlayerEngineListener:Lcom/phicomm/speaker/player/dlna/player/PlayerEngineListener;

    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    invoke-interface {v1, v2}, Lcom/phicomm/speaker/player/dlna/player/PlayerEngineListener;->onTrackPrepareComplete(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->getFitSize(Landroid/content/Context;Landroid/media/MediaPlayer;)Lcom/phicomm/speaker/player/dlna/util/CommonUtil$ViewSize;

    move-result-object v0

    .line 90
    .local v0, "viewSize":Lcom/phicomm/speaker/player/dlna/util/CommonUtil$ViewSize;
    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mHolder:Landroid/view/SurfaceHolder;

    iget v2, v0, Lcom/phicomm/speaker/player/dlna/util/CommonUtil$ViewSize;->width:I

    iget v3, v0, Lcom/phicomm/speaker/player/dlna/util/CommonUtil$ViewSize;->height:I

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 94
    .end local v0    # "viewSize":Lcom/phicomm/speaker/player/dlna/util/CommonUtil$ViewSize;
    :cond_1
    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 96
    iput v4, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mPlayState:I

    .line 97
    iget v1, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mPlayState:I

    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->performPlayListener(I)V

    .line 99
    return v4
.end method

.method protected prepareSelf()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 52
    :try_start_0
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    invoke-virtual {v3}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 53
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 54
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    if-eqz v2, :cond_1

    .line 58
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    if-eqz v2, :cond_2

    .line 61
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 63
    :cond_2
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v2, :cond_3

    .line 64
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 66
    :cond_3
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 67
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMediaPlayer.prepareAsync path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    invoke-virtual {v4}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 68
    const/4 v2, 0x4

    iput v2, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mPlayState:I

    .line 69
    iget v2, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mPlayState:I

    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->performPlayListener(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    iput v1, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mPlayState:I

    .line 73
    iget v2, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mPlayState:I

    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->performPlayListener(I)V

    goto :goto_0
.end method

.method public setHolder(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mHolder:Landroid/view/SurfaceHolder;

    .line 33
    return-void
.end method

.method public setOnBuffUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 37
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 45
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/player/VideoPlayEngineImpl;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 41
    return-void
.end method
