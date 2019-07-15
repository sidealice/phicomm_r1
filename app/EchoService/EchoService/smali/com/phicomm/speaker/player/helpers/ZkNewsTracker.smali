.class public Lcom/phicomm/speaker/player/helpers/ZkNewsTracker;
.super Ljava/lang/Object;
.source "ZkNewsTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/helpers/ZkNewsTracker$Response;,
        Lcom/phicomm/speaker/player/helpers/ZkNewsTracker$RequestContent;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x7d0

.field private static TAG:Ljava/lang/String;

.field private static apiUrl:Ljava/lang/String;

.field private static requestCallback:Lorg/xutils/common/Callback$CommonCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$CommonCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker;->TAG:Ljava/lang/String;

    .line 22
    const-string v0, "http://newshome.phicomm.com/phinews/news/statRead"

    sput-object v0, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker;->apiUrl:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker$1;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker$1;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker;->requestCallback:Lorg/xutils/common/Callback$CommonCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Lcom/phicomm/speaker/player/helpers/ZkNewsTracker$Response;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p0}, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker;->parseData(Ljava/lang/String;)Lcom/phicomm/speaker/player/helpers/ZkNewsTracker$Response;

    move-result-object v0

    return-object v0
.end method

.method public static mark(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "newsId"    # Ljava/lang/String;
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 26
    if-eqz p0, :cond_0

    const-string v3, "zk"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    new-instance v0, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker$RequestContent;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker$RequestContent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .local v0, "content":Lcom/phicomm/speaker/player/helpers/ZkNewsTracker$RequestContent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--->>postJsonRequest jsonContent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/phicomm/speaker/player/mhdInterface/unisound/tool/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 34
    :try_start_0
    new-instance v1, Lorg/xutils/http/RequestParams;

    sget-object v3, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker;->apiUrl:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;)V

    .line 35
    .local v1, "requestParams":Lorg/xutils/http/RequestParams;
    const/16 v3, 0x7d0

    invoke-virtual {v1, v3}, Lorg/xutils/http/RequestParams;->setConnectTimeout(I)V

    .line 36
    const/16 v3, 0x7d0

    invoke-virtual {v1, v3}, Lorg/xutils/http/RequestParams;->setReadTimeout(I)V

    .line 37
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/xutils/http/RequestParams;->setUseCookie(Z)V

    .line 38
    invoke-static {v0}, Lcom/phicomm/speaker/player/mhdInterface/unisound/tool/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/xutils/http/RequestParams;->setBodyContent(Ljava/lang/String;)V

    .line 39
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/xutils/http/RequestParams;->setAsJsonContent(Z)V

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requestParams : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-static {}, Lorg/xutils/x;->http()Lorg/xutils/HttpManager;

    move-result-object v3

    sget-object v4, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker;->requestCallback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v3, v1, v4}, Lorg/xutils/HttpManager;->post(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    .end local v1    # "requestParams":Lorg/xutils/http/RequestParams;
    :catch_0
    move-exception v2

    .line 50
    .local v2, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static parseData(Ljava/lang/String;)Lcom/phicomm/speaker/player/helpers/ZkNewsTracker$Response;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, "response":Lcom/phicomm/speaker/player/helpers/ZkNewsTracker$Response;
    new-instance v4, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker$2;

    invoke-direct {v4}, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker$2;-><init>()V

    invoke-virtual {v4}, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 86
    .local v2, "type":Ljava/lang/reflect/Type;
    :try_start_0
    invoke-static {p0, v2}, Lcom/phicomm/speaker/player/mhdInterface/unisound/tool/JsonTool;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker$Response;

    move-object v1, v0

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-object v1

    .line 88
    :catch_0
    move-exception v3

    .line 89
    .local v3, "var5":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--->>postJsonRequest get response parse exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/phicomm/speaker/player/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
