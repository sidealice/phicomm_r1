.class public Lcom/unisound/vui/common/media/UniMediaPlayer;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "UniMediaPlayer"

.field public static uniMediaPlayer:Lcom/unisound/vui/common/media/UniMediaPlayer;


# instance fields
.field private appContent:Landroid/content/Context;

.field private mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMediaPlayerState:I

.field private mediaPlayerStateListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/common/media/IMediaPlayerStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private playTag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayerState:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mediaPlayerStateListenerList:Ljava/util/List;

    new-instance v0, Lcom/unisound/vui/common/media/UniMediaPlayer$15;

    invoke-direct {v0, p0}, Lcom/unisound/vui/common/media/UniMediaPlayer$15;-><init>(Lcom/unisound/vui/common/media/UniMediaPlayer;)V

    iput-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mAudioManager:Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->appContent:Landroid/content/Context;

    const-string v0, "UniMediaPlayer"

    const-string v1, "new MediaPlayer()"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/unisound/vui/common/media/UniMediaPlayer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/unisound/vui/common/media/UniMediaPlayer;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/unisound/vui/common/media/UniMediaPlayer;->callBackPlayerState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/unisound/vui/common/media/UniMediaPlayer;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/common/media/UniMediaPlayer;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/unisound/vui/common/media/UniMediaPlayer;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/common/media/UniMediaPlayer;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/unisound/vui/common/media/UniMediaPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/common/media/UniMediaPlayer;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private callBackPlayerState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const-string v0, "UniMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callBackPlayerState State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayerState:I

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mediaPlayerStateListenerList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mediaPlayerStateListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/common/media/IMediaPlayerStateListener;

    iget-object v2, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->playTag:Ljava/lang/String;

    invoke-interface {v0, p1, v2}, Lcom/unisound/vui/common/media/IMediaPlayerStateListener;->onPlayerState(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, -0x3e9

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->playTag:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/unisound/vui/common/media/UniMediaPlayer;
    .locals 2

    sget-object v0, Lcom/unisound/vui/common/media/UniMediaPlayer;->uniMediaPlayer:Lcom/unisound/vui/common/media/UniMediaPlayer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UniMediaPlayer need init first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/unisound/vui/common/media/UniMediaPlayer;->uniMediaPlayer:Lcom/unisound/vui/common/media/UniMediaPlayer;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Lcom/unisound/vui/common/media/UniMediaPlayer;

    invoke-direct {v0, p0}, Lcom/unisound/vui/common/media/UniMediaPlayer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unisound/vui/common/media/UniMediaPlayer;->uniMediaPlayer:Lcom/unisound/vui/common/media/UniMediaPlayer;

    return-void
.end method

.method private requestFocus()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addIMediaPlayerStateListener(Lcom/unisound/vui/common/media/IMediaPlayerStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/unisound/vui/common/media/IMediaPlayerStateListener;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mediaPlayerStateListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mediaPlayerStateListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getPlayTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->playTag:Ljava/lang/String;

    return-object v0
.end method

.method public isPlayFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->playTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->playTag:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayerState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    const-string v0, "UniMediaPlayer"

    const-string v1, "puase mMediaPlayerState : 2"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayerState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->callBackPlayerState(I)V

    :cond_0
    return-void
.end method

.method public pausePushMusic()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public play(Ljava/lang/String;Lcom/unisound/vui/common/media/IMediaPlayerStateListener;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/unisound/vui/common/media/IMediaPlayerStateListener;

    .prologue
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->callBackPlayerState(I)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->playTag:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/unisound/vui/common/media/UniMediaPlayer;->addIMediaPlayerStateListener(Lcom/unisound/vui/common/media/IMediaPlayerStateListener;)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/unisound/vui/common/media/UniMediaPlayer$1;

    invoke-direct {v1, p0}, Lcom/unisound/vui/common/media/UniMediaPlayer$1;-><init>(Lcom/unisound/vui/common/media/UniMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/unisound/vui/common/media/UniMediaPlayer$2;

    invoke-direct {v1, p0}, Lcom/unisound/vui/common/media/UniMediaPlayer$2;-><init>(Lcom/unisound/vui/common/media/UniMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->requestFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "UniMediaPlayer"

    const-string v1, "mMediaPlayerState : 2"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->callBackPlayerState(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/unisound/vui/common/media/UniMediaPlayer$3;

    invoke-direct {v1, p0}, Lcom/unisound/vui/common/media/UniMediaPlayer$3;-><init>(Lcom/unisound/vui/common/media/UniMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UniMediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "paly error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->callBackPlayerState(I)V

    goto :goto_0
.end method

.method public playBeepSound(I)V
    .locals 3
    .param p1, "rawId"    # I

    .prologue
    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/unisound/vui/common/media/UniMediaPlayer;->playBeepSound(Ljava/lang/String;ILcom/unisound/vui/common/media/IMediaPlayerStateListener;Z)V

    return-void
.end method

.method public playBeepSound(Ljava/lang/String;ILcom/unisound/vui/common/media/IMediaPlayerStateListener;Z)V
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "rawId"    # I
    .param p3, "stateListener"    # Lcom/unisound/vui/common/media/IMediaPlayerStateListener;
    .param p4, "isLooping"    # Z

    .prologue
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->playTag:Ljava/lang/String;

    const-string v0, "UniMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---->>playBeepSound isLooping = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->stop()V

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Lcom/unisound/vui/common/media/UniMediaPlayer;->addIMediaPlayerStateListener(Lcom/unisound/vui/common/media/IMediaPlayerStateListener;)V

    :goto_0
    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->appContent:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MediaPlayer has been released."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "UniMediaPlayer"

    const-string v1, "---->>playBeepSound stateListener is null"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_2
    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/unisound/vui/common/media/UniMediaPlayer$13;

    invoke-direct {v1, p0, p3}, Lcom/unisound/vui/common/media/UniMediaPlayer$13;-><init>(Lcom/unisound/vui/common/media/UniMediaPlayer;Lcom/unisound/vui/common/media/IMediaPlayerStateListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/unisound/vui/common/media/UniMediaPlayer$14;

    invoke-direct {v1, p0, p3}, Lcom/unisound/vui/common/media/UniMediaPlayer$14;-><init>(Lcom/unisound/vui/common/media/UniMediaPlayer;Lcom/unisound/vui/common/media/IMediaPlayerStateListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const-string v0, "UniMediaPlayer"

    const-string v1, "---->>playBeepSound end"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    const-string v0, "UniMediaPlayer"

    const-string v1, "--->>playBeepSound has a exception"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public playBeepSoundLooping(Ljava/lang/String;ILcom/unisound/vui/common/media/IMediaPlayerStateListener;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "rawId"    # I
    .param p3, "stateListener"    # Lcom/unisound/vui/common/media/IMediaPlayerStateListener;

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->playBeepSound(Ljava/lang/String;ILcom/unisound/vui/common/media/IMediaPlayerStateListener;Z)V

    return-void
.end method

.method public playUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "videoUrl"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->callBackPlayerState(I)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->playTag:Ljava/lang/String;

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/unisound/vui/common/media/UniMediaPlayer$4;

    invoke-direct {v1, p0}, Lcom/unisound/vui/common/media/UniMediaPlayer$4;-><init>(Lcom/unisound/vui/common/media/UniMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/unisound/vui/common/media/UniMediaPlayer$5;

    invoke-direct {v1, p0}, Lcom/unisound/vui/common/media/UniMediaPlayer$5;-><init>(Lcom/unisound/vui/common/media/UniMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-direct {p0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const-string v0, "UniMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "111 playUrl mMediaPlayerState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->callBackPlayerState(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/unisound/vui/common/media/UniMediaPlayer$6;

    invoke-direct {v1, p0}, Lcom/unisound/vui/common/media/UniMediaPlayer$6;-><init>(Lcom/unisound/vui/common/media/UniMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UniMediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "paly error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->callBackPlayerState(I)V

    goto :goto_0
.end method

.method public playUrl(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/vui/common/media/IMediaPlayerStateListener;)V
    .locals 4
    .param p1, "videoUrl"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/unisound/vui/common/media/IMediaPlayerStateListener;

    .prologue
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->playTag:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/unisound/vui/common/media/UniMediaPlayer;->addIMediaPlayerStateListener(Lcom/unisound/vui/common/media/IMediaPlayerStateListener;)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/unisound/vui/common/media/UniMediaPlayer$7;

    invoke-direct {v1, p0}, Lcom/unisound/vui/common/media/UniMediaPlayer$7;-><init>(Lcom/unisound/vui/common/media/UniMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/unisound/vui/common/media/UniMediaPlayer$8;

    invoke-direct {v1, p0}, Lcom/unisound/vui/common/media/UniMediaPlayer$8;-><init>(Lcom/unisound/vui/common/media/UniMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-direct {p0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const-string v0, "UniMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "222 playUrl mMediaPlayerState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->callBackPlayerState(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/unisound/vui/common/media/UniMediaPlayer$9;

    invoke-direct {v1, p0}, Lcom/unisound/vui/common/media/UniMediaPlayer$9;-><init>(Lcom/unisound/vui/common/media/UniMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UniMediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "paly error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->callBackPlayerState(I)V

    goto :goto_0
.end method

.method public playUrl(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/vui/common/media/IMediaPlayerStateListener;Z)V
    .locals 4
    .param p1, "videoUrl"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/unisound/vui/common/media/IMediaPlayerStateListener;
    .param p4, "isChatSession"    # Z

    .prologue
    const/4 v3, 0x3

    const-string v0, "UniMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playUrl videoUrl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  isChatSession="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/unisound/vui/common/media/UniMediaPlayer;->callBackPlayerState(I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->playTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->playTag:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/unisound/vui/common/media/UniMediaPlayer;->addIMediaPlayerStateListener(Lcom/unisound/vui/common/media/IMediaPlayerStateListener;)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/unisound/vui/common/media/UniMediaPlayer$10;

    invoke-direct {v1, p0}, Lcom/unisound/vui/common/media/UniMediaPlayer$10;-><init>(Lcom/unisound/vui/common/media/UniMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/unisound/vui/common/media/UniMediaPlayer$11;

    invoke-direct {v1, p0}, Lcom/unisound/vui/common/media/UniMediaPlayer$11;-><init>(Lcom/unisound/vui/common/media/UniMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    const-string v0, "UniMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMediaPlayerState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->callBackPlayerState(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/unisound/vui/common/media/UniMediaPlayer$12;

    invoke-direct {v1, p0, p4}, Lcom/unisound/vui/common/media/UniMediaPlayer$12;-><init>(Lcom/unisound/vui/common/media/UniMediaPlayer;Z)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UniMediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "paly error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->callBackPlayerState(I)V

    goto :goto_0
.end method

.method public release()V
    .locals 3

    const-string v0, "UniMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release mMediaPlayerState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->callBackPlayerState(I)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public removeIMediaPlayerStateListener(Lcom/unisound/vui/common/media/IMediaPlayerStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/unisound/vui/common/media/IMediaPlayerStateListener;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mediaPlayerStateListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mediaPlayerStateListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->callBackPlayerState(I)V

    :cond_0
    return-void
.end method

.method public resumePushMusic()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    const-string v0, "UniMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMediaPlayer start  mMediaPlayerState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayerState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->callBackPlayerState(I)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    const-string v0, "UniMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop mMediaPlayerState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->callBackPlayerState(I)V

    :cond_0
    return-void
.end method
