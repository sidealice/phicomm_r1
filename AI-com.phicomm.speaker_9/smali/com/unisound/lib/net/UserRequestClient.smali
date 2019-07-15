.class public Lcom/unisound/lib/net/UserRequestClient;
.super Ljava/lang/Object;
.source "UserRequestClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/net/UserRequestClient$ClientInstance;
    }
.end annotation


# static fields
.field private static AUDIO_CATEGORY_LIST:Ljava/lang/String; = null

.field private static AUDIO_CHANGE_PLAY_STATE:Ljava/lang/String; = null

.field private static AUDIO_COLLECT_LIST:Ljava/lang/String; = null

.field private static AUDIO_GET_CURRENT_LIST:Ljava/lang/String; = null

.field private static AUDIO_GET_STATUS:Ljava/lang/String; = null

.field private static AUDIO_HOT_CATEGORY_INFO:Ljava/lang/String; = null

.field private static AUDIO_SECOND_LIST:Ljava/lang/String; = null

.field private static AUDIO_THIRD_LIST:Ljava/lang/String; = null

.field public static BASE_URL:Ljava/lang/String; = "http://aios-home.hivoice.cn:19999/"

.field private static CHANGE_PLAY_STATE_URL:Ljava/lang/String; = null

.field private static CHAT_LOG_ADDRESS:Ljava/lang/String; = null

.field private static COLLECT_ADD_MUSIC_URL:Ljava/lang/String; = null

.field private static COLLECT_DEL_MUSIC_URL:Ljava/lang/String; = null

.field private static DEVICE_APP_SERVICE:Ljava/lang/String; = null

.field private static DEVICE_WAKE_UP_WORD_SCORE:Ljava/lang/String; = null

.field private static GET_ACCESSTOKEN:Ljava/lang/String; = null

.field private static GET_DEVICE_BIND_URL:Ljava/lang/String; = null

.field private static GET_DEVICE_ONLINE_STATE:Ljava/lang/String; = null

.field private static GET_USERINFO_URL:Ljava/lang/String; = null

.field private static LOGIN_OUT:Ljava/lang/String; = null

.field public static LOGIN_THIRD_PARTY:Ljava/lang/String; = "https://tp-login.hivoice.cn/rest/v1/third_party/login"

.field private static MEMO_MANAGER_SERVICE:Ljava/lang/String; = null

.field private static MUSIC_COLLECT_LIST_URL:Ljava/lang/String; = null

.field private static MUSIC_DEL_COLLECT_MUSIC:Ljava/lang/String; = null

.field private static MUSIC_GET_CURRENT_LIST:Ljava/lang/String; = null

.field private static MUSIC_GET_HOT_MUSIC_LIST:Ljava/lang/String; = null

.field private static MUSIC_GET_HOT_SINGER_LIST:Ljava/lang/String; = null

.field private static MUSIC_GET_HOT_SINGER_MUSIC_LIST:Ljava/lang/String; = null

.field private static MUSIC_PLAY_INFO_URL:Ljava/lang/String; = null

.field private static NOTE_MANAGER_ADDRESS:Ljava/lang/String; = null

.field private static REPORT_USER_INFO:Ljava/lang/String; = null

.field private static SERVICE_SELF_DEFINE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "UserRequestClient"

.field private static URL_DEVICES_BIND_DEVICES:Ljava/lang/String; = null

.field private static URL_WIFI_CHANGE_WIFI:Ljava/lang/String; = null

.field public static USER_CENTER_URL:Ljava/lang/String; = "http://uc.hivoice.cn/rest/v2/"

.field public static WAKE_UP_WORD_URL:Ljava/lang/String; = "http://wakeupfilter.hivoice.cn/"

.field private static modifyNickName:Ljava/lang/String;


# instance fields
.field private httpUtil:Lcom/unisound/lib/net/HttpRequestUtil;

.field private isMusic:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->USER_CENTER_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "token/get_access_token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->GET_ACCESSTOKEN:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->USER_CENTER_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "user/logout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->LOGIN_OUT:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bind"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->URL_DEVICES_BIND_DEVICES:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "changeWifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->URL_WIFI_CHANGE_WIFI:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "uploadUserInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->REPORT_USER_INFO:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getUserInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->GET_USERINFO_URL:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "modifyDeviceName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->modifyNickName:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "music/getStatus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->MUSIC_PLAY_INFO_URL:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onlineInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->GET_DEVICE_ONLINE_STATE:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getUserDevices"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->GET_DEVICE_BIND_URL:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "music/addCollectMusic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->COLLECT_ADD_MUSIC_URL:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "music/delCollentMusicById"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->COLLECT_DEL_MUSIC_URL:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "music/getCollectMusicList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->MUSIC_COLLECT_LIST_URL:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "music/changePlayState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->CHANGE_PLAY_STATE_URL:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "synLogService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->CHAT_LOG_ADDRESS:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "noteService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->NOTE_MANAGER_ADDRESS:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "alarmService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->MEMO_MANAGER_SERVICE:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "music/getCurrentList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->MUSIC_GET_CURRENT_LIST:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "music/batchDelCollectMusic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->MUSIC_DEL_COLLECT_MUSIC:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "selfDefinedService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->SERVICE_SELF_DEFINE:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "audio/changeAudioPlayState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->AUDIO_CHANGE_PLAY_STATE:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "audio/getStatus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->AUDIO_GET_STATUS:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "audio/getAudioCurrentList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->AUDIO_GET_CURRENT_LIST:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "audio/getCollectAudioList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->AUDIO_COLLECT_LIST:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "audio/getAudioCategoryList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->AUDIO_CATEGORY_LIST:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "audio/getHotAudioByCategoryId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->AUDIO_HOT_CATEGORY_INFO:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "audio/getAlbumListByCategoryId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->AUDIO_SECOND_LIST:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "audio/getAudioListByAlbumId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->AUDIO_THIRD_LIST:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "music/getHotMusicList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->MUSIC_GET_HOT_MUSIC_LIST:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "music/getHotSingerList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->MUSIC_GET_HOT_SINGER_LIST:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "music/getHotSingerMusicList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->MUSIC_GET_HOT_SINGER_MUSIC_LIST:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "appService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->DEVICE_APP_SERVICE:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->WAKE_UP_WORD_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "wakeupfilter/m/v1/f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient;->DEVICE_WAKE_UP_WORD_SCORE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/unisound/lib/net/HttpRequestUtil;

    invoke-direct {v0}, Lcom/unisound/lib/net/HttpRequestUtil;-><init>()V

    iput-object v0, p0, Lcom/unisound/lib/net/UserRequestClient;->httpUtil:Lcom/unisound/lib/net/HttpRequestUtil;

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/unisound/lib/net/UserRequestClient;->isMusic:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/unisound/lib/net/UserRequestClient$1;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/unisound/lib/net/UserRequestClient;-><init>()V

    return-void
