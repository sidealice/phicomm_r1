.class public Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient;
.super Ljava/lang/Object;
.source "MusicClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient$SingleFactory;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient$1;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient$SingleFactory;->instant:Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient;

    return-object v0
.end method

.method private getMusicParamBsRequestHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "udid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader",
            "<",
            "Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicParam;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicParam;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicParam;-><init>()V

    .line 78
    .local v0, "musicParam":Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicParam;
    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicParam;->setId(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, p2}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicParam;->setUdid(Ljava/lang/String;)V

    .line 80
    const-string v1, "music"

    const-string v2, "getActualMusicById"

    invoke-static {v1, v2, v0}, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/RequestProtocolFactory;->buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;

    move-result-object v1

    return-object v1
.end method

.method private parseData(Ljava/lang/String;)Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, "bsResponse":Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;
    new-instance v4, Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient$1;

    invoke-direct {v4, p0}, Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient$1;-><init>(Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient;)V

    invoke-virtual {v4}, Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 68
    .local v2, "type":Ljava/lang/reflect/Type;
    :try_start_0
    invoke-static {p1, v2}, Lcom/phicomm/speaker/player/mhdInterface/unisound/tool/JsonTool;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;

    move-object v1, v0

    .line 69
    const-string v4, "MusicClient"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-object v1

    .line 70
    :catch_0
    move-exception v3

    .line 71
    .local v3, "var5":Ljava/lang/Exception;
    const-string v4, "MusicClient"

    const-string v5, "--->>postJsonRequest get response parse exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getMusicUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "udid"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v5, 0x0

    .line 38
    .local v5, "songInfo":Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient;->getMusicParamBsRequestHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;

    move-result-object v2

    .line 39
    .local v2, "content":Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader<Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicParam;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "--->>postJsonRequest jsonContent:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lcom/phicomm/speaker/player/mhdInterface/unisound/tool/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 42
    :try_start_0
    new-instance v3, Lorg/xutils/http/RequestParams;

    sget-object v7, Lcom/phicomm/speaker/player/mhdInterface/unisound/api/HttpUrl;->URL_MUSIC_BY_ID:Ljava/lang/String;

    invoke-direct {v3, v7}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;)V

    .line 43
    .local v3, "requestParams":Lorg/xutils/http/RequestParams;
    const/16 v7, 0x3e8

    invoke-virtual {v3, v7}, Lorg/xutils/http/RequestParams;->setConnectTimeout(I)V

    .line 44
    const/16 v7, 0x3e8

    invoke-virtual {v3, v7}, Lorg/xutils/http/RequestParams;->setReadTimeout(I)V

    .line 45
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lorg/xutils/http/RequestParams;->setUseCookie(Z)V

    .line 46
    invoke-static {v2}, Lcom/phicomm/speaker/player/mhdInterface/unisound/tool/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/xutils/http/RequestParams;->setBodyContent(Ljava/lang/String;)V

    .line 47
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lorg/xutils/http/RequestParams;->setAsJsonContent(Z)V

    .line 48
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requestParams : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lorg/xutils/http/RequestParams;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-static {}, Lorg/xutils/x;->http()Lorg/xutils/HttpManager;

    move-result-object v7

    const-class v8, Ljava/lang/String;

    invoke-interface {v7, v3, v8}, Lorg/xutils/HttpManager;->postSync(Lorg/xutils/http/RequestParams;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 51
    .local v4, "result":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMusicUrl result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-direct {p0, v4}, Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient;->parseData(Ljava/lang/String;)Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;

    move-result-object v1

    .line 53
    .local v1, "bsResponse":Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;
    if-eqz v1, :cond_0

    .line 54
    const-class v7, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;

    invoke-virtual {v1, v7}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;->getEntity(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v7, v5

    .line 60
    .end local v1    # "bsResponse":Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;
    .end local v3    # "requestParams":Lorg/xutils/http/RequestParams;
    .end local v4    # "result":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 57
    :catch_0
    move-exception v6

    .line 58
    .local v6, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    const/4 v7, 0x0

    goto :goto_0
.end method
