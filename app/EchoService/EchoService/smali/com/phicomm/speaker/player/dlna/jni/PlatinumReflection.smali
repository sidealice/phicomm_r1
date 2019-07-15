.class public Lcom/phicomm/speaker/player/dlna/jni/PlatinumReflection;
.super Ljava/lang/Object;
.source "PlatinumReflection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/dlna/jni/PlatinumReflection$ActionReflectionListener;
    }
.end annotation


# static fields
.field public static final GET_PARAM_DEVICE_DISCOVERYSTATE:Ljava/lang/String; = "get_param_device_discoverystate"

.field public static final GET_PARAM_MEDIA_DURATION:Ljava/lang/String; = "get_param_media_duration"

.field public static final GET_PARAM_MEDIA_PLAYINGSTATE:Ljava/lang/String; = "get_param_media_playingstate"

.field public static final GET_PARAM_MEDIA_POSITION:Ljava/lang/String; = "get_param_media_position"

.field public static final GET_RENDERER_TOCONTRPOINT_CMD:Ljava/lang/String; = "get_dlna_renderer_tocontrolpointer.cmd"

.field public static final MEDIA_DEVICE_DISCOVERYSTATE_OFF:I = 0x0

.field public static final MEDIA_DEVICE_DISCOVERYSTATE_ON:I = 0x1

.field public static final MEDIA_PLAYINGSTATE_NOMEDIA:Ljava/lang/String; = "NO_MEDIA_PRESENT"

.field public static final MEDIA_PLAYINGSTATE_PAUSE:Ljava/lang/String; = "PAUSED_PLAYBACK"

.field public static final MEDIA_PLAYINGSTATE_PLAYING:Ljava/lang/String; = "PLAYING"

.field public static final MEDIA_PLAYINGSTATE_STOP:Ljava/lang/String; = "STOPPED"

.field public static final MEDIA_PLAYINGSTATE_TRANSTION:Ljava/lang/String; = "TRANSITIONING"

.field private static final MEDIA_RENDER_CTL_MSG_BASE:I = 0x100

.field public static final MEDIA_RENDER_CTL_MSG_GET_MEDIA_POSITION:I = 0x10a

.field public static final MEDIA_RENDER_CTL_MSG_GET_MEDIA_VOLUME:I = 0x10b

.field public static final MEDIA_RENDER_CTL_MSG_NEXT:I = 0x109

.field public static final MEDIA_RENDER_CTL_MSG_PAUSE:I = 0x103

.field public static final MEDIA_RENDER_CTL_MSG_PLAY:I = 0x102

.field public static final MEDIA_RENDER_CTL_MSG_PRE:I = 0x108

.field public static final MEDIA_RENDER_CTL_MSG_SEEK:I = 0x104

.field public static final MEDIA_RENDER_CTL_MSG_SETMUTE:I = 0x106

.field public static final MEDIA_RENDER_CTL_MSG_SETPLAYMODE:I = 0x107

.field public static final MEDIA_RENDER_CTL_MSG_SETVOLUME:I = 0x105

.field public static final MEDIA_RENDER_CTL_MSG_SET_AV_URL:I = 0x100

.field public static final MEDIA_RENDER_CTL_MSG_STOP:I = 0x101

.field public static final MEDIA_RENDER_TOCONTRPOINT_SET_DEVICE_DISCOVERYSTATE:I = 0x103

.field public static final MEDIA_RENDER_TOCONTRPOINT_SET_MEDIA_DURATION:I = 0x100

.field public static final MEDIA_RENDER_TOCONTRPOINT_SET_MEDIA_PLAYINGSTATE:I = 0x102

.field public static final MEDIA_RENDER_TOCONTRPOINT_SET_MEDIA_POSITION:I = 0x101

.field public static final MEDIA_SEEK_TIME_TYPE_REL_TIME:Ljava/lang/String; = "REL_TIME"

.field public static final MEDIA_SEEK_TIME_TYPE_TRACK_NR:Ljava/lang/String; = "TRACK_NR"

.field public static final RENDERER_TOCONTRPOINT_CMD_INTENT_NAME:Ljava/lang/String; = "com.pngcui.platinum.tocontrolpointer.cmd.intent"

.field private static final log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

.field private static mListener:Lcom/phicomm/speaker/player/dlna/jni/PlatinumReflection$ActionReflectionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/util/LogFactory;->createLog()Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/dlna/jni/PlatinumReflection;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static onActionReflection(ILjava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .param p0, "cmd"    # I
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v2, Lcom/phicomm/speaker/player/dlna/jni/PlatinumReflection;->mListener:Lcom/phicomm/speaker/player/dlna/jni/PlatinumReflection$ActionReflectionListener;

    if-eqz v2, :cond_0

    .line 71
    sget-object v2, Lcom/phicomm/speaker/player/dlna/jni/PlatinumReflection;->mListener:Lcom/phicomm/speaker/player/dlna/jni/PlatinumReflection$ActionReflectionListener;

    invoke-interface {v2, p0, p1, p2}, Lcom/phicomm/speaker/player/dlna/jni/PlatinumReflection$ActionReflectionListener;->onActionInvoke(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 74
    :try_start_0
    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 80
    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 75
    .restart local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 80
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setActionInvokeListener(Lcom/phicomm/speaker/player/dlna/jni/PlatinumReflection$ActionReflectionListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/phicomm/speaker/player/dlna/jni/PlatinumReflection$ActionReflectionListener;

    .prologue
    .line 84
    sput-object p0, Lcom/phicomm/speaker/player/dlna/jni/PlatinumReflection;->mListener:Lcom/phicomm/speaker/player/dlna/jni/PlatinumReflection$ActionReflectionListener;

    .line 85
    return-void
.end method
