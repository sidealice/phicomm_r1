.class public Lcom/phicomm/speaker/player/model/DlnaPlayer;
.super Lcom/phicomm/speaker/player/model/AbsPlayer;
.source "DlnaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;


# instance fields
.field private final PAUSED:I

.field private final PREPARED:I

.field private final STARTED:I

.field private final STOP:I

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDMRBooted:Z

.field private mDMRClient:Lcom/easydlna/dlna/dlnaclient/DMRClient;

.field private volatile mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNotifyHandler:Landroid/os/Handler;

.field private mPlayingState:Lcom/easydlna/dlna/dlnaclient/PlayingState;

.field private mPlayingUrl:Ljava/lang/String;

.field private volatile mRenderStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AbsPlayer;-><init>()V

    .line 35
    const-string v0, "DlnaPlayer"

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->TAG:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 38
    iput-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayingState:Lcom/easydlna/dlna/dlnaclient/PlayingState;

    .line 39
    iput-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayingUrl:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mDMRClient:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    .line 41
    iput-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mContext:Landroid/content/Context;

    .line 44
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mDMRBooted:Z

    .line 46
    iput v2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->PREPARED:I

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->STARTED:I

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->PAUSED:I

    .line 49
    iput v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->STOP:I

    .line 50
    iput v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mRenderStatus:I

    .line 52
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/phicomm/speaker/player/model/DlnaPlayer$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer$1;-><init>(Lcom/phicomm/speaker/player/model/DlnaPlayer;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mNotifyHandler:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 65
    new-instance v0, Lcom/easydlna/dlna/dlnaclient/PlayingState;

    invoke-direct {v0}, Lcom/easydlna/dlna/dlnaclient/PlayingState;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayingState:Lcom/easydlna/dlna/dlnaclient/PlayingState;

    .line 66
    new-instance v0, Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-direct {v0, p1}, Lcom/easydlna/dlna/dlnaclient/DMRClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mDMRClient:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/player/model/DlnaPlayer;)Lcom/easydlna/dlna/dlnaclient/PlayingState;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/DlnaPlayer;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayingState:Lcom/easydlna/dlna/dlnaclient/PlayingState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/player/model/DlnaPlayer;)Lcom/easydlna/dlna/dlnaclient/DMRClient;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/DlnaPlayer;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mDMRClient:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    return-object v0
.end method

