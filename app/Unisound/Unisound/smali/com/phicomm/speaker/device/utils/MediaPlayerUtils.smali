.class public Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;
.super Ljava/lang/Object;
.source "MediaPlayerUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaPlayerUtils"

.field private static sMediaPlayerUtils:Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMediaPlayerState:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayerState:I

    .line 25
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mHandler:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->sMediaPlayerUtils:Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;

    if-nez v0, :cond_1

    .line 31
    const-string v1, "MediaPlayerUtils"

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->sMediaPlayerUtils:Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;

    invoke-direct {v0}, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->sMediaPlayerUtils:Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    sget-object v0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->sMediaPlayerUtils:Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public isPlaying()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 107
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 111
    const-string v0, "MediaPlayerUtils"

    const-string v1, "puase mMediaPlayerState : 2"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayerState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 115
    :cond_0
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->play(Ljava/lang/String;I)V

    .line 46
    return-void
.end method

.method public play(Ljava/lang/String;I)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 54
    iget-object v2, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils$1;

    invoke-direct {v3, p0}, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils$1;-><init>(Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 60
    iget-object v2, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils$2;

    invoke-direct {v3, p0}, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils$2;-><init>(Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 68
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 70
    iget v2, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayerState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 71
    const-string v2, "MediaPlayerUtils"

    const-string v3, "mMediaPlayerState : 2"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v2, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 77
    iget-object v2, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 78
    if-lez p2, :cond_2

    .line 79
    iget-object v2, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 81
    :cond_2
    iget-object v2, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 82
    iget-object v2, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 83
    iget-object v2, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 84
    iget-object v2, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils$3;

    invoke-direct {v3, p0, p2}, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils$3;-><init>(Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;I)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MediaPlayerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "paly error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 144
    const-string v0, "MediaPlayerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release mMediaPlayerState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 147
    iget-object v0, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 150
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 121
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 124
    const-string v0, "MediaPlayerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMediaPlayer start  mMediaPlayerState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayerState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 128
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 134
    const-string v0, "MediaPlayerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop mMediaPlayerState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 138
    :cond_0
    return-void
.end method
