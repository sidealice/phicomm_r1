.class public Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/util/downloader/Downloader;


# static fields
.field private static final DOWNLOAD_TAG:Ljava/lang/String; = "IndividualSetting"

.field private static final INDIVIDUAL_SETTING_DOWNLOAD_ADDRESS:Ljava/lang/String; = "http://10.200.19.108:8080/app_wx_adapt_service/m/uploadClientInfo/getPersonalOptions"

.field private static final TAG:Ljava/lang/String; = "IndividualSettingDownloader"


# instance fields
.field private body:Lorg/json/JSONObject;

.field private downloaderListener:Lcom/unisound/vui/util/downloader/DownloaderListener;

.field private mContext:Landroid/content/Context;

.field private simpleRequestListener:Lcom/unisound/vui/util/upload/SimpleRequestListener;

.field private simpleRequester:Lcom/unisound/vui/util/upload/SimpleRequester;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader$1;

    invoke-direct {v0, p0}, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader$1;-><init>(Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;)V

    iput-object v0, p0, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->simpleRequestListener:Lcom/unisound/vui/util/upload/SimpleRequestListener;

    iput-object p1, p0, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/unisound/vui/util/upload/SimpleRequester;

    invoke-direct {v0}, Lcom/unisound/vui/util/upload/SimpleRequester;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->simpleRequester:Lcom/unisound/vui/util/upload/SimpleRequester;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->body:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic access$000(Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->parseNeedUpdate(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->parserOptions(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;)Lcom/unisound/vui/util/downloader/DownloaderListener;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->downloaderListener:Lcom/unisound/vui/util/downloader/DownloaderListener;

    return-object v0
.end method

.method private checkCurVersionExist()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getCurVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructBody()V
    .locals 2

    invoke-direct {p0}, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->getUserAuth()Lcom/unisound/vui/data/entity/out/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->setParamsForBody(Lcom/unisound/vui/data/entity/out/a;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "IndividualSettingDownloader"

    const-string v1, "fetch user auth fail !!"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCurVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getCurVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserAuth()Lcom/unisound/vui/data/entity/out/a;
    .locals 1

    invoke-static {}, Lcom/unisound/vui/util/auth/UserAuthUtil;->getInstance()Lcom/unisound/vui/util/auth/UserAuthUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/vui/util/auth/UserAuthUtil;->getUniUserAuth()Lcom/unisound/vui/data/entity/out/a;

    move-result-object v0

    return-object v0
.end method

.method private parseNeedUpdate(Ljava/lang/String;)Z
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "needModify"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method private parserOptions(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "options"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
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

.method private sendRequest()V
    .locals 5

    iget-object v0, p0, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->simpleRequester:Lcom/unisound/vui/util/upload/SimpleRequester;

    const-string v1, "IndividualSetting"

    const-string v2, "http://10.200.19.108:8080/app_wx_adapt_service/m/uploadClientInfo/getPersonalOptions"

    iget-object v3, p0, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->body:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->simpleRequestListener:Lcom/unisound/vui/util/upload/SimpleRequestListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/unisound/vui/util/upload/SimpleRequester;->request(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/unisound/vui/util/upload/SimpleRequestListener;)V

    return-void
.end method

.method private setParamsForBody(Lcom/unisound/vui/data/entity/out/a;)V
    .locals 3
    .param p1, "userAuth"    # Lcom/unisound/vui/data/entity/out/a;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->body:Lorg/json/JSONObject;

    const-string v1, "passportId"

    invoke-virtual {p1}, Lcom/unisound/vui/data/entity/out/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->body:Lorg/json/JSONObject;

    const-string v1, "passportToken"

    invoke-virtual {p1}, Lcom/unisound/vui/data/entity/out/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->body:Lorg/json/JSONObject;

    const-string v1, "udid"

    invoke-virtual {p1}, Lcom/unisound/vui/data/entity/out/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->body:Lorg/json/JSONObject;

    const-string v1, "curVersion"

    invoke-direct {p0}, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->getCurVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParamsForBody error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public download(Lcom/unisound/vui/util/downloader/DownloaderListener;)V
    .locals 2
    .param p1, "downloaderListener"    # Lcom/unisound/vui/util/downloader/DownloaderListener;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->downloaderListener:Lcom/unisound/vui/util/downloader/DownloaderListener;

    invoke-direct {p0}, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->checkCurVersionExist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->constructBody()V

    invoke-direct {p0}, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->sendRequest()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "IndividualSettingDownloader"

    const-string v1, "check curVersion not exist !! download cancel"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
