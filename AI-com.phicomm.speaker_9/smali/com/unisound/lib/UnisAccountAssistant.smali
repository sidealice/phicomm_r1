.class public Lcom/unisound/lib/UnisAccountAssistant;
.super Ljava/lang/Object;
.source "UnisAccountAssistant.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/unisound/lib/usercenter/TokenManger$OnATokenResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/UnisAccountAssistant$SingleFactory;
    }
.end annotation


# static fields
.field private static final MESSAGE_TYPE_FLUSH_TOKEN:I = 0x1

.field private static final MESSAGE_TYPE_LOGOUT:I = 0x14

.field private static final MESSAGE_TYPE_RESPONSE_DISP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UnisAccountAssistant"


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private handler:Landroid/os/Handler;

.field private httpClient:Lcom/unisound/lib/net/UserRequestClient;

.field private mAssistantCallBackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/common/ICommonCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mICommonCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/common/ICommonCallback;",
            ">;"
        }
    .end annotation
.end field

.field private tokenManger:Lcom/unisound/lib/usercenter/TokenManger;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/unisound/lib/net/UserRequestClient;->getInstance()Lcom/unisound/lib/net/UserRequestClient;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/lib/UnisAccountAssistant;->httpClient:Lcom/unisound/lib/net/UserRequestClient;

    .line 42
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/lib/UnisAccountAssistant;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/lib/UnisAccountAssistant;->mAssistantCallBackList:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/lib/UnisAccountAssistant;->mICommonCallbacks:Ljava/util/List;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/unisound/lib/UnisAccountAssistant;->handler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/unisound/lib/UnisAccountAssistant$1;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/unisound/lib/UnisAccountAssistant;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/unisound/lib/UnisAccountAssistant;Lokhttp3/Response;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/unisound/lib/UnisAccountAssistant;->afterLogin(Lokhttp3/Response;)V

    return-void
.end method

.method static synthetic access$200(Lcom/unisound/lib/UnisAccountAssistant;IILjava/lang/Object;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/unisound/lib/UnisAccountAssistant;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/unisound/lib/UnisAccountAssistant;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpUserCallBack;)V
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p6}, Lcom/unisound/lib/UnisAccountAssistant;->loginUserCenter(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpUserCallBack;)V

    return-void
.end method

.method static synthetic access$400(Lcom/unisound/lib/UnisAccountAssistant;)Lcom/unisound/lib/usercenter/bean/TokenHeader;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/unisound/lib/UnisAccountAssistant;->setExitParam()Lcom/unisound/lib/usercenter/bean/TokenHeader;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/unisound/lib/UnisAccountAssistant;Lokhttp3/Response;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/unisound/lib/UnisAccountAssistant;->afterGetLogutResult(Lokhttp3/Response;)V

    return-void
.end method

.method static synthetic access$600(Lcom/unisound/lib/UnisAccountAssistant;)Lcom/unisound/lib/net/UserRequestClient;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/unisound/lib/UnisAccountAssistant;->httpClient:Lcom/unisound/lib/net/UserRequestClient;

    return-object p0
.end method

