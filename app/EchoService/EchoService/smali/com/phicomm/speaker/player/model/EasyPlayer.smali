.class public Lcom/phicomm/speaker/player/model/EasyPlayer;
.super Ljava/lang/Object;
.source "EasyPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver;
    }
.end annotation


# static fields
.field public static final STATUS_BUSY:I = 0x2

.field public static final STATUS_IDLE:I = 0x0

.field public static final STATUS_WAITING_EXTERNAL_CONNECT:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final WAIT_EXTERNAL_CONNECT_TIMEOUT:I = 0x1

.field private static mInstance:Lcom/phicomm/speaker/player/model/EasyPlayer;


# instance fields
.field private mAirPortPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

.field private mBluetoothPlayer:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

.field private mContext:Landroid/content/Context;

.field private mDlnaPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

.field private mHandler:Landroid/os/Handler;

.field private mIRemoteConnectListener:Lcom/phicomm/speaker/player/interfaces/IRemoteConnectListener;

.field private mNetPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

.field private mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

.field private mPlayStatusTracker:Lcom/phicomm/speaker/player/model/PlayStatusTracker;

.field private mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

.field private mPlayerStatus:I

.field private mRunningPlayer:I

.field private mWifiReceiver:Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mWifiReceiver:Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver;

    .line 52
    iput-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    .line 59
    iput v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    .line 61
    iput v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mRunningPlayer:I

    .line 776
    new-instance v0, Lcom/phicomm/speaker/player/model/EasyPlayer$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/model/EasyPlayer$1;-><init>(Lcom/phicomm/speaker/player/model/EasyPlayer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mIRemoteConnectListener:Lcom/phicomm/speaker/player/interfaces/IRemoteConnectListener;

    .line 795
    new-instance v0, Lcom/phicomm/speaker/player/model/EasyPlayer$2;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/model/EasyPlayer$2;-><init>(Lcom/phicomm/speaker/player/model/EasyPlayer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    .line 862
    new-instance v0, Lcom/phicomm/speaker/player/model/EasyPlayer$3;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/model/EasyPlayer$3;-><init>(Lcom/phicomm/speaker/player/model/EasyPlayer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mHandler:Landroid/os/Handler;

    .line 75
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mContext:Landroid/content/Context;

    .line 76
    new-instance v0, Lcom/phicomm/speaker/player/model/RemotePlayer;

    const-class v1, Lcom/phicomm/speaker/player/NetPlayerService;

    invoke-direct {v0, p1, v1}, Lcom/phicomm/speaker/player/model/RemotePlayer;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mNetPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    .line 77
    new-instance v0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mBluetoothPlayer:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    .line 78
    new-instance v0, Lcom/phicomm/speaker/player/model/RemotePlayer;

    const-class v1, Lcom/phicomm/speaker/player/DlnaPlayerService;

    invoke-direct {v0, p1, v1}, Lcom/phicomm/speaker/player/model/RemotePlayer;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mDlnaPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    .line 79
    new-instance v0, Lcom/phicomm/speaker/player/model/RemotePlayer;

    const-class v1, Lcom/phicomm/speaker/player/AirPlayerService;

    invoke-direct {v0, p1, v1}, Lcom/phicomm/speaker/player/model/RemotePlayer;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mAirPortPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    .line 80
    return-void
.end method

.method private HandleMediaPausedReport(Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    .locals 2
    .param p1, "player"    # Lcom/phicomm/speaker/player/interfaces/Player;
    .param p2, "state"    # I
    .param p3, "playPositionInfo"    # Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    .prologue
    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HandleMediaPausedReport, OnlinePlayer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PlayerStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    if-ne p1, v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayStatusTracker:Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    invoke-virtual {v0, p2, p3}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->handlePlayStateChanged(ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 519
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->stopPlayEffectLight()V

    .line 521
    :cond_0
    return-void
.end method

.method private HandleMediaPlayOtherStateReport(Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    .locals 2
    .param p1, "player"    # Lcom/phicomm/speaker/player/interfaces/Player;
    .param p2, "state"    # I
    .param p3, "playPositionInfo"    # Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    .prologue
    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HandleMediaPlayOtherStateReport, OnlinePlayer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PlayerStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    if-ne p1, v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayStatusTracker:Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    invoke-virtual {v0, p2, p3}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->handlePlayStateChanged(ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 557
    :cond_0
    return-void
.end method

.method private HandleMediaPlayingReport(Lcom/phicomm/speaker/player/interfaces/Player;Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    .locals 3
    .param p1, "player"    # Lcom/phicomm/speaker/player/interfaces/Player;
    .param p2, "playPositionInfo"    # Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    .prologue
    const/4 v2, 0x1

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HandleMediaPlayingReport, OnlinePlayer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PlayerStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    iget v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    packed-switch v0, :pswitch_data_0

    .line 512
    :goto_0
    return-void

    .line 493
    :pswitch_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    if-eq v0, p1, :cond_0

    .line 494
    invoke-direct {p0, p1, v2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayingToPlaying(Lcom/phicomm/speaker/player/interfaces/Player;Z)V

    goto :goto_0

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayStatusTracker:Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    invoke-virtual {v0, v2, p2}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->handlePlayStateChanged(ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 497
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->startPlayEffectLight()V

    goto :goto_0

    .line 502
    :pswitch_1
    invoke-interface {p1}, Lcom/phicomm/speaker/player/interfaces/Player;->stop()Z

    .line 503
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->exitBusy(Lcom/phicomm/speaker/player/interfaces/Player;)V

    goto :goto_0

    .line 507
    :pswitch_2
    invoke-interface {p1}, Lcom/phicomm/speaker/player/interfaces/Player;->stop()Z

    .line 508
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->exitBusy(Lcom/phicomm/speaker/player/interfaces/Player;)V

    goto :goto_0

    .line 491
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private HandleMediaPreparingReport(Lcom/phicomm/speaker/player/interfaces/Player;Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    .locals 4
    .param p1, "player"    # Lcom/phicomm/speaker/player/interfaces/Player;
    .param p2, "playPositionInfo"    # Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HandleMediaPreparingReport, OnlinePlayer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PlayerStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    iget v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    packed-switch v0, :pswitch_data_0

    .line 486
    :goto_0
    return-void

    .line 455
    :pswitch_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    if-eq v0, p1, :cond_0

    .line 456
    invoke-direct {p0, p1, v2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayingToPlaying(Lcom/phicomm/speaker/player/interfaces/Player;Z)V

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayStatusTracker:Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    invoke-virtual {v0, v3, p2}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->handlePlayStateChanged(ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    goto :goto_0

    .line 465
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->isExternalConnectPlayer(Lcom/phicomm/speaker/player/interfaces/Player;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayStatusTracker:Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    invoke-virtual {v0, v3, p2}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->handlePlayStateChanged(ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 467
    invoke-direct {p0, p1, v2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->WaitingConnectToPlaying(Lcom/phicomm/speaker/player/interfaces/Player;Z)V

    goto :goto_0

    .line 469
    :cond_1
    invoke-interface {p1}, Lcom/phicomm/speaker/player/interfaces/Player;->stop()Z

    .line 470
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->exitBusy(Lcom/phicomm/speaker/player/interfaces/Player;)V

    goto :goto_0

    .line 481
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->enterBusy(Lcom/phicomm/speaker/player/interfaces/Player;)V

    .line 482
    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->setStatus(IZ)V

    goto :goto_0

    .line 453
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private HandleMediaStoppedReport(Lcom/phicomm/speaker/player/interfaces/Player;Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    .locals 4
    .param p1, "player"    # Lcom/phicomm/speaker/player/interfaces/Player;
    .param p2, "playPositionInfo"    # Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HandleMediaStoppedReport, OnlinePlayer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PlayerStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 526
    iget v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    packed-switch v0, :pswitch_data_0

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 528
    :pswitch_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    if-ne p1, v0, :cond_0

    .line 531
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->exitBusy(Lcom/phicomm/speaker/player/interfaces/Player;)V

    goto :goto_0

    .line 536
    :pswitch_1
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    if-ne p1, v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayStatusTracker:Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    invoke-virtual {v0, v2, p2}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->handlePlayStateChanged(ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 540
    invoke-direct {p0, p1, v3}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayingToStopped(Lcom/phicomm/speaker/player/interfaces/Player;Z)V

    goto :goto_0

    .line 545
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/phicomm/speaker/player/model/EasyPlayer;->StoppedToStopped(Z)V

    goto :goto_0

    .line 526
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static PlayStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "playState"    # I

    .prologue
    .line 880
    if-nez p0, :cond_0

    .line 881
    const-string v0, "STATUS_IDLE"

    .line 887
    :goto_0
    return-object v0

    .line 882
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 883
    const-string v0, "STATUS_WAITING_EXTERNAL_CONNECT"

    goto :goto_0

    .line 884
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 885
    const-string v0, "STATUS_BUSY"

    goto :goto_0

    .line 887
    :cond_2
    const-string v0, "ERROR_PLAYSTATE"

    goto :goto_0
.end method

.method private PlayingToPlaying(Lcom/phicomm/speaker/player/interfaces/Player;Z)V
    .locals 2
    .param p1, "player"    # Lcom/phicomm/speaker/player/interfaces/Player;
    .param p2, "reportSystem"    # Z

    .prologue
    .line 653
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    if-eq v0, p1, :cond_0

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PlayingToPlaying, in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but OnlinePlayer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 655
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-interface {v0}, Lcom/phicomm/speaker/player/interfaces/Player;->stop()Z

    .line 656
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->exitBusy(Lcom/phicomm/speaker/player/interfaces/Player;)V

    .line 658
    :cond_0
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->enterBusy(Lcom/phicomm/speaker/player/interfaces/Player;)V

    .line 659
    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->setStatus(IZ)V

    .line 660
    return-void
.end method

.method private PlayingToStopped(Lcom/phicomm/speaker/player/interfaces/Player;Z)V
    .locals 1
    .param p1, "player"    # Lcom/phicomm/speaker/player/interfaces/Player;
    .param p2, "reportSystem"    # Z

    .prologue
    .line 642
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->exitBusy(Lcom/phicomm/speaker/player/interfaces/Player;)V

    .line 643
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->setStatus(IZ)V

    .line 644
    return-void
.end method

.method private PlayingToWaitingConnect(Lcom/phicomm/speaker/player/interfaces/Player;Z)V
    .locals 1
    .param p1, "player"    # Lcom/phicomm/speaker/player/interfaces/Player;
    .param p2, "reportSystem"    # Z

    .prologue
    .line 647
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->exitBusy(Lcom/phicomm/speaker/player/interfaces/Player;)V

    .line 648
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->enterWaitingExternalConnect()V

    .line 649
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->setStatus(IZ)V

    .line 650
    return-void
.end method

.method private StoppedToPlaying(Lcom/phicomm/speaker/player/interfaces/Player;Z)V
    .locals 1
    .param p1, "player"    # Lcom/phicomm/speaker/player/interfaces/Player;
    .param p2, "reportSystem"    # Z

    .prologue
    .line 615
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->enterBusy(Lcom/phicomm/speaker/player/interfaces/Player;)V

    .line 616
    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->setStatus(IZ)V

    .line 617
    return-void
.end method

.method private StoppedToStopped(Z)V
    .locals 1
    .param p1, "reportSystem"    # Z

    .prologue
    .line 611
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->setStatus(IZ)V

    .line 612
    return-void
.end method

.method private StoppedToWaitingConnect(Z)V
    .locals 1
    .param p1, "reportSystem"    # Z

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->enterWaitingExternalConnect()V

    .line 621
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->setStatus(IZ)V

    .line 622
    return-void
.end method

.method private WaitingConnectToPlaying(Lcom/phicomm/speaker/player/interfaces/Player;Z)V
    .locals 1
    .param p1, "player"    # Lcom/phicomm/speaker/player/interfaces/Player;
    .param p2, "reportSystem"    # Z

    .prologue
    .line 636
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->exitWaitingExternalConnectToPlaying(Lcom/phicomm/speaker/player/interfaces/Player;)V

    .line 637
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->enterBusy(Lcom/phicomm/speaker/player/interfaces/Player;)V

    .line 638
    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->setStatus(IZ)V

    .line 639
    return-void
.end method

.method private WaitingConnectToStopped(Z)V
    .locals 1
    .param p1, "reportSystem"    # Z

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->exitWaitingExternalConnect()V

    .line 626
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->setStatus(IZ)V

    .line 627
    return-void
.end method

.method private WaitingConnectToWaitingConnect(Z)V
    .locals 1
    .param p1, "reportSystem"    # Z

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->exitWaitingExternalConnect()V

    .line 631
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->enterWaitingExternalConnect()V

    .line 632
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->setStatus(IZ)V

    .line 633
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/phicomm/speaker/player/model/EasyPlayer;Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/EasyPlayer;
    .param p1, "x1"    # Lcom/phicomm/speaker/player/interfaces/Player;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/phicomm/speaker/player/model/EasyPlayer;->HandleMediaPausedReport(Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/phicomm/speaker/player/model/EasyPlayer;Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/EasyPlayer;
    .param p1, "x1"    # Lcom/phicomm/speaker/player/interfaces/Player;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/phicomm/speaker/player/model/EasyPlayer;->HandleMediaPlayOtherStateReport(Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/phicomm/speaker/player/model/EasyPlayer;)Lcom/phicomm/speaker/player/interfaces/Player;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/EasyPlayer;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    return-object v0
.end method

.method static synthetic access$300(Lcom/phicomm/speaker/player/model/EasyPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/EasyPlayer;

    .prologue
    .line 35
    iget v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    return v0
.end method

.method static synthetic access$400(Lcom/phicomm/speaker/player/model/EasyPlayer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/EasyPlayer;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/phicomm/speaker/player/model/EasyPlayer;)Lcom/phicomm/speaker/player/model/RemotePlayer;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/EasyPlayer;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mDlnaPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/phicomm/speaker/player/model/EasyPlayer;)Lcom/phicomm/speaker/player/model/RemotePlayer;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/EasyPlayer;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mAirPortPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/phicomm/speaker/player/model/EasyPlayer;Lcom/phicomm/speaker/player/interfaces/Player;Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/EasyPlayer;
    .param p1, "x1"    # Lcom/phicomm/speaker/player/interfaces/Player;
    .param p2, "x2"    # Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->HandleMediaStoppedReport(Lcom/phicomm/speaker/player/interfaces/Player;Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/phicomm/speaker/player/model/EasyPlayer;Lcom/phicomm/speaker/player/interfaces/Player;Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/EasyPlayer;
    .param p1, "x1"    # Lcom/phicomm/speaker/player/interfaces/Player;
    .param p2, "x2"    # Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->HandleMediaPlayingReport(Lcom/phicomm/speaker/player/interfaces/Player;Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcom/phicomm/speaker/player/model/EasyPlayer;Lcom/phicomm/speaker/player/interfaces/Player;Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/EasyPlayer;
    .param p1, "x1"    # Lcom/phicomm/speaker/player/interfaces/Player;
    .param p2, "x2"    # Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->HandleMediaPreparingReport(Lcom/phicomm/speaker/player/interfaces/Player;Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    return-void
.end method

.method private bootAllExternalConnectPlayer()V
    .locals 2

    .prologue
    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bootAllExternalConnectPlayer, OnlinePlayer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mBluetoothPlayer:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->startServer()V

    .line 736
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/player/util/Utils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mDlnaPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->startServer()V

    .line 738
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mAirPortPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->startServer()V

    .line 742
    :goto_0
    return-void

    .line 740
    :cond_0
    sget-object v0, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    const-string v1, "boot DlnaPlayer AirPortPlayer failed, wifi disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enterBusy(Lcom/phicomm/speaker/player/interfaces/Player;)V
    .locals 3
    .param p1, "player"    # Lcom/phicomm/speaker/player/interfaces/Player;

    .prologue
    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " enterBusy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 590
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    .line 592
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->isExternalConnectPlayer(Lcom/phicomm/speaker/player/interfaces/Player;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mContext:Landroid/content/Context;

    const/16 v1, 0xff

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->requestLightEffect(Landroid/content/Context;IZ)V

    .line 595
    :cond_0
    return-void
.end method

.method private enterWaitingExternalConnect()V
    .locals 3

    .prologue
    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " enterWaitingExternalConnect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->bootAllExternalConnectPlayer()V

    .line 445
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mContext:Landroid/content/Context;

    const/16 v1, 0xcc

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->requestLightEffect(Landroid/content/Context;IZ)V

    .line 447
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->startWaitExternalConnectTimer()V

    .line 448
    return-void
.end method

.method private exitBusy(Lcom/phicomm/speaker/player/interfaces/Player;)V
    .locals 3
    .param p1, "player"    # Lcom/phicomm/speaker/player/interfaces/Player;

    .prologue
    const/4 v2, 0x0

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exitBusy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 600
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->isExternalConnectPlayer(Lcom/phicomm/speaker/player/interfaces/Player;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mContext:Landroid/content/Context;

    const/16 v1, 0xff

    invoke-static {v0, v1, v2}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->requestLightEffect(Landroid/content/Context;IZ)V

    .line 604
    :cond_0
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->stopPlayEffectLight()V

    .line 607
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    .line 608
    return-void
.end method

.method private exitWaitingExternalConnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exitWaitingExternalConnect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->shutdownAllExternalConnectPlayer()V

    .line 425
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mContext:Landroid/content/Context;

    const/16 v1, 0xcc

    invoke-static {v0, v1, v2}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->requestLightEffect(Landroid/content/Context;IZ)V

    .line 427
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->stopWaitExternalConnectTimer()V

    .line 428
    return-void
.end method

.method private exitWaitingExternalConnectToPlaying(Lcom/phicomm/speaker/player/interfaces/Player;)V
    .locals 3
    .param p1, "player"    # Lcom/phicomm/speaker/player/interfaces/Player;

    .prologue
    const/4 v2, 0x0

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exitWaitingExternalConnectToPlaying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->shutdownOtherExternalConnectPlayer(Lcom/phicomm/speaker/player/interfaces/Player;)V

    .line 435
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mContext:Landroid/content/Context;

    const/16 v1, 0xcc

    invoke-static {v0, v1, v2}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->requestLightEffect(Landroid/content/Context;IZ)V

    .line 437
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->stopWaitExternalConnectTimer()V

    .line 438
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/phicomm/speaker/player/model/EasyPlayer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    sget-object v0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mInstance:Lcom/phicomm/speaker/player/model/EasyPlayer;

    if-nez v0, :cond_1

    .line 65
    const-class v1, Lcom/phicomm/speaker/player/model/EasyPlayer;

    monitor-enter v1

    .line 66
    :try_start_0
    sget-object v0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mInstance:Lcom/phicomm/speaker/player/model/EasyPlayer;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/model/EasyPlayer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mInstance:Lcom/phicomm/speaker/player/model/EasyPlayer;

    .line 69
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_1
    sget-object v0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mInstance:Lcom/phicomm/speaker/player/model/EasyPlayer;

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isExternalConnectPlayer(Lcom/phicomm/speaker/player/interfaces/Player;)Z
    .locals 1
    .param p1, "player"    # Lcom/phicomm/speaker/player/interfaces/Player;

    .prologue
    .line 696
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mNetPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    if-ne p1, v0, :cond_1

    .line 697
    :cond_0
    const/4 v0, 0x0

    .line 699
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private registerWifiStatusReceiver()V
    .locals 3

    .prologue
    .line 770
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 771
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 772
    new-instance v1, Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver;-><init>(Lcom/phicomm/speaker/player/model/EasyPlayer;Lcom/phicomm/speaker/player/model/EasyPlayer$1;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mWifiReceiver:Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver;

    .line 773
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mWifiReceiver:Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 774
    return-void
.end method

.method private setStatus(IZ)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "reportSystem"    # Z

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " setStatus, old status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", new status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", OnlinePlayer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRunningPlayer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mRunningPlayer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reportSystem = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 667
    iput p1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    .line 668
    if-eqz p2, :cond_0

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPlayerStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 670
    iget v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    if-ne v0, v2, :cond_1

    .line 671
    iput v4, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mRunningPlayer:I

    .line 672
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->syncPlayerBluetoothState(Landroid/content/Context;Z)V

    .line 673
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/phicomm/speaker/player/helpers/SettingHelper;->setDeviceState(Landroid/content/Context;I)V

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    iget v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    if-ne v0, v4, :cond_2

    .line 675
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->isNetPlayerOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    iput v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mRunningPlayer:I

    .line 677
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->syncPlayerMusicState(Landroid/content/Context;Z)V

    .line 678
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/helpers/SettingHelper;->setDeviceState(Landroid/content/Context;I)V

    goto :goto_0

    .line 680
    :cond_2
    iget v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    if-nez v0, :cond_0

    .line 681
    iget v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mRunningPlayer:I

    if-ne v0, v2, :cond_5

    .line 682
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->syncPlayerMusicState(Landroid/content/Context;Z)V

    .line 686
    :cond_3
    :goto_1
    iput v3, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mRunningPlayer:I

    .line 687
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/player/helpers/SettingHelper;->getDeviceState(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/player/helpers/SettingHelper;->getDeviceState(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 689
    :cond_4
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/phicomm/speaker/player/helpers/SettingHelper;->setDeviceState(Landroid/content/Context;I)V

    goto :goto_0

    .line 683
    :cond_5
    iget v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mRunningPlayer:I

    if-ne v0, v4, :cond_3

    .line 684
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->syncPlayerBluetoothState(Landroid/content/Context;Z)V

    goto :goto_1
.end method

.method private shutdownAllExternalConnectPlayer()V
    .locals 2

    .prologue
    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " shutdownAllExternalConnectPlayer, OnlinePlayer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 746
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mBluetoothPlayer:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->stopServer()V

    .line 747
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mDlnaPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->stopServer()V

    .line 748
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mAirPortPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->stopServer()V

    .line 749
    return-void
.end method

.method private shutdownOtherExternalConnectPlayer(Lcom/phicomm/speaker/player/interfaces/Player;)V
    .locals 2
    .param p1, "onlinePlayer"    # Lcom/phicomm/speaker/player/interfaces/Player;

    .prologue
    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " shutdownOtherExternalConnectPlayer, OnlinePlayer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 753
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mBluetoothPlayer:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    if-ne p1, v0, :cond_1

    .line 754
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mDlnaPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->stopServer()V

    .line 755
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mAirPortPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->stopServer()V

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mDlnaPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    if-ne p1, v0, :cond_2

    .line 757
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mBluetoothPlayer:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->stopServer()V

    .line 758
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mAirPortPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->stopServer()V

    goto :goto_0

    .line 759
    :cond_2
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mAirPortPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    if-ne p1, v0, :cond_3

    .line 760
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mBluetoothPlayer:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->stopServer()V

    .line 761
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mDlnaPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->stopServer()V

    goto :goto_0

    .line 762
    :cond_3
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mNetPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    if-ne p1, v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mBluetoothPlayer:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->stopServer()V

    .line 764
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mDlnaPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->stopServer()V

    .line 765
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mAirPortPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->stopServer()V

    goto :goto_0
.end method

.method private startPlayEffectLight()V
    .locals 4

    .prologue
    .line 560
    const/4 v1, 0x1

    .line 561
    .local v1, "enable":Z
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->isNetPlayerOnline()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 562
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-interface {v2}, Lcom/phicomm/speaker/player/interfaces/Player;->getCurrentSongName()Lcom/phicomm/speaker/player/model/PlaySong;

    move-result-object v0

    .line 563
    .local v0, "currentSong":Lcom/phicomm/speaker/player/model/PlaySong;
    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/PlaySong;->getItemType()I

    move-result v2

    if-eqz v2, :cond_0

    .line 565
    const/4 v1, 0x0

    .line 572
    .end local v0    # "currentSong":Lcom/phicomm/speaker/player/model/PlaySong;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " startPlayEffectLight."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    if-eqz v1, :cond_2

    .line 575
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->obtain(Landroid/content/Context;)Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->enable()V

    .line 579
    :goto_1
    return-void

    .line 569
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 577
    :cond_2
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->obtain(Landroid/content/Context;)Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->disable()V

    goto :goto_1
.end method

.method private startWaitExternalConnectTimer()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 853
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 854
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 855
    return-void
.end method

.method private stopPlayEffectLight()V
    .locals 2

    .prologue
    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stopPlayEffectLight."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->obtain(Landroid/content/Context;)Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->disable()V

    .line 584
    return-void
.end method

.method private stopWaitExternalConnectTimer()V
    .locals 2

    .prologue
    .line 858
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 859
    return-void
.end method


# virtual methods
.method public ackNewPage(Lcom/phicomm/speaker/player/model/PlayRequestInfo;)V
    .locals 1
    .param p1, "playRequestInfo"    # Lcom/phicomm/speaker/player/model/PlayRequestInfo;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mNetPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mNetPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/model/RemotePlayer;->ackNewPage(Lcom/phicomm/speaker/player/model/PlayRequestInfo;)V

    .line 362
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " destroy, OnlinePlayer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PlayerStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mWifiReceiver:Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mWifiReceiver:Lcom/phicomm/speaker/player/model/EasyPlayer$WifiStatusReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mNetPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->destroy()V

    .line 353
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mBluetoothPlayer:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->destroy()V

    .line 354
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mDlnaPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->destroy()V

    .line 355
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mAirPortPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->destroy()V

    .line 356
    return-void
.end method

.method public getCurrentSong()Lcom/phicomm/speaker/player/model/PlaySong;
    .locals 2

    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " getCurrentSong, OnlinePlayer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PlayerStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-interface {v0}, Lcom/phicomm/speaker/player/interfaces/Player;->getCurrentSongName()Lcom/phicomm/speaker/player/model/PlaySong;

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayAllStates()Lcom/phicomm/speaker/player/model/PlayAllStates;
    .locals 2

    .prologue
    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " getPlayAllStates, OnlinePlayer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PlayerStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mNetPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->getPlayAllStates()Lcom/phicomm/speaker/player/model/PlayAllStates;

    move-result-object v0

    return-object v0
.end method

.method public getPlayMode()I
    .locals 2

    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " getPlayMode, OnlinePlayer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PlayerStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mNetPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->getPlayMode()I

    move-result v0

    return v0
.end method

.method public getPlayPosition()Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    .locals 3

    .prologue
    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getPlayPosition, OnlinePlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PlayerStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "playPosition":Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-interface {v1}, Lcom/phicomm/speaker/player/interfaces/Player;->getPlayPosition()Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    move-result-object v0

    .line 327
    :cond_0
    return-object v0
.end method

.method public getPlayerSort()I
    .locals 3

    .prologue
    .line 718
    const/4 v0, 0x0

    .line 719
    .local v0, "playerSort":I
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    if-eqz v1, :cond_0

    .line 720
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mNetPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    if-ne v1, v2, :cond_1

    .line 721
    const/4 v0, 0x1

    .line 730
    :cond_0
    :goto_0
    return v0

    .line 722
    :cond_1
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mDlnaPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    if-ne v1, v2, :cond_2

    .line 723
    const/4 v0, 0x2

    goto :goto_0

    .line 724
    :cond_2
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mAirPortPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    if-ne v1, v2, :cond_3

    .line 725
    const/4 v0, 0x3

    goto :goto_0

    .line 726
    :cond_3
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mBluetoothPlayer:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    if-ne v1, v2, :cond_0

    .line 727
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " init."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    new-instance v0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;-><init>(Landroid/content/Context;Lcom/phicomm/speaker/player/model/EasyPlayer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayStatusTracker:Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    .line 85
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->setStatus(IZ)V

    .line 87
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->obtain(Landroid/content/Context;)Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;

    .line 89
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->registerWifiStatusReceiver()V

    .line 91
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mNetPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/RemotePlayer;->addListener(Lcom/phicomm/speaker/player/interfaces/PlayerListener;)V

    .line 92
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mBluetoothPlayer:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->addListener(Lcom/phicomm/speaker/player/interfaces/PlayerListener;)V

    .line 93
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mDlnaPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/RemotePlayer;->addListener(Lcom/phicomm/speaker/player/interfaces/PlayerListener;)V

    .line 94
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mAirPortPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/RemotePlayer;->addListener(Lcom/phicomm/speaker/player/interfaces/PlayerListener;)V

    .line 96
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mNetPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mIRemoteConnectListener:Lcom/phicomm/speaker/player/interfaces/IRemoteConnectListener;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/RemotePlayer;->addRemoteConnectListener(Lcom/phicomm/speaker/player/interfaces/IRemoteConnectListener;)V

    .line 98
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mDlnaPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mIRemoteConnectListener:Lcom/phicomm/speaker/player/interfaces/IRemoteConnectListener;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/RemotePlayer;->addRemoteConnectListener(Lcom/phicomm/speaker/player/interfaces/IRemoteConnectListener;)V

    .line 99
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mAirPortPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mIRemoteConnectListener:Lcom/phicomm/speaker/player/interfaces/IRemoteConnectListener;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/RemotePlayer;->addRemoteConnectListener(Lcom/phicomm/speaker/player/interfaces/IRemoteConnectListener;)V

    .line 101
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mNetPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->connectRemoteService()V

    .line 103
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mDlnaPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->connectRemoteService()V

    .line 104
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mAirPortPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->connectRemoteService()V

    .line 108
    return-void
.end method

.method public isBluetoothPlayerOnline()Z
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mBluetoothPlayer:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    if-eq v0, v1, :cond_1

    .line 704
    :cond_0
    const/4 v0, 0x0

    .line 706
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNetPlayerOnline()Z
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mNetPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    if-eq v0, v1, :cond_1

    .line 711
    :cond_0
    const/4 v0, 0x0

    .line 713
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isPlaying, OnlinePlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PlayerStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-interface {v1}, Lcom/phicomm/speaker/player/interfaces/Player;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public pause()Z
    .locals 3

    .prologue
    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pause, OnlinePlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PlayerStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "result":Z
    iget v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    packed-switch v1, :pswitch_data_0

    .line 237
    :goto_0
    return v0

    .line 229
    :pswitch_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-interface {v1}, Lcom/phicomm/speaker/player/interfaces/Player;->pause()Z

    move-result v0

    .line 230
    goto :goto_0

    .line 234
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public play(Lcom/phicomm/speaker/player/model/PlayRequestInfo;Z)Z
    .locals 5
    .param p1, "playRequestInfo"    # Lcom/phicomm/speaker/player/model/PlayRequestInfo;
    .param p2, "startSelf"    # Z

    .prologue
    const/4 v4, 0x1

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " play "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OnlinePlayer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " PlayerStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v3}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, "result":Z
    const/4 v0, 0x0

    .line 133
    .local v0, "reportStopped":Z
    iget v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    packed-switch v2, :pswitch_data_0

    .line 154
    :goto_0
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mNetPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-direct {p0, v2, v4}, Lcom/phicomm/speaker/player/model/EasyPlayer;->StoppedToPlaying(Lcom/phicomm/speaker/player/interfaces/Player;Z)V

    .line 155
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayStatusTracker:Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    invoke-virtual {v2, p1}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->beforePlayMusic(Lcom/phicomm/speaker/player/model/PlayRequestInfo;)V

    .line 156
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mNetPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-virtual {v2, p1, p2}, Lcom/phicomm/speaker/player/model/RemotePlayer;->play(Lcom/phicomm/speaker/player/model/PlayRequestInfo;Z)Z

    move-result v1

    .line 157
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayStatusTracker:Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    invoke-virtual {v2, v1}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->afterPlayMusic(Z)V

    .line 163
    return v1

    .line 135
    :pswitch_0
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mNetPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    if-eq v2, v3, :cond_0

    .line 136
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-interface {v2}, Lcom/phicomm/speaker/player/interfaces/Player;->stop()Z

    .line 139
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-direct {p0, v2, v4}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayingToStopped(Lcom/phicomm/speaker/player/interfaces/Player;Z)V

    .line 141
    :cond_0
    const/4 v0, 0x1

    .line 142
    goto :goto_0

    .line 147
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/phicomm/speaker/player/model/EasyPlayer;->WaitingConnectToStopped(Z)V

    .line 148
    const/4 v0, 0x1

    .line 149
    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public playIndex(IZ)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "startSelf"    # Z

    .prologue
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " playIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OnlinePlayer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PlayerStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "result":Z
    iget v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    packed-switch v1, :pswitch_data_0

    .line 183
    :goto_0
    return v0

    .line 173
    :pswitch_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayStatusTracker:Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->beforeChangeMusic()V

    .line 174
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-interface {v1, p1, p2}, Lcom/phicomm/speaker/player/interfaces/Player;->playIndex(IZ)Z

    move-result v0

    .line 175
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayStatusTracker:Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->afterChangeMusic(Z)V

    goto :goto_0

    .line 180
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public playNext(Z)Z
    .locals 3
    .param p1, "startSelf"    # Z

    .prologue
    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " playNext, OnlinePlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PlayerStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, "result":Z
    iget v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    packed-switch v1, :pswitch_data_0

    .line 295
    :goto_0
    return v0

    .line 285
    :pswitch_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayStatusTracker:Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->beforeChangeMusic()V

    .line 286
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-interface {v1, p1}, Lcom/phicomm/speaker/player/interfaces/Player;->playNext(Z)Z

    move-result v0

    .line 287
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayStatusTracker:Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->afterChangeMusic(Z)V

    goto :goto_0

    .line 292
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public playPre(Z)Z
    .locals 3
    .param p1, "startSelf"    # Z

    .prologue
    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " playPre, OnlinePlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PlayerStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "result":Z
    iget v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    packed-switch v1, :pswitch_data_0

    .line 277
    :goto_0
    return v0

    .line 267
    :pswitch_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayStatusTracker:Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->beforeChangeMusic()V

    .line 268
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-interface {v1, p1}, Lcom/phicomm/speaker/player/interfaces/Player;->playPre(Z)Z

    move-result v0

    .line 269
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayStatusTracker:Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->afterChangeMusic(Z)V

    goto :goto_0

    .line 274
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public restartWaitingExternalConnect()Z
    .locals 2

    .prologue
    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " restartWaitingExternalConnect, OnlinePlayer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PlayerStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->startWaitingExternalConnect()Z

    move-result v0

    return v0
.end method

.method public setBaiduPlayUDID(Ljava/lang/String;)Z
    .locals 2
    .param p1, "udid"    # Ljava/lang/String;

    .prologue
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " setBaiduPlayUDID, OnlinePlayer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PlayerStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mContext:Landroid/content/Context;

    const-string v1, "MHD_MUSIC_UDID"

    invoke-static {v0, v1, p1}, Lcom/phicomm/speaker/player/helpers/SPHelper;->setStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const/4 v0, 0x1

    return v0
.end method

.method public setMusicPositionReportInterval(I)Z
    .locals 2
    .param p1, "interval"    # I

    .prologue
    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " setMusicPositionReportInterval, OnlinePlayer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PlayerStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mContext:Landroid/content/Context;

    const-string v1, "MUSIC_POSTION_REPORT_INTERVAL"

    invoke-static {v0, v1, p1}, Lcom/phicomm/speaker/player/helpers/SPHelper;->setIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 333
    const/4 v0, 0x1

    return v0
.end method

.method public setPlayMode(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " setPlayMode, OnlinePlayer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PlayerStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mNetPlayer:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/model/RemotePlayer;->setPlayMode(I)Z

    move-result v0

    return v0
.end method

.method public start()Z
    .locals 3

    .prologue
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OnlinePlayer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PlayerStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "result":Z
    iget v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    packed-switch v1, :pswitch_data_0

    .line 123
    :goto_0
    return v0

    .line 115
    :pswitch_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-interface {v1}, Lcom/phicomm/speaker/player/interfaces/Player;->start()Z

    move-result v0

    .line 116
    goto :goto_0

    .line 120
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startFadeIn(J)Z
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startFadeIn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OnlinePlayer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PlayerStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "result":Z
    iget v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    packed-switch v1, :pswitch_data_0

    .line 199
    :goto_0
    return v0

    .line 191
    :pswitch_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-interface {v1, p1, p2}, Lcom/phicomm/speaker/player/interfaces/Player;->startFadeIn(J)Z

    move-result v0

    .line 192
    goto :goto_0

    .line 196
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startWaitingExternalConnect()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " startWaitingExternalConnect, OnlinePlayer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PlayerStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    iget v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    packed-switch v0, :pswitch_data_0

    .line 383
    :goto_0
    return v2

    .line 368
    :pswitch_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-interface {v0}, Lcom/phicomm/speaker/player/interfaces/Player;->stop()Z

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-direct {p0, v0, v2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayingToWaitingConnect(Lcom/phicomm/speaker/player/interfaces/Player;Z)V

    goto :goto_0

    .line 375
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->WaitingConnectToWaitingConnect(Z)V

    goto :goto_0

    .line 379
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->StoppedToWaitingConnect(Z)V

    goto :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stop()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stop, OnlinePlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PlayerStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    const/4 v0, 0x1

    .line 243
    .local v0, "result":Z
    iget v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    packed-switch v1, :pswitch_data_0

    .line 259
    :goto_0
    return v0

    .line 245
    :pswitch_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayStatusTracker:Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->beforeStopMusic()V

    .line 246
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-interface {v1}, Lcom/phicomm/speaker/player/interfaces/Player;->stop()Z

    .line 247
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-direct {p0, v1, v3}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayingToStopped(Lcom/phicomm/speaker/player/interfaces/Player;Z)V

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayStatusTracker:Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->beforeStopMusic()V

    .line 252
    invoke-direct {p0, v3}, Lcom/phicomm/speaker/player/model/EasyPlayer;->WaitingConnectToStopped(Z)V

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stopFadeOut(J)Z
    .locals 5
    .param p1, "delay"    # J

    .prologue
    const/4 v3, 0x1

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stopFadeOut "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OnlinePlayer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PlayerStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    const/4 v0, 0x1

    .line 205
    .local v0, "result":Z
    iget v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    packed-switch v1, :pswitch_data_0

    .line 221
    :goto_0
    return v0

    .line 207
    :pswitch_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayStatusTracker:Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->beforeStopMusic()V

    .line 208
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-interface {v1, p1, p2}, Lcom/phicomm/speaker/player/interfaces/Player;->stopFadeOut(J)Z

    .line 209
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-direct {p0, v1, v3}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayingToStopped(Lcom/phicomm/speaker/player/interfaces/Player;Z)V

    goto :goto_0

    .line 213
    :pswitch_1
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayStatusTracker:Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->beforeStopMusic()V

    .line 214
    invoke-direct {p0, v3}, Lcom/phicomm/speaker/player/model/EasyPlayer;->WaitingConnectToStopped(Z)V

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stopWaitingExternalConnect()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/EasyPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stopWaitingExternalConnect, OnlinePlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PlayerStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, "result":Z
    iget v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayerStatus:I

    packed-switch v1, :pswitch_data_0

    .line 412
    :goto_0
    return v0

    .line 391
    :pswitch_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->isExternalConnectPlayer(Lcom/phicomm/speaker/player/interfaces/Player;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayStatusTracker:Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->beforeStopMusic()V

    .line 393
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-interface {v1}, Lcom/phicomm/speaker/player/interfaces/Player;->stop()Z

    .line 394
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mOnlinePlayer:Lcom/phicomm/speaker/player/interfaces/Player;

    invoke-direct {p0, v1, v3}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayingToStopped(Lcom/phicomm/speaker/player/interfaces/Player;Z)V

    .line 395
    const/4 v0, 0x1

    goto :goto_0

    .line 397
    :cond_0
    const/4 v0, 0x0

    .line 399
    goto :goto_0

    .line 402
    :pswitch_1
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer;->mPlayStatusTracker:Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->beforeStopMusic()V

    .line 403
    invoke-direct {p0, v3}, Lcom/phicomm/speaker/player/model/EasyPlayer;->WaitingConnectToStopped(Z)V

    .line 404
    const/4 v0, 0x1

    .line 405
    goto :goto_0

    .line 408
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 389
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
