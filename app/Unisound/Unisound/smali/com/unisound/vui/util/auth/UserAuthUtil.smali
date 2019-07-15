.class public Lcom/unisound/vui/util/auth/UserAuthUtil;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "UserAuthUtil"

.field private static uniUserAuth:Lcom/unisound/vui/data/entity/out/a;

.field private static userAuthUtil:Lcom/unisound/vui/util/auth/UserAuthUtil;


# instance fields
.field private listener:Lcom/unisound/passport/PassportListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/unisound/vui/util/auth/UserAuthUtil$1;

    invoke-direct {v0, p0}, Lcom/unisound/vui/util/auth/UserAuthUtil$1;-><init>(Lcom/unisound/vui/util/auth/UserAuthUtil;)V

    iput-object v0, p0, Lcom/unisound/vui/util/auth/UserAuthUtil;->listener:Lcom/unisound/passport/PassportListener;

    new-instance v0, Lcom/unisound/vui/data/entity/out/a;

    invoke-direct {v0}, Lcom/unisound/vui/data/entity/out/a;-><init>()V

    sput-object v0, Lcom/unisound/vui/util/auth/UserAuthUtil;->uniUserAuth:Lcom/unisound/vui/data/entity/out/a;

    return-void
.end method

.method static synthetic access$000(Lcom/unisound/vui/util/auth/UserAuthUtil;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/unisound/vui/util/auth/UserAuthUtil;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/unisound/vui/util/auth/UserAuthUtil;->handleResult(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/unisound/vui/util/auth/UserAuthUtil;
    .locals 2

    sget-object v0, Lcom/unisound/vui/util/auth/UserAuthUtil;->userAuthUtil:Lcom/unisound/vui/util/auth/UserAuthUtil;

    if-nez v0, :cond_1

    const-class v1, Lcom/unisound/vui/util/auth/UserAuthUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/unisound/vui/util/auth/UserAuthUtil;->userAuthUtil:Lcom/unisound/vui/util/auth/UserAuthUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unisound/vui/util/auth/UserAuthUtil;

    invoke-direct {v0}, Lcom/unisound/vui/util/auth/UserAuthUtil;-><init>()V

    sput-object v0, Lcom/unisound/vui/util/auth/UserAuthUtil;->userAuthUtil:Lcom/unisound/vui/util/auth/UserAuthUtil;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/unisound/vui/util/auth/UserAuthUtil;->userAuthUtil:Lcom/unisound/vui/util/auth/UserAuthUtil;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "passportId"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/JsonTool;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "passportToken"

    invoke-static {v0, v2}, Lcom/unisound/vui/util/JsonTool;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/unisound/vui/util/auth/UserAuthUtil;->setIdAndToken(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/unisound/vui/util/auth/UserAuthUtil;->uniUserAuth:Lcom/unisound/vui/data/entity/out/a;

    invoke-direct {p0, v0}, Lcom/unisound/vui/util/auth/UserAuthUtil;->setUniUserAuth(Lcom/unisound/vui/data/entity/out/a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private request(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "udid"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/unisound/vui/util/auth/PassPortUtil;

    invoke-direct {v0, p1}, Lcom/unisound/vui/util/auth/PassPortUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2, p3}, Lcom/unisound/vui/util/auth/PassPortUtil;->initPassPort(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/vui/util/auth/UserAuthUtil;->listener:Lcom/unisound/passport/PassportListener;

    invoke-virtual {v0, v1}, Lcom/unisound/vui/util/auth/PassPortUtil;->setPassPortListener(Lcom/unisound/passport/PassportListener;)V

    invoke-virtual {v0}, Lcom/unisound/vui/util/auth/PassPortUtil;->openConnection()V

    return-void
.end method

.method private setIdAndToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "passportId"    # Ljava/lang/String;
    .param p2, "passportToken"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/unisound/vui/util/auth/UserAuthUtil;->uniUserAuth:Lcom/unisound/vui/data/entity/out/a;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/data/entity/out/a;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/unisound/vui/util/auth/UserAuthUtil;->uniUserAuth:Lcom/unisound/vui/data/entity/out/a;

    invoke-virtual {v0, p2}, Lcom/unisound/vui/data/entity/out/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method private setKeyAndUdid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "udid"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/unisound/vui/util/auth/UserAuthUtil;->uniUserAuth:Lcom/unisound/vui/data/entity/out/a;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/data/entity/out/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/unisound/vui/util/auth/UserAuthUtil;->uniUserAuth:Lcom/unisound/vui/data/entity/out/a;

    invoke-virtual {v0, p2}, Lcom/unisound/vui/data/entity/out/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private setUniUserAuth(Lcom/unisound/vui/data/entity/out/a;)V
    .locals 3
    .param p1, "uniUserAuth"    # Lcom/unisound/vui/data/entity/out/a;

    .prologue
    const-string v0, "UserAuthUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUniUserAuth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/unisound/vui/data/entity/out/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/unisound/vui/util/auth/UserAuthUtil;->uniUserAuth:Lcom/unisound/vui/data/entity/out/a;

    return-void
.end method


# virtual methods
.method public getUniUserAuth()Lcom/unisound/vui/data/entity/out/a;
    .locals 1

    sget-object v0, Lcom/unisound/vui/util/auth/UserAuthUtil;->uniUserAuth:Lcom/unisound/vui/data/entity/out/a;

    return-object v0
.end method

.method public requestAuth(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "udid"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p2, p3}, Lcom/unisound/vui/util/auth/UserAuthUtil;->setKeyAndUdid(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/unisound/vui/util/auth/UserAuthUtil;->request(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
