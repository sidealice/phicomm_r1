.class public Lcom/phicomm/speaker/player/model/AudioPlayer;
.super Lcom/phicomm/speaker/player/model/AbsPlayer;
.source "AudioPlayer.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public crossFadeRunnable:Ljava/lang/Runnable;

.field private duckDownVolumeRunnable:Ljava/lang/Runnable;

.field private duckUpVolumeRunnable:Ljava/lang/Runnable;

.field private mApp:Lcom/phicomm/speaker/player/util/Common;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioManagerHelper:Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

.field private mContext:Landroid/content/Context;

.field private mCrossfadeDuration:I

.field private volatile mCurrSong:Lcom/phicomm/speaker/player/model/PlaySong;

.field private mCurrentMediaPlayer:I

.field private mCurrentSongIndex:I

.field private mDispatchManager:Landroid/os/MessageDispatchManager;

.field private mFadeInVolume:F

.field private mFadeOutVolume:F

.field private mFailedIndecesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstRun:Z

.field private mHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMediaPlayerPausedWhenPreparing:Z

.field private mMediaPlayerPrepared:Z

.field private mMediaPlayerPreparingSong:Lcom/phicomm/speaker/player/model/PlaySong;

.field private mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

.field private mNextMediaPlayer:Landroid/media/MediaPlayer;

.field private mNextMediaPlayerPausedWhenPreparing:Z

.field private mNextMediaPlayerPrepared:Z

.field private mNextMediaPlayerPreparingSong:Lcom/phicomm/speaker/player/model/PlaySong;

.field private mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

.field private mPlaySongList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/phicomm/speaker/player/model/PlaySong;",
            ">;"
        }
    .end annotation
.end field

.field public mediaPlayerPrepared:Landroid/media/MediaPlayer$OnPreparedListener;

.field public nextMediaPlayerPrepared:Landroid/media/MediaPlayer$OnPreparedListener;

.field public onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private onMediaPlayerCompleted:Landroid/media/MediaPlayer$OnCompletionListener;

.field private onNextMediaPlayerCompleted:Landroid/media/MediaPlayer$OnCompletionListener;

.field public startCrossFadeRunnable:Ljava/lang/Runnable;

.field private startMediaPlayerIfPrepared:Ljava/lang/Runnable;

