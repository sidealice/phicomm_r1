.class public Lcom/phicomm/speaker/player/util/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static final CMD_BAIDU_PLAY_UDID:I = 0x11

.field public static final CMD_BLUETOOTH_RESTART_THIRDPARTY_STREAM:I = 0x3

.field public static final CMD_BLUETOOTH_START_THIRDPARTY_STREAM:I = 0x1

.field public static final CMD_BLUETOOTH_STOP_THIRDPARTY_STREAM:I = 0x2

.field public static final CMD_GET_NEW_PAGE:I = 0x13

.field public static final CMD_GET_PLAY_MODE:I = 0xd

.field public static final CMD_GET_PLAY_STATES:I = 0x10

.field public static final CMD_GET_SONG_NAME:I = 0x8

.field public static final CMD_HIVOICE_GET_STATE:I = 0x4

.field public static final CMD_MQTT_NOTIFY:I = 0x0

.field public static final CMD_PAUSE:I = 0x2

.field public static final CMD_PLAY:I = 0x1

.field public static final CMD_PLAY_INDEX:I = 0xb

.field public static final CMD_PLAY_LIST_INDEX:I = 0xf

.field public static final CMD_PLAY_MODE:I = 0x7

.field public static final CMD_PLAY_NEXT:I = 0x6

.field public static final CMD_PLAY_PRE:I = 0x5

.field public static final CMD_START:I = 0x3

.field public static final CMD_START_FADEIN:I = 0xc

.field public static final CMD_STOP:I = 0x4

.field public static final CMD_STOP_FADEOUT:I = 0xa

.field public static final DEFAULT_FADEIN_LENGH:I = 0x3e8

.field public static final DEFAULT_FADEOUT_LENGH:I = 0x7d0

.field public static final DEVICE_STATE_NETCONFIG:I = 0x2

.field public static final DEVICE_STATE_NET_PLAYING:I = 0x1

.field public static final DEVICE_STATE_READY:I = 0x0

.field public static final DEVICE_STATE_THIRDPARTY_STREAM_PLAYING:I = 0x3

.field public static final JSON_KEY_NAME_ASRRESULT:Ljava/lang/String; = "asrResult"

.field public static final JSON_KEY_NAME_INDEX:Ljava/lang/String; = "index"

.field public static final JSON_KEY_NAME_LIST:Ljava/lang/String; = "itemList"

.field public static final JSON_KEY_NAME_MQTT_BODY:Ljava/lang/String; = "body"

.field public static final JSON_KEY_NAME_MQTT_MUSIC_REPORT_INTERVAL:Ljava/lang/String; = "interval"

.field public static final JSON_KEY_NAME_MQTT_TOPIC:Ljava/lang/String; = "topic"

.field public static final JSON_KEY_NAME_PLAYINDEX:Ljava/lang/String; = "playIndex"

.field public static final JSON_KEY_NAME_PLAYLIST:Ljava/lang/String; = "playList"

.field public static final JSON_KEY_NAME_PLAYMODE:Ljava/lang/String; = "playMode"

.field public static final JSON_KEY_NAME_PLAYSTATE:Ljava/lang/String; = "playState"

.field public static final JSON_KEY_NAME_SONG_TITLE:Ljava/lang/String; = "title"

.field public static final JSON_KEY_NAME_SONG_URL:Ljava/lang/String; = "url"

.field public static final LIGTH_EFFECT_EXTERNAL_CONNECT_PLAYING:I = 0xff

.field public static final LIGTH_EFFECT_PLAYING_MUSIC:I = 0x207

.field public static final LIGTH_EFFECT_WAITING_EXTERNAL_CONNECT:I = 0xcc

.field public static final MAX_HISTORY_SIZE:I = 0x3e8

.field public static final MEDIA_BUFFERING_END:I = 0x7

.field public static final MEDIA_BUFFERING_START:I = 0x6

.field public static final MEDIA_PAUSED:I = 0x2

.field public static final MEDIA_PLAYING:I = 0x1

.field public static final MEDIA_PLAYINGSONG_COMPLETED:I = 0x5

.field public static final MEDIA_PLAY_ERROR:I = 0x4

.field public static final MEDIA_PREPARING:I = 0x3

.field public static final MEDIA_STOPPED:I = 0x0

.field public static final MHD_MUSIC_APIKEY:Ljava/lang/String; = "aLZVIOQABfQRQ"

.field public static final MHD_MUSIC_UDID:Ljava/lang/String; = "MHD_MUSIC_UDID"

.field public static final ONE_WEEK_MILISECOND:J = 0x240c8400L

.field public static final PLAYER_MISIC_LIGHT_CHROMA:I = 0x42

.field public static final PLAYER_MISIC_LIGHT_LUMA:I = 0x41

.field public static final PLAYER_MISIC_LIGHT_MODE:I = 0x43

.field public static final PLAYER_MISIC_LIGHT_ONOFF:I = 0x40

.field public static final PLAYER_SORT_AIRPLAY:I = 0x3

.field public static final PLAYER_SORT_BLE:I = 0x4

.field public static final PLAYER_SORT_DLNA:I = 0x2

.field public static final PLAYER_SORT_NET:I = 0x1

.field public static final PLAYER_SORT_NULL:I = 0x0

.field public static final PLAY_INDEX_ERROR:I = -0x1

.field public static final PLAY_MODE_DEFAULT:I = 0x2

.field public static final PLAY_MODE_LIST_CYCLE:I = 0x2

.field public static final PLAY_MODE_LIST_SHUFFLE:I = 0x1

.field public static final PLAY_MODE_SINGLE_CYCLE:I = 0x3

.field public static final REPORT_MUSIC_AMP:I = 0x20

.field public static final REPORT_PLAYING_SONG:I = 0x9

.field public static final REPORT_PLAY_FAILED_SONG:I = 0xe

.field public static final REPORT_PLAY_STATE:I = 0x12

.field public static final SP_NAME:Ljava/lang/String; = "com.phicomm.speaker.player"

.field public static final SP_NAME_MUSIC_POSTION_REPORT_INTERVAL:Ljava/lang/String; = "MUSIC_POSTION_REPORT_INTERVAL"

.field public static final VERSION_CODE:I = 0x186b9

.field public static final VERSION_NAME:Ljava/lang/String; = "0.2.5"

.field public static final VOICE_BAND_GET_PLAY_STATUS:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MediaStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "mediaState"    # I

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 88
    const-string v0, "MEDIA_STOPPED"

    .line 104
    :goto_0
    return-object v0

    .line 89
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 90
    const-string v0, "MEDIA_PLAYING"

    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 92
    const-string v0, "MEDIA_PAUSED"

    goto :goto_0

    .line 93
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 94
    const-string v0, "MEDIA_PREPARING"

    goto :goto_0

    .line 95
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 96
    const-string v0, "MEDIA_PLAY_ERROR"

    goto :goto_0

    .line 97
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 98
    const-string v0, "MEDIA_PLAYINGSONG_COMPLETED"

    goto :goto_0

    .line 99
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 100
    const-string v0, "MEDIA_BUFFERING_START"

    goto :goto_0

    .line 101
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 102
    const-string v0, "MEDIA_BUFFERING_END"

    goto :goto_0

    .line 104
    :cond_7
    const-string v0, "ERROR_MEDIASTATE"

    goto :goto_0
.end method