.method private afterGetLogutResult(Lokhttp3/Response;)V
    .locals 4

    const/4 v0, 0x0

    .line 336
    invoke-direct {p0, p1, v0, v0}, Lcom/unisound/lib/UnisAccountAssistant;->pareseExitData(Lokhttp3/Response;Ljava/lang/String;Lcom/unisound/lib/usercenter/bean/UserCResult;)Lcom/unisound/lib/usercenter/bean/UserCResult;

    move-result-object p1

    const/16 v1, 0x14

    if-eqz p1, :cond_0

    const-string v2, "uc_0000"

    .line 338
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bean/UserCResult;->getReturnCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bean/UserCResult;->getReturnCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/lib/usercenter/ResponseCode;->getReturnCode(Ljava/lang/String;)I

    move-result v0

    .line 340
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bean/UserCResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 339
    invoke-direct {p0, v1, v0, p1}, Lcom/unisound/lib/UnisAccountAssistant;->sendMessage(IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 p1, -0x270f

    .line 342
    invoke-direct {p0, v1, p1, v0}, Lcom/unisound/lib/UnisAccountAssistant;->sendMessage(IILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private afterLogin(Lokhttp3/Response;)V
    .locals 2

    const/4 v0, 0x0

    .line 242
    invoke-direct {p0, p1, v0}, Lcom/unisound/lib/UnisAccountAssistant;->parseUserData(Lokhttp3/Response;Lcom/unisound/lib/usercenter/bean/UserCResult;)Lcom/unisound/lib/usercenter/bean/UserCResult;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "tpls_0000"

    .line 243
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bean/UserCResult;->getReturnCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-direct {p0, p1}, Lcom/unisound/lib/UnisAccountAssistant;->setFlushToken(Lcom/unisound/lib/usercenter/bean/UserCResult;)V

    goto :goto_0

    .line 246
    :cond_0
    invoke-direct {p0, p1}, Lcom/unisound/lib/UnisAccountAssistant;->loginFailCallback(Lcom/unisound/lib/usercenter/bean/UserCResult;)V

    :goto_0
    return-void
.end method

.method private dispatcherLogoutResult(ILjava/lang/String;)V
    .locals 1

    .line 92
    iget-object p2, p0, Lcom/unisound/lib/UnisAccountAssistant;->mICommonCallbacks:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 93
    iget-object p2, p0, Lcom/unisound/lib/UnisAccountAssistant;->mICommonCallbacks:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/common/ICommonCallback;

    .line 94
    invoke-interface {v0, p1}, Lcom/unisound/lib/common/ICommonCallback;->onResult(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatcherResult(I)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/unisound/lib/UnisAccountAssistant;->mAssistantCallBackList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/unisound/lib/UnisAccountAssistant;->mAssistantCallBackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/lib/common/ICommonCallback;

    .line 83
    invoke-interface {v1, p1}, Lcom/unisound/lib/common/ICommonCallback;->onResult(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/unisound/lib/UnisAccountAssistant;
    .locals 1

    .line 127
    sget-object v0, Lcom/unisound/lib/UnisAccountAssistant$SingleFactory;->instant:Lcom/unisound/lib/UnisAccountAssistant;

    return-object v0
.end method

.method private loginFailCallback(Lcom/unisound/lib/usercenter/bean/UserCResult;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 278
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bean/UserCResult;->getReturnCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/lib/usercenter/ResponseCode;->getReturnCode(Ljava/lang/String;)I

    move-result v1

    .line 279
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bean/UserCResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-direct {p0, v0, v1, p1}, Lcom/unisound/lib/UnisAccountAssistant;->sendMessage(IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 p1, -0x270f

    const/4 v1, 0x0

    .line 281
    invoke-direct {p0, v0, p1, v1}, Lcom/unisound/lib/UnisAccountAssistant;->sendMessage(IILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private loginUserCenter(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpUserCallBack;)V
    .locals 1

    .line 288
    new-instance p1, Lcom/unisound/lib/usercenter/bean/LoginHeader;

    invoke-direct {p1}, Lcom/unisound/lib/usercenter/bean/LoginHeader;-><init>()V

    const-string v0, "thirdParty"

    .line 289
    invoke-virtual {p1, v0}, Lcom/unisound/lib/usercenter/bean/LoginHeader;->setLoginType(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p1, p2}, Lcom/unisound/lib/usercenter/bean/LoginHeader;->setThirdPartyId(I)V

    .line 291
    invoke-virtual {p1, p3}, Lcom/unisound/lib/usercenter/bean/LoginHeader;->setClientId(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p1, p4}, Lcom/unisound/lib/usercenter/bean/LoginHeader;->setThirdPartyToken(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p1, p5}, Lcom/unisound/lib/usercenter/bean/LoginHeader;->setExtData(Ljava/lang/String;)V

    .line 296
    :try_start_0
    iget-object p2, p0, Lcom/unisound/lib/UnisAccountAssistant;->httpClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string p3, "UnisAccountAssistant"

    invoke-virtual {p2, p3, p1, p6}, Lcom/unisound/lib/net/UserRequestClient;->loginUserCenter(Ljava/lang/Object;Lcom/unisound/lib/usercenter/bean/LoginHeader;Lcom/unisound/lib/net/HttpUserCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 298
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private pareseExitData(Lokhttp3/Response;Ljava/lang/String;Lcom/unisound/lib/usercenter/bean/UserCResult;)Lcom/unisound/lib/usercenter/bean/UserCResult;
    .locals 0

    .line 349
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 351
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    move-object p1, p2

    .line 353
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 354
    const-class p2, Lcom/unisound/lib/usercenter/bean/UserCResult;

    invoke-static {p1, p2}, Lcom/unisound/lib/utils/JsonTool;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lcom/unisound/lib/usercenter/bean/UserCResult;

    :cond_0
    return-object p3
.end method

.method private parseUserData(Lokhttp3/Response;Lcom/unisound/lib/usercenter/bean/UserCResult;)Lcom/unisound/lib/usercenter/bean/UserCResult;
    .locals 3

    .line 254
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnisAccountAssistant"

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "\"returnCode\""

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 257
    const-class p1, Lcom/unisound/lib/usercenter/bean/UserCResult;

    invoke-static {v0, p1}, Lcom/unisound/lib/utils/JsonTool;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/lib/usercenter/bean/UserCResult;

    move-object p2, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/16 v0, -0x270e

    const/4 v1, 0x0

    .line 259
    invoke-direct {p0, p1, v0, v1}, Lcom/unisound/lib/UnisAccountAssistant;->sendMessage(IILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 262
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object p2
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .locals 1

    .line 107
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 108
    iput p1, v0, Landroid/os/Message;->what:I

    .line 109
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 110
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 111
    iget-object p1, p0, Lcom/unisound/lib/UnisAccountAssistant;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendMessage(ILjava/lang/String;)V
    .locals 1

    .line 100
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 101
    iput p1, v0, Landroid/os/Message;->what:I

    .line 102
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 103
    iget-object p1, p0, Lcom/unisound/lib/UnisAccountAssistant;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setExitParam()Lcom/unisound/lib/usercenter/bean/TokenHeader;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 326
    new-instance v0, Lcom/unisound/lib/usercenter/bean/TokenHeader;

    invoke-direct {v0}, Lcom/unisound/lib/usercenter/bean/TokenHeader;-><init>()V

    .line 327
    invoke-static {}, Lcom/unisound/lib/utils/UserSpUtil;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/usercenter/bean/TokenHeader;->setAccessToken(Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/unisound/lib/utils/UserSpUtil;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/usercenter/bean/TokenHeader;->setClientId(Ljava/lang/String;)V

    return-object v0
.end method

.method private setFlushToken(Lcom/unisound/lib/usercenter/bean/UserCResult;)V
    .locals 3

    .line 269
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bean/UserCResult;->getResult()Lcom/unisound/lib/usercenter/bean/Result;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bean/Result;->getFlushToken()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UnisAccountAssistant"

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindAccount login getFlushToken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {p1}, Lcom/unisound/lib/utils/UserSpUtil;->setFlushToken(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 272
    invoke-direct {p0, v0, p1}, Lcom/unisound/lib/UnisAccountAssistant;->sendMessage(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bindAccount(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 222
    invoke-static {p3}, Lcom/unisound/lib/utils/UserSpUtil;->setClientId(Ljava/lang/String;)V

    .line 223
    iget-object p1, p0, Lcom/unisound/lib/UnisAccountAssistant;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/unisound/lib/UnisAccountAssistant$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/unisound/lib/UnisAccountAssistant$1;-><init>(Lcom/unisound/lib/UnisAccountAssistant;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public cancleHttpRequest()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/unisound/lib/UnisAccountAssistant;->httpClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisAccountAssistant"

    invoke-virtual {v0, v1}, Lcom/unisound/lib/net/UserRequestClient;->cancelHttpTask(Ljava/lang/String;)V

    return-void
.end method

.method public exitUserCenter(Ljava/lang/Object;)V
    .locals 1

    .line 308
    iget-object p1, p0, Lcom/unisound/lib/UnisAccountAssistant;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/unisound/lib/UnisAccountAssistant$2;

    invoke-direct {v0, p0}, Lcom/unisound/lib/UnisAccountAssistant$2;-><init>(Lcom/unisound/lib/UnisAccountAssistant;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 65
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/unisound/lib/UnisAccountAssistant;->tokenManger:Lcom/unisound/lib/usercenter/TokenManger;

    invoke-virtual {v0, p0, p1}, Lcom/unisound/lib/usercenter/TokenManger;->getAccessTokenCallBack(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/unisound/lib/UnisAccountAssistant;->dispatcherResult(I)V

    goto :goto_0

    .line 69
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/unisound/lib/UnisAccountAssistant;->dispatcherLogoutResult(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initConfig(Landroid/app/Application;)V
    .locals 0

    .line 191
    invoke-static {p1}, Lcom/unisound/lib/utils/GlobalConstant;->setContext(Landroid/content/Context;)V

    .line 192
    invoke-static {}, Lcom/unisound/lib/usercenter/TokenManger;->getInstance()Lcom/unisound/lib/usercenter/TokenManger;

    move-result-object p1

    iput-object p1, p0, Lcom/unisound/lib/UnisAccountAssistant;->tokenManger:Lcom/unisound/lib/usercenter/TokenManger;

    .line 193
    iget-object p1, p0, Lcom/unisound/lib/UnisAccountAssistant;->tokenManger:Lcom/unisound/lib/usercenter/TokenManger;

    invoke-virtual {p1, p0}, Lcom/unisound/lib/usercenter/TokenManger;->setOnATokenResult(Lcom/unisound/lib/usercenter/TokenManger$OnATokenResult;)V

    return-void
.end method

.method public onTokenCallBack(I)V
    .locals 3

    const-string v0, "UnisAccountAssistant"

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stateCode----->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 361
    invoke-direct {p0, v0, p1, v1}, Lcom/unisound/lib/UnisAccountAssistant;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method public removeCallBack(Lcom/unisound/lib/common/ICommonCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/unisound/lib/UnisAccountAssistant;->mAssistantCallBackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/unisound/lib/UnisAccountAssistant;->mAssistantCallBackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeLogoutListener(Lcom/unisound/lib/common/ICommonCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/unisound/lib/UnisAccountAssistant;->mICommonCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/unisound/lib/UnisAccountAssistant;->mICommonCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public requestApplicationPermission(Landroid/app/Activity;)V
    .locals 2

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.READ_SMS"

    .line 203
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 204
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 205
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 206
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v1, Lcom/unisound/lib/utils/PermissionUtils;->permissionGrant:Lcom/unisound/lib/utils/PermissionUtils$PermissionGrant;

    invoke-static {p1, v0, v1}, Lcom/unisound/lib/utils/PermissionUtils;->requestMultiPermissions(Landroid/app/Activity;Ljava/util/List;Lcom/unisound/lib/utils/PermissionUtils$PermissionGrant;)V

    return-void
.end method

.method public setCallBack(Lcom/unisound/lib/common/ICommonCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/unisound/lib/UnisAccountAssistant;->mAssistantCallBackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/unisound/lib/UnisAccountAssistant;->mAssistantCallBackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setLogoutListener(Lcom/unisound/lib/common/ICommonCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/unisound/lib/UnisAccountAssistant;->mICommonCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/unisound/lib/UnisAccountAssistant;->mICommonCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setUserGlobalEventListener(Lcom/unisound/lib/usercenter/interf/IAssistantGlobalEventListener;)V
    .locals 1

    .line 180
    invoke-static {}, Lcom/unisound/lib/usercenter/TokenManger;->getInstance()Lcom/unisound/lib/usercenter/TokenManger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unisound/lib/usercenter/TokenManger;->setUserGlobalEventListener(Lcom/unisound/lib/usercenter/interf/IAssistantGlobalEventListener;)V

    .line 181
    invoke-static {}, Lcom/unisound/lib/utils/GlobalConstant;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/lib/msgcenter/DataChannelManager;->getDataChannelManager(Landroid/content/Context;)Lcom/unisound/lib/msgcenter/DataChannelManager;

    move-result-object v0

    .line 182
    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/DataChannelManager;->setGlobalEventListener(Lcom/unisound/lib/usercenter/interf/IAssistantGlobalEventListener;)V

    return-void
.end method
