.class public Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DLNAGenaEventBrocastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GenaEvent-BR"

.field private static final log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/util/LogFactory;->createLog()Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastReceiver;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private onTransdelGenaEvent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0x101

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 35
    const-string v5, "get_dlna_renderer_tocontrolpointer.cmd"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 37
    .local v0, "cmd":I
    sparse-switch v0, :sswitch_data_0

    .line 68
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 41
    :sswitch_1
    const-string v5, "get_param_media_duration"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "duration":Ljava/lang/String;
    const/16 v5, 0x100

    const-string v6, "durationTime"

    invoke-static {v5, v2, v6}, Lcom/phicomm/speaker/player/dlna/jni/PlatinumJniProxy;->responseGenaEvent(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 45
    .end local v2    # "duration":Ljava/lang/String;
    :sswitch_2
    const-string v5, "get_param_media_position"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "positionto":Ljava/lang/String;
    invoke-static {v8, v4, v6}, Lcom/phicomm/speaker/player/dlna/jni/PlatinumJniProxy;->responseGenaEvent(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 50
    .end local v4    # "positionto":Ljava/lang/String;
    :sswitch_3
    const-string v5, "get_param_media_playingstate"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "playingstate":Ljava/lang/String;
    const/16 v5, 0x102

    invoke-static {v5, v3, v6}, Lcom/phicomm/speaker/player/dlna/jni/PlatinumJniProxy;->responseGenaEvent(ILjava/lang/String;Ljava/lang/String;)Z

    .line 55
    const-string v5, "STOPPED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 56
    const-string v5, "00:00:00"

    invoke-static {v8, v5, v6}, Lcom/phicomm/speaker/player/dlna/jni/PlatinumJniProxy;->responseGenaEvent(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 60
    .end local v3    # "playingstate":Ljava/lang/String;
    :sswitch_4
    const-string v5, "get_param_device_discoverystate"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 61
    .local v1, "discoverystate":I
    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    .line 62
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/jni/PlatinumJniProxy;->startDeviceDiscovery()V

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/jni/PlatinumJniProxy;->stopDeviceDiscovery()V

    goto :goto_0

    .line 37
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x100 -> :sswitch_1
        0x101 -> :sswitch_2
        0x102 -> :sswitch_3
        0x103 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    const-string v1, "com.pngcui.platinum.tocontrolpointer.cmd.intent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastReceiver;->onTransdelGenaEvent(Landroid/content/Intent;)V

    goto :goto_0
.end method
