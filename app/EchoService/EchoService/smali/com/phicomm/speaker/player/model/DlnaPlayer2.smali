.class public Lcom/phicomm/speaker/player/model/DlnaPlayer2;
.super Lcom/phicomm/speaker/player/model/AbsPlayer;
.source "DlnaPlayer2.java"

# interfaces
.implements Lcom/phicomm/speaker/player/dlna/center/IBaseEngine;
.implements Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$IMediaControlListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:I = 0x3e8

.field private static final EXIT:I = 0x4

.field private static final EXIT_DELAY_TIME:I = 0x1388

.field private static final REFRESH_CURPOS:I = 0x1

.field private static final RESTART_ENGINE_MSG_ID:I = 0x3

.field private static final START_ENGINE_MSG_ID:I = 0x2

.field private static final log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;


# instance fields
.field private isSeekComplete:Z

.field private mActionReflectionListener:Lcom/phicomm/speaker/player/dlna/jni/PlatinumReflection$ActionReflectionListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMediaControlProcessor:Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;

.field private mMediaGenaBrocastFactory:Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;

.field private mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private mPlayEngineListener:Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;

.field private mPlayPosTimer:Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;

.field private mPlayerEngineImpl:Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;

.field private mWorkThread:Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/util/LogFactory;->createLog()Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AbsPlayer;-><init>()V

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->isSeekComplete:Z

    .line 60
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->initData()V

    .line 62
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->initRenderService()V

    .line 63
    return-void
.end method

.method static synthetic access$000()Lcom/phicomm/speaker/player/dlna/util/CommonLog;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/player/model/DlnaPlayer2;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->exitNow()V

    return-void
.end method

