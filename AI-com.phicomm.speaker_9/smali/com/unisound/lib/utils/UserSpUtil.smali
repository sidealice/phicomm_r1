.class public final Lcom/unisound/lib/utils/UserSpUtil;
.super Ljava/lang/Object;
.source "UserSpUtil.java"


# static fields
.field public static final ACCESS_TOKEN_VALID:Ljava/lang/String; = "accessTokenValid"

.field private static final APP_DEBUG_MODE:Ljava/lang/String; = "debugMode"

.field public static final CLIENT_ID:Ljava/lang/String; = "clientId"

.field private static final DEVICE_APP_KEY:Ljava/lang/String; = "device_appkey"

.field public static final DEVICE_ID:Ljava/lang/String; = "deviceId"

.field public static final DEVICE_TDID:Ljava/lang/String; = "device_tdid"

.field public static final DEVICE_UDID:Ljava/lang/String; = "device_udid"

.field public static final FLUSH_TOKEN:Ljava/lang/String; = "flushToken"

.field private static final HAVE_DEVICE_BIND:Ljava/lang/String; = "have_device_bind"

.field private static final SELF_UDID:Ljava/lang/String; = "self_udid"

.field private static final SP_FILE_NAME:Ljava/lang/String; = "sp_file_name"

.field public static final USER_ACCOUNT:Ljava/lang/String; = "user_account"

.field private static final USER_DEVICE_NICKNAME:Ljava/lang/String; = "user_device_nickname"

.field private static spHelper:Lcom/unisound/lib/utils/SharedPreferenceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    invoke-static {}, Lcom/unisound/lib/utils/GlobalConstant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sp_file_name"

    .line 51
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/SharedPreferenceHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/unisound/lib/utils/SharedPreferenceHelper;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/utils/UserSpUtil;->spHelper:Lcom/unisound/lib/utils/SharedPreferenceHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccessToken()Ljava/lang/String;
    .locals 3

    .line 253
    sget-object v0, Lcom/unisound/lib/utils/UserSpUtil;->spHelper:Lcom/unisound/lib/utils/SharedPreferenceHelper;

    const-string v1, "ACCESSTOKEN"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/unisound/lib/utils/SharedPreferenceHelper;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAccessTokenValidTime()J
    .locals 2

    .line 163
    sget-object v0, Lcom/unisound/lib/utils/UserSpUtil;->spHelper:Lcom/unisound/lib/utils/SharedPreferenceHelper;

    const-string v1, "accessTokenValid"

    invoke-virtual {v0, v1}, Lcom/unisound/lib/utils/SharedPreferenceHelper;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getClientId()Ljava/lang/String;
    .locals 3

    .line 208
    sget-object v0, Lcom/unisound/lib/utils/UserSpUtil;->spHelper:Lcom/unisound/lib/utils/SharedPreferenceHelper;

    const-string v1, "clientId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/unisound/lib/utils/SharedPreferenceHelper;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceAppKey()Ljava/lang/String;
    .locals 3

    .line 190
    sget-object v0, Lcom/unisound/lib/utils/UserSpUtil;->spHelper:Lcom/unisound/lib/utils/SharedPreferenceHelper;

    const-string v1, "device_appkey"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/unisound/lib/utils/SharedPreferenceHelper;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 3

    .line 126
    sget-object v0, Lcom/unisound/lib/utils/UserSpUtil;->spHelper:Lcom/unisound/lib/utils/SharedPreferenceHelper;

    const-string v1, "deviceId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/unisound/lib/utils/SharedPreferenceHelper;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceUdid()Ljava/lang/String;
    .locals 3

    .line 108
    sget-object v0, Lcom/unisound/lib/utils/UserSpUtil;->spHelper:Lcom/unisound/lib/utils/SharedPreferenceHelper;

    const-string v1, "device_udid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/unisound/lib/utils/SharedPreferenceHelper;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFlushToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 154
    sget-object p0, Lcom/unisound/lib/utils/UserSpUtil;->spHelper:Lcom/unisound/lib/utils/SharedPreferenceHelper;

    const-string v0, "flushToken"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/unisound/lib/utils/SharedPreferenceHelper;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSelfUdid()Ljava/lang/String;
    .locals 3

    .line 72
    sget-object v0, Lcom/unisound/lib/utils/UserSpUtil;->spHelper:Lcom/unisound/lib/utils/SharedPreferenceHelper;

    const-string v1, "self_udid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/unisound/lib/utils/SharedPreferenceHelper;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserAccount()Ljava/lang/String;
    .locals 3

    .line 90
    sget-object v0, Lcom/unisound/lib/utils/UserSpUtil;->spHelper:Lcom/unisound/lib/utils/SharedPreferenceHelper;

    const-string v1, "user_account"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/unisound/lib/utils/SharedPreferenceHelper;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isHaveDeviceBind()Z
    .locals 3

    .line 226
    sget-object v0, Lcom/unisound/lib/utils/UserSpUtil;->spHelper:Lcom/unisound/lib/utils/SharedPreferenceHelper;

    const-string v1, "have_device_bind"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/unisound/lib/utils/SharedPreferenceHelper;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setAccessToken(Ljava/lang/String;)V
    .locals 2

    .line 244
    sget-object v0, Lcom/unisound/lib/utils/UserSpUtil;->spHelper:Lcom/unisound/lib/utils/SharedPreferenceHelper;

    const-string v1, "ACCESSTOKEN"

    invoke-virtual {v0, v1, p0}, Lcom/unisound/lib/utils/SharedPreferenceHelper;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setAccessTokenValidTime(J)V
    .locals 2

    .line 172
    sget-object v0, Lcom/unisound/lib/utils/UserSpUtil;->spHelper:Lcom/unisound/lib/utils/SharedPreferenceHelper;

    const-string v1, "accessTokenValid"

    invoke-virtual {v0, v1, p0, p1}, Lcom/unisound/lib/utils/SharedPreferenceHelper;->saveLongValue(Ljava/lang/String;J)Z

    return-void
