.class public Lcom/unisound/vui/util/UserInfoParser;
.super Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisound/vui/util/UserInfoParser;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "options"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private syncAddressPreference(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "options"    # Lorg/json/JSONObject;

    .prologue
    return-void
.end method

.method private syncCarReportPreference(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "options"    # Lorg/json/JSONObject;

    .prologue
    const-string v0, "report"

    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/util/UserInfoParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/unisound/vui/util/UserInfoParser;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->setTrafficInfoSwitchState(Landroid/content/Context;Z)V

    return-void
.end method

.method private syncCarTheftPreference(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "options"    # Lorg/json/JSONObject;

    .prologue
    const-string v0, "theft"

    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/util/UserInfoParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/unisound/vui/util/UserInfoParser;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->setAntiTheftSwitchState(Landroid/content/Context;Z)V

    return-void
.end method

.method private syncMapPreference(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "options"    # Lorg/json/JSONObject;

    .prologue
    const-string v0, "map"

    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/util/UserInfoParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/unisound/vui/util/UserInfoParser;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->setNaviSelectedState(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private syncSexPreference(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "options"    # Lorg/json/JSONObject;

    .prologue
    const-string v0, "sex"

    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/util/UserInfoParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/unisound/vui/util/UserInfoParser;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->setEnableRecognizePersonal(Landroid/content/Context;Z)V

    return-void
.end method

.method private syncTTSPreference(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "options"    # Lorg/json/JSONObject;

    .prologue
    const-string v0, "tts"

    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/util/UserInfoParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->setTTSSelectedState(I)V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "options"    # Lorg/json/JSONObject;

    .prologue
    invoke-direct {p0, p1}, Lcom/unisound/vui/util/UserInfoParser;->syncMapPreference(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/unisound/vui/util/UserInfoParser;->syncTTSPreference(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/unisound/vui/util/UserInfoParser;->syncCarTheftPreference(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/unisound/vui/util/UserInfoParser;->syncCarReportPreference(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/unisound/vui/util/UserInfoParser;->syncSexPreference(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/unisound/vui/util/UserInfoParser;->syncAddressPreference(Lorg/json/JSONObject;)V

    return-void
.end method
