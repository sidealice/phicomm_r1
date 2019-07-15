.class public Lcom/phicomm/speaker/player/model/RemotePlayer;
.super Ljava/lang/Object;
.source "RemotePlayer.java"

# interfaces
.implements Lcom/phicomm/speaker/player/interfaces/Player;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

.field private mIRemoteConnectListener:Lcom/phicomm/speaker/player/interfaces/IRemoteConnectListener;

.field private mPlayerCallback:Lcom/phicomm/speaker/player/IPlayerCallback$Stub;

.field private mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

.field private mRemoteServiceClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/model/RemotePlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mRemoteServiceClass"    # Ljava/lang/Class;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/phicomm/speaker/player/model/RemotePlayer$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/model/RemotePlayer$1;-><init>(Lcom/phicomm/speaker/player/model/RemotePlayer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 82
    new-instance v0, Lcom/phicomm/speaker/player/model/RemotePlayer$2;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/model/RemotePlayer$2;-><init>(Lcom/phicomm/speaker/player/model/RemotePlayer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mConnection:Landroid/content/ServiceConnection;

    .line 110
    new-instance v0, Lcom/phicomm/speaker/player/model/RemotePlayer$3;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/model/RemotePlayer$3;-><init>(Lcom/phicomm/speaker/player/model/RemotePlayer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mPlayerCallback:Lcom/phicomm/speaker/player/IPlayerCallback$Stub;

    .line 41
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mRemoteServiceClass:Ljava/lang/Class;

    .line 44
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/phicomm/speaker/player/model/RemotePlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/player/model/RemotePlayer;)Landroid/os/IBinder$DeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/RemotePlayer;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic access$200(Lcom/phicomm/speaker/player/model/RemotePlayer;)Lcom/phicomm/speaker/player/IPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/RemotePlayer;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/phicomm/speaker/player/model/RemotePlayer;Lcom/phicomm/speaker/player/IPlayer;)Lcom/phicomm/speaker/player/IPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/RemotePlayer;
    .param p1, "x1"    # Lcom/phicomm/speaker/player/IPlayer;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/phicomm/speaker/player/model/RemotePlayer;)Lcom/phicomm/speaker/player/interfaces/IRemoteConnectListener;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/RemotePlayer;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIRemoteConnectListener:Lcom/phicomm/speaker/player/interfaces/IRemoteConnectListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/phicomm/speaker/player/model/RemotePlayer;)Lcom/phicomm/speaker/player/IPlayerCallback$Stub;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/RemotePlayer;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mPlayerCallback:Lcom/phicomm/speaker/player/IPlayerCallback$Stub;

    return-object v0
.end method