.end method

.method public static setClientId(Ljava/lang/String;)V
    .locals 2

    .line 217
    sget-object v0, Lcom/unisound/lib/utils/UserSpUtil;->spHelper:Lcom/unisound/lib/utils/SharedPreferenceHelper;

    const-string v1, "clientId"

    invoke-virtual {v0, v1, p0}, Lcom/unisound/lib/utils/SharedPreferenceHelper;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setDeviceAppKey(Ljava/lang/String;)V
    .locals 2

    .line 181
    sget-object v0, Lcom/unisound/lib/utils/UserSpUtil;->spHelper:Lcom/unisound/lib/utils/SharedPreferenceHelper;

    const-string v1, "device_appkey"

    invoke-virtual {v0, v1, p0}, Lcom/unisound/lib/utils/SharedPreferenceHelper;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setDeviceBind(Z)V
    .locals 2

    .line 235
    sget-object v0, Lcom/unisound/lib/utils/UserSpUtil;->spHelper:Lcom/unisound/lib/utils/SharedPreferenceHelper;

    const-string v1, "have_device_bind"

    invoke-virtual {v0, v1, p0}, Lcom/unisound/lib/utils/SharedPreferenceHelper;->saveBooleanValue(Ljava/lang/String;Z)Z

    return-void
.end method

.method public static setDeviceId(Ljava/lang/String;)V
    .locals 2

    .line 135
    sget-object v0, Lcom/unisound/lib/utils/UserSpUtil;->spHelper:Lcom/unisound/lib/utils/SharedPreferenceHelper;

    const-string v1, "deviceId"

    invoke-virtual {v0, v1, p0}, Lcom/unisound/lib/utils/SharedPreferenceHelper;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setDeviceTdid(Ljava/lang/String;)V
    .locals 2

    .line 117
    sget-object v0, Lcom/unisound/lib/utils/UserSpUtil;->spHelper:Lcom/unisound/lib/utils/SharedPreferenceHelper;

    const-string v1, "device_tdid"

    invoke-virtual {v0, v1, p0}, Lcom/unisound/lib/utils/SharedPreferenceHelper;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setDeviceUdid(Ljava/lang/String;)V
    .locals 2

    .line 99
    sget-object v0, Lcom/unisound/lib/utils/UserSpUtil;->spHelper:Lcom/unisound/lib/utils/SharedPreferenceHelper;

    const-string v1, "device_udid"

    invoke-virtual {v0, v1, p0}, Lcom/unisound/lib/utils/SharedPreferenceHelper;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setFlushToken(Ljava/lang/String;)V
    .locals 2

    .line 144
    sget-object v0, Lcom/unisound/lib/utils/UserSpUtil;->spHelper:Lcom/unisound/lib/utils/SharedPreferenceHelper;

    const-string v1, "flushToken"

    invoke-virtual {v0, v1, p0}, Lcom/unisound/lib/utils/SharedPreferenceHelper;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setSelfUdid(Ljava/lang/String;)V
    .locals 2

    .line 63
    sget-object v0, Lcom/unisound/lib/utils/UserSpUtil;->spHelper:Lcom/unisound/lib/utils/SharedPreferenceHelper;

    const-string v1, "self_udid"

    invoke-virtual {v0, v1, p0}, Lcom/unisound/lib/utils/SharedPreferenceHelper;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setTestAccessToken(Ljava/lang/String;)V
    .locals 2

    .line 262
    sget-object v0, Lcom/unisound/lib/utils/UserSpUtil;->spHelper:Lcom/unisound/lib/utils/SharedPreferenceHelper;

    const-string v1, "TestACCESSTOKEN"

    invoke-virtual {v0, v1, p0}, Lcom/unisound/lib/utils/SharedPreferenceHelper;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setUserAccount(Ljava/lang/String;)V
    .locals 2

    .line 81
    sget-object v0, Lcom/unisound/lib/utils/UserSpUtil;->spHelper:Lcom/unisound/lib/utils/SharedPreferenceHelper;

    const-string v1, "user_account"

    invoke-virtual {v0, v1, p0}, Lcom/unisound/lib/utils/SharedPreferenceHelper;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setUserNickname(Ljava/lang/String;)V
    .locals 2

    .line 199
    sget-object v0, Lcom/unisound/lib/utils/UserSpUtil;->spHelper:Lcom/unisound/lib/utils/SharedPreferenceHelper;

    const-string v1, "user_device_nickname"

    invoke-virtual {v0, v1, p0}, Lcom/unisound/lib/utils/SharedPreferenceHelper;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
