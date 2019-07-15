.class public Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;
.super Ljava/lang/Object;
.source "DLNAGenaEventBrocastFactory.java"


# static fields
.field private static final log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReceiver:Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/util/LogFactory;->createLog()Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method private static sendDeviceDiscoveryState(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # I

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pngcui.platinum.tocontrolpointer.cmd.intent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "get_dlna_renderer_tocontrolpointer.cmd"

    const/16 v2, 0x103

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    const-string v1, "get_param_device_discoverystate"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 99
    return-void
.end method

.method public static sendDurationEvent(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "duration"    # I

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pngcui.platinum.tocontrolpointer.cmd.intent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "setintent":Landroid/content/Intent;
    const-string v1, "get_dlna_renderer_tocontrolpointer.cmd"

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    const-string v1, "get_param_media_duration"

    invoke-static {p1}, Lcom/phicomm/speaker/player/dlna/util/DlnaUtils;->formatTimeFromMSInt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 53
    .end local v0    # "setintent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private static sendGenaPlayState(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pngcui.platinum.tocontrolpointer.cmd.intent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "get_dlna_renderer_tocontrolpointer.cmd"

    const/16 v2, 0x102

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    const-string v1, "get_param_media_playingstate"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 84
    return-void
.end method

.method public static sendPauseStateEvent(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const-string v0, "PAUSED_PLAYBACK"

    invoke-static {p0, v0}, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;->sendGenaPlayState(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static sendPlayStateEvent(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const-string v0, "PLAYING"

    invoke-static {p0, v0}, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;->sendGenaPlayState(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static sendSeekEvent(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # I

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pngcui.platinum.tocontrolpointer.cmd.intent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "setintent":Landroid/content/Intent;
    const-string v1, "get_dlna_renderer_tocontrolpointer.cmd"

    const/16 v2, 0x101

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    const-string v1, "get_param_media_position"

    invoke-static {p1}, Lcom/phicomm/speaker/player/dlna/util/DlnaUtils;->formatTimeFromMSInt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 63
    .end local v0    # "setintent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static sendStartDeviceDiscoveryEvent(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;->sendDeviceDiscoveryState(Landroid/content/Context;I)V

    .line 92
    return-void
.end method

.method public static sendStopDeviceDiscoveryEvent(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;->sendDeviceDiscoveryState(Landroid/content/Context;I)V

    .line 88
    return-void
.end method

.method public static sendStopStateEvent(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const-string v0, "STOPPED"

    invoke-static {p0, v0}, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;->sendGenaPlayState(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static sendTranstionEvent(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const-string v0, "TRANSITIONING"

    invoke-static {p0, v0}, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;->sendGenaPlayState(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public registerBrocast()V
    .locals 4

    .prologue
    .line 26
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;->mReceiver:Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastReceiver;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastReceiver;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastReceiver;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;->mReceiver:Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastReceiver;

    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;->mReceiver:Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.pngcui.platinum.tocontrolpointer.cmd.intent"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 30
    :cond_0
    return-void
.end method

.method public unRegisterBrocast()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;->mReceiver:Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastReceiver;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;->mReceiver:Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;->mReceiver:Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastReceiver;

    .line 37
    :cond_0
    return-void
.end method
