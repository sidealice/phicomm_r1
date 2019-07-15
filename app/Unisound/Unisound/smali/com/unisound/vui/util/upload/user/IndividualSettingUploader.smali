.class public Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/util/upload/user/Uploader;


# static fields
.field private static final INDEVIDUAL_SETTING_REQUEST_ADDRESS:Ljava/lang/String; = "http://10.200.19.108:8080/app_wx_adapt_service/m/uploadClientInfo/setPersonalOptions"

.field public static final TAG:Ljava/lang/String; = "IndividualSettingUploader"

.field public static final UPLOAD_TAG:Ljava/lang/String; = "IndividualSetting"


# instance fields
.field private body:Lorg/json/JSONObject;

.field private mContext:Landroid/content/Context;

.field private simpleRequestListener:Lcom/unisound/vui/util/upload/SimpleRequestListener;

.field private simpleRequester:Lcom/unisound/vui/util/upload/SimpleRequester;

.field private uploaderListener:Lcom/unisound/vui/util/upload/user/UploaderListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader$1;

    invoke-direct {v0, p0}, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader$1;-><init>(Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;)V

    iput-object v0, p0, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;->simpleRequestListener:Lcom/unisound/vui/util/upload/SimpleRequestListener;

    iput-object p1, p0, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/unisound/vui/util/upload/SimpleRequester;

    invoke-direct {v0}, Lcom/unisound/vui/util/upload/SimpleRequester;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;->simpleRequester:Lcom/unisound/vui/util/upload/SimpleRequester;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;->body:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic access$000(Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;->saveCurVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;->parserResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;)Lcom/unisound/vui/util/upload/user/UploaderListener;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;->uploaderListener:Lcom/unisound/vui/util/upload/user/UploaderListener;

    return-object v0
.end method

.method private constructBody(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "options"    # Lorg/json/JSONObject;

    .prologue
    invoke-direct {p0}, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;->getUserAuth()Lcom/unisound/vui/data/entity/out/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;->setParamsForBody(Lcom/unisound/vui/data/entity/out/a;Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "IndividualSettingUploader"

    const-string v1, "fetch user auth fail !!"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getUserAuth()Lcom/unisound/vui/data/entity/out/a;
    .locals 1

    invoke-static {}, Lcom/unisound/vui/util/auth/UserAuthUtil;->getInstance()Lcom/unisound/vui/util/auth/UserAuthUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/vui/util/auth/UserAuthUtil;->getUniUserAuth()Lcom/unisound/vui/data/entity/out/a;

    move-result-object v0

    return-object v0
.end method

.method private parserResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method private saveCurVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const-string v0, "version"

    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;->parserResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->setCurVersion(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private sendRequest()V
    .locals 5

    iget-object v0, p0, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;->simpleRequester:Lcom/unisound/vui/util/upload/SimpleRequester;

    const-string v1, "IndividualSetting"

    const-string v2, "http://10.200.19.108:8080/app_wx_adapt_service/m/uploadClientInfo/setPersonalOptions"

    iget-object v3, p0, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;->body:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;->simpleRequestListener:Lcom/unisound/vui/util/upload/SimpleRequestListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/unisound/vui/util/upload/SimpleRequester;->request(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/unisound/vui/util/upload/SimpleRequestListener;)V

    return-void
.end method

.method private setParamsForBody(Lcom/unisound/vui/data/entity/out/a;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "userAuth"    # Lcom/unisound/vui/data/entity/out/a;
    .param p2, "options"    # Lorg/json/JSONObject;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;->body:Lorg/json/JSONObject;

    const-string v1, "passportId"

    invoke-virtual {p1}, Lcom/unisound/vui/data/entity/out/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;->body:Lorg/json/JSONObject;

    const-string v1, "passportToken"

    invoke-virtual {p1}, Lcom/unisound/vui/data/entity/out/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;->body:Lorg/json/JSONObject;

    const-string v1, "udid"

    invoke-virtual {p1}, Lcom/unisound/vui/data/entity/out/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;->body:Lorg/json/JSONObject;

    const-string v1, "options"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
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
.method public upload(Lorg/json/JSONObject;Lcom/unisound/vui/util/upload/user/UploaderListener;)V
    .locals 0
    .param p1, "options"    # Lorg/json/JSONObject;
    .param p2, "uploaderListener"    # Lcom/unisound/vui/util/upload/user/UploaderListener;

    .prologue
    iput-object p2, p0, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;->uploaderListener:Lcom/unisound/vui/util/upload/user/UploaderListener;

    invoke-direct {p0, p1}, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;->constructBody(Lorg/json/JSONObject;)V

    invoke-direct {p0}, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;->sendRequest()V

    return-void
.end method
