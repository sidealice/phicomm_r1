.class public Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory;
.super Ljava/lang/Object;
.source "MediaControlBrocastFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory$IMediaControlListener;
    }
.end annotation


# static fields
.field public static final MEDIA_RENDERER_CMD_PAUSE:Ljava/lang/String; = "com.pngcui.control.pause_command"

.field public static final MEDIA_RENDERER_CMD_PLAY:Ljava/lang/String; = "com.pngcui.control.play_command"

.field public static final MEDIA_RENDERER_CMD_SEEKPS:Ljava/lang/String; = "com.pngcui.control.seekps_command"

.field public static final MEDIA_RENDERER_CMD_START:Ljava/lang/String; = "com.pngcui.control.start_command"

.field public static final MEDIA_RENDERER_CMD_STOP:Ljava/lang/String; = "com.pngcui.control.stop_command"

.field public static final PARAM_CMD_SEEKPS:Ljava/lang/String; = "get_param_seekps"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMediaControlReceiver:Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public static sendPauseBrocast(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pngcui.control.pause_command"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    return-void
.end method

.method public static sendPlayBrocast(Landroid/content/Context;Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaInfo"    # Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pngcui.control.play_command"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0, p1}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModelFactory;->pushMediaModelToIntent(Landroid/content/Intent;Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V

    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 61
    return-void
.end method

.method public static sendSeekBrocast(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "seekPos"    # I

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pngcui.control.seekps_command"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "get_param_seekps"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 82
    return-void
.end method

.method public static sendStartBrocast(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pngcui.control.start_command"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method public static sendStopBorocast(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pngcui.control.stop_command"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 76
    return-void
.end method


# virtual methods
.method public register(Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory$IMediaControlListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory$IMediaControlListener;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory;->mMediaControlReceiver:Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastReceiver;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastReceiver;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastReceiver;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory;->mMediaControlReceiver:Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastReceiver;

    .line 30
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory;->mMediaControlReceiver:Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastReceiver;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastReceiver;->setMediaControlListener(Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory$IMediaControlListener;)V

    .line 32
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory;->mMediaControlReceiver:Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.pngcui.control.play_command"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 33
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory;->mMediaControlReceiver:Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.pngcui.control.start_command"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 34
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory;->mMediaControlReceiver:Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.pngcui.control.pause_command"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 35
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory;->mMediaControlReceiver:Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.pngcui.control.stop_command"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory;->mMediaControlReceiver:Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.pngcui.control.seekps_command"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory;->mMediaControlReceiver:Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastReceiver;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory;->mMediaControlReceiver:Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastFactory;->mMediaControlReceiver:Lcom/phicomm/speaker/player/dlna/center/MediaControlBrocastReceiver;

    .line 47
    :cond_0
    return-void
.end method