.method static synthetic access$300(Lcom/phicomm/speaker/player/model/DlnaPlayer2;)Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayPosTimer:Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/phicomm/speaker/player/model/DlnaPlayer2;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$502(Lcom/phicomm/speaker/player/model/DlnaPlayer2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/DlnaPlayer2;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->isSeekComplete:Z

    return p1
.end method

.method static synthetic access$600(Lcom/phicomm/speaker/player/model/DlnaPlayer2;)Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayerEngineImpl:Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;

    return-object v0
.end method

.method private awakeWorkThread()V
    .locals 4

    .prologue
    .line 372
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/phicomm/speaker/player/dlna/util/DlnaUtils;->getDevName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "friendName":Ljava/lang/String;
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/phicomm/speaker/player/dlna/util/DlnaUtils;->creat12BitUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, "uuid":Ljava/lang/String;
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mWorkThread:Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;

    if-nez v2, :cond_0

    .line 375
    new-instance v2, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mWorkThread:Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;

    .line 377
    :cond_0
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mWorkThread:Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;

    invoke-virtual {v2, v0, v1}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mWorkThread:Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mWorkThread:Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->awakeThread()V

    .line 383
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mWorkThread:Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->start()V

    goto :goto_0
.end method

.method private delayToExit()V
    .locals 4

    .prologue
    .line 172
    sget-object v0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    const-string v1, "delayToExit"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->i(Ljava/lang/Object;)V

    .line 173
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->removeExitMessage()V

    .line 174
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 175
    return-void
.end method

.method private delayToSendRestartMsg()V
    .locals 4

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->removeStartMsg()V

    .line 321
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->removeRestartMsg()V

    .line 322
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 323
    return-void
.end method

.method private delayToSendStartMsg()V
    .locals 4

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->removeStartMsg()V

    .line 316
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 317
    return-void
.end method

.method private exitNow()V
    .locals 3

    .prologue
    .line 163
    sget-object v0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    const-string v1, "exitNow"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->i(Ljava/lang/Object;)V

    .line 164
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->removeExitMessage()V

    .line 165
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->stopEngine()Z

    .line 166
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/phicomm/speaker/player/interfaces/PlayerListener;->onMediaState(Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 169
    :cond_0
    return-void
.end method

.method private exitWorkThread()V
    .locals 10

    .prologue
    .line 386
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mWorkThread:Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mWorkThread:Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mWorkThread:Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->exit()V

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 389
    .local v2, "time1":J
    :goto_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mWorkThread:Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 396
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 397
    .local v4, "time2":J
    sget-object v1, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exitWorkThread cost time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v4, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 398
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mWorkThread:Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;

    .line 400
    .end local v2    # "time1":J
    .end local v4    # "time2":J
    :cond_1
    return-void
.end method

.method private initRenderService()V
    .locals 3

    .prologue
    .line 290
    new-instance v0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mActionReflectionListener:Lcom/phicomm/speaker/player/dlna/jni/PlatinumReflection$ActionReflectionListener;

    .line 291
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mActionReflectionListener:Lcom/phicomm/speaker/player/dlna/jni/PlatinumReflection$ActionReflectionListener;

    invoke-static {v0}, Lcom/phicomm/speaker/player/dlna/jni/PlatinumReflection;->setActionInvokeListener(Lcom/phicomm/speaker/player/dlna/jni/PlatinumReflection$ActionReflectionListener;)V

    .line 292
    new-instance v0, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mMediaGenaBrocastFactory:Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;

    .line 293
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mMediaGenaBrocastFactory:Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;->registerBrocast()V

    .line 294
    new-instance v0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mWorkThread:Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;

    .line 295
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->openWifiBrocast(Landroid/content/Context;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 296
    sget-object v1, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openWifiBrocast = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 297
    return-void

    .line 296
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeExitMessage()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    return-void
.end method

.method private removeRestartMsg()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 331
    return-void
.end method

.method private removeStartMsg()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 327
    return-void
.end method

.method private unInitRenderService()V
    .locals 2

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->exitNow()V

    .line 302
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->removeStartMsg()V

    .line 303
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->removeRestartMsg()V

    .line 304
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mMediaGenaBrocastFactory:Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;->unRegisterBrocast()V

    .line 305
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_1

    .line 306
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 309
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 310
    sget-object v0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    const-string v1, "closeWifiBrocast"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 312
    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 141
    sget-object v0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    const-string v1, "command:  destroy"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->i(Ljava/lang/Object;)V

    .line 142
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->unInitRenderService()V

    .line 143
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayerEngineImpl:Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->exit()V

    .line 144
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mMediaControlProcessor:Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;->unregister()V

    .line 145
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayPosTimer:Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;->stopTimer()V

    .line 146
    return-void
.end method

.method public initData()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lcom/phicomm/speaker/player/dlna/player/SingleSecondTimer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/player/dlna/player/SingleSecondTimer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayPosTimer:Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;

    .line 67
    new-instance v0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2$1;-><init>(Lcom/phicomm/speaker/player/model/DlnaPlayer2;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mHandler:Landroid/os/Handler;

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayPosTimer:Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;->setHandler(Landroid/os/Handler;I)V

    .line 91
    new-instance v0, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayerEngineImpl:Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;

    .line 92
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayerEngineImpl:Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 93
    new-instance v0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;-><init>(Lcom/phicomm/speaker/player/model/DlnaPlayer2;Lcom/phicomm/speaker/player/model/DlnaPlayer2$1;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayEngineListener:Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;

    .line 94
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayerEngineImpl:Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayEngineListener:Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->setPlayerListener(Lcom/phicomm/speaker/player/dlna/player/PlayerEngineListener;)V

    .line 96
    new-instance v0, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mMediaControlProcessor:Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;

    .line 97
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mMediaControlProcessor:Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;->register(Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$IMediaControlListener;)V

    .line 98
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayerEngineImpl:Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 241
    sget-object v0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 242
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->exitNow()V

    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public onGetPositionCommand()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayerEngineImpl:Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->getCurPosition()I

    move-result v0

    return v0
.end method

.method public onPauseCommand()V
    .locals 2

    .prologue
    .line 266
    sget-object v0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    const-string v1, "onError onPauseCommand"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->i(Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayerEngineImpl:Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->pause()Z

    .line 268
    return-void
.end method

.method public onPlayCommand(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V
    .locals 3
    .param p1, "dlnaMediaModel"    # Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .prologue
    .line 248
    sget-object v0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onPlayCommand dlnaMediaModel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayerEngineImpl:Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->stop()Z

    .line 250
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->removeExitMessage()V

    .line 251
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;->sendStopDeviceDiscoveryEvent(Landroid/content/Context;)V

    .line 252
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayerEngineImpl:Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->playMedia(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V

    .line 253
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/phicomm/speaker/player/interfaces/PlayerListener;->onMediaState(Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 256
    :cond_0
    return-void
.end method

.method public onSeekCommand(I)V
    .locals 3
    .param p1, "time"    # I

    .prologue
    .line 279
    sget-object v0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeekCmd time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->i(Ljava/lang/Object;)V

    .line 280
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->seek(I)V

    .line 281
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->isSeekComplete:Z

    .line 236
    sget-object v0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    const-string v1, "onSeekComplete ..."

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 237
    return-void
.end method

.method public onStartCommand()V
    .locals 2

    .prologue
    .line 260
    sget-object v0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    const-string v1, "onError onStartCommand"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->i(Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayerEngineImpl:Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->play()Z

    .line 262
    return-void
.end method

.method public onStopCommand()V
    .locals 2

    .prologue
    .line 272
    sget-object v0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    const-string v1, "onStopCommand"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->i(Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayerEngineImpl:Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->stop()Z

    .line 274
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->delayToExit()V

    .line 275
    return-void
.end method

.method public pause()Z
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    const-string v1, "command:  pause"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->i(Ljava/lang/Object;)V

    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public refreshCurPos()V
    .locals 2

    .prologue
    .line 149
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayerEngineImpl:Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->getCurPosition()I

    move-result v0

    .line 150
    .local v0, "pos":I
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;->sendSeekEvent(Landroid/content/Context;I)V

    .line 151
    return-void
.end method

.method public restartEngine()Z
    .locals 4

    .prologue
    .line 355
    monitor-enter p0

    .line 356
    :try_start_0
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/phicomm/speaker/player/dlna/util/DlnaUtils;->getDevName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "friendName":Ljava/lang/String;
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/phicomm/speaker/player/dlna/util/DlnaUtils;->creat12BitUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "uuid":Ljava/lang/String;
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mWorkThread:Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;

    if-nez v2, :cond_0

    .line 359
    new-instance v2, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mWorkThread:Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;

    .line 361
    :cond_0
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mWorkThread:Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;

    invoke-virtual {v2, v0, v1}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mWorkThread:Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 363
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mWorkThread:Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->restartEngine()Z

    .line 367
    :goto_0
    monitor-exit p0

    .line 368
    const/4 v2, 0x1

    return v2

    .line 365
    :cond_1
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mWorkThread:Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->start()V

    goto :goto_0

    .line 367
    .end local v0    # "friendName":Ljava/lang/String;
    .end local v1    # "uuid":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public seek(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->isSeekComplete:Z

    .line 155
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayerEngineImpl:Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->skipTo(I)Z

    .line 156
    return-void
.end method

.method public start()Z
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    const-string v1, "command:  start"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->i(Ljava/lang/Object;)V

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public startEngine()Z
    .locals 1

    .prologue
    .line 336
    monitor-enter p0

    .line 337
    :try_start_0
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->awakeWorkThread()V

    .line 338
    monitor-exit p0

    .line 339
    const/4 v0, 0x1

    return v0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startServer()V
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    const-string v1, "command:  startServer"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->i(Ljava/lang/Object;)V

    .line 128
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->removeExitMessage()V

    .line 129
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->startEngine()Z

    .line 130
    return-void
.end method

.method public stop()Z
    .locals 2

    .prologue
    .line 114
    sget-object v0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    const-string v1, "command:  stop"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->i(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayerEngineImpl:Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->stop()Z

    .line 116
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->exitNow()V

    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public stopEngine()Z
    .locals 3

    .prologue
    .line 344
    monitor-enter p0

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mWorkThread:Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mWorkThread:Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;

    const-string v1, ""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->exitWorkThread()V

    .line 349
    :cond_0
    monitor-exit p0

    .line 350
    const/4 v0, 0x1

    return v0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopServer()V
    .locals 2

    .prologue
    .line 134
    sget-object v0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    const-string v1, "command:  stopServer"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->i(Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayerEngineImpl:Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->stop()Z

    .line 136
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->exitNow()V

    .line 137
    return-void
.end method
