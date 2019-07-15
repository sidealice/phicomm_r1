.class public Lcom/unisound/vui/util/UserInfoUtil;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "UserInfoUtil"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/unisound/vui/util/UserInfoUtil;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addCarReportPreference(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "userInfo"    # Lorg/json/JSONObject;

    .prologue
    const-string v0, "report"

    sget-object v1, Lcom/unisound/vui/util/UserInfoUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/unisound/vui/util/UserPerferenceUtil;->getTrafficInfoSwitchState(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/unisound/vui/util/UserInfoUtil;->putValueInfoJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private addCarTheftPreference(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "userInfo"    # Lorg/json/JSONObject;

    .prologue
    const-string v0, "theft"

    sget-object v1, Lcom/unisound/vui/util/UserInfoUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/unisound/vui/util/UserPerferenceUtil;->getAntiTheftSwitchState(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/unisound/vui/util/UserInfoUtil;->putValueInfoJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private addCompanyPreference(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "userInfo"    # Lorg/json/JSONObject;

    .prologue
    const-string v0, "company"

    :try_start_0
    sget-object v1, Lcom/unisound/vui/util/UserInfoUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/unisound/vui/util/UserPerferenceUtil;->getPoiDefaultOfficeInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private addContactPreference(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "userInfo"    # Lorg/json/JSONObject;

    .prologue
    const-string v0, "contacts"

    sget-object v1, Lcom/unisound/vui/util/UserInfoUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/unisound/vui/data/a/a;->a(Landroid/content/Context;)Lcom/unisound/vui/data/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/data/a/a;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unisound/vui/util/UserInfoUtil;->constructContactJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/unisound/vui/util/UserInfoUtil;->putValueInfoJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private addHomePreference(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "userInfo"    # Lorg/json/JSONObject;

    .prologue
    const-string v0, "home"

    :try_start_0
    sget-object v1, Lcom/unisound/vui/util/UserInfoUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/unisound/vui/util/UserPerferenceUtil;->getPoiDefaultHomeInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private addMapPreference(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "userInfo"    # Lorg/json/JSONObject;

    .prologue
    const-string v0, "map"

    sget-object v1, Lcom/unisound/vui/util/UserInfoUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/unisound/vui/util/UserPerferenceUtil;->getNaviSelectedState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/unisound/vui/util/UserInfoUtil;->putValueInfoJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private addPoiPreference(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "userInfo"    # Lorg/json/JSONObject;

    .prologue
    const-string v0, "pois"

    sget-object v1, Lcom/unisound/vui/util/UserInfoUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/unisound/vui/data/a/a;->a(Landroid/content/Context;)Lcom/unisound/vui/data/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/data/a/a;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unisound/vui/util/UserInfoUtil;->constructPoiJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/unisound/vui/util/UserInfoUtil;->putValueInfoJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private addSettingPreference(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "userInfo"    # Lorg/json/JSONObject;

    .prologue
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "setting"

    invoke-direct {p0, v0}, Lcom/unisound/vui/util/UserInfoUtil;->constructSettingPreference(Lorg/json/JSONObject;)V

    :try_start_0
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private addSexPreference(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "userInfo"    # Lorg/json/JSONObject;

    .prologue
    const-string v0, "sex"

    sget-object v1, Lcom/unisound/vui/util/UserInfoUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/unisound/vui/util/UserPerferenceUtil;->getEnableRecognizePersonal(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/unisound/vui/util/UserInfoUtil;->putValueInfoJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private addTTSPreference(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "userInfo"    # Lorg/json/JSONObject;

    .prologue
    const-string v0, "tts"

    invoke-static {}, Lcom/unisound/vui/util/UserPerferenceUtil;->getTTSSelectedState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/unisound/vui/util/UserInfoUtil;->putValueInfoJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private constructContactJson(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/data/entity/out/UniContact;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .local p1, "uniContacts":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/data/entity/out/UniContact;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "name"

    const-string v3, "numbers"

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/data/entity/out/UniContact;

    invoke-virtual {v0}, Lcom/unisound/vui/data/entity/out/UniContact;->getContactName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/unisound/vui/data/entity/out/UniContact;->getContactPhoneNO()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {v6, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private constructPoiJson(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/data/entity/a/c;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .local p1, "poiList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/data/entity/a/c;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "address"

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/data/entity/a/c;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {v0}, Lcom/unisound/vui/data/entity/a/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private constructSettingPreference(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "settingJson"    # Lorg/json/JSONObject;

    .prologue
    invoke-direct {p0, p1}, Lcom/unisound/vui/util/UserInfoUtil;->addMapPreference(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/unisound/vui/util/UserInfoUtil;->addTTSPreference(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/unisound/vui/util/UserInfoUtil;->addCarTheftPreference(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/unisound/vui/util/UserInfoUtil;->addCarReportPreference(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/unisound/vui/util/UserInfoUtil;->addSexPreference(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/unisound/vui/util/UserInfoUtil;->addHomePreference(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/unisound/vui/util/UserInfoUtil;->addCompanyPreference(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static getInstance()Lcom/unisound/vui/util/UserInfoUtil;
    .locals 2

    sget-object v0, Lcom/unisound/vui/util/UserInfoUtil;->mInstance:Lcom/unisound/vui/util/UserInfoUtil;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "WeChatUserInfo must init first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/unisound/vui/util/UserInfoUtil;->mInstance:Lcom/unisound/vui/util/UserInfoUtil;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    sput-object p0, Lcom/unisound/vui/util/UserInfoUtil;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/unisound/vui/util/UserInfoUtil;->initInstance()V

    return-void
.end method

.method private static initInstance()V
    .locals 2

    sget-object v0, Lcom/unisound/vui/util/UserInfoUtil;->mInstance:Lcom/unisound/vui/util/UserInfoUtil;

    if-nez v0, :cond_1

    const-class v1, Lcom/unisound/vui/util/UserInfoUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/unisound/vui/util/UserInfoUtil;->mInstance:Lcom/unisound/vui/util/UserInfoUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unisound/vui/util/UserInfoUtil;

    invoke-direct {v0}, Lcom/unisound/vui/util/UserInfoUtil;-><init>()V

    sput-object v0, Lcom/unisound/vui/util/UserInfoUtil;->mInstance:Lcom/unisound/vui/util/UserInfoUtil;

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private putValueInfoJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getUserInfo()Lorg/json/JSONObject;
    .locals 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v0}, Lcom/unisound/vui/util/UserInfoUtil;->addSettingPreference(Lorg/json/JSONObject;)V

    return-object v0
.end method