.method static synthetic access$500(Lcom/phicomm/speaker/player/model/RemotePlayer;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/RemotePlayer;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$600(Lcom/phicomm/speaker/player/model/RemotePlayer;)Lcom/phicomm/speaker/player/interfaces/PlayerListener;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/RemotePlayer;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    return-object v0
.end method


# virtual methods
.method public ackNewPage(Lcom/phicomm/speaker/player/model/PlayRequestInfo;)V
    .locals 2
    .param p1, "playRequestInfo"    # Lcom/phicomm/speaker/player/model/PlayRequestInfo;

    .prologue
    .line 355
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

    if-eqz v1, :cond_0

    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

    invoke-interface {v1, p1}, Lcom/phicomm/speaker/player/IPlayer;->ackNewPage(Lcom/phicomm/speaker/player/model/PlayRequestInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public addListener(Lcom/phicomm/speaker/player/interfaces/PlayerListener;)V
    .locals 0
    .param p1, "playerListener"    # Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    .line 367
    return-void
.end method

.method public addRemoteConnectListener(Lcom/phicomm/speaker/player/interfaces/IRemoteConnectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/phicomm/speaker/player/interfaces/IRemoteConnectListener;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIRemoteConnectListener:Lcom/phicomm/speaker/player/interfaces/IRemoteConnectListener;

    .line 375
    return-void
.end method

.method public declared-synchronized connectRemoteService()V
    .locals 6

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 48
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mRemoteServiceClass:Ljava/lang/Class;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v0, "binderIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :try_start_1
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :goto_0
    monitor-exit p0

    return-void

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 47
    .end local v0    # "binderIntent":Landroid/content/Intent;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->disconnectRemoteService()V

    .line 351
    return-void
.end method

.method public declared-synchronized disconnectRemoteService()V
    .locals 2

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentSongName()Lcom/phicomm/speaker/player/model/PlaySong;
    .locals 2

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 262
    :try_start_1
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

    invoke-interface {v1}, Lcom/phicomm/speaker/player/IPlayer;->getCurrentSongName()Lcom/phicomm/speaker/player/model/PlaySong;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 267
    :goto_0
    monitor-exit p0

    return-object v1

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getPlayAllStates()Lcom/phicomm/speaker/player/model/PlayAllStates;
    .locals 2

    .prologue
    .line 296
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

    if-eqz v1, :cond_0

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

    invoke-interface {v1}, Lcom/phicomm/speaker/player/IPlayer;->getPlayAllStates()Lcom/phicomm/speaker/player/model/PlayAllStates;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 303
    :goto_0
    return-object v1

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 303
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getPlayMode()I
    .locals 2

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 274
    :try_start_1
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

    invoke-interface {v1}, Lcom/phicomm/speaker/player/IPlayer;->getPlayMode()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 279
    :goto_0
    monitor-exit p0

    return v1

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getPlayPosition()Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    .locals 2

    .prologue
    .line 308
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

    if-eqz v1, :cond_0

    .line 310
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

    invoke-interface {v1}, Lcom/phicomm/speaker/player/IPlayer;->getPlayPosition()Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 315
    :goto_0
    return-object v1

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 315
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isPlaying()Z
    .locals 2

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 286
    :try_start_1
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

    invoke-interface {v1}, Lcom/phicomm/speaker/player/IPlayer;->isPlaying()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 291
    :goto_0
    monitor-exit p0

    return v1

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 291
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized pause()Z
    .locals 2

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 202
    :try_start_1
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

    invoke-interface {v1}, Lcom/phicomm/speaker/player/IPlayer;->pause()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 207
    :goto_0
    monitor-exit p0

    return v1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public play(Lcom/phicomm/speaker/player/model/PlayRequestInfo;Z)Z
    .locals 2
    .param p1, "playRequestInfo"    # Lcom/phicomm/speaker/player/model/PlayRequestInfo;
    .param p2, "startSelf"    # Z

    .prologue
    .line 152
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

    if-eqz v1, :cond_0

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

    invoke-interface {v1, p1, p2}, Lcom/phicomm/speaker/player/IPlayer;->play(Lcom/phicomm/speaker/player/model/PlayRequestInfo;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 159
    :goto_0
    return v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 159
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public playIndex(IZ)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "startSelf"    # Z

    .prologue
    .line 164
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

    if-eqz v1, :cond_0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

    invoke-interface {v1, p1, p2}, Lcom/phicomm/speaker/player/IPlayer;->playIndex(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 171
    :goto_0
    return v1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 171
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized playNext(Z)Z
    .locals 2
    .param p1, "startSelf"    # Z

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 238
    :try_start_1
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

    invoke-interface {v1, p1}, Lcom/phicomm/speaker/player/IPlayer;->playNext(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 243
    :goto_0
    monitor-exit p0

    return v1

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized playPre(Z)Z
    .locals 2
    .param p1, "startSelf"    # Z

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 226
    :try_start_1
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

    invoke-interface {v1, p1}, Lcom/phicomm/speaker/player/IPlayer;->playPre(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 231
    :goto_0
    monitor-exit p0

    return v1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeListener(Lcom/phicomm/speaker/player/interfaces/PlayerListener;)V
    .locals 1
    .param p1, "playerListener"    # Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    .prologue
    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    .line 371
    return-void
.end method

.method public removeRemoteConnectListener(Lcom/phicomm/speaker/player/interfaces/IRemoteConnectListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/phicomm/speaker/player/interfaces/IRemoteConnectListener;

    .prologue
    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIRemoteConnectListener:Lcom/phicomm/speaker/player/interfaces/IRemoteConnectListener;

    .line 379
    return-void
.end method

.method public declared-synchronized setPlayMode(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 250
    :try_start_1
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

    invoke-interface {v1, p1}, Lcom/phicomm/speaker/player/IPlayer;->setPlayMode(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 255
    :goto_0
    monitor-exit p0

    return v1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 255
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized start()Z
    .locals 2

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 142
    :try_start_1
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

    invoke-interface {v1}, Lcom/phicomm/speaker/player/IPlayer;->start()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 147
    :goto_0
    monitor-exit p0

    return v1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startFadeIn(J)Z
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 176
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

    if-eqz v1, :cond_0

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

    invoke-interface {v1, p1, p2}, Lcom/phicomm/speaker/player/IPlayer;->startFadeIn(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 183
    :goto_0
    return v1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 183
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized startServer()V
    .locals 4

    .prologue
    .line 320
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 322
    :try_start_1
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

    invoke-interface {v1}, Lcom/phicomm/speaker/player/IPlayer;->startServer()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 328
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/phicomm/speaker/player/interfaces/PlayerListener;->onMediaState(Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stop()Z
    .locals 2

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 214
    :try_start_1
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

    invoke-interface {v1}, Lcom/phicomm/speaker/player/IPlayer;->stop()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 219
    :goto_0
    monitor-exit p0

    return v1

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public stopFadeOut(J)Z
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 188
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

    if-eqz v1, :cond_0

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

    invoke-interface {v1, p1, p2}, Lcom/phicomm/speaker/player/IPlayer;->stopFadeOut(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 195
    :goto_0
    return v1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 195
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized stopServer()V
    .locals 4

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 337
    :try_start_1
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mIPlayer:Lcom/phicomm/speaker/player/IPlayer;

    invoke-interface {v1}, Lcom/phicomm/speaker/player/IPlayer;->stopServer()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 343
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/phicomm/speaker/player/interfaces/PlayerListener;->onMediaState(Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemotePlayer{mRemoteServiceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer;->mRemoteServiceClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
