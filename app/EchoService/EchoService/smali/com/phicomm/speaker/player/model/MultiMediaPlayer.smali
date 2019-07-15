.class public Lcom/phicomm/speaker/player/model/MultiMediaPlayer;
.super Ljava/lang/Object;
.source "MultiMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;,
        Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPlayTimeOutListener;,
        Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnErrorListener;,
        Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnCompletionListener;,
        Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnBufferingUpdateListener;,
        Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnInfoListener;,
        Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPreparedListener;
    }
.end annotation


# static fields
.field private static final BUFFERING_COMPLETED:I = 0xa

.field private static final BUFFERING_TIMEOUT:I = 0x2

.field private static final CURRENT_PLAYER_URLVALID_TIMEOUT:I = 0x3

.field private static final PREPARING_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT_DELAY:I = 0x7530

.field private static final URL_VALID_TIMEOUT_DELAY:I = 0xdbba0


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPauseTime:J

.field private mCurrentBufferPercent:I

.field private mCurrentMediaPlayerIndex:I

.field private mCurrentSongPos:I

.field private mCurrentSongUrl:Ljava/lang/String;

.field private mCurrentUrlSetTime:J

.field private mHandler:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;

.field private mIsCurrentPaused:Z

.field private mIsCurrentStarted:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMediaPlayerPrepared:Z

.field private mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

.field private mNextMediaPlayer:Landroid/media/MediaPlayer;

.field private mNextMediaPlayerPrepared:Z

.field private mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

.field private mOnBufferingUpdateListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnInfoListener;

.field private mOnPlayTimeOutListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPlayTimeOutListener;

.field private mOnPreparedListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPreparedListener;

.field private mPreParingMediaPlayerIndex:I

.field private mPreparingBufferPercent:I

.field private mPreparingSongPos:I

.field private mPreparingSongUrl:Ljava/lang/String;

.field private mPreparingUrlSetTime:J

.field private mediaPlayerPrepared:Landroid/media/MediaPlayer$OnPreparedListener;

.field private nextMediaPlayerPrepared:Landroid/media/MediaPlayer$OnPreparedListener;

.field private onBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private onMediaPlayerCompleted:Landroid/media/MediaPlayer$OnCompletionListener;