.end method

.method public static getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 211
    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/unisound/lib/net/UserRequestClient;
    .locals 1

    .line 202
    sget-object v0, Lcom/unisound/lib/net/UserRequestClient$ClientInstance;->client:Lcom/unisound/lib/net/UserRequestClient;

    return-object v0
.end method

.method private onUdidIsEmpty(Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)Z
    .locals 1

    .line 436
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/16 p1, 0x6a

    const-string v0, "udid is null or empty"

    .line 437
    invoke-interface {p2, p1, v0}, Lcom/unisound/lib/net/HttpCallBack;->onFail(ILjava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private onUdidIsEmpty(Ljava/lang/String;Lcom/unisound/lib/net/HttpGetCallBack;)Z
    .locals 1

    .line 446
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/16 p1, 0x6a

    const-string v0, "udid is null or empty"

    .line 447
    invoke-interface {p2, p1, v0}, Lcom/unisound/lib/net/HttpGetCallBack;->onFail(ILjava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public static setOuter(Z)V
    .locals 1

    if-eqz p0, :cond_0

    const-string p0, "outer"

    .line 149
    invoke-static {p0}, Lcom/unisound/lib/push/mqtt/ParamConfig;->setVersionType(Ljava/lang/String;)V

    const-string p0, "http://msg-pandora.hivoice.cn"

    .line 150
    sput-object p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->WEB_URL:Ljava/lang/String;

    const-string p0, "http://aios-home.hivoice.cn:19999/"

    .line 151
    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    const-string p0, "http://uc.hivoice.cn/rest/v2/"

    .line 152
    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->USER_CENTER_URL:Ljava/lang/String;

    const-string p0, "https://tp-login.hivoice.cn/rest/v1/third_party/login"

    .line 153
    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->LOGIN_THIRD_PARTY:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, "inner"

    .line 155
    invoke-static {p0}, Lcom/unisound/lib/push/mqtt/ParamConfig;->setVersionType(Ljava/lang/String;)V

    const-string p0, "http://106.38.55.5:18080"

    .line 156
    sput-object p0, Lcom/unisound/lib/push/mqtt/MqttTransportChannel;->WEB_URL:Ljava/lang/String;

    const-string p0, "http://106.38.55.5:19999/"

    .line 157
    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    const-string p0, "http://106.38.55.5:10080/rest/v2/"

    .line 158
    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->USER_CENTER_URL:Ljava/lang/String;

    const-string p0, "http://106.38.55.5:8480/rest/v1/third_party/login"

    .line 159
    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->LOGIN_THIRD_PARTY:Ljava/lang/String;

    .line 162
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->WAKE_UP_WORD_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "wakeupfilter/m/v1/f"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->DEVICE_WAKE_UP_WORD_SCORE:Ljava/lang/String;

    .line 163
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->USER_CENTER_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "token/get_access_token"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->GET_ACCESSTOKEN:Ljava/lang/String;

    .line 164
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->USER_CENTER_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "user/logout"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->LOGIN_OUT:Ljava/lang/String;

    .line 165
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "bind"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->URL_DEVICES_BIND_DEVICES:Ljava/lang/String;

    .line 166
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "getUserInfo"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->GET_USERINFO_URL:Ljava/lang/String;

    .line 167
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "modifyDeviceName"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->modifyNickName:Ljava/lang/String;

    .line 168
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onlineInfo"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->GET_DEVICE_ONLINE_STATE:Ljava/lang/String;

    .line 169
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "getUserDevices"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->GET_DEVICE_BIND_URL:Ljava/lang/String;

    .line 170
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "music/addCollectMusic"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->COLLECT_ADD_MUSIC_URL:Ljava/lang/String;

    .line 171
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "music/delCollentMusicById"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->COLLECT_DEL_MUSIC_URL:Ljava/lang/String;

    .line 172
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "music/getCollectMusicList"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->MUSIC_COLLECT_LIST_URL:Ljava/lang/String;

    .line 173
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "music/changePlayState"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->CHANGE_PLAY_STATE_URL:Ljava/lang/String;

    .line 174
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "music/getStatus"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->MUSIC_PLAY_INFO_URL:Ljava/lang/String;

    .line 175
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "synLogService"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->CHAT_LOG_ADDRESS:Ljava/lang/String;

    .line 176
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "noteService"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->NOTE_MANAGER_ADDRESS:Ljava/lang/String;

    .line 177
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "music/getCurrentList"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->MUSIC_GET_CURRENT_LIST:Ljava/lang/String;

    .line 178
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "uploadUserInfo"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->REPORT_USER_INFO:Ljava/lang/String;

    .line 179
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "music/batchDelCollectMusic"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->MUSIC_DEL_COLLECT_MUSIC:Ljava/lang/String;

    .line 180
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "selfDefinedService"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->SERVICE_SELF_DEFINE:Ljava/lang/String;

    .line 181
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "audio/changeAudioPlayState"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->AUDIO_CHANGE_PLAY_STATE:Ljava/lang/String;

    .line 182
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "audio/getAudioStatus"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->AUDIO_GET_STATUS:Ljava/lang/String;

    .line 183
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "audio/getAudioCurrentList"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->AUDIO_GET_CURRENT_LIST:Ljava/lang/String;

    .line 184
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "audio/getCollectAudioList"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->AUDIO_COLLECT_LIST:Ljava/lang/String;

    .line 185
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "audio/getAudioCategoryList"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->AUDIO_CATEGORY_LIST:Ljava/lang/String;

    .line 186
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "audio/getHotAudioByCategoryId"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->AUDIO_HOT_CATEGORY_INFO:Ljava/lang/String;

    .line 187
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "alarmService"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->MEMO_MANAGER_SERVICE:Ljava/lang/String;

    .line 188
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "audio/getAlbumListByCategoryId"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->AUDIO_SECOND_LIST:Ljava/lang/String;

    .line 189
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "audio/getAudioListByAlbumId"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->AUDIO_THIRD_LIST:Ljava/lang/String;

    .line 190
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "music/getHotMusicList"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->MUSIC_GET_HOT_MUSIC_LIST:Ljava/lang/String;

    .line 191
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "music/getHotSingerList"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->MUSIC_GET_HOT_SINGER_LIST:Ljava/lang/String;

    .line 192
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "music/getHotSingerMusicList"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->MUSIC_GET_HOT_SINGER_MUSIC_LIST:Ljava/lang/String;

    .line 193
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "appService"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/net/UserRequestClient;->DEVICE_APP_SERVICE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addCollectMusic(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 1

    .line 667
    invoke-direct {p0, p3, p4}, Lcom/unisound/lib/net/UserRequestClient;->onUdidIsEmpty(Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 668
    :cond_0
    new-instance v0, Lcom/unisound/lib/music/bean/MusicCollectParam;

    invoke-direct {v0}, Lcom/unisound/lib/music/bean/MusicCollectParam;-><init>()V

    .line 669
    invoke-virtual {v0, p3}, Lcom/unisound/lib/music/bean/MusicCollectParam;->setUdid(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v0, p2}, Lcom/unisound/lib/music/bean/MusicCollectParam;->setId(Ljava/lang/String;)V

    const-string p2, "music"

    const-string p3, "addCollectMusic"

    .line 672
    invoke-static {p2, p3, v0}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object p2

    .line 674
    sget-object p3, Lcom/unisound/lib/net/UserRequestClient;->COLLECT_ADD_MUSIC_URL:Ljava/lang/String;

    invoke-static {p1, p3, p2, p4}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public cancelHttpTask(Ljava/lang/String;)V
    .locals 0

    .line 1014
    invoke-static {p1}, Lcom/unisound/lib/net/HttpUtils;->cnacelHttpRequest(Ljava/lang/String;)V

    return-void
.end method

.method public delMusicCollect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 1

    .line 544
    invoke-direct {p0, p3, p4}, Lcom/unisound/lib/net/UserRequestClient;->onUdidIsEmpty(Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 545
    :cond_0
    new-instance v0, Lcom/unisound/lib/music/bean/DelMusicParam;

    invoke-direct {v0}, Lcom/unisound/lib/music/bean/DelMusicParam;-><init>()V

    .line 546
    invoke-virtual {v0, p2}, Lcom/unisound/lib/music/bean/DelMusicParam;->setIds(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v0, p3}, Lcom/unisound/lib/music/bean/DelMusicParam;->setUdid(Ljava/lang/String;)V

    const-string p2, "music"

    const-string p3, "batchDelCollectMusic"

    .line 549
    invoke-static {p2, p3, v0}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object p2

    .line 551
    sget-object p3, Lcom/unisound/lib/net/UserRequestClient;->MUSIC_DEL_COLLECT_MUSIC:Ljava/lang/String;

    invoke-static {p1, p3, p2, p4}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public exitUserCenter(Ljava/lang/Object;Lcom/unisound/lib/usercenter/bean/TokenHeader;)Lcom/unisound/lib/usercenter/bean/UserCResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p2, :cond_0

    .line 817
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "param is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 819
    :cond_0
    invoke-virtual {p2}, Lcom/unisound/lib/usercenter/bean/TokenHeader;->generateSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/unisound/lib/usercenter/bean/TokenHeader;->setSignature(Ljava/lang/String;)V

    .line 820
    invoke-virtual {p2}, Lcom/unisound/lib/usercenter/bean/TokenHeader;->formateParam()Ljava/util/Map;

    move-result-object p2

    .line 821
    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->LOGIN_OUT:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/unisound/lib/net/HttpUtils;->postRequestWithParams(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Lcom/unisound/lib/usercenter/bean/UserCResult;

    move-result-object p1

    return-object p1
.end method

.method public exitUserCenter(Ljava/lang/Object;Lcom/unisound/lib/usercenter/bean/TokenHeader;Lcom/unisound/lib/net/HttpUserCallBack;)V
    .locals 1

    if-nez p2, :cond_0

    .line 833
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "param is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 835
    :cond_0
    invoke-virtual {p2}, Lcom/unisound/lib/usercenter/bean/TokenHeader;->generateSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/unisound/lib/usercenter/bean/TokenHeader;->setSignature(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p2}, Lcom/unisound/lib/usercenter/bean/TokenHeader;->formateParam()Ljava/util/Map;

    move-result-object p2

    .line 837
    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->LOGIN_OUT:Ljava/lang/String;

    invoke-static {p1, v0, p2, p3}, Lcom/unisound/lib/net/HttpUtils;->postRequestWithParams(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Lcom/unisound/lib/net/HttpUserCallBack;)V

    return-void
.end method

.method public flushToken(Ljava/lang/Object;Lcom/unisound/lib/usercenter/bean/TokenHeader;)Lcom/unisound/lib/usercenter/bean/UserCResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 850
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "param is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 852
    :cond_0
    invoke-virtual {p2}, Lcom/unisound/lib/usercenter/bean/TokenHeader;->generateSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/unisound/lib/usercenter/bean/TokenHeader;->setSignature(Ljava/lang/String;)V

    .line 853
    invoke-virtual {p2}, Lcom/unisound/lib/usercenter/bean/TokenHeader;->formateParam()Ljava/util/Map;

    move-result-object p2

    .line 854
    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->GET_ACCESSTOKEN:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/unisound/lib/net/HttpUtils;->postRequestWithParams(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Lcom/unisound/lib/usercenter/bean/UserCResult;

    move-result-object p1

    return-object p1
.end method

.method public flushToken(Ljava/lang/Object;Lcom/unisound/lib/usercenter/bean/TokenHeader;Lcom/unisound/lib/net/HttpUserCallBack;)V
    .locals 1

    if-nez p2, :cond_0

    .line 866
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "param is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 868
    :cond_0
    invoke-virtual {p2}, Lcom/unisound/lib/usercenter/bean/TokenHeader;->generateSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/unisound/lib/usercenter/bean/TokenHeader;->setSignature(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p2}, Lcom/unisound/lib/usercenter/bean/TokenHeader;->formateParam()Ljava/util/Map;

    move-result-object p2

    .line 870
    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->GET_ACCESSTOKEN:Ljava/lang/String;

    invoke-static {p1, v0, p2, p3}, Lcom/unisound/lib/net/HttpUtils;->postRequestWithParams(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Lcom/unisound/lib/net/HttpUserCallBack;)V

    return-void
.end method

.method public getAudioCateGory(Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 3

    .line 360
    new-instance v0, Lcom/unisound/lib/msgcenter/bean/BaseInfo;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/bean/BaseInfo;-><init>()V

    const-string v1, "audio"

    const-string v2, "getAudioCategoryList"

    .line 362
    invoke-static {v1, v2, v0}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object v0

    .line 364
    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->AUDIO_CATEGORY_LIST:Ljava/lang/String;

    invoke-static {p1, v1, v0, p2}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getAudioSecondList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 1

    .line 379
    new-instance v0, Lcom/unisound/lib/audio/bean/AudioCategoryParam;

    invoke-direct {v0}, Lcom/unisound/lib/audio/bean/AudioCategoryParam;-><init>()V

    .line 380
    invoke-virtual {v0, p2}, Lcom/unisound/lib/audio/bean/AudioCategoryParam;->setCategoryId(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0, p4}, Lcom/unisound/lib/audio/bean/AudioCategoryParam;->setPageNo(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0, p5}, Lcom/unisound/lib/audio/bean/AudioCategoryParam;->setPageSize(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0, p3}, Lcom/unisound/lib/audio/bean/AudioCategoryParam;->setType(Ljava/lang/String;)V

    const-string p2, "audio"

    const-string p3, "getAlbumListByCategoryId"

    .line 385
    invoke-static {p2, p3, v0}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object p2

    .line 387
    sget-object p3, Lcom/unisound/lib/net/UserRequestClient;->AUDIO_SECOND_LIST:Ljava/lang/String;

    invoke-static {p1, p3, p2, p6}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getAudioStatus(Ljava/lang/Object;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 3

    .line 421
    invoke-direct {p0, p2, p3}, Lcom/unisound/lib/net/UserRequestClient;->onUdidIsEmpty(Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 422
    :cond_0
    new-instance v0, Lcom/unisound/lib/msgcenter/bean/BaseInfo;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/bean/BaseInfo;-><init>()V

    .line 423
    invoke-virtual {v0, p2}, Lcom/unisound/lib/msgcenter/bean/BaseInfo;->setUdid(Ljava/lang/String;)V

    const-string p2, "audio"

    const-string v1, "getAudioStatus"

    .line 426
    sget-object v2, Lcom/unisound/lib/net/UserRequestClient;->AUDIO_GET_STATUS:Ljava/lang/String;

    .line 428
    invoke-static {p2, v1, v0}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object p2

    .line 429
    invoke-static {p1, v2, p2, p3}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getAudioThirdList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 1

    .line 402
    new-instance v0, Lcom/unisound/lib/audio/bean/AudioCategoryParam;

    invoke-direct {v0}, Lcom/unisound/lib/audio/bean/AudioCategoryParam;-><init>()V

    .line 403
    invoke-virtual {v0, p2}, Lcom/unisound/lib/audio/bean/AudioCategoryParam;->setAlbumId(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0, p4}, Lcom/unisound/lib/audio/bean/AudioCategoryParam;->setPageNo(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0, p5}, Lcom/unisound/lib/audio/bean/AudioCategoryParam;->setPageSize(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v0, p3}, Lcom/unisound/lib/audio/bean/AudioCategoryParam;->setTimeAsc(Ljava/lang/String;)V

    const-string p2, "audio"

    const-string p3, "getAudioListByAlbumId"

    .line 408
    invoke-static {p2, p3, v0}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object p2

    .line 410
    sget-object p3, Lcom/unisound/lib/net/UserRequestClient;->AUDIO_THIRD_LIST:Ljava/lang/String;

    invoke-static {p1, p3, p2, p6}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getBindDeivces(Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 3

    .line 346
    new-instance v0, Lcom/unisound/lib/msgcenter/bean/BaseInfo;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/bean/BaseInfo;-><init>()V

    const-string v1, "deviceSetting"

    const-string v2, "getUserDevices"

    .line 348
    invoke-static {v1, v2, v0}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object v0

    .line 350
    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->GET_DEVICE_BIND_URL:Ljava/lang/String;

    invoke-static {p1, v1, v0, p2}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getChatLog(Ljava/lang/Object;Lcom/unisound/lib/msgcenter/bean/LogReqInfo;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 2

    .line 688
    invoke-virtual {p2}, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->getUdid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/unisound/lib/net/UserRequestClient;->onUdidIsEmpty(Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "logManager"

    const-string v1, "getChatLog"

    .line 690
    invoke-static {v0, v1, p2}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object p2

    .line 692
    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->CHAT_LOG_ADDRESS:Ljava/lang/String;

    invoke-static {p1, v0, p2, p3}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getCollectAudioList(Ljava/lang/Object;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 2

    .line 647
    invoke-direct {p0, p2, p3}, Lcom/unisound/lib/net/UserRequestClient;->onUdidIsEmpty(Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 648
    :cond_0
    new-instance v0, Lcom/unisound/lib/msgcenter/bean/BaseInfo;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/bean/BaseInfo;-><init>()V

    .line 649
    invoke-virtual {v0, p2}, Lcom/unisound/lib/msgcenter/bean/BaseInfo;->setUdid(Ljava/lang/String;)V

    const-string p2, "audio"

    const-string v1, "getCollectAudioList"

    .line 651
    invoke-static {p2, v1, v0}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object p2

    .line 653
    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->AUDIO_COLLECT_LIST:Ljava/lang/String;

    invoke-static {p1, v0, p2, p3}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getCollectMusicList(Ljava/lang/Object;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 3

    .line 628
    invoke-direct {p0, p2, p3}, Lcom/unisound/lib/net/UserRequestClient;->onUdidIsEmpty(Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 629
    :cond_0
    new-instance v0, Lcom/unisound/lib/msgcenter/bean/BaseInfo;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/bean/BaseInfo;-><init>()V

    .line 630
    invoke-virtual {v0, p2}, Lcom/unisound/lib/msgcenter/bean/BaseInfo;->setUdid(Ljava/lang/String;)V

    const-string p2, "music"

    const-string v1, "getCollectMusicList"

    .line 633
    sget-object v2, Lcom/unisound/lib/net/UserRequestClient;->MUSIC_COLLECT_LIST_URL:Ljava/lang/String;

    .line 635
    invoke-static {p2, v1, v0}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object p2

    .line 636
    invoke-static {p1, v2, p2, p3}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getCurrentAudioList(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 1

    .line 587
    invoke-direct {p0, p2, p5}, Lcom/unisound/lib/net/UserRequestClient;->onUdidIsEmpty(Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 588
    :cond_0
    new-instance v0, Lcom/unisound/lib/music/bean/MusicListParam;

    invoke-direct {v0}, Lcom/unisound/lib/music/bean/MusicListParam;-><init>()V

    .line 589
    invoke-virtual {v0, p3}, Lcom/unisound/lib/music/bean/MusicListParam;->setPageNo(Ljava/lang/String;)V

    .line 590
    invoke-virtual {v0, p4}, Lcom/unisound/lib/music/bean/MusicListParam;->setPageSize(Ljava/lang/String;)V

    .line 591
    invoke-virtual {v0, p2}, Lcom/unisound/lib/music/bean/MusicListParam;->setUdid(Ljava/lang/String;)V

    const-string p2, "audio"

    const-string p3, "getAudioCurrentList"

    .line 593
    invoke-static {p2, p3, v0}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object p2

    .line 595
    sget-object p3, Lcom/unisound/lib/net/UserRequestClient;->AUDIO_GET_CURRENT_LIST:Ljava/lang/String;

    invoke-static {p1, p3, p2, p5}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getCurrentMusicList(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 1

    .line 565
    invoke-direct {p0, p2, p5}, Lcom/unisound/lib/net/UserRequestClient;->onUdidIsEmpty(Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 566
    :cond_0
    new-instance v0, Lcom/unisound/lib/music/bean/MusicListParam;

    invoke-direct {v0}, Lcom/unisound/lib/music/bean/MusicListParam;-><init>()V

    .line 567
    invoke-virtual {v0, p3}, Lcom/unisound/lib/music/bean/MusicListParam;->setPageNo(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v0, p4}, Lcom/unisound/lib/music/bean/MusicListParam;->setPageSize(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v0, p2}, Lcom/unisound/lib/music/bean/MusicListParam;->setUdid(Ljava/lang/String;)V

    const-string p2, "music"

    const-string p3, "getCurrentList"

    .line 571
    invoke-static {p2, p3, v0}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object p2

    .line 573
    sget-object p3, Lcom/unisound/lib/net/UserRequestClient;->MUSIC_GET_CURRENT_LIST:Ljava/lang/String;

    invoke-static {p1, p3, p2, p5}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getCurrentNewsList(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 1

    .line 609
    invoke-direct {p0, p2, p5}, Lcom/unisound/lib/net/UserRequestClient;->onUdidIsEmpty(Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 610
    :cond_0
    new-instance v0, Lcom/unisound/lib/music/bean/MusicListParam;

    invoke-direct {v0}, Lcom/unisound/lib/music/bean/MusicListParam;-><init>()V

    .line 611
    invoke-virtual {v0, p3}, Lcom/unisound/lib/music/bean/MusicListParam;->setPageNo(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v0, p4}, Lcom/unisound/lib/music/bean/MusicListParam;->setPageSize(Ljava/lang/String;)V

    .line 613
    invoke-virtual {v0, p2}, Lcom/unisound/lib/music/bean/MusicListParam;->setUdid(Ljava/lang/String;)V

    const-string p2, "news"

    const-string p3, "getCurrentNewsList"

    .line 615
    invoke-static {p2, p3, v0}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object p2

    .line 617
    sget-object p3, Lcom/unisound/lib/net/UserRequestClient;->DEVICE_APP_SERVICE:Ljava/lang/String;

    invoke-static {p1, p3, p2, p5}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getDeviceOnlineState(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 1

    .line 224
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/unisound/lib/device/DeviceOnlineParam;

    invoke-direct {v0}, Lcom/unisound/lib/device/DeviceOnlineParam;-><init>()V

    .line 226
    invoke-virtual {v0, p2}, Lcom/unisound/lib/device/DeviceOnlineParam;->setUdid(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0, p3}, Lcom/unisound/lib/device/DeviceOnlineParam;->setAppkey(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string p2, "deviceSetting"

    const-string p3, "getDeviceOnlineState"

    .line 230
    invoke-static {p2, p3, v0}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object p2

    .line 232
    sget-object p3, Lcom/unisound/lib/net/UserRequestClient;->GET_DEVICE_ONLINE_STATE:Ljava/lang/String;

    invoke-static {p1, p3, p2, p4}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getDeviceWakeupWordScore(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/model/HttpParams;Lcom/unisound/lib/net/HttpGetCallBack;)V
    .locals 0

    .line 973
    invoke-direct {p0, p2, p4}, Lcom/unisound/lib/net/UserRequestClient;->onUdidIsEmpty(Ljava/lang/String;Lcom/unisound/lib/net/HttpGetCallBack;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 975
    :cond_0
    sget-object p2, Lcom/unisound/lib/net/UserRequestClient;->DEVICE_WAKE_UP_WORD_SCORE:Ljava/lang/String;

    invoke-static {p1, p2, p3, p4}, Lcom/unisound/lib/net/HttpUtils;->getRequest(Ljava/lang/Object;Ljava/lang/String;Lcom/lzy/okgo/model/HttpParams;Lcom/unisound/lib/net/HttpGetCallBack;)V

    return-void
.end method

.method public getHotMusicList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 1

    .line 885
    new-instance v0, Lcom/unisound/lib/music/bean/MusicHotParam;

    invoke-direct {v0}, Lcom/unisound/lib/music/bean/MusicHotParam;-><init>()V

    .line 886
    invoke-virtual {v0, p4}, Lcom/unisound/lib/music/bean/MusicHotParam;->setLimit(Ljava/lang/String;)V

    .line 887
    invoke-virtual {v0, p2}, Lcom/unisound/lib/music/bean/MusicHotParam;->setRankType(Ljava/lang/String;)V

    .line 888
    invoke-virtual {v0, p3}, Lcom/unisound/lib/music/bean/MusicHotParam;->setSource(Ljava/lang/String;)V

    .line 889
    invoke-virtual {v0, p5}, Lcom/unisound/lib/music/bean/MusicHotParam;->setAppkey(Ljava/lang/String;)V

    const-string p2, "music"

    const-string p3, "getHotMusicList"

    .line 892
    sget-object p4, Lcom/unisound/lib/net/UserRequestClient;->MUSIC_GET_HOT_MUSIC_LIST:Ljava/lang/String;

    .line 894
    invoke-static {p2, p3, v0}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object p2

    .line 895
    invoke-static {p1, p4, p2, p6}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getHotSingerList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 1

    .line 909
    new-instance v0, Lcom/unisound/lib/music/bean/MusicHotParam;

    invoke-direct {v0}, Lcom/unisound/lib/music/bean/MusicHotParam;-><init>()V

    .line 910
    invoke-virtual {v0, p2}, Lcom/unisound/lib/music/bean/MusicHotParam;->setSource(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v0, p4}, Lcom/unisound/lib/music/bean/MusicHotParam;->setAppkey(Ljava/lang/String;)V

    .line 912
    invoke-virtual {v0, p3}, Lcom/unisound/lib/music/bean/MusicHotParam;->setCount(Ljava/lang/String;)V

    const-string p2, "music"

    const-string p3, "getHotSingerList"

    .line 915
    sget-object p4, Lcom/unisound/lib/net/UserRequestClient;->MUSIC_GET_HOT_SINGER_LIST:Ljava/lang/String;

    .line 917
    invoke-static {p2, p3, v0}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object p2

    .line 918
    invoke-static {p1, p4, p2, p5}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getHotSingerMusicList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 1

    .line 933
    new-instance v0, Lcom/unisound/lib/music/bean/MusicHotParam;

    invoke-direct {v0}, Lcom/unisound/lib/music/bean/MusicHotParam;-><init>()V

    .line 934
    invoke-virtual {v0, p2}, Lcom/unisound/lib/music/bean/MusicHotParam;->setId(Ljava/lang/String;)V

    .line 935
    invoke-virtual {v0, p4}, Lcom/unisound/lib/music/bean/MusicHotParam;->setLimit(Ljava/lang/String;)V

    .line 936
    invoke-virtual {v0, p3}, Lcom/unisound/lib/music/bean/MusicHotParam;->setSource(Ljava/lang/String;)V

    .line 937
    invoke-virtual {v0, p5}, Lcom/unisound/lib/music/bean/MusicHotParam;->setAppkey(Ljava/lang/String;)V

    const-string p2, "music"

    const-string p3, "getHotSingerMusicList"

    .line 940
    sget-object p4, Lcom/unisound/lib/net/UserRequestClient;->MUSIC_GET_HOT_SINGER_MUSIC_LIST:Ljava/lang/String;

    .line 942
    invoke-static {p2, p3, v0}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object p2

    .line 943
    invoke-static {p1, p4, p2, p6}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getMemoData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/time/bean/AlarmReminder;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 1

    .line 748
    invoke-direct {p0, p2, p8}, Lcom/unisound/lib/net/UserRequestClient;->onUdidIsEmpty(Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 749
    :cond_0
    new-instance v0, Lcom/unisound/lib/msgcenter/bean/AlarmControlBean;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/bean/AlarmControlBean;-><init>()V

    .line 750
    invoke-virtual {v0, p2}, Lcom/unisound/lib/msgcenter/bean/AlarmControlBean;->setUdid(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v0, p3}, Lcom/unisound/lib/msgcenter/bean/AlarmControlBean;->setOperate(Ljava/lang/String;)V

    .line 752
    invoke-virtual {v0, p7}, Lcom/unisound/lib/msgcenter/bean/AlarmControlBean;->setInfo(Ljava/lang/Object;)V

    .line 753
    invoke-virtual {v0, p4}, Lcom/unisound/lib/msgcenter/bean/AlarmControlBean;->setType(Ljava/lang/String;)V

    .line 754
    invoke-virtual {v0, p5}, Lcom/unisound/lib/msgcenter/bean/AlarmControlBean;->setPageNo(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v0, p6}, Lcom/unisound/lib/msgcenter/bean/AlarmControlBean;->setPageSize(Ljava/lang/String;)V

    const-string p2, "deviceSetting"

    const-string p3, "setMemo"

    .line 757
    invoke-static {p2, p3, v0}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object p2

    .line 759
    sget-object p3, Lcom/unisound/lib/net/UserRequestClient;->MEMO_MANAGER_SERVICE:Ljava/lang/String;

    invoke-static {p1, p3, p2, p8}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getMusicPlayInfo(Ljava/lang/Object;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 3

    .line 484
    invoke-direct {p0, p2, p3}, Lcom/unisound/lib/net/UserRequestClient;->onUdidIsEmpty(Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 485
    :cond_0
    new-instance v0, Lcom/unisound/lib/msgcenter/bean/BaseInfo;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/bean/BaseInfo;-><init>()V

    .line 486
    invoke-virtual {v0, p2}, Lcom/unisound/lib/msgcenter/bean/BaseInfo;->setUdid(Ljava/lang/String;)V

    const-string p2, "music"

    const-string v1, "getMusicStatus"

    .line 489
    sget-object v2, Lcom/unisound/lib/net/UserRequestClient;->MUSIC_PLAY_INFO_URL:Ljava/lang/String;

    .line 491
    invoke-static {p2, v1, v0}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object p2

    .line 492
    invoke-static {p1, v2, p2, p3}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getNewsPlayingInfo(Ljava/lang/Object;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 3

    .line 503
    invoke-direct {p0, p2, p3}, Lcom/unisound/lib/net/UserRequestClient;->onUdidIsEmpty(Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 504
    :cond_0
    new-instance v0, Lcom/unisound/lib/msgcenter/bean/BaseInfo;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/bean/BaseInfo;-><init>()V

    .line 505
    invoke-virtual {v0, p2}, Lcom/unisound/lib/msgcenter/bean/BaseInfo;->setUdid(Ljava/lang/String;)V

    const-string p2, "news"

    const-string v1, "getNewsStatus"

    .line 508
    sget-object v2, Lcom/unisound/lib/net/UserRequestClient;->DEVICE_APP_SERVICE:Ljava/lang/String;

    .line 510
    invoke-static {p2, v1, v0}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object p2

    .line 511
    invoke-static {p1, v2, p2, p3}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getUserInfo(Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 3

    const-string v0, "userCenter"

    const-string v1, "getUserInfo"

    const/4 v2, 0x0

    .line 242
    invoke-static {v0, v1, v2}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object v0

    .line 244
    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->GET_USERINFO_URL:Ljava/lang/String;

    invoke-static {p1, v1, v0, p2}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public isMusic()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/unisound/lib/net/UserRequestClient;->isMusic:Z

    return v0
.end method

.method public loginUserCenter(Ljava/lang/Object;Lcom/unisound/lib/usercenter/bean/LoginHeader;Lcom/unisound/lib/net/HttpUserCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 791
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "param is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string v0, "thirdParty"

    .line 793
    invoke-virtual {p2}, Lcom/unisound/lib/usercenter/bean/LoginHeader;->getLoginType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 794
    invoke-virtual {p2}, Lcom/unisound/lib/usercenter/bean/LoginHeader;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/unisound/lib/usercenter/bean/LoginHeader;->getThirdPartyId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 797
    :cond_1
    invoke-virtual {p2}, Lcom/unisound/lib/usercenter/bean/LoginHeader;->generateSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/unisound/lib/usercenter/bean/LoginHeader;->setSignature(Ljava/lang/String;)V

    .line 798
    invoke-virtual {p2}, Lcom/unisound/lib/usercenter/bean/LoginHeader;->formateParam()Ljava/util/Map;

    move-result-object p2

    .line 799
    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->LOGIN_THIRD_PARTY:Ljava/lang/String;

    invoke-static {p1, v0, p2, p3}, Lcom/unisound/lib/net/HttpUtils;->postRequestWithParams(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Lcom/unisound/lib/net/HttpUserCallBack;)V

    goto :goto_1

    .line 795
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "thirdPartyUserId is null or thirdPartId is not Set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p1, "phone"

    .line 800
    invoke-virtual {p2}, Lcom/unisound/lib/usercenter/bean/LoginHeader;->getLoginType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 801
    invoke-virtual {p2}, Lcom/unisound/lib/usercenter/bean/LoginHeader;->getUserCell()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 802
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "phone number is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public memoControlCommand(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/time/bean/AlarmReminder;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 1

    .line 722
    invoke-direct {p0, p2, p6}, Lcom/unisound/lib/net/UserRequestClient;->onUdidIsEmpty(Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 723
    :cond_0
    new-instance v0, Lcom/unisound/lib/msgcenter/bean/AlarmControlBean;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/bean/AlarmControlBean;-><init>()V

    .line 724
    invoke-virtual {v0, p2}, Lcom/unisound/lib/msgcenter/bean/AlarmControlBean;->setUdid(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v0, p3}, Lcom/unisound/lib/msgcenter/bean/AlarmControlBean;->setOperate(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v0, p5}, Lcom/unisound/lib/msgcenter/bean/AlarmControlBean;->setInfo(Ljava/lang/Object;)V

    .line 727
    invoke-virtual {v0, p4}, Lcom/unisound/lib/msgcenter/bean/AlarmControlBean;->setType(Ljava/lang/String;)V

    const-string p2, "deviceSetting"

    const-string p3, "setMemo"

    .line 729
    invoke-static {p2, p3, v0}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object p2

    .line 731
    sget-object p3, Lcom/unisound/lib/net/UserRequestClient;->MEMO_MANAGER_SERVICE:Ljava/lang/String;

    invoke-static {p1, p3, p2, p6}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public musicControlCommand(Ljava/lang/Object;Lcom/unisound/lib/msgcenter/bean/MusicControlParam;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 4

    .line 521
    invoke-virtual {p2}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->getUdid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/unisound/lib/net/UserRequestClient;->onUdidIsEmpty(Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "music"

    const-string v1, "changePlayState"

    .line 524
    sget-object v2, Lcom/unisound/lib/net/UserRequestClient;->CHANGE_PLAY_STATE_URL:Ljava/lang/String;

    .line 525
    invoke-virtual {p0}, Lcom/unisound/lib/net/UserRequestClient;->isMusic()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "audio"

    const-string v1, "changeAudioPlayState"

    .line 528
    sget-object v2, Lcom/unisound/lib/net/UserRequestClient;->AUDIO_CHANGE_PLAY_STATE:Ljava/lang/String;

    .line 531
    :cond_1
    invoke-static {v0, v1, p2}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object p2

    .line 532
    invoke-static {p1, v2, p2, p3}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public noteControlCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/time/bean/NoteInfo;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 1

    .line 306
    new-instance v0, Lcom/unisound/lib/time/bean/ControlParam;

    invoke-direct {v0}, Lcom/unisound/lib/time/bean/ControlParam;-><init>()V

    .line 307
    invoke-virtual {v0, p4}, Lcom/unisound/lib/time/bean/ControlParam;->setInfo(Ljava/lang/Object;)V

    .line 308
    invoke-virtual {v0, p2}, Lcom/unisound/lib/time/bean/ControlParam;->setAppkey(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0, p5}, Lcom/unisound/lib/time/bean/ControlParam;->setPageNo(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0, p6}, Lcom/unisound/lib/time/bean/ControlParam;->setPageSize(Ljava/lang/String;)V

    const-string p2, "noteManager"

    .line 312
    invoke-static {p2, p3, v0}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object p2

    .line 314
    sget-object p3, Lcom/unisound/lib/net/UserRequestClient;->NOTE_MANAGER_ADDRESS:Ljava/lang/String;

    invoke-static {p1, p3, p2, p7}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public queryFAQSetting(Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 3

    const-string v0, "userSetting"

    const-string v1, "getFAQSetting"

    .line 1003
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1004
    invoke-static {v0, v1, v2}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object v0

    .line 1006
    sget-object v1, Lcom/unisound/lib/net/UserRequestClient;->DEVICE_APP_SERVICE:Ljava/lang/String;

    invoke-static {p1, v1, v0, p2}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public reportUserInfo(Ljava/lang/Object;Ljava/util/HashMap;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/unisound/lib/net/HttpCallBack;",
            ")V"
        }
    .end annotation

    const-string v0, "userCenter"

    const-string v1, "reportUserInfo"

    .line 256
    invoke-static {v0, v1, p2}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object p2

    .line 258
    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->REPORT_USER_INFO:Ljava/lang/String;

    invoke-static {p1, v0, p2, p3}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public setDeviceActive(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 2

    .line 954
    invoke-direct {p0, p2, p3}, Lcom/unisound/lib/net/UserRequestClient;->onUdidIsEmpty(Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 955
    :cond_0
    new-instance v0, Lcom/unisound/lib/msgcenter/bean/BaseInfo;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/bean/BaseInfo;-><init>()V

    .line 956
    invoke-virtual {v0, p2}, Lcom/unisound/lib/msgcenter/bean/BaseInfo;->setUdid(Ljava/lang/String;)V

    const-string p2, "deviceSetting"

    const-string v1, "selectActiveDevice"

    .line 958
    invoke-static {p2, v1, v0}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object p2

    .line 960
    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->DEVICE_APP_SERVICE:Ljava/lang/String;

    invoke-static {p1, v0, p2, p3}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public setMusic(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/unisound/lib/net/UserRequestClient;->isMusic:Z

    return-void
.end method

.method public setSelfDefineContract(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/unisound/lib/net/HttpCallBack;",
            ")V"
        }
    .end annotation

    .line 772
    invoke-direct {p0, p1, p4}, Lcom/unisound/lib/net/UserRequestClient;->onUdidIsEmpty(Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "selfDefinedManager"

    const-string v1, "selfDefinedService"

    const-string v2, "userDefined"

    .line 774
    invoke-static {p1, v0, v1, v2, p3}, Lcom/unisound/lib/self/SelfRequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/self/SelfRequestHeader;

    move-result-object p1

    .line 777
    sget-object p3, Lcom/unisound/lib/net/UserRequestClient;->SERVICE_SELF_DEFINE:Ljava/lang/String;

    invoke-static {p2, p3, p1, p4}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public startBindDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/unisound/lib/net/HttpCallBack;)V
    .locals 3

    .line 273
    invoke-direct {p0, p2, p6}, Lcom/unisound/lib/net/UserRequestClient;->onUdidIsEmpty(Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 274
    :cond_0
    new-instance v0, Lcom/unisound/lib/usercenter/bean/UserBindInfo;

    invoke-direct {v0}, Lcom/unisound/lib/usercenter/bean/UserBindInfo;-><init>()V

    const-string v1, "bind"

    .line 275
    invoke-virtual {v0, v1}, Lcom/unisound/lib/usercenter/bean/UserBindInfo;->setCommand(Ljava/lang/String;)V

    .line 276
    new-instance v1, Lcom/unisound/lib/usercenter/bean/UserBindInfo$EffectiveToken;

    invoke-direct {v1}, Lcom/unisound/lib/usercenter/bean/UserBindInfo$EffectiveToken;-><init>()V

    .line 277
    invoke-static {}, Lcom/unisound/lib/utils/UserSpUtil;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unisound/lib/usercenter/bean/UserBindInfo$EffectiveToken;->setClientId(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v1, p1}, Lcom/unisound/lib/usercenter/bean/UserBindInfo$EffectiveToken;->setToken(Ljava/lang/String;)V

    .line 279
    new-instance p1, Lcom/unisound/lib/devices/callback/bean/DevicePromise;

    invoke-direct {p1}, Lcom/unisound/lib/devices/callback/bean/DevicePromise;-><init>()V

    .line 280
    invoke-virtual {p1, p3}, Lcom/unisound/lib/devices/callback/bean/DevicePromise;->setServiceType(Ljava/lang/String;)V

    .line 281
    new-instance p3, Lcom/unisound/lib/bind/DeviceProfileInfo;

    invoke-direct {p3}, Lcom/unisound/lib/bind/DeviceProfileInfo;-><init>()V

    .line 282
    invoke-virtual {p3, p2}, Lcom/unisound/lib/bind/DeviceProfileInfo;->setUdid(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p3, p5}, Lcom/unisound/lib/bind/DeviceProfileInfo;->setActive(Z)V

    .line 284
    invoke-static {}, Lcom/unisound/lib/utils/UserSpUtil;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/unisound/lib/bind/DeviceProfileInfo;->setDeviceId(Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lcom/unisound/lib/utils/UserSpUtil;->getDeviceAppKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/unisound/lib/bind/DeviceProfileInfo;->setAppKey(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p3, p4}, Lcom/unisound/lib/bind/DeviceProfileInfo;->setPhoneNumber(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0, p3}, Lcom/unisound/lib/usercenter/bean/UserBindInfo;->setDeviceProfile(Lcom/unisound/lib/bind/BaseDeviceProfileInfo;)V

    .line 288
    invoke-virtual {v0, v1}, Lcom/unisound/lib/usercenter/bean/UserBindInfo;->setTcl(Lcom/unisound/lib/usercenter/bean/UserBindInfo$EffectiveToken;)V

    .line 289
    invoke-virtual {v0, p1}, Lcom/unisound/lib/usercenter/bean/UserBindInfo;->setPromise(Lcom/unisound/lib/devices/callback/bean/DevicePromise;)V

    const-string p1, "UserRequestClient"

    .line 290
    sget-object p2, Lcom/unisound/lib/net/UserRequestClient;->URL_DEVICES_BIND_DEVICES:Ljava/lang/String;

    invoke-static {p1, p2, v0, p6}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public startUnBindUser(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 2

    .line 327
    new-instance v0, Lcom/unisound/lib/usercenter/bean/UserBindInfo;

    invoke-direct {v0}, Lcom/unisound/lib/usercenter/bean/UserBindInfo;-><init>()V

    const-string v1, "unbind"

    .line 328
    invoke-virtual {v0, v1}, Lcom/unisound/lib/usercenter/bean/UserBindInfo;->setCommand(Ljava/lang/String;)V

    .line 329
    new-instance v1, Lcom/unisound/lib/usercenter/bean/UserBindInfo$EffectiveToken;

    invoke-direct {v1}, Lcom/unisound/lib/usercenter/bean/UserBindInfo$EffectiveToken;-><init>()V

    .line 330
    invoke-virtual {v1, p3}, Lcom/unisound/lib/usercenter/bean/UserBindInfo$EffectiveToken;->setClientId(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v1, p2}, Lcom/unisound/lib/usercenter/bean/UserBindInfo$EffectiveToken;->setToken(Ljava/lang/String;)V

    .line 332
    new-instance p2, Lcom/unisound/lib/bind/UnBindDeviceProfileInfo;

    invoke-direct {p2}, Lcom/unisound/lib/bind/UnBindDeviceProfileInfo;-><init>()V

    .line 333
    invoke-virtual {p2, p4}, Lcom/unisound/lib/bind/UnBindDeviceProfileInfo;->setUdid(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v0, p2}, Lcom/unisound/lib/usercenter/bean/UserBindInfo;->setDeviceProfile(Lcom/unisound/lib/bind/BaseDeviceProfileInfo;)V

    .line 335
    invoke-virtual {v0, v1}, Lcom/unisound/lib/usercenter/bean/UserBindInfo;->setTcl(Lcom/unisound/lib/usercenter/bean/UserBindInfo$EffectiveToken;)V

    .line 336
    sget-object p2, Lcom/unisound/lib/net/UserRequestClient;->URL_DEVICES_BIND_DEVICES:Ljava/lang/String;

    invoke-static {p1, p2, v0, p5}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public switchFAQSetting(Ljava/lang/String;ZLcom/unisound/lib/net/HttpCallBack;)V
    .locals 2

    .line 987
    new-instance v0, Lcom/google/gson/k;

    invoke-direct {v0}, Lcom/google/gson/k;-><init>()V

    const-string v1, "isOpen"

    .line 988
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/k;->a(Ljava/lang/String;Ljava/lang/Number;)V

    const-string p2, "userSetting"

    const-string v1, "openFAQ"

    .line 991
    invoke-static {p2, v1, v0}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object p2

    .line 993
    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->DEVICE_APP_SERVICE:Ljava/lang/String;

    invoke-static {p1, v0, p2, p3}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public switchPlayList(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;",
            "Lcom/unisound/lib/net/HttpCallBack;",
            ")V"
        }
    .end annotation

    .line 463
    invoke-direct {p0, p2, p5}, Lcom/unisound/lib/net/UserRequestClient;->onUdidIsEmpty(Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 464
    :cond_0
    new-instance v0, Lcom/unisound/lib/music/bean/PlayMusicListBody;

    invoke-direct {v0}, Lcom/unisound/lib/music/bean/PlayMusicListBody;-><init>()V

    .line 465
    invoke-virtual {v0, p3}, Lcom/unisound/lib/music/bean/PlayMusicListBody;->setAppKey(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v0, p2}, Lcom/unisound/lib/music/bean/PlayMusicListBody;->setUdid(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v0, p4}, Lcom/unisound/lib/music/bean/PlayMusicListBody;->setMusicList(Ljava/util/List;)V

    const-string p2, "music"

    const-string p3, "appAddMusicList"

    .line 470
    sget-object p4, Lcom/unisound/lib/net/UserRequestClient;->DEVICE_APP_SERVICE:Ljava/lang/String;

    .line 472
    invoke-static {p2, p3, v0}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object p2

    .line 473
    invoke-static {p1, p4, p2, p5}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public updateChatLog(Ljava/lang/Object;Lcom/unisound/lib/msgcenter/bean/LogReqInfo;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 2

    .line 703
    invoke-virtual {p2}, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->getUdid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/unisound/lib/net/UserRequestClient;->onUdidIsEmpty(Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "logManager"

    const-string v1, "updateChatLog"

    .line 705
    invoke-static {v0, v1, p2}, Lcom/unisound/lib/usercenter/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/usercenter/bussinessbean/BsRequestHeader;

    move-result-object p2

    .line 707
    sget-object v0, Lcom/unisound/lib/net/UserRequestClient;->CHAT_LOG_ADDRESS:Ljava/lang/String;

    invoke-static {p1, v0, p2, p3}, Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method
