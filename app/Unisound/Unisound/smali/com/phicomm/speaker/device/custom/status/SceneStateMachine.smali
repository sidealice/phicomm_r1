.class public Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "SceneStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$StatusChangedListener;,
        Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$SteadyState;,
        Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState;,
        Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;,
        Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;,
        Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;,
        Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$DossState;,
        Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringDossState;,
        Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;,
        Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$BluetoothState;,
        Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringBluetoothState;,
        Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingNetConfigState;,
        Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$NetConfigState;,
        Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringNetConfigState;,
        Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingMusicState;,
        Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$MusicState;,
        Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringMusicState;,
        Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ReadyState;,
        Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$DefaultState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static INTERMEDIATE_STATE_TIMEOUT_MILLIS:J = 0x0L

.field private static final STATE_BLUETOOTH:I = 0x3

.field private static final STATE_DOSS:I = 0x5

.field private static final STATE_MUSIC:I = 0x1

.field private static final STATE_NET_CONFIG:I = 0x2

.field private static final STATE_READY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SceneStateMachine"


# instance fields
.field private mBluetoothState:Lcom/android/internal/util/State;

.field private mContext:Landroid/content/Context;

.field private mCurrentScene:I

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDossState:Lcom/android/internal/util/State;

.field private mEnteringBluetoothState:Lcom/android/internal/util/State;

.field private mEnteringDossState:Lcom/android/internal/util/State;

.field private mEnteringMusicState:Lcom/android/internal/util/State;

.field private mEnteringNetConfigState:Lcom/android/internal/util/State;

.field private mExitingBluetoothState:Lcom/android/internal/util/State;

.field private mExitingDossState:Lcom/android/internal/util/State;

.field private mExitingMusicState:Lcom/android/internal/util/State;

.field private mExitingNetConfigState:Lcom/android/internal/util/State;

.field private mMusicState:Lcom/android/internal/util/State;

.field private mNetConfigState:Lcom/android/internal/util/State;

.field private mReadyState:Lcom/android/internal/util/State;

.field private mStatusChangedListener:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$StatusChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->INTERMEDIATE_STATE_TIMEOUT_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const-string v0, "SceneStateMachine"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$DefaultState;-><init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 47
    new-instance v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ReadyState;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ReadyState;-><init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mReadyState:Lcom/android/internal/util/State;

    .line 49
    new-instance v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$MusicState;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$MusicState;-><init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mMusicState:Lcom/android/internal/util/State;

    .line 51
    new-instance v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$NetConfigState;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$NetConfigState;-><init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mNetConfigState:Lcom/android/internal/util/State;

    .line 53
    new-instance v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$BluetoothState;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$BluetoothState;-><init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mBluetoothState:Lcom/android/internal/util/State;

    .line 55
    new-instance v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$DossState;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$DossState;-><init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mDossState:Lcom/android/internal/util/State;

    .line 58
    new-instance v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringDossState;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringDossState;-><init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringDossState:Lcom/android/internal/util/State;

    .line 59
    new-instance v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;-><init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mExitingDossState:Lcom/android/internal/util/State;

    .line 60
    new-instance v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringMusicState;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringMusicState;-><init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringMusicState:Lcom/android/internal/util/State;

    .line 61
    new-instance v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingMusicState;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingMusicState;-><init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mExitingMusicState:Lcom/android/internal/util/State;

    .line 62
    new-instance v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringNetConfigState;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringNetConfigState;-><init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringNetConfigState:Lcom/android/internal/util/State;

    .line 63
    new-instance v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingNetConfigState;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingNetConfigState;-><init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mExitingNetConfigState:Lcom/android/internal/util/State;

    .line 64
    new-instance v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringBluetoothState;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringBluetoothState;-><init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringBluetoothState:Lcom/android/internal/util/State;

    .line 65
    new-instance v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;-><init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mExitingBluetoothState:Lcom/android/internal/util/State;

    .line 69
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mContext:Landroid/content/Context;

    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mReadyState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 74
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mMusicState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 75
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mNetConfigState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mBluetoothState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 77
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mDossState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 80
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringDossState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 81
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mExitingDossState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 82
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringMusicState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mExitingMusicState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringNetConfigState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 85
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mExitingNetConfigState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 86
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringBluetoothState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 87
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mExitingBluetoothState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mReadyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 90
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->setLogRecSize(I)V

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->setLogOnlyTransitions(Z)V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .prologue
    .line 28
    iget v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mCurrentScene:I

    return v0
.end method

.method static synthetic access$002(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mCurrentScene:I

    return p1
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringDossState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mExitingMusicState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mReadyState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mNetConfigState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mExitingNetConfigState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringBluetoothState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mBluetoothState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mExitingBluetoothState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringMusicState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mDossState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mExitingDossState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringNetConfigState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7200()J
    .locals 2

    .prologue
    .line 28
    sget-wide v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->INTERMEDIATE_STATE_TIMEOUT_MILLIS:J

    return-wide v0
.end method

.method static synthetic access$7300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$StatusChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mStatusChangedListener:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$StatusChangedListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mMusicState:Lcom/android/internal/util/State;

    return-object v0
.end method


# virtual methods
.method public registerStatusChangedListener(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$StatusChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$StatusChangedListener;

    .prologue
    .line 735
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mStatusChangedListener:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$StatusChangedListener;

    .line 736
    return-void
.end method