.method static synthetic access$200(Lcom/phicomm/speaker/player/model/DlnaPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/DlnaPlayer;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->stopInternal()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/phicomm/speaker/player/model/DlnaPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/DlnaPlayer;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->notifyStateChange()V

    return-void
.end method

.method static synthetic access$400(Lcom/phicomm/speaker/player/model/DlnaPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/DlnaPlayer;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/phicomm/speaker/player/model/DlnaPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/DlnaPlayer;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->reset()V

    return-void
.end method

.method static synthetic access$600(Lcom/phicomm/speaker/player/model/DlnaPlayer;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/DlnaPlayer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->setDataSourceInternal(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/phicomm/speaker/player/model/DlnaPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/DlnaPlayer;

    .prologue
    .line 32
    iget v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mRenderStatus:I

    return v0
.end method

.method static synthetic access$800(Lcom/phicomm/speaker/player/model/DlnaPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/DlnaPlayer;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->playInternal()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/phicomm/speaker/player/model/DlnaPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/DlnaPlayer;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->pauseInternal()I

    move-result v0

    return v0
.end method

.method private createMediaPlayer()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 115
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 116
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 117
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 118
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 120
    :cond_0
    return-void
.end method

.method private notifyStateChange()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mNotifyHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 71
    return-void
.end method

.method private pauseInternal()I
    .locals 6

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 313
    :try_start_0
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_1

    .line 314
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    if-eqz v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, p0, v3, v4}, Lcom/phicomm/speaker/player/interfaces/PlayerListener;->onMediaState(Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 333
    :cond_0
    :goto_0
    return v1

    .line 319
    :cond_1
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 320
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->pause()V

    .line 322
    :cond_2
    const/4 v3, 0x2

    iput v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mRenderStatus:I

    .line 323
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayingState:Lcom/easydlna/dlna/dlnaclient/PlayingState;

    const-string v4, "PAUSED_PLAYBACK"

    iput-object v4, v3, Lcom/easydlna/dlna/dlnaclient/PlayingState;->state:Ljava/lang/String;

    .line 324
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->notifyStateChange()V

    .line 325
    const-string v3, "DlnaPlayer pause"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    if-eqz v3, :cond_3

    .line 327
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lcom/phicomm/speaker/player/interfaces/PlayerListener;->onMediaState(Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move v1, v2

    .line 329
    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private playInternal()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 266
    :try_start_0
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->createMediaPlayer()V

    .line 269
    :cond_0
    iget v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mRenderStatus:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayingUrl:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 270
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayingUrl:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->setDataSourceInternal(Ljava/lang/String;)I

    .line 272
    :cond_1
    iget v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mRenderStatus:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mRenderStatus:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 273
    :cond_2
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 274
    const/4 v3, 0x1

    iput v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mRenderStatus:I

    .line 276
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    .line 277
    .local v1, "totalLen":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DlnaPlayer getDuration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayingState:Lcom/easydlna/dlna/dlnaclient/PlayingState;

    const-string v4, "PLAYING"

    iput-object v4, v3, Lcom/easydlna/dlna/dlnaclient/PlayingState;->state:Ljava/lang/String;

    .line 280
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayingState:Lcom/easydlna/dlna/dlnaclient/PlayingState;

    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->formatTime(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/easydlna/dlna/dlnaclient/PlayingState;->duration:Ljava/lang/String;

    .line 281
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->notifyStateChange()V

    .line 282
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    if-eqz v3, :cond_3

    .line 283
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lcom/phicomm/speaker/player/interfaces/PlayerListener;->onMediaState(Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v1    # "totalLen":I
    :cond_3
    :goto_0
    return v2

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    instance-of v2, v0, Ljava/lang/IllegalStateException;

    if-eqz v2, :cond_4

    .line 289
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->reset()V

    .line 292
    :cond_4
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 337
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 339
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 340
    iput-object v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayingState:Lcom/easydlna/dlna/dlnaclient/PlayingState;

    invoke-virtual {v0}, Lcom/easydlna/dlna/dlnaclient/PlayingState;->reset()V

    .line 343
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayingState:Lcom/easydlna/dlna/dlnaclient/PlayingState;

    const-string v1, "NO_MEDIA_PRESENT"

    iput-object v1, v0, Lcom/easydlna/dlna/dlnaclient/PlayingState;->state:Ljava/lang/String;

    .line 345
    const/4 v0, 0x3

    iput v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mRenderStatus:I

    .line 346
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->notifyStateChange()V

    .line 347
    const-string v0, "DlnaPlayer reset"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    invoke-interface {v0, p0, v2, v3}, Lcom/phicomm/speaker/player/interfaces/PlayerListener;->onMediaState(Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 351
    :cond_1
    return-void
.end method

.method private setDataSourceInternal(Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 199
    const/4 v1, 0x0

    .line 200
    .local v1, "ret":I
    const/4 v2, 0x0

    .line 201
    .local v2, "setOk":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DlnaPlayer setDataSource = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :try_start_0
    iget v4, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mRenderStatus:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->stopInternal()I

    move-result v1

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->createMediaPlayer()V

    .line 207
    if-nez v1, :cond_1

    .line 208
    iget-object v4, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 209
    const/4 v2, 0x1

    .line 210
    iget-object v4, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 211
    iget-object v4, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayingState:Lcom/easydlna/dlna/dlnaclient/PlayingState;

    invoke-virtual {v4}, Lcom/easydlna/dlna/dlnaclient/PlayingState;->reset()V

    .line 212
    iget-object v4, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayingState:Lcom/easydlna/dlna/dlnaclient/PlayingState;

    iput-object p1, v4, Lcom/easydlna/dlna/dlnaclient/PlayingState;->avtUri:Ljava/lang/String;

    .line 213
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayingUrl:Ljava/lang/String;

    .line 214
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->notifyStateChange()V

    .line 215
    const/4 v4, 0x0

    iput v4, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mRenderStatus:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 225
    :cond_1
    :goto_0
    return v3

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->reset()V

    .line 225
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    :goto_1
    const/4 v3, -0x1

    goto :goto_0

    .line 220
    :catch_1
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v2, :cond_2

    .line 222
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->reset()V

    goto :goto_1
.end method

.method private stopInternal()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 91
    const/4 v3, 0x3

    :try_start_0
    iput v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mRenderStatus:I

    .line 92
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v1

    .line 95
    :cond_1
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    const-string v3, "DlnaPlayer media player is playing, stop it"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V

    .line 100
    :cond_2
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayingState:Lcom/easydlna/dlna/dlnaclient/PlayingState;

    const-string v4, "STOPPED"

    iput-object v4, v3, Lcom/easydlna/dlna/dlnaclient/PlayingState;->state:Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->notifyStateChange()V

    .line 102
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 103
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    instance-of v2, v0, Ljava/lang/IllegalStateException;

    if-eqz v2, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->reset()V

    goto :goto_0
.end method


# virtual methods
.method public DMRServiceStatusNotify(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    const/4 v1, 0x0

    .line 146
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 147
    const-string v0, "DlnaPlayer DMR service error"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 149
    const-string v0, "DlnaPlayer DMR service down"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 150
    :cond_2
    if-nez p1, :cond_0

    .line 151
    const-string v0, "DlnaPlayer DMR service up"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public GetPosition()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 230
    const-string v2, "DlnaPlayer dlna cmd: GetPosition"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v2

    new-instance v4, Lcom/phicomm/speaker/player/model/DlnaPlayer$6;

    invoke-direct {v4, p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer$6;-><init>(Lcom/phicomm/speaker/player/model/DlnaPlayer;)V

    invoke-virtual {v2, v4}, Lcom/phicomm/speaker/player/EchoExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 241
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 245
    :goto_0
    return v2

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 245
    goto :goto_0
.end method

.method public Pause()I
    .locals 4

    .prologue
    .line 296
    const-string v2, "DlnaPlayer dlna cmd: Pause"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v2

    new-instance v3, Lcom/phicomm/speaker/player/model/DlnaPlayer$8;

    invoke-direct {v3, p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer$8;-><init>(Lcom/phicomm/speaker/player/model/DlnaPlayer;)V

    invoke-virtual {v2, v3}, Lcom/phicomm/speaker/player/EchoExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 304
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 308
    :goto_0
    return v2

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 308
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public Play()I
    .locals 4

    .prologue
    .line 249
    const-string v2, "DlnaPlayer dlna cmd: Play"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v2

    new-instance v3, Lcom/phicomm/speaker/player/model/DlnaPlayer$7;

    invoke-direct {v3, p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer$7;-><init>(Lcom/phicomm/speaker/player/model/DlnaPlayer;)V

    invoke-virtual {v2, v3}, Lcom/phicomm/speaker/player/EchoExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 257
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 261
    :goto_0
    return v2

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public Seek(I)I
    .locals 4
    .param p1, "time"    # I

    .prologue
    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DlnaPlayer dlna cmd: Seek time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v2

    new-instance v3, Lcom/phicomm/speaker/player/model/DlnaPlayer$4;

    invoke-direct {v3, p0, p1}, Lcom/phicomm/speaker/player/model/DlnaPlayer$4;-><init>(Lcom/phicomm/speaker/player/model/DlnaPlayer;I)V

    invoke-virtual {v2, v3}, Lcom/phicomm/speaker/player/EchoExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 175
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 179
    :goto_0
    return v2

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public SetDataSource(Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DlnaPlayer dlna cmd: SetDataSource uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v2

    new-instance v3, Lcom/phicomm/speaker/player/model/DlnaPlayer$5;

    invoke-direct {v3, p0, p1}, Lcom/phicomm/speaker/player/model/DlnaPlayer$5;-><init>(Lcom/phicomm/speaker/player/model/DlnaPlayer;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/phicomm/speaker/player/EchoExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 191
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 195
    :goto_0
    return v2

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public Stop()I
    .locals 4

    .prologue
    .line 74
    const-string v2, "DlnaPlayer dlna cmd: Stop"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v2

    new-instance v3, Lcom/phicomm/speaker/player/model/DlnaPlayer$2;

    invoke-direct {v3, p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer$2;-><init>(Lcom/phicomm/speaker/player/model/DlnaPlayer;)V

    invoke-virtual {v2, v3}, Lcom/phicomm/speaker/player/EchoExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 82
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 86
    :goto_0
    return v2

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public destroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 422
    const-string v1, "DlnaPlayer easy cmd: destroy"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 428
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 429
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mDMRClient:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-virtual {v1}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->stopDMR()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayingState:Lcom/easydlna/dlna/dlnaclient/PlayingState;

    invoke-virtual {v1}, Lcom/easydlna/dlna/dlnaclient/PlayingState;->reset()V

    .line 434
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayingState:Lcom/easydlna/dlna/dlnaclient/PlayingState;

    const-string v2, "STOPPED"

    iput-object v2, v1, Lcom/easydlna/dlna/dlnaclient/PlayingState;->state:Ljava/lang/String;

    .line 435
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->notifyStateChange()V

    .line 436
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mNotifyHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 438
    :goto_0
    return-void

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "DlnaPlayer RenderPlayer destroy error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayingState:Lcom/easydlna/dlna/dlnaclient/PlayingState;

    invoke-virtual {v1}, Lcom/easydlna/dlna/dlnaclient/PlayingState;->reset()V

    .line 434
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayingState:Lcom/easydlna/dlna/dlnaclient/PlayingState;

    const-string v2, "STOPPED"

    iput-object v2, v1, Lcom/easydlna/dlna/dlnaclient/PlayingState;->state:Ljava/lang/String;

    .line 435
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->notifyStateChange()V

    .line 436
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mNotifyHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 433
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayingState:Lcom/easydlna/dlna/dlnaclient/PlayingState;

    invoke-virtual {v2}, Lcom/easydlna/dlna/dlnaclient/PlayingState;->reset()V

    .line 434
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mPlayingState:Lcom/easydlna/dlna/dlnaclient/PlayingState;

    const-string v3, "STOPPED"

    iput-object v3, v2, Lcom/easydlna/dlna/dlnaclient/PlayingState;->state:Ljava/lang/String;

    .line 435
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->notifyStateChange()V

    .line 436
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mNotifyHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    throw v1
.end method

.method public formatTime(I)Ljava/lang/String;
    .locals 7
    .param p1, "time"    # I

    .prologue
    .line 354
    div-int/lit16 p1, p1, 0x3e8

    .line 355
    div-int/lit16 v0, p1, 0xe10

    .line 356
    .local v0, "hour":I
    mul-int/lit16 v3, v0, 0xe10

    sub-int v3, p1, v3

    div-int/lit8 v1, v3, 0x3c

    .line 357
    .local v1, "minute":I
    if-gez v1, :cond_0

    .line 358
    const/4 v1, 0x0

    .line 360
    :cond_0
    mul-int/lit8 v3, v1, 0x3c

    sub-int v3, p1, v3

    mul-int/lit16 v4, v0, 0xe10

    sub-int v2, v3, v4

    .line 361
    .local v2, "seconds":I
    if-gez v2, :cond_1

    .line 362
    const/4 v2, 0x0

    .line 365
    :cond_1
    const-string v3, "%2d:%2d:%2d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 395
    :goto_0
    return v0

    .line 393
    :catch_0
    move-exception v0

    .line 395
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 123
    const-string v0, "DlnaPlayer MediaPlayer: onCompletion"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->Stop()I

    .line 125
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "arg0"    # Landroid/media/MediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DlnaPlayer MediaPlayer: onError arg1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " arg2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/player/model/DlnaPlayer$3;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer$3;-><init>(Lcom/phicomm/speaker/player/model/DlnaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->Play()I

    .line 142
    return-void
.end method

.method public pause()Z
    .locals 2

    .prologue
    .line 377
    const-string v0, "DlnaPlayer easy cmd: pause"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->pauseInternal()I

    .line 379
    const/4 v0, 0x1

    return v0
.end method

.method public start()Z
    .locals 2

    .prologue
    .line 370
    const-string v0, "DlnaPlayer easy cmd: start"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->playInternal()I

    .line 372
    const/4 v0, 0x1

    return v0
.end method

.method public startServer()V
    .locals 2

    .prologue
    .line 400
    const-string v0, "DlnaPlayer easy cmd: startServer"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mDMRBooted:Z

    if-eqz v0, :cond_0

    .line 408
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mDMRClient:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-virtual {v0, p0}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->startDMR(Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;)I

    .line 406
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mDMRClient:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-virtual {v0}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->sendDMRBroadcast()V

    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mDMRBooted:Z

    goto :goto_0
.end method

.method public stop()Z
    .locals 2

    .prologue
    .line 384
    const-string v0, "DlnaPlayer easy cmd: stop"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->stopInternal()I

    .line 386
    const/4 v0, 0x1

    return v0
.end method

.method public stopServer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 412
    const-string v0, "DlnaPlayer easy cmd: stopServer"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mDMRBooted:Z

    if-eqz v0, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->reset()V

    .line 415
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mDMRClient:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-virtual {v0}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->stopDMR()I

    .line 416
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer;->mDMRBooted:Z

    .line 418
    :cond_0
    return-void
.end method
