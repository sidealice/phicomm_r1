.class public Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;
.super Ljava/lang/Thread;
.source "DMRWorkThread.java"

# interfaces
.implements Lcom/phicomm/speaker/player/dlna/center/IBaseEngine;


# static fields
.field private static final CHECK_INTERVAL:I = 0x7530

.field private static final log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExitFlag:Z

.field private mFriendName:Ljava/lang/String;

.field private mStartSuccess:Z

.field private mUUID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/util/LogFactory;->createLog()Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mContext:Landroid/content/Context;

    .line 19
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mStartSuccess:Z

    .line 20
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mExitFlag:Z

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mFriendName:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mUUID:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public awakeThread()V
    .locals 1

    .prologue
    .line 39
    monitor-enter p0

    .line 40
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mExitFlag:Z

    .line 46
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->awakeThread()V

    .line 47
    return-void
.end method

.method public refreshNotify()V
    .locals 4

    .prologue
    .line 84
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->checkNetworkState(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-boolean v2, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mStartSuccess:Z

    if-nez v2, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->stopEngine()Z

    .line 91
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_1
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->startEngine()Z

    move-result v1

    .line 96
    .local v1, "ret":Z
    if-eqz v1, :cond_0

    .line 97
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mStartSuccess:Z

    goto :goto_0

    .line 92
    .end local v1    # "ret":Z
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public restartEngine()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->setFlag(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->awakeThread()V

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 52
    sget-object v1, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    const-string v2, "DMRWorkThread run..."

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 56
    :cond_0
    iget-boolean v1, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mExitFlag:Z

    if-eqz v1, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->stopEngine()Z

    .line 79
    :goto_0
    sget-object v1, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    const-string v2, "DMRWorkThread over..."

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 81
    return-void

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->refreshNotify()V

    .line 62
    monitor-enter p0

    .line 66
    const-wide/16 v2, 0x7530

    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    iget-boolean v1, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mExitFlag:Z

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->stopEngine()Z

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mStartSuccess:Z

    .line 31
    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "friendName"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mFriendName:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mUUID:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public startEngine()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 104
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mFriendName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 110
    :goto_0
    return v0

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mFriendName:Ljava/lang/String;

    iget-object v3, p0, Lcom/phicomm/speaker/player/dlna/center/DMRWorkThread;->mUUID:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/dlna/jni/PlatinumJniProxy;->startMediaRender(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 109
    .local v1, "ret":I
    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 110
    .local v0, "result":Z
    :cond_1
    goto :goto_0
.end method

.method public stopEngine()Z
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/jni/PlatinumJniProxy;->stopDlnaMediaRender()V

    .line 116
    const/4 v0, 0x1

    return v0
.end method
