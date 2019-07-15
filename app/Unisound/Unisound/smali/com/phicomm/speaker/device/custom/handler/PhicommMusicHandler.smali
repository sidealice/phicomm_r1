.class public Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;
.super Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;
.source "PhicommMusicHandler.java"

# interfaces
.implements Lcom/unisound/ant/device/listener/MusicStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$RecoveryWakeupWordRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRecoveryWakeupWordRunnable:Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$RecoveryWakeupWordRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/unisound/vui/handler/session/music/CommonPlayer;)V
    .locals 1
    .param p1, "commonPlayer"    # Lcom/unisound/vui/handler/session/music/CommonPlayer;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;-><init>(Lcom/unisound/vui/handler/session/music/CommonPlayer;)V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mHandler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;)Lcom/unisound/vui/engine/ANTHandlerContext;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;
    .param p1, "x1"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->recoveryDefaultWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method private getCurrentMusicWakeupBenchmark()F
    .locals 4

    .prologue
    .line 77
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getInstance(Landroid/content/Context;)Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getCurrentVolume()I

    move-result v0

    .line 78
    .local v0, "currentVolume":I
    sget-object v1, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMusicStatusChanged music playing  volume:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 80
    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmark:F

    .line 86
    :goto_0
    return v1

    .line 81
    :cond_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 82
    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmarkForMusicPlaying:F

    goto :goto_0

    .line 83
    :cond_1
    const/16 v1, 0xc

    if-ge v0, v1, :cond_2

    .line 84
    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmarkForMusicPlayingTwo:F

    goto :goto_0

    .line 86
    :cond_2
    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmarkForMusicPlayingThree:F

    goto :goto_0
.end method

.method private getEffectBenchmark(I)F
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 69
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->getCurrentMusicWakeupBenchmark()F

    move-result v0

    .line 72
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmark:F

    goto :goto_0
.end method


# virtual methods
.method protected doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected doResume(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 99
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->doResume(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    goto :goto_0
.end method

.method protected firNluMusicWakeupOperate(Ljava/lang/String;)V
    .locals 2
    .param p1, "wakeupWord"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f05000e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getInstance(Landroid/content/Context;)Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->setVolumeRaise()V

    .line 115
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f05000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getInstance(Landroid/content/Context;)Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->setVolumeLower()V

    goto :goto_0

    .line 113
    :cond_1
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->firNluMusicWakeupOperate(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 37
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mContext:Landroid/content/Context;

    .line 38
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method public onMusicStatusChanged(I)V
    .locals 6
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x0

    .line 48
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->getEffectBenchmark(I)F

    move-result v0

    .line 49
    .local v0, "currentBenchMark":F
    sget-object v1, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMusicStatusChanged status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",currentBenchMark"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->effectWakeupBenchmark:F

    .line 53
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 54
    sget-object v1, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->TAG:Ljava/lang/String;

    const-string v2, "start task \'recovery wakeup work\'"

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mRecoveryWakeupWordRunnable:Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$RecoveryWakeupWordRunnable;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$RecoveryWakeupWordRunnable;

    invoke-direct {v1, p0, v4}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$RecoveryWakeupWordRunnable;-><init>(Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$1;)V

    iput-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mRecoveryWakeupWordRunnable:Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$RecoveryWakeupWordRunnable;

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mRecoveryWakeupWordRunnable:Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$RecoveryWakeupWordRunnable;

    const-wide/32 v4, 0x1b7740

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    :cond_1
    :goto_0
    return-void

    .line 60
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mRecoveryWakeupWordRunnable:Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$RecoveryWakeupWordRunnable;

    if-eqz v1, :cond_1

    .line 62
    sget-object v1, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->TAG:Ljava/lang/String;

    const-string v2, "stop task \'recovery wakeup work\'"

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mRecoveryWakeupWordRunnable:Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$RecoveryWakeupWordRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    iput-object v4, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mRecoveryWakeupWordRunnable:Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$RecoveryWakeupWordRunnable;

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v0, p0}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->setStateListener(Lcom/unisound/ant/device/listener/MusicStatusListener;)V

    .line 44
    return-void
.end method
