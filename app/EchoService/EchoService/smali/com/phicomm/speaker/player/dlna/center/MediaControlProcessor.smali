.class public Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;
.super Ljava/lang/Object;
.source "MediaControlProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$IMediaControlListener;
    }
.end annotation


# static fields
.field private static mIMediaControlListener:Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$IMediaControlListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method static synthetic access$000()Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$IMediaControlListener;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;->mIMediaControlListener:Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$IMediaControlListener;

    return-object v0
.end method

.method public static sendGetPositionBrocast(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v2

    new-instance v3, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$6;

    invoke-direct {v3}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$6;-><init>()V

    invoke-virtual {v2, v3}, Lcom/phicomm/speaker/player/EchoExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 103
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 107
    :goto_0
    return v2

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static sendPauseBrocast(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$3;

    invoke-direct {v1}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method

.method public static sendPlayBrocast(Landroid/content/Context;Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaInfo"    # Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .prologue
    .line 38
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$1;

    invoke-direct {v1, p1}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$1;-><init>(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method

.method public static sendSeekBrocast(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "seekPos"    # I

    .prologue
    .line 82
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$5;

    invoke-direct {v1, p1}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$5;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method

.method public static sendStartBrocast(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$2;

    invoke-direct {v1}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method public static sendStopBorocast(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$4;

    invoke-direct {v1}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$4;-><init>()V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method


# virtual methods
.method public register(Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$IMediaControlListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$IMediaControlListener;

    .prologue
    .line 30
    sput-object p1, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;->mIMediaControlListener:Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$IMediaControlListener;

    .line 31
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;->mIMediaControlListener:Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$IMediaControlListener;

    .line 35
    return-void
.end method