.field private startNextMediaPlayerIfPrepared:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AbsPlayer;-><init>()V

    .line 55
    iput v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentMediaPlayer:I

    .line 56
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mFirstRun:Z

    .line 63
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerPrepared:Z

    .line 64
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerPrepared:Z

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mPlaySongList:Landroid/util/SparseArray;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mFailedIndecesList:Ljava/util/ArrayList;

    .line 77
    sget-object v0, Lcom/phicomm/speaker/player/model/PlayState;->STATE_IDLE:Lcom/phicomm/speaker/player/model/PlayState;

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    .line 78
    sget-object v0, Lcom/phicomm/speaker/player/model/PlayState;->STATE_IDLE:Lcom/phicomm/speaker/player/model/PlayState;

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    .line 88
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mFadeOutVolume:F

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mFadeInVolume:F

    .line 98
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerPausedWhenPreparing:Z

    .line 99
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerPausedWhenPreparing:Z

    .line 605
    new-instance v0, Lcom/phicomm/speaker/player/model/AudioPlayer$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/model/AudioPlayer$1;-><init>(Lcom/phicomm/speaker/player/model/AudioPlayer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mediaPlayerPrepared:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 639
    new-instance v0, Lcom/phicomm/speaker/player/model/AudioPlayer$2;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/model/AudioPlayer$2;-><init>(Lcom/phicomm/speaker/player/model/AudioPlayer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->nextMediaPlayerPrepared:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 668
    new-instance v0, Lcom/phicomm/speaker/player/model/AudioPlayer$3;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/model/AudioPlayer$3;-><init>(Lcom/phicomm/speaker/player/model/AudioPlayer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->onMediaPlayerCompleted:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 713
    new-instance v0, Lcom/phicomm/speaker/player/model/AudioPlayer$4;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/model/AudioPlayer$4;-><init>(Lcom/phicomm/speaker/player/model/AudioPlayer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->onNextMediaPlayerCompleted:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 780
    new-instance v0, Lcom/phicomm/speaker/player/model/AudioPlayer$5;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/model/AudioPlayer$5;-><init>(Lcom/phicomm/speaker/player/model/AudioPlayer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 806
    new-instance v0, Lcom/phicomm/speaker/player/model/AudioPlayer$6;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/model/AudioPlayer$6;-><init>(Lcom/phicomm/speaker/player/model/AudioPlayer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 853
    new-instance v0, Lcom/phicomm/speaker/player/model/AudioPlayer$7;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/model/AudioPlayer$7;-><init>(Lcom/phicomm/speaker/player/model/AudioPlayer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->duckDownVolumeRunnable:Ljava/lang/Runnable;

    .line 872
    new-instance v0, Lcom/phicomm/speaker/player/model/AudioPlayer$8;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/model/AudioPlayer$8;-><init>(Lcom/phicomm/speaker/player/model/AudioPlayer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->duckUpVolumeRunnable:Ljava/lang/Runnable;

    .line 892
    new-instance v0, Lcom/phicomm/speaker/player/model/AudioPlayer$9;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/model/AudioPlayer$9;-><init>(Lcom/phicomm/speaker/player/model/AudioPlayer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->startMediaPlayerIfPrepared:Ljava/lang/Runnable;

    .line 908
    new-instance v0, Lcom/phicomm/speaker/player/model/AudioPlayer$10;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/model/AudioPlayer$10;-><init>(Lcom/phicomm/speaker/player/model/AudioPlayer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->startNextMediaPlayerIfPrepared:Ljava/lang/Runnable;

    .line 923
    new-instance v0, Lcom/phicomm/speaker/player/model/AudioPlayer$11;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/model/AudioPlayer$11;-><init>(Lcom/phicomm/speaker/player/model/AudioPlayer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->startCrossFadeRunnable:Ljava/lang/Runnable;

    .line 953
    new-instance v0, Lcom/phicomm/speaker/player/model/AudioPlayer$12;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/model/AudioPlayer$12;-><init>(Lcom/phicomm/speaker/player/model/AudioPlayer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->crossFadeRunnable:Ljava/lang/Runnable;

    .line 108
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mContext:Landroid/content/Context;

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mHandler:Landroid/os/Handler;

    .line 112
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/player/util/Common;

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mApp:Lcom/phicomm/speaker/player/util/Common;

    .line 113
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 114
    const-string v0, "msgcenter"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageDispatchManager;

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mDispatchManager:Landroid/os/MessageDispatchManager;

    .line 117
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->initNewMediaPlayers()V

    .line 120
    new-instance v0, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mAudioManagerHelper:Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    .line 123
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mAudioManagerHelper:Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->requestAudioFocus()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->setHasAudioFocus(Z)V

    .line 126
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mApp:Lcom/phicomm/speaker/player/util/Common;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/util/Common;->getCrossfadeDuration()I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCrossfadeDuration:I

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/player/model/AudioPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerPrepared:Z

    return v0
.end method

.method static synthetic access$002(Lcom/phicomm/speaker/player/model/AudioPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerPrepared:Z

    return p1
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/model/PlayState;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/phicomm/speaker/player/model/AudioPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerPrepared:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/phicomm/speaker/player/model/AudioPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerPrepared:Z

    return p1
.end method

.method static synthetic access$102(Lcom/phicomm/speaker/player/model/AudioPlayer;Lcom/phicomm/speaker/player/model/PlayState;)Lcom/phicomm/speaker/player/model/PlayState;
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;
    .param p1, "x1"    # Lcom/phicomm/speaker/player/model/PlayState;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->onNextMediaPlayerCompleted:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/phicomm/speaker/player/model/AudioPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerPausedWhenPreparing:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/phicomm/speaker/player/model/AudioPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerPausedWhenPreparing:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/util/Common;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mApp:Lcom/phicomm/speaker/player/util/Common;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/phicomm/speaker/player/model/AudioPlayer;)F
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;

    .prologue
    .line 43
    iget v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mFadeInVolume:F

    return v0
.end method

.method static synthetic access$1602(Lcom/phicomm/speaker/player/model/AudioPlayer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;
    .param p1, "x1"    # F

    .prologue
    .line 43
    iput p1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mFadeInVolume:F

    return p1
.end method

.method static synthetic access$1700(Lcom/phicomm/speaker/player/model/AudioPlayer;)F
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;

    .prologue
    .line 43
    iget v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mFadeOutVolume:F

    return v0
.end method

.method static synthetic access$1702(Lcom/phicomm/speaker/player/model/AudioPlayer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;
    .param p1, "x1"    # F

    .prologue
    .line 43
    iput p1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mFadeOutVolume:F

    return p1
.end method

.method static synthetic access$1800(Lcom/phicomm/speaker/player/model/AudioPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->startNextMediaPlayer()V

    return-void
.end method

.method static synthetic access$1900(Lcom/phicomm/speaker/player/model/AudioPlayer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->startNextMediaPlayerIfPrepared:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/phicomm/speaker/player/model/AudioPlayer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->startMediaPlayerIfPrepared:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/phicomm/speaker/player/model/AudioPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;

    .prologue
    .line 43
    iget v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentMediaPlayer:I

    return v0
.end method

.method static synthetic access$2200(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mAudioManagerHelper:Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/phicomm/speaker/player/model/AudioPlayer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->duckDownVolumeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/phicomm/speaker/player/model/AudioPlayer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->duckUpVolumeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/phicomm/speaker/player/model/AudioPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;

    .prologue
    .line 43
    iget v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCrossfadeDuration:I

    return v0
.end method

.method static synthetic access$2700(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mPlaySongList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/phicomm/speaker/player/model/AudioPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;

    .prologue
    .line 43
    iget v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentSongIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/phicomm/speaker/player/model/AudioPlayer;)Lcom/phicomm/speaker/player/model/PlayState;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    return-object v0
.end method

.method static synthetic access$302(Lcom/phicomm/speaker/player/model/AudioPlayer;Lcom/phicomm/speaker/player/model/PlayState;)Lcom/phicomm/speaker/player/model/PlayState;
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;
    .param p1, "x1"    # Lcom/phicomm/speaker/player/model/PlayState;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    return-object p1
.end method

.method static synthetic access$400(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->onMediaPlayerCompleted:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/phicomm/speaker/player/model/AudioPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerPausedWhenPreparing:Z

    return v0
.end method

.method static synthetic access$602(Lcom/phicomm/speaker/player/model/AudioPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerPausedWhenPreparing:Z

    return p1
.end method

.method static synthetic access$700(Lcom/phicomm/speaker/player/model/AudioPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->checkAndRequestAudioFocus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/phicomm/speaker/player/model/AudioPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mFirstRun:Z

    return v0
.end method

.method static synthetic access$802(Lcom/phicomm/speaker/player/model/AudioPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mFirstRun:Z

    return p1
.end method

.method static synthetic access$900(Lcom/phicomm/speaker/player/model/AudioPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/AudioPlayer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->startMediaPlayer()V

    return-void
.end method

.method private checkAndRequestAudioFocus()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1025
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mAudioManagerHelper:Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->hasAudioFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1026
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->requestAudioFocus()Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1034
    :cond_0
    :goto_0
    return v0

    .line 1031
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearCrossfadeCallbacks()V
    .locals 4

    .prologue
    .line 1143
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 1154
    :goto_0
    return-void

    .line 1146
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->startCrossFadeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1147
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->crossFadeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1149
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1150
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1151
    :catch_0
    move-exception v0

    .line 1152
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private determineNextSongIndex()I
    .locals 6

    .prologue
    .line 1044
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->getPlayMode()I

    move-result v0

    .line 1045
    .local v0, "playMode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1047
    iget v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentSongIndex:I

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mPlaySongList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 1056
    :goto_0
    return v1

    .line 1047
    :cond_0
    iget v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentSongIndex:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1048
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1050
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mPlaySongList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    goto :goto_0

    .line 1051
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1053
    iget v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentSongIndex:I

    goto :goto_0

    .line 1055
    :cond_3
    sget-object v1, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play mode error, mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private determinePreSongIndex()I
    .locals 6

    .prologue
    .line 1065
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->getPlayMode()I

    move-result v0

    .line 1066
    .local v0, "playMode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1068
    iget v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentSongIndex:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mPlaySongList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1077
    :goto_0
    return v1

    .line 1068
    :cond_0
    iget v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentSongIndex:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1069
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1071
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mPlaySongList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    goto :goto_0

    .line 1072
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1074
    iget v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentSongIndex:I

    goto :goto_0

    .line 1076
    :cond_3
    sget-object v1, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play mode error, mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private initMediaPlayers()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 268
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 269
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 270
    sget-object v0, Lcom/phicomm/speaker/player/model/PlayState;->STATE_IDLE:Lcom/phicomm/speaker/player/model/PlayState;

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    .line 271
    sget-object v0, Lcom/phicomm/speaker/player/model/PlayState;->STATE_IDLE:Lcom/phicomm/speaker/player/model/PlayState;

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    .line 272
    sget-object v0, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMediaPlayers MediaPlayerState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", NextMediaPlayerState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->clearCrossfadeCallbacks()V

    .line 276
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->isLooping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 278
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->crossFadeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 283
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 284
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 285
    return-void
.end method

.method private initNewMediaPlayers()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 133
    sget-object v1, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    const-string v2, "initNewMediaPlayers"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 139
    iput-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 144
    iput-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    .line 147
    :cond_1
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 148
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    .line 149
    iput v4, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentMediaPlayer:I

    .line 151
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 152
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 153
    sget-object v1, Lcom/phicomm/speaker/player/model/PlayState;->STATE_IDLE:Lcom/phicomm/speaker/player/model/PlayState;

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    .line 154
    sget-object v1, Lcom/phicomm/speaker/player/model/PlayState;->STATE_IDLE:Lcom/phicomm/speaker/player/model/PlayState;

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    .line 157
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->isLooping()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 159
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 163
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 164
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 173
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 174
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 167
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    .line 168
    iput v4, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentMediaPlayer:I

    goto :goto_0
.end method

.method private prepareMediaPlayer(I)Z
    .locals 6
    .param p1, "songIndex"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 438
    sget-object v1, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareMediaPlayer songIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    move v1, v2

    .line 482
    :goto_0
    return v1

    .line 445
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 446
    sget-object v1, Lcom/phicomm/speaker/player/model/PlayState;->STATE_IDLE:Lcom/phicomm/speaker/player/model/PlayState;

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    .line 447
    sget-object v1, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareMediaPlayer MediaPlayerState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", NextMediaPlayerState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->isLooping()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 451
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 455
    :cond_1
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mPlaySongList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/player/model/PlaySong;

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerPreparingSong:Lcom/phicomm/speaker/player/model/PlaySong;

    .line 461
    iget-object v4, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mPlaySongList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/player/model/PlaySong;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/PlaySong;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mediaPlayerPrepared:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 463
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 464
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 465
    sget-object v1, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PREPARING:Lcom/phicomm/speaker/player/model/PlayState;

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    .line 466
    sget-object v1, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareMediaPlayer MediaPlayerState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", NextMediaPlayerState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 482
    goto/16 :goto_0

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DEBUG"

    const-string v2, "MESSAGE"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 472
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mFailedIndecesList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->isAtEndOfQueue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mFirstRun:Z

    if-eqz v1, :cond_3

    .line 476
    :cond_2
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->prepareMediaPlayer(I)Z

    move v1, v3

    .line 480
    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 478
    goto/16 :goto_0
.end method

.method private prepareNextMediaPlayer(I)Z
    .locals 6
    .param p1, "songIndex"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 493
    sget-object v1, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareNextMediaPlayer songIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    move v1, v2

    .line 536
    :goto_0
    return v1

    .line 500
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 501
    sget-object v1, Lcom/phicomm/speaker/player/model/PlayState;->STATE_IDLE:Lcom/phicomm/speaker/player/model/PlayState;

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    .line 502
    sget-object v1, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareNextMediaPlayer MediaPlayerState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", NextMediaPlayerState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->isLooping()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 506
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mPlaySongList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/player/model/PlaySong;

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerPreparingSong:Lcom/phicomm/speaker/player/model/PlaySong;

    .line 516
    iget-object v4, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mPlaySongList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/player/model/PlaySong;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/PlaySong;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 517
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->nextMediaPlayerPrepared:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 518
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 519
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 520
    sget-object v1, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PREPARING:Lcom/phicomm/speaker/player/model/PlayState;

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    .line 521
    sget-object v1, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareNextMediaPlayer MediaPlayerState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", NextMediaPlayerState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 536
    goto/16 :goto_0

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 526
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mFailedIndecesList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->isAtEndOfQueue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 530
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/AudioPlayer;->prepareNextMediaPlayer(I)Z

    move v1, v3

    .line 534
    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 532
    goto/16 :goto_0
.end method

.method private reportPlaySong(Lcom/phicomm/speaker/player/model/PlaySong;)V
    .locals 9
    .param p1, "song"    # Lcom/phicomm/speaker/player/model/PlaySong;

    .prologue
    const/4 v8, 0x0

    .line 1180
    if-nez p1, :cond_0

    .line 1181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reportPlaySong song is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1197
    :goto_0
    return-void

    .line 1186
    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 1187
    .local v1, "jsonArray":Lcom/google/gson/JsonArray;
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, p1}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 1188
    .local v2, "jsonElement":Lcom/google/gson/JsonElement;
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 1189
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/ParcelableUtil;->obtain(Ljava/lang/String;)Landroid/os/ParcelableUtil;

    move-result-object v3

    .line 1191
    .local v3, "result":Landroid/os/ParcelableUtil;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reportPlaySong result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1192
    iget-object v4, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mDispatchManager:Landroid/os/MessageDispatchManager;

    const/4 v5, 0x4

    const/16 v6, 0x9

    invoke-static {}, Lcom/phicomm/speaker/player/util/IdGenerator;->nextId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1194
    .end local v1    # "jsonArray":Lcom/google/gson/JsonArray;
    .end local v2    # "jsonElement":Lcom/google/gson/JsonElement;
    .end local v3    # "result":Landroid/os/ParcelableUtil;
    :catch_0
    move-exception v0

    .line 1195
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reportPlaySong construct json error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/phicomm/speaker/player/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private requestAudioFocus()Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 762
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 766
    .local v0, "result":I
    if-eq v0, v1, :cond_0

    .line 769
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->stop()Z

    .line 770
    sget-object v1, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    const-string v2, "requestAudioFocus Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const/4 v1, 0x0

    .line 773
    :cond_0
    return v1
.end method

.method private startMediaPlayer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 548
    const/4 v0, 0x1

    iput v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentMediaPlayer:I

    .line 549
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 550
    sget-object v0, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PLAYING:Lcom/phicomm/speaker/player/model/PlayState;

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    .line 553
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mFirstRun:Z

    if-nez v0, :cond_2

    .line 555
    :cond_0
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->determineNextSongIndex()I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentSongIndex:I

    .line 556
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mFailedIndecesList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentSongIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mFailedIndecesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 567
    :cond_1
    :goto_0
    sget-object v0, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMediaPlayer MediaPlayerPreparingSong: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerPreparingSong:Lcom/phicomm/speaker/player/model/PlaySong;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CurrentSongIndex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentSongIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    sget-object v0, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMediaPlayer MediaPlayerState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", NextMediaPlayerState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerPreparingSong:Lcom/phicomm/speaker/player/model/PlaySong;

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrSong:Lcom/phicomm/speaker/player/model/PlaySong;

    .line 570
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrSong:Lcom/phicomm/speaker/player/model/PlaySong;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->reportPlaySong(Lcom/phicomm/speaker/player/model/PlaySong;)V

    .line 573
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->determineNextSongIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->prepareNextMediaPlayer(I)Z

    .line 574
    return-void

    .line 559
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mFailedIndecesList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentSongIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 560
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->determineNextSongIndex()I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentSongIndex:I

    goto :goto_1

    .line 563
    :cond_3
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mApp:Lcom/phicomm/speaker/player/util/Common;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/util/Common;->isCrossfadeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->startCrossFadeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method private startNextMediaPlayer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 584
    const/4 v0, 0x2

    iput v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentMediaPlayer:I

    .line 585
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 586
    sget-object v0, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PLAYING:Lcom/phicomm/speaker/player/model/PlayState;

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    .line 590
    :cond_0
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->determineNextSongIndex()I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentSongIndex:I

    .line 591
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mFailedIndecesList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentSongIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mFailedIndecesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 593
    sget-object v0, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startNextMediaPlayer NextMediaPlayerPreparingSong: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerPreparingSong:Lcom/phicomm/speaker/player/model/PlaySong;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CurrentSongIndex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentSongIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    sget-object v0, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startNextMediaPlayer MediaPlayerState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", NextMediaPlayerState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerPreparingSong:Lcom/phicomm/speaker/player/model/PlaySong;

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrSong:Lcom/phicomm/speaker/player/model/PlaySong;

    .line 596
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrSong:Lcom/phicomm/speaker/player/model/PlaySong;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->reportPlaySong(Lcom/phicomm/speaker/player/model/PlaySong;)V

    .line 599
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->determineNextSongIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->prepareMediaPlayer(I)Z

    .line 600
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 374
    sget-object v0, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    const-string v1, "command: destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->initNewMediaPlayers()V

    .line 376
    return-void
.end method

.method public getCurrentMediaPlayer()Landroid/media/MediaPlayer;
    .locals 2

    .prologue
    .line 1130
    iget v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentMediaPlayer:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1133
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public getCurrentMediaPlayerPausedWhenPreparing()Z
    .locals 2

    .prologue
    .line 1120
    iget v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentMediaPlayer:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1121
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerPausedWhenPreparing:Z

    .line 1123
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerPausedWhenPreparing:Z

    goto :goto_0
.end method

.method public getCurrentMediaPlayerState()Lcom/phicomm/speaker/player/model/PlayState;
    .locals 2

    .prologue
    .line 1105
    iget v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentMediaPlayer:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    .line 1108
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    goto :goto_0
.end method

.method public getCurrentSongName()Lcom/phicomm/speaker/player/model/PlaySong;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrSong:Lcom/phicomm/speaker/player/model/PlaySong;

    return-object v0
.end method

.method public getPlayMode()I
    .locals 3

    .prologue
    .line 426
    sget-object v0, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    const-string v1, "command: getPlayMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mApp:Lcom/phicomm/speaker/player/util/Common;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/util/Common;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PlayMode"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isAtEndOfQueue()Z
    .locals 2

    .prologue
    .line 1168
    iget v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentSongIndex:I

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mPlaySongList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAtStartOfQueue()Z
    .locals 1

    .prologue
    .line 1176
    iget v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentSongIndex:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLooping()Z
    .locals 2

    .prologue
    .line 382
    sget-object v0, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    const-string v1, "command: isLooping"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->getPlayMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 359
    sget-object v2, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    const-string v3, "command: isPlaying"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :try_start_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->getCurrentMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    const/4 v1, 0x1

    .line 368
    :cond_0
    :goto_0
    return v1

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isShuffleOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1160
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->getPlayMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 322
    sget-object v2, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    const-string v3, "command: pause"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :try_start_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->getCurrentMediaPlayerState()Lcom/phicomm/speaker/player/model/PlayState;

    move-result-object v2

    sget-object v3, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PREPARING:Lcom/phicomm/speaker/player/model/PlayState;

    if-ne v2, v3, :cond_0

    .line 325
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->setCurrentMediaPlayerPausedWhenPreparing(Z)V

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->getCurrentMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->pause()V

    .line 328
    sget-object v2, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PAUSED:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->setCurrentMediaPlayerState(Lcom/phicomm/speaker/player/model/PlayState;)V

    .line 329
    sget-object v2, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pause MediaPlayerState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", NextMediaPlayerState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    return v1

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 332
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public play(Lcom/phicomm/speaker/player/model/PlayRequestInfo;Z)Z
    .locals 6
    .param p1, "playRequestInfo"    # Lcom/phicomm/speaker/player/model/PlayRequestInfo;
    .param p2, "startSelf"    # Z

    .prologue
    const/4 v1, 0x0

    .line 178
    sget-object v2, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "command: play song: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :try_start_0
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->initMediaPlayers()V

    .line 183
    const/4 v2, 0x0

    iput v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentSongIndex:I

    .line 184
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mFailedIndecesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 185
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mPlaySongList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 186
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mPlaySongList:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->getItemList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 189
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mFirstRun:Z

    .line 190
    iget v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentSongIndex:I

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/player/model/AudioPlayer;->prepareMediaPlayer(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 193
    :goto_0
    return v1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public playNext(Z)Z
    .locals 5
    .param p1, "startSelf"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 204
    sget-object v3, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    const-string v4, "command: playNext"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :try_start_0
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->initMediaPlayers()V

    .line 209
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->determineNextSongIndex()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 220
    :goto_0
    return v1

    .line 214
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mFirstRun:Z

    .line 215
    iget v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentSongIndex:I

    invoke-direct {p0, v3}, Lcom/phicomm/speaker/player/model/AudioPlayer;->prepareMediaPlayer(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 220
    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public playPre(Z)Z
    .locals 5
    .param p1, "startSelf"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 230
    sget-object v3, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    const-string v4, "command: playPre"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :try_start_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->getCurrentMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    const/16 v4, 0xbb8

    if-le v3, v4, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->getCurrentMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return v1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 243
    goto :goto_0

    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->initMediaPlayers()V

    .line 249
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->determinePreSongIndex()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    move v1, v2

    .line 250
    goto :goto_0

    .line 254
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mFirstRun:Z

    .line 255
    iget v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentSongIndex:I

    invoke-direct {p0, v3}, Lcom/phicomm/speaker/player/model/AudioPlayer;->prepareMediaPlayer(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 256
    :catch_1
    move-exception v0

    .line 257
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 258
    goto :goto_0
.end method

.method public prepareCurrentMediaPlayer()V
    .locals 2

    .prologue
    .line 1085
    iget v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentMediaPlayer:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1086
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->determineNextSongIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->prepareMediaPlayer(I)Z

    .line 1090
    :goto_0
    return-void

    .line 1088
    :cond_0
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->determineNextSongIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->prepareNextMediaPlayer(I)Z

    goto :goto_0
.end method

.method public setCurrentMediaPlayerPausedWhenPreparing(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 1112
    iget v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentMediaPlayer:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1113
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerPausedWhenPreparing:Z

    .line 1117
    :goto_0
    return-void

    .line 1115
    :cond_0
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerPausedWhenPreparing:Z

    goto :goto_0
.end method

.method public setCurrentMediaPlayerState(Lcom/phicomm/speaker/player/model/PlayState;)V
    .locals 2
    .param p1, "state"    # Lcom/phicomm/speaker/player/model/PlayState;

    .prologue
    .line 1097
    iget v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mCurrentMediaPlayer:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1098
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    .line 1102
    :goto_0
    return-void

    .line 1100
    :cond_0
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    goto :goto_0
.end method

.method public setPlayMode(I)Z
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 388
    sget-object v3, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "command: setPlayMode, mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mApp:Lcom/phicomm/speaker/player/util/Common;

    invoke-virtual {v3}, Lcom/phicomm/speaker/player/util/Common;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "PlayMode"

    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 397
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    .line 398
    :try_start_0
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 399
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_0
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->clearCrossfadeCallbacks()V

    .line 414
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mApp:Lcom/phicomm/speaker/player/util/Common;

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/util/Common;->isCrossfadeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->startCrossFadeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 416
    :cond_0
    :goto_1
    return v1

    .line 401
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 402
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 406
    goto :goto_1
.end method

.method public start()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 294
    sget-object v3, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    const-string v4, "command: start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :try_start_0
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->checkAndRequestAudioFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->getCurrentMediaPlayerPausedWhenPreparing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    sget-object v3, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    const-string v4, "Paused when preparing, waiting prepared to init"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/phicomm/speaker/player/model/AudioPlayer;->setCurrentMediaPlayerPausedWhenPreparing(Z)V

    .line 313
    :goto_0
    return v1

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->getCurrentMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 304
    sget-object v3, Lcom/phicomm/speaker/player/model/PlayState;->STATE_PLAYING:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {p0, v3}, Lcom/phicomm/speaker/player/model/AudioPlayer;->setCurrentMediaPlayerState(Lcom/phicomm/speaker/player/model/PlayState;)V

    .line 305
    sget-object v3, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start MediaPlayerState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", NextMediaPlayerState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/player/model/AudioPlayer;->mNextMediaPlayerState:Lcom/phicomm/speaker/player/model/PlayState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 311
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v1, v2

    .line 307
    goto :goto_0
.end method

.method public stop()Z
    .locals 3

    .prologue
    .line 343
    sget-object v1, Lcom/phicomm/speaker/player/model/AudioPlayer;->TAG:Ljava/lang/String;

    const-string v2, "command: stop"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :try_start_0
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->initMediaPlayers()V

    .line 346
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->prepareCurrentMediaPlayer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 349
    const/4 v1, 0x0

    goto :goto_0
.end method