.field private onNextMediaPlayerCompleted:Landroid/media/MediaPlayer$OnCompletionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayerPrepared:Z

    .line 33
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayerPrepared:Z

    .line 36
    sget-object v1, Lcom/phicomm/speaker/player/model/PlayState;->STATE_IDLE:Lcom/phicomm/speaker/player/model/PlayState;

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    .line 37
    sget-object v1, Lcom/phicomm/speaker/player/model/PlayState;->STATE_IDLE:Lcom/phicomm/speaker/player/model/PlayState;

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    .line 41
    iput v2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentMediaPlayerIndex:I

    .line 45
    iput v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentSongPos:I

    .line 53
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mIsCurrentStarted:Z

    .line 55
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mIsCurrentPaused:Z

    .line 59
    iput v2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreParingMediaPlayerIndex:I

    .line 63
    iput v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreparingSongPos:I

    .line 819
    new-instance v1, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$1;-><init>(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mediaPlayerPrepared:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 860
    new-instance v1, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$2;-><init>(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->nextMediaPlayerPrepared:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 910
    new-instance v1, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$3;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$3;-><init>(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->onMediaPlayerCompleted:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 933
    new-instance v1, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$4;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$4;-><init>(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->onNextMediaPlayerCompleted:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 956
    new-instance v1, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$5;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$5;-><init>(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 992
    new-instance v1, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$6;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$6;-><init>(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 1021
    new-instance v1, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$7;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$7;-><init>(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->onBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 87
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mContext:Landroid/content/Context;

    .line 90
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 91
    new-instance v1, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;-><init>(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;Lcom/phicomm/speaker/player/model/MultiMediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mHandler:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;

    .line 99
    :goto_0
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->initNewMediaPlayers()V

    .line 100
    return-void

    .line 92
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    new-instance v1, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;-><init>(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;Lcom/phicomm/speaker/player/model/MultiMediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mHandler:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;

    goto :goto_0

    .line 95
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mHandler:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayerPrepared:Z

    return p1
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/PlayState;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mIsCurrentPaused:Z

    return v0
.end method

.method static synthetic access$102(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;Lcom/phicomm/speaker/player/model/PlayState;)Lcom/phicomm/speaker/player/model/PlayState;
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;
    .param p1, "x1"    # Lcom/phicomm/speaker/player/model/PlayState;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mIsCurrentStarted:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .prologue
    .line 22
    iget v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreParingMediaPlayerIndex:I

    return v0
.end method

.method static synthetic access$1302(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayerPrepared:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->onNextMediaPlayerCompleted:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stopPlayUrlAddressValidMonitor()V

    return-void
.end method

.method static synthetic access$1700(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mOnCompletionListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->getCurrentMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;Lcom/phicomm/speaker/player/model/PlayState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;
    .param p1, "x1"    # Lcom/phicomm/speaker/player/model/PlayState;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setCurrentMediaPlayerState(Lcom/phicomm/speaker/player/model/PlayState;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stopCurrentPlayer()V

    return-void
.end method

.method static synthetic access$2100(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mOnErrorListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->getPreparingMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;J)V
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;
    .param p1, "x1"    # J

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->startBufferingMonitor(J)V

    return-void
.end method

.method static synthetic access$2400(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stopBufferingMonitor(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mOnInfoListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreparingBufferPercent:I

    return p1
.end method

.method static synthetic access$2702(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentBufferPercent:I

    return p1
.end method

.method static synthetic access$2800(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mOnBufferingUpdateListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPlayTimeOutListener;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mOnPlayTimeOutListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPlayTimeOutListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/PlayState;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    return-object v0
.end method

.method static synthetic access$302(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;Lcom/phicomm/speaker/player/model/PlayState;)Lcom/phicomm/speaker/player/model/PlayState;
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;
    .param p1, "x1"    # Lcom/phicomm/speaker/player/model/PlayState;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    return-object p1
.end method

.method static synthetic access$400(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->onMediaPlayerCompleted:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->onBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .prologue
    .line 22
    iget v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentMediaPlayerIndex:I

    return v0
.end method

.method static synthetic access$800(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stopPreparingMonitor()V

    return-void
.end method

.method static synthetic access$900(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mOnPreparedListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method private clearCurrentFlags()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 611
    iput v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentMediaPlayerIndex:I

    .line 612
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentSongUrl:Ljava/lang/String;

    .line 613
    const/4 v0, -0x1

    iput v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentSongPos:I

    .line 614
    iput-wide v2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentBufferPauseTime:J

    .line 615
    iput-wide v2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentUrlSetTime:J

    .line 616
    iput v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentBufferPercent:I

    .line 617
    return-void
.end method

.method private clearPreparingFlags()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 599
    iput v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreParingMediaPlayerIndex:I

    .line 600
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreparingSongUrl:Ljava/lang/String;

    .line 601
    const/4 v0, -0x1

    iput v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreparingSongPos:I

    .line 602
    iput v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreparingBufferPercent:I

    .line 603
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreparingUrlSetTime:J

    .line 604
    return-void
.end method

.method private getCurrentMediaPlayer()Landroid/media/MediaPlayer;
    .locals 2

    .prologue
    .line 623
    iget v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentMediaPlayerIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 624
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    .line 628
    :goto_0
    return-object v0

    .line 625
    :cond_0
    iget v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentMediaPlayerIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 626
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 628
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getCurrentMediaPlayerPrepared()Z
    .locals 2

    .prologue
    .line 473
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentMediaPlayerIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 474
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayerPrepared:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    :goto_0
    monitor-exit p0

    return v0

    .line 475
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentMediaPlayerIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 476
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayerPrepared:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 478
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getPreparingMediaPlayer()Landroid/media/MediaPlayer;
    .locals 2

    .prologue
    .line 635
    iget v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreParingMediaPlayerIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 636
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    .line 640
    :goto_0
    return-object v0

    .line 637
    :cond_0
    iget v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreParingMediaPlayerIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 638
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 640
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initNewMediaPlayers()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " initNewMediaPlayers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 112
    iput-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 117
    iput-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    .line 120
    :cond_1
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 121
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    .line 122
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->clearCurrentFlags()V

    .line 123
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->clearPreparingFlags()V

    .line 124
    iput-boolean v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mIsCurrentStarted:Z

    .line 125
    iput-boolean v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mIsCurrentPaused:Z

    .line 127
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 128
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 129
    sget-object v1, Lcom/phicomm/speaker/player/model/PlayState;->STATE_IDLE:Lcom/phicomm/speaker/player/model/PlayState;

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    .line 130
    sget-object v1, Lcom/phicomm/speaker/player/model/PlayState;->STATE_IDLE:Lcom/phicomm/speaker/player/model/PlayState;

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 134
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 146
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 147
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 137
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    .line 138
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->clearCurrentFlags()V

    .line 139
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->clearPreparingFlags()V

    .line 140
    iput-boolean v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mIsCurrentStarted:Z

    .line 141
    iput-boolean v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mIsCurrentPaused:Z

    goto :goto_0
.end method

.method private prepareCurrentPlayer(Ljava/lang/String;IIZ)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "CurrentMediaPlayerIndex"    # I
    .param p4, "sync"    # Z

    .prologue
    const/4 v3, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stop()Z

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurrentMediaPlayerIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentMediaPlayerIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPreParingMediaPlayerIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreParingMediaPlayerIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    .line 210
    invoke-direct {p0, p1, p4}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->prepareMediaPlayer(Ljava/lang/String;Z)Z

    move-result v0

    .line 214
    .local v0, "result":Z
    :goto_0
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->clearCurrentFlags()V

    .line 215
    if-eqz v0, :cond_0

    .line 216
    iput p3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentMediaPlayerIndex:I

    .line 217
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentSongUrl:Ljava/lang/String;

    .line 218
    iput p2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentSongPos:I

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentUrlSetTime:J

    .line 220
    if-nez p4, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->startPreparingMonitor()V

    .line 224
    :cond_0
    return v0

    .line 212
    .end local v0    # "result":Z
    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->prepareNextMediaPlayer(Ljava/lang/String;Z)Z

    move-result v0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method private prepareMediaPlayer(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "songUrl"    # Ljava/lang/String;
    .param p2, "sync"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 663
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " prepareMediaPlayer songUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 666
    if-nez p1, :cond_0

    .line 704
    :goto_0
    return v1

    .line 670
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 671
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 672
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 673
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 674
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 675
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 676
    sget-object v3, Lcom/phicomm/speaker/player/model/PlayState;->STATE_IDLE:Lcom/phicomm/speaker/player/model/PlayState;

    iput-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    .line 677
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayerPrepared:Z

    .line 678
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " prepareMediaPlayer MediaPlayerState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", NextMediaPlayerState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 685
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 686
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 687
    if-eqz p2, :cond_2

    .line 688
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 693
    :goto_1
    sget-object v3, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PREPARING:Lcom/phicomm/speaker/player/model/PlayState;

    iput-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    .line 694
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " prepareMediaPlayer MediaPlayerState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", NextMediaPlayerState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    if-eqz p2, :cond_1

    .line 701
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayerPrepared:Z

    .line 702
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->onMediaPlayerCompleted:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :cond_1
    move v1, v2

    .line 704
    goto/16 :goto_0

    .line 690
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mediaPlayerPrepared:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 691
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DEBUG"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "MESSAGE"

    aput-object v5, v4, v1

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private prepareNextMediaPlayer(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "songUrl"    # Ljava/lang/String;
    .param p2, "sync"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 715
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " prepareNextMediaPlayer songUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 718
    if-nez p1, :cond_1

    .line 755
    :cond_0
    :goto_0
    return v1

    .line 722
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 723
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 724
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 725
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 726
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 727
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 728
    sget-object v3, Lcom/phicomm/speaker/player/model/PlayState;->STATE_IDLE:Lcom/phicomm/speaker/player/model/PlayState;

    iput-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    .line 729
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayerPrepared:Z

    .line 730
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " prepareNextMediaPlayer MediaPlayerState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", NextMediaPlayerState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 736
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 737
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 738
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 739
    if-eqz p2, :cond_2

    .line 740
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 745
    :goto_1
    sget-object v3, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PREPARING:Lcom/phicomm/speaker/player/model/PlayState;

    iput-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    .line 746
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " prepareNextMediaPlayer MediaPlayerState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", NextMediaPlayerState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    if-eqz p2, :cond_0

    .line 752
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayerPrepared:Z

    .line 753
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->onNextMediaPlayerCompleted:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto/16 :goto_0

    .line 742
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->nextMediaPlayerPrepared:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 743
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 749
    goto/16 :goto_0
.end method

.method private setCurrentMediaPlayerState(Lcom/phicomm/speaker/player/model/PlayState;)V
    .locals 2
    .param p1, "state"    # Lcom/phicomm/speaker/player/model/PlayState;

    .prologue
    .line 648
    iget v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentMediaPlayerIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 649
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    iget v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentMediaPlayerIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 651
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    goto :goto_0
.end method

.method private setPreparingChangeToCurrent()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 580
    iget v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreParingMediaPlayerIndex:I

    iput v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentMediaPlayerIndex:I

    .line 581
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreparingSongUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentSongUrl:Ljava/lang/String;

    .line 582
    iget v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreparingSongPos:I

    iput v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentSongPos:I

    .line 583
    iput-wide v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentBufferPauseTime:J

    .line 584
    iget-wide v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreparingUrlSetTime:J

    iput-wide v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentUrlSetTime:J

    .line 585
    iget v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreparingBufferPercent:I

    iput v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentBufferPercent:I

    .line 587
    iput v2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreParingMediaPlayerIndex:I

    .line 588
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreparingSongUrl:Ljava/lang/String;

    .line 589
    const/4 v0, -0x1

    iput v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreparingSongPos:I

    .line 590
    iput v2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreparingBufferPercent:I

    .line 591
    iput-wide v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreparingUrlSetTime:J

    .line 592
    return-void
.end method

.method private startBufferingMonitor(J)V
    .locals 5
    .param p1, "setBufferTime"    # J

    .prologue
    const/4 v4, 0x2

    .line 1200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " startBufferingMonitor."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1201
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mHandler:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;

    invoke-virtual {v0, v4}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;->removeMessages(I)V

    .line 1202
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mHandler:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v4, v2, v3}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1203
    iput-wide p1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentBufferPauseTime:J

    .line 1204
    return-void
.end method

.method private startMediaPlayer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 764
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 765
    sget-object v0, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PLAYING:Lcom/phicomm/speaker/player/model/PlayState;

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " startMediaPlayer MediaPlayerState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", NextMediaPlayerState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 769
    return-void
.end method

.method private startNextMediaPlayer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 777
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 778
    sget-object v0, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PLAYING:Lcom/phicomm/speaker/player/model/PlayState;

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " startNextMediaPlayer MediaPlayerState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", NextMediaPlayerState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 782
    return-void
.end method

.method private startPlayUrlAddressValidMonitor(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    const/4 v2, 0x3

    .line 1223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " startPlayUrlAddressValidMonitor, delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1224
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mHandler:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;->removeMessages(I)V

    .line 1225
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mHandler:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;

    invoke-virtual {v0, v2, p1, p2}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1226
    return-void
.end method

.method private startPreparingMonitor()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " startPreparingMonitor."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1183
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mHandler:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;

    invoke-virtual {v0, v4}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;->removeMessages(I)V

    .line 1184
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mHandler:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v4, v2, v3}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1185
    return-void
.end method

.method private stopBufferingMonitor(Z)V
    .locals 2
    .param p1, "clearBufferTime"    # Z

    .prologue
    .line 1210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stopBufferingMonitor. clearBufferTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1211
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mHandler:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;->removeMessages(I)V

    .line 1212
    if-eqz p1, :cond_0

    .line 1213
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentBufferPauseTime:J

    .line 1215
    :cond_0
    return-void
.end method

.method private stopCurrentPlayer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  stopCurrentPlayer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    :try_start_0
    iget v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentMediaPlayerIndex:I

    if-ne v1, v3, :cond_1

    .line 388
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stopMediaPlayer()V

    .line 392
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->clearCurrentFlags()V

    .line 393
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stopPlayUrlAddressValidMonitor()V

    .line 394
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stopPreparingMonitor()V

    .line 395
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stopBufferingMonitor(Z)V

    .line 399
    :goto_1
    return-void

    .line 389
    :cond_1
    iget v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentMediaPlayerIndex:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 390
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stopNextMediaPlayer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private stopMediaPlayer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 788
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 789
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 790
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 791
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 792
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 793
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 794
    sget-object v0, Lcom/phicomm/speaker/player/model/PlayState;->STATE_IDLE:Lcom/phicomm/speaker/player/model/PlayState;

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    .line 795
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayerPrepared:Z

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stopMediaPlayer MediaPlayerState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", NextMediaPlayerState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 798
    return-void
.end method

.method private stopNextMediaPlayer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 804
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 805
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 806
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 807
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 808
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 809
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 810
    sget-object v0, Lcom/phicomm/speaker/player/model/PlayState;->STATE_IDLE:Lcom/phicomm/speaker/player/model/PlayState;

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    .line 811
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayerPrepared:Z

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stopNextMediaPlayer MediaPlayerState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", NextMediaPlayerState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 814
    return-void
.end method

.method private stopPlayUrlAddressValidMonitor()V
    .locals 2

    .prologue
    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stopPlayUrlAddressValidMonitor."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1233
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mHandler:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;->removeMessages(I)V

    .line 1234
    return-void
.end method

.method private stopPreparingMonitor()V
    .locals 2

    .prologue
    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stopPreparingMonitor."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1192
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mHandler:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;->removeMessages(I)V

    .line 1193
    return-void
.end method


# virtual methods
.method public declared-synchronized duration()I
    .locals 2

    .prologue
    .line 485
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->getCurrentMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 486
    .local v0, "currentMediaPlayer":Landroid/media/MediaPlayer;
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->getCurrentMediaPlayerPrepared()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 489
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 485
    .end local v0    # "currentMediaPlayer":Landroid/media/MediaPlayer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAudioSessionId()I
    .locals 2

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->getCurrentMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 536
    .local v0, "currentMediaPlayer":Landroid/media/MediaPlayer;
    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 539
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 535
    .end local v0    # "currentMediaPlayer":Landroid/media/MediaPlayer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isInitialized()Z
    .locals 2

    .prologue
    .line 440
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isInitialized mCurrentMediaPlayerIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentMediaPlayerIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 441
    iget v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentMediaPlayerIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isParparingNext()Z
    .locals 1

    .prologue
    .line 433
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreParingMediaPlayerIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPaused()Z
    .locals 1

    .prologue
    .line 448
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mIsCurrentPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPlaying()Z
    .locals 2

    .prologue
    .line 462
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->getCurrentMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 463
    .local v0, "currentMediaPlayer":Landroid/media/MediaPlayer;
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->getCurrentMediaPlayerPrepared()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 466
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 462
    .end local v0    # "currentMediaPlayer":Landroid/media/MediaPlayer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isStarted()Z
    .locals 1

    .prologue
    .line 455
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mIsCurrentStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 337
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pause"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :try_start_1
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->getCurrentMediaPlayerPrepared()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->getCurrentMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->pause()V

    .line 342
    :cond_0
    sget-object v3, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PAUSED:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-direct {p0, v3}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setCurrentMediaPlayerState(Lcom/phicomm/speaker/player/model/PlayState;)V

    .line 343
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mIsCurrentPaused:Z

    .line 344
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mIsCurrentStarted:Z

    .line 345
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stopPreparingMonitor()V

    .line 346
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stopBufferingMonitor(Z)V

    .line 347
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stopPlayUrlAddressValidMonitor()V

    .line 348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pause MediaPlayerState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", NextMediaPlayerState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    :goto_0
    monitor-exit p0

    return v1

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v2

    .line 351
    goto :goto_0

    .line 337
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized position()I
    .locals 2

    .prologue
    .line 496
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->getCurrentMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 497
    .local v0, "currentMediaPlayer":Landroid/media/MediaPlayer;
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->getCurrentMediaPlayerPrepared()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 500
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 496
    .end local v0    # "currentMediaPlayer":Landroid/media/MediaPlayer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized preparingChangeToCurrentPlayer(Z)Z
    .locals 3
    .param p1, "startSelf"    # Z

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " preparingChangeToCurrentPlayer."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stopCurrentPlayer()V

    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->getPreparingMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setPreparingChangeToCurrent()V

    .line 319
    if-eqz p1, :cond_1

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " preparingChangeToCurrentPlayer start play"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->start()Z

    move-result v0

    .line 325
    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->getCurrentMediaPlayerPrepared()Z

    move-result v1

    if-nez v1, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->startPreparingMonitor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :cond_0
    monitor-exit p0

    return v0

    .line 323
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 312
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    .line 422
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  stopParparingPlayer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mOnBufferingUpdateListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnBufferingUpdateListener;

    .line 424
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mOnCompletionListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnCompletionListener;

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mOnErrorListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnErrorListener;

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mOnPlayTimeOutListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPlayTimeOutListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    monitor-exit p0

    return-void

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seek(I)I
    .locals 3
    .param p1, "whereto"    # I

    .prologue
    .line 507
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->getCurrentMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 508
    .local v0, "currentMediaPlayer":Landroid/media/MediaPlayer;
    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    .line 510
    .local v1, "duration":I
    if-le p1, v1, :cond_0

    .line 511
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    .end local v1    # "duration":I
    :goto_0
    monitor-exit p0

    return v1

    .line 514
    .restart local v1    # "duration":I
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, p1

    .line 515
    goto :goto_0

    .line 517
    .end local v1    # "duration":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .line 507
    .end local v0    # "currentMediaPlayer":Landroid/media/MediaPlayer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioSessionId(I)V
    .locals 2
    .param p1, "sessionId"    # I

    .prologue
    .line 546
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->getCurrentMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 547
    .local v0, "currentMediaPlayer":Landroid/media/MediaPlayer;
    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    :cond_0
    monitor-exit p0

    return-void

    .line 546
    .end local v0    # "currentMediaPlayer":Landroid/media/MediaPlayer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setDataSource(Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "songPos"    # I
    .param p3, "sync"    # Z

    .prologue
    const/4 v6, -0x1

    .line 155
    monitor-enter p0

    if-eqz p1, :cond_0

    if-ne p2, v6, :cond_1

    .line 156
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stop()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :goto_0
    monitor-exit p0

    return-void

    .line 159
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " setDataSource."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentMediaPlayerIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    const/4 v3, 0x0

    .line 163
    .local v3, "result":Z
    iget-object v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreparingSongUrl:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreparingSongPos:I

    if-ne v4, p2, :cond_3

    .line 164
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Reuse PreparingMediaPlayer."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->preparingChangeToCurrentPlayer(Z)Z

    move-result v3

    .line 168
    :cond_3
    if-nez v3, :cond_6

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentSongUrl:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentSongPos:I

    if-ne v4, p2, :cond_6

    .line 169
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Reuse CurrentMediaPlayer."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->getCurrentMediaPlayerPrepared()Z

    move-result v2

    .line 171
    .local v2, "preparing":Z
    if-eqz v2, :cond_5

    .line 172
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->pause()Z

    move-result v2

    .line 173
    if-eqz v2, :cond_5

    .line 174
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->seek(I)I

    move-result v1

    .line 175
    .local v1, "pos":I
    if-eq v1, v6, :cond_5

    .line 176
    const/4 v3, 0x1

    .line 180
    .end local v1    # "pos":I
    :cond_5
    if-nez v3, :cond_6

    .line 181
    iget v0, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentMediaPlayerIndex:I

    .line 182
    .local v0, "currentMediaPlayerIndex":I
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->prepareCurrentPlayer(Ljava/lang/String;IIZ)Z

    move-result v3

    .line 186
    .end local v0    # "currentMediaPlayerIndex":I
    .end local v2    # "preparing":Z
    :cond_6
    if-nez v3, :cond_7

    .line 187
    const/4 v4, 0x1

    invoke-direct {p0, p1, p2, v4, p3}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->prepareCurrentPlayer(Ljava/lang/String;IIZ)Z

    move-result v3

    .line 190
    :cond_7
    if-nez v3, :cond_8

    .line 191
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stop()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 155
    .end local v3    # "result":Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 194
    .restart local v3    # "result":Z
    :cond_8
    :try_start_2
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stopParparingPlayer()Z

    .line 195
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mIsCurrentPaused:Z

    .line 196
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mIsCurrentStarted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public setOnBufferingUpdateListener(Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mOnBufferingUpdateListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnBufferingUpdateListener;

    .line 1046
    return-void
.end method

.method public setOnCompletionListener(Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnCompletionListener;

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mOnCompletionListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnCompletionListener;

    .line 1050
    return-void
.end method

.method public setOnErrorListener(Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnErrorListener;

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mOnErrorListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnErrorListener;

    .line 1054
    return-void
.end method

.method public setOnInfoListener(Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnInfoListener;

    .prologue
    .line 1061
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mOnInfoListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnInfoListener;

    .line 1062
    return-void
.end method

.method public setOnPlayTimeOutListener(Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPlayTimeOutListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPlayTimeOutListener;

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mOnPlayTimeOutListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPlayTimeOutListener;

    .line 1058
    return-void
.end method

.method public setOnPreparedListener(Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPreparedListener;

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mOnPreparedListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPreparedListener;

    .line 1066
    return-void
.end method

.method public declared-synchronized setPreparingDataSource(Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "songPos"    # I
    .param p3, "sync"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 231
    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 232
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stopParparingPlayer()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 235
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setPreparingDataSource."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreparingSongUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreparingSongPos:I

    if-eq v1, p2, :cond_1

    .line 238
    iget v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentMediaPlayerIndex:I

    if-ne v1, v3, :cond_3

    .line 239
    invoke-direct {p0, p1, p3}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->prepareNextMediaPlayer(Ljava/lang/String;Z)Z

    move-result v0

    .line 240
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 241
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->clearPreparingFlags()V

    .line 242
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreparingSongUrl:Ljava/lang/String;

    .line 243
    iput p2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreparingSongPos:I

    .line 244
    const/4 v1, 0x2

    iput v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreParingMediaPlayerIndex:I

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreparingUrlSetTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 231
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 247
    :cond_3
    :try_start_2
    iget v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentMediaPlayerIndex:I

    if-ne v1, v4, :cond_4

    .line 248
    invoke-direct {p0, p1, p3}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->prepareMediaPlayer(Ljava/lang/String;Z)Z

    move-result v0

    .line 249
    .restart local v0    # "result":Z
    if-eqz v0, :cond_1

    .line 250
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->clearPreparingFlags()V

    .line 251
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreparingSongUrl:Ljava/lang/String;

    .line 252
    iput p2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreparingSongPos:I

    .line 253
    const/4 v1, 0x1

    iput v1, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreParingMediaPlayerIndex:I

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreparingUrlSetTime:J

    goto :goto_0

    .line 257
    .end local v0    # "result":Z
    :cond_4
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stopParparingPlayer()Z

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " no CurrentMediaPlayer can\'t set PrepareDataSource."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized setVolume(F)V
    .locals 3
    .param p1, "vol"    # F

    .prologue
    .line 524
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->getCurrentMediaPlayer()Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 525
    .local v0, "currentMediaPlayer":Landroid/media/MediaPlayer;
    if-eqz v0, :cond_0

    .line 527
    :try_start_1
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 528
    :catch_0
    move-exception v1

    .line 529
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 524
    .end local v0    # "currentMediaPlayer":Landroid/media/MediaPlayer;
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized start()Z
    .locals 14

    .prologue
    const-wide/32 v12, 0xdbba0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 268
    monitor-enter p0

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " player start play"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " start"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :try_start_1
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->getCurrentMediaPlayerPrepared()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 272
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->getCurrentMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->start()V

    .line 277
    :goto_0
    sget-object v7, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PLAYING:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-direct {p0, v7}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setCurrentMediaPlayerState(Lcom/phicomm/speaker/player/model/PlayState;)V

    .line 278
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mIsCurrentPaused:Z

    .line 279
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mIsCurrentStarted:Z

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 282
    .local v2, "now":J
    iget-wide v8, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentBufferPauseTime:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 283
    invoke-direct {p0, v2, v3}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->startBufferingMonitor(J)V

    .line 287
    :cond_0
    iget v7, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentBufferPercent:I

    const/16 v8, 0x64

    if-ne v7, v8, :cond_2

    .line 288
    iget-object v7, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mHandler:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;->sendEmptyMessage(I)Z

    .line 299
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " start MediaPlayerState: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", NextMediaPlayerState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    .end local v2    # "now":J
    :goto_2
    monitor-exit p0

    return v1

    .line 274
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->startPreparingMonitor()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v6

    .line 302
    goto :goto_2

    .line 292
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "now":J
    :cond_2
    :try_start_4
    iget-wide v8, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mCurrentUrlSetTime:J

    sub-long v4, v2, v8

    .line 293
    .local v4, "urlInterval":J
    cmp-long v7, v4, v12

    if-gez v7, :cond_3

    .line 294
    sub-long v8, v12, v4

    invoke-direct {p0, v8, v9}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->startPlayUrlAddressValidMonitor(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 268
    .end local v2    # "now":J
    .end local v4    # "urlInterval":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 296
    .restart local v2    # "now":J
    .restart local v4    # "urlInterval":J
    :cond_3
    :try_start_5
    iget-object v7, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mHandler:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer$EventHandler;->sendEmptyMessage(I)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized stop()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 361
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  stop"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    :try_start_1
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stopMediaPlayer()V

    .line 364
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stopNextMediaPlayer()V

    .line 365
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->clearCurrentFlags()V

    .line 366
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->clearPreparingFlags()V

    .line 367
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mIsCurrentStarted:Z

    .line 368
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mIsCurrentPaused:Z

    .line 370
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stopPlayUrlAddressValidMonitor()V

    .line 371
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stopPreparingMonitor()V

    .line 372
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stopBufferingMonitor(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    :goto_0
    monitor-exit p0

    return v1

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v2

    .line 375
    goto :goto_0

    .line 361
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopParparingPlayer()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 406
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  stopParparingPlayer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreParingMediaPlayerIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    :try_start_1
    iget v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreParingMediaPlayerIndex:I

    if-ne v3, v1, :cond_1

    .line 409
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stopMediaPlayer()V

    .line 413
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->clearPreparingFlags()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 418
    :goto_1
    monitor-exit p0

    return v1

    .line 410
    :cond_1
    :try_start_2
    iget v3, p0, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->mPreParingMediaPlayerIndex:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 411
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stopNextMediaPlayer()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v2

    .line 416
    goto :goto_1

    .line 406
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
