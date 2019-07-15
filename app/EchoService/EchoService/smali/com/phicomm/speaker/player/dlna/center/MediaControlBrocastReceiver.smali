.class public Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaControlBrocastReceiver.java"


# static fields
.field private static final log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;


# instance fields
.field private mMediaControlListener:Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory$IMediaControlListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/util/LogFactory;->createLog()Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastReceiver;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private TransdelControlCommand(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    const/4 v2, 0x0

    .line 32
    .local v2, "time":I
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.pngcui.control.play_command"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 34
    invoke-static {p1}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModelFactory;->createFromIntent(Landroid/content/Intent;)Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    move-result-object v1

    .line 35
    .local v1, "mediaInfo":Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;
    iget-object v3, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastReceiver;->mMediaControlListener:Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory$IMediaControlListener;

    invoke-interface {v3, v1}, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory$IMediaControlListener;->onPlayCommand(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V

    .line 47
    .end local v1    # "mediaInfo":Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    const-string v3, "com.pngcui.control.start_command"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 37
    iget-object v3, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastReceiver;->mMediaControlListener:Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory$IMediaControlListener;

    invoke-interface {v3}, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory$IMediaControlListener;->onStartCommand()V

    goto :goto_0

    .line 38
    :cond_2
    const-string v3, "com.pngcui.control.pause_command"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 39
    iget-object v3, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastReceiver;->mMediaControlListener:Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory$IMediaControlListener;

    invoke-interface {v3}, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory$IMediaControlListener;->onPauseCommand()V

    goto :goto_0

    .line 40
    :cond_3
    const-string v3, "com.pngcui.control.stop_command"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 41
    iget-object v3, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastReceiver;->mMediaControlListener:Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory$IMediaControlListener;

    invoke-interface {v3}, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory$IMediaControlListener;->onStopCommand()V

    goto :goto_0

    .line 42
    :cond_4
    const-string v3, "com.pngcui.control.seekps_command"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    const-string v3, "get_param_seekps"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 44
    iget-object v3, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastReceiver;->mMediaControlListener:Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory$IMediaControlListener;

    invoke-interface {v3, v2}, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory$IMediaControlListener;->onSeekCommand(I)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastReceiver;->mMediaControlListener:Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory$IMediaControlListener;

    if-eqz v1, :cond_0

    .line 21
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastReceiver;->TransdelControlCommand(Landroid/content/Intent;)V

    .line 23
    :cond_0
    return-void
.end method

.method public setMediaControlListener(Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory$IMediaControlListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory$IMediaControlListener;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastReceiver;->mMediaControlListener:Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory$IMediaControlListener;

    .line 28
    return-void
.end method
