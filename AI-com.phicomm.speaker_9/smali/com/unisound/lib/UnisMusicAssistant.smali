.class public Lcom/unisound/lib/UnisMusicAssistant;
.super Ljava/lang/Object;
.source "UnisMusicAssistant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/UnisMusicAssistant$SingleFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UnisMusicAssistant"


# instance fields
.field private mRequestClient:Lcom/unisound/lib/net/UserRequestClient;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/unisound/lib/net/UserRequestClient;->getInstance()Lcom/unisound/lib/net/UserRequestClient;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    return-void
.end method

.method synthetic constructor <init>(Lcom/unisound/lib/UnisMusicAssistant$1;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/unisound/lib/UnisMusicAssistant;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/unisound/lib/UnisMusicAssistant;->afterRequest(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/unisound/lib/UnisMusicAssistant;->parseAudioCurrentListData(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/unisound/lib/UnisMusicAssistant;->afterGetCategory(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/unisound/lib/UnisMusicAssistant;->afterGetAudioList(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/unisound/lib/UnisMusicAssistant;->parseAudioSecondListData(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/unisound/lib/UnisMusicAssistant;->afterRequst(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/unisound/lib/UnisMusicAssistant;->afterGetCurrentMusic(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/unisound/lib/UnisMusicAssistant;ILcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/unisound/lib/UnisMusicAssistant;->onFail(ILcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method static synthetic access$500(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/unisound/lib/UnisMusicAssistant;->getMusicList(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method static synthetic access$600(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/unisound/lib/UnisMusicAssistant;->parseSingerData(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method static synthetic access$700(Lcom/unisound/lib/UnisMusicAssistant;Ljava/util/List;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/unisound/lib/UnisMusicAssistant;->playSingerMusic(Ljava/util/List;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method static synthetic access$800(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/unisound/lib/UnisMusicAssistant;->parseAudioData(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method static synthetic access$900(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/unisound/lib/UnisMusicAssistant;->afterGetCollectAudioList(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method private afterGetAudioList(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 2

    const-string v0, "UnisMusicAssistant"

    .line 478
    invoke-static {p1}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :try_start_0
    const-class v0, Lcom/unisound/lib/audio/bean/AudioCurrentList;

    .line 481
    invoke-virtual {p1, v0}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getEntity(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/audio/bean/AudioCurrentList;

    .line 482
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1, v0}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 484
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    const-string p1, "UnisMusicAssistant"

    .line 485
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "analytic exception:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private afterGetCategory(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 2

    .line 568
    :try_start_0
    const-class v0, Lcom/unisound/lib/audio/bean/CategoryBean;

    invoke-virtual {p1, v0}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getEntity(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/audio/bean/CategoryBean;

    .line 569
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1, v0}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 571
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    const-string p1, "UnisMusicAssistant"

    .line 572
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "analytic exception:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private afterGetCollectAudioList(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 2

    const-string v0, "UnisMusicAssistant"

    .line 491
    invoke-static {p1}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :try_start_0
    const-class v0, Lcom/unisound/lib/audio/bean/AudioCollectList;

    .line 494
    invoke-virtual {p1, v0}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getEntity(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/audio/bean/AudioCollectList;

    .line 495
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1, v0}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 497
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    const-string p1, "UnisMusicAssistant"

    .line 498
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "analytic exception:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private afterGetCurrentMusic(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 2

    .line 223
    :try_start_0
    const-class v0, Lcom/unisound/lib/music/bean/CurrentMusicInfo;

    .line 224
    invoke-virtual {p1, v0}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getEntity(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/music/bean/CurrentMusicInfo;

    .line 225
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1, v0}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 227
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    const-string p1, "UnisMusicAssistant"

    .line 228
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "analytic exception:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private afterRequest(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 3

    .line 198
    :try_start_0
    const-class v0, Lcom/unisound/lib/msgcenter/bean/MusicInfo;

    invoke-virtual {p1, v0}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getEntity(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/msgcenter/bean/MusicInfo;

    const-string v1, "UnisMusicAssistant"

    .line 199
    invoke-static {v0}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1, v0}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private afterRequst(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 2

    .line 209
    :try_start_0
    const-class v0, Lcom/unisound/lib/msgcenter/bean/CollectMusicInfo;

    .line 210
    invoke-virtual {p1, v0}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getEntity(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/msgcenter/bean/CollectMusicInfo;

    .line 211
    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/bean/CollectMusicInfo;->getCollectMusic()Ljava/util/List;

    move-result-object v0

    .line 212
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1, v0}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    const-string p1, "UnisMusicAssistant"

    .line 215
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "analytic exception:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/unisound/lib/UnisMusicAssistant;
    .locals 1

    .line 56
    sget-object v0, Lcom/unisound/lib/UnisMusicAssistant$SingleFactory;->instant:Lcom/unisound/lib/UnisMusicAssistant;

    return-object v0
.end method

.method private getMusicList(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 2

    .line 373
    :try_start_0
    const-class v0, Lcom/unisound/lib/music/bean/CurrentMusicInfo;

    .line 374
    invoke-virtual {p1, v0}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getEntity(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/music/bean/CurrentMusicInfo;

    .line 375
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 376
    invoke-virtual {v0}, Lcom/unisound/lib/music/bean/CurrentMusicInfo;->getMusicList()Ljava/util/List;

    move-result-object v0

    .line 375
    invoke-interface {p2, v1, v0}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 378
    :catch_0
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private onFail(ILcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 0

    .line 526
    invoke-interface {p2, p1}, Lcom/unisound/lib/callback/HttpDataCallback;->onFailed(I)V

    return-void
.end method

.method private parseAudioCurrentListData(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 2

    .line 532
    :try_start_0
    const-class v0, Lcom/unisound/lib/audio/bean/AudioCurrentList;

    .line 533
    invoke-virtual {p1, v0}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getEntity(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/audio/bean/AudioCurrentList;

    .line 534
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1, v0}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 536
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    const-string p1, "UnisMusicAssistant"

    .line 537
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "analytic exception:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private parseAudioData(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 2

    const-string v0, "UnisMusicAssistant"

    .line 447
    invoke-static {p1}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :try_start_0
    const-class v0, Lcom/unisound/lib/audio/bean/AudioInfo;

    invoke-virtual {p1, v0}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getEntity(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/audio/bean/AudioInfo;

    .line 450
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1, v0}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 452
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    const-string p1, "UnisMusicAssistant"

    .line 453
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/unisound/lib/utils/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private parseAudioSecondListData(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 2

    .line 626
    :try_start_0
    const-class v0, Lcom/unisound/lib/audio/bean/AudioSecondList;

    .line 627
    invoke-virtual {p1, v0}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getEntity(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/audio/bean/AudioSecondList;

    .line 628
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1, v0}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 630
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    const-string p1, "UnisMusicAssistant"

    .line 631
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "analytic exception:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private parseSingerData(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 2

    .line 340
    :try_start_0
    const-class v0, Lcom/unisound/lib/music/bean/SingerBean;

    invoke-virtual {p1, v0}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getEntity(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/music/bean/SingerBean;

    .line 341
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Lcom/unisound/lib/music/bean/SingerBean;->getSingerList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    :catch_0
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private playSingerMusic(Ljava/util/List;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/unisound/lib/callback/HttpDataCallback;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 415
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/lib/music/bean/MusicList;

    invoke-virtual {v1}, Lcom/unisound/lib/music/bean/MusicList;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 416
    new-instance v1, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;

    invoke-direct {v1}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;-><init>()V

    const-string v2, "toHotSingerMusicList"

    .line 417
    invoke-virtual {v1, v2}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setControlCmd(Ljava/lang/String;)V

    .line 418
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unisound/lib/music/bean/MusicList;

    invoke-virtual {v2}, Lcom/unisound/lib/music/bean/MusicList;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setItemId(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v1, p2}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setUdid(Ljava/lang/String;)V

    const-string p2, "TAG"

    .line 420
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/lib/music/bean/MusicList;

    invoke-virtual {p1}, Lcom/unisound/lib/music/bean/MusicList;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "UnisMusicAssistant"

    .line 421
    invoke-virtual {p0, p1, v1, p3}, Lcom/unisound/lib/UnisMusicAssistant;->sendMusicControlCommand(Ljava/lang/String;Lcom/unisound/lib/msgcenter/bean/MusicControlParam;Lcom/unisound/lib/callback/HttpDataCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addCollectMusic(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisMusicAssistant"

    new-instance v2, Lcom/unisound/lib/UnisMusicAssistant$7;

    invoke-direct {v2, p0, p3}, Lcom/unisound/lib/UnisMusicAssistant$7;-><init>(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/unisound/lib/net/UserRequestClient;->addCollectMusic(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public cancleHttpRequest()V
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisMusicAssistant"

    invoke-virtual {v0, v1}, Lcom/unisound/lib/net/UserRequestClient;->cancelHttpTask(Ljava/lang/String;)V

    return-void
.end method

.method public delCollectMusic(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisMusicAssistant"

    new-instance v2, Lcom/unisound/lib/UnisMusicAssistant$6;

    invoke-direct {v2, p0, p3}, Lcom/unisound/lib/UnisMusicAssistant$6;-><init>(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/unisound/lib/net/UserRequestClient;->delMusicCollect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public delOneCollectMusic(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisMusicAssistant"

    new-instance v2, Lcom/unisound/lib/UnisMusicAssistant$8;

    invoke-direct {v2, p0, p3}, Lcom/unisound/lib/UnisMusicAssistant$8;-><init>(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/unisound/lib/net/UserRequestClient;->delMusicCollect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getAudioFirstList(Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 3

    .line 547
    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisMusicAssistant"

    new-instance v2, Lcom/unisound/lib/UnisMusicAssistant$16;

    invoke-direct {v2, p0, p1}, Lcom/unisound/lib/UnisMusicAssistant$16;-><init>(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/unisound/lib/net/UserRequestClient;->getAudioCateGory(Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getAudioSecondList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 7

    .line 611
    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisMusicAssistant"

    new-instance v6, Lcom/unisound/lib/UnisMusicAssistant$18;

    invoke-direct {v6, p0, p5}, Lcom/unisound/lib/UnisMusicAssistant$18;-><init>(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/unisound/lib/net/UserRequestClient;->getAudioSecondList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getAudioStatus(Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 3

    .line 433
    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisMusicAssistant"

    new-instance v2, Lcom/unisound/lib/UnisMusicAssistant$13;

    invoke-direct {v2, p0, p2}, Lcom/unisound/lib/UnisMusicAssistant$13;-><init>(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/unisound/lib/net/UserRequestClient;->getAudioStatus(Ljava/lang/Object;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getAudioThirdList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 7

    .line 587
    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisMusicAssistant"

    new-instance v6, Lcom/unisound/lib/UnisMusicAssistant$17;

    invoke-direct {v6, p0, p5}, Lcom/unisound/lib/UnisMusicAssistant$17;-><init>(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/unisound/lib/net/UserRequestClient;->getAudioThirdList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getCollectAudioList(Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 3

    .line 464
    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisMusicAssistant"

    new-instance v2, Lcom/unisound/lib/UnisMusicAssistant$14;

    invoke-direct {v2, p0, p2}, Lcom/unisound/lib/UnisMusicAssistant$14;-><init>(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/unisound/lib/net/UserRequestClient;->getCollectAudioList(Ljava/lang/Object;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getCollectMusicList(Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisMusicAssistant"

    new-instance v2, Lcom/unisound/lib/UnisMusicAssistant$4;

    invoke-direct {v2, p0, p2}, Lcom/unisound/lib/UnisMusicAssistant$4;-><init>(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/unisound/lib/net/UserRequestClient;->getCollectMusicList(Ljava/lang/Object;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getCurrentAudioList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 6

    .line 512
    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisMusicAssistant"

    new-instance v5, Lcom/unisound/lib/UnisMusicAssistant$15;

    invoke-direct {v5, p0, p4}, Lcom/unisound/lib/UnisMusicAssistant$15;-><init>(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/unisound/lib/net/UserRequestClient;->getCurrentAudioList(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getCurrentMusicList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 6

    .line 182
    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisMusicAssistant"

    new-instance v5, Lcom/unisound/lib/UnisMusicAssistant$5;

    invoke-direct {v5, p0, p4}, Lcom/unisound/lib/UnisMusicAssistant$5;-><init>(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/unisound/lib/net/UserRequestClient;->getCurrentMusicList(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getHotMusicList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 7

    .line 303
    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisMusicAssistant"

    new-instance v6, Lcom/unisound/lib/UnisMusicAssistant$9;

    invoke-direct {v6, p0, p5}, Lcom/unisound/lib/UnisMusicAssistant$9;-><init>(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/unisound/lib/net/UserRequestClient;->getHotMusicList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getHotSingerList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 6

    .line 325
    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisMusicAssistant"

    new-instance v5, Lcom/unisound/lib/UnisMusicAssistant$10;

    invoke-direct {v5, p0, p4}, Lcom/unisound/lib/UnisMusicAssistant$10;-><init>(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/unisound/lib/net/UserRequestClient;->getHotSingerList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getHotSingerMusicList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 7

    .line 358
    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisMusicAssistant"

    new-instance v6, Lcom/unisound/lib/UnisMusicAssistant$11;

    invoke-direct {v6, p0, p5}, Lcom/unisound/lib/UnisMusicAssistant$11;-><init>(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/unisound/lib/net/UserRequestClient;->getHotSingerMusicList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getMusicPlayInfo(Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisMusicAssistant"

    new-instance v2, Lcom/unisound/lib/UnisMusicAssistant$1;

    invoke-direct {v2, p0, p2}, Lcom/unisound/lib/UnisMusicAssistant$1;-><init>(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/unisound/lib/net/UserRequestClient;->getMusicPlayInfo(Ljava/lang/Object;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public playMusic(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;",
            "Lcom/unisound/lib/callback/HttpDataCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisMusicAssistant"

    new-instance v5, Lcom/unisound/lib/UnisMusicAssistant$2;

    invoke-direct {v5, p0, p1, p3, p4}, Lcom/unisound/lib/UnisMusicAssistant$2;-><init>(Lcom/unisound/lib/UnisMusicAssistant;Ljava/lang/String;Ljava/util/List;Lcom/unisound/lib/callback/HttpDataCallback;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/unisound/lib/net/UserRequestClient;->switchPlayList(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public playSingerMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 7

    .line 394
    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisMusicAssistant"

    new-instance v6, Lcom/unisound/lib/UnisMusicAssistant$12;

    invoke-direct {v6, p0, p5, p6}, Lcom/unisound/lib/UnisMusicAssistant$12;-><init>(Lcom/unisound/lib/UnisMusicAssistant;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/unisound/lib/net/UserRequestClient;->getHotSingerMusicList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public sendMusicControlCommand(Ljava/lang/String;Lcom/unisound/lib/msgcenter/bean/MusicControlParam;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 2

    .line 137
    iget-object p1, p0, Lcom/unisound/lib/UnisMusicAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v0, "UnisMusicAssistant"

    new-instance v1, Lcom/unisound/lib/UnisMusicAssistant$3;

    invoke-direct {v1, p0, p3}, Lcom/unisound/lib/UnisMusicAssistant$3;-><init>(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    invoke-virtual {p1, v0, p2, v1}, Lcom/unisound/lib/net/UserRequestClient;->musicControlCommand(Ljava/lang/Object;Lcom/unisound/lib/msgcenter/bean/MusicControlParam;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public switchCommand(Z)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    invoke-virtual {v0, p1}, Lcom/unisound/lib/net/UserRequestClient;->setMusic(Z)V

    return-void
.end method
