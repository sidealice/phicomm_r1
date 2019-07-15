.class public Lcom/unisound/vui/util/ConfigUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/util/ConfigUtils$ConfigResponseData;,
        Lcom/unisound/vui/util/ConfigUtils$ConfigPostData;
    }
.end annotation


# static fields
.field private static final CONFIG_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ConfigUtils"

.field private static configFileUrl:Ljava/lang/String;

.field private static getFilePathUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http://10.30.2.231:8080/app_wx_adapt_service/m/getCustomerConfig"

    sput-object v0, Lcom/unisound/vui/util/ConfigUtils;->getFilePathUrl:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "config.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/util/ConfigUtils;->CONFIG_PATH:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/unisound/vui/util/ConfigUtils;->configFileUrl:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unisound/vui/util/ConfigUtils;->configFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    sput-object p0, Lcom/unisound/vui/util/ConfigUtils;->configFileUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unisound/vui/util/ConfigUtils;->CONFIG_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static downLoadConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "udid"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/unisound/vui/util/ConfigUtils$ConfigPostData;

    invoke-direct {v0}, Lcom/unisound/vui/util/ConfigUtils$ConfigPostData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/unisound/vui/util/ConfigUtils$ConfigPostData;->setAppKey(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/unisound/vui/util/ConfigUtils$ConfigPostData;->setUdid(Ljava/lang/String;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v1, "encodeType"

    const-string v2, "add_base64"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfigUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downLoadConfig para:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/util/upload/ReqDataUtils;->encoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "ConfigUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downLoadConfig postData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/unisound/vui/common/network/e;->a()Lcom/unisound/vui/common/network/e;

    move-result-object v0

    const-string v1, "ConfigUtils"

    const/4 v2, 0x1

    sget-object v3, Lcom/unisound/vui/util/ConfigUtils;->getFilePathUrl:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    new-instance v6, Lcom/unisound/vui/util/ConfigUtils$1;

    invoke-direct {v6}, Lcom/unisound/vui/util/ConfigUtils$1;-><init>()V

    invoke-virtual/range {v0 .. v6}, Lcom/unisound/vui/common/network/e;->a(Ljava/lang/Object;ILjava/lang/String;[BLjava/util/Map;Lcom/unisound/vui/common/network/d;)V

    return-void
.end method
