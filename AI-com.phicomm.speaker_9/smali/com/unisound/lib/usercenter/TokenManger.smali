.class public Lcom/unisound/lib/usercenter/TokenManger;
.super Ljava/lang/Object;
.source "TokenManger.java"

# interfaces
.implements Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver$NetStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/usercenter/TokenManger$OnATokenResult;
    }
.end annotation


# static fields
.field private static final ACCESSTOKEN_AUTO_GET:I = 0x2

.field private static final ACCESSTOKEN_UPDATE_FAIL:I = 0x1

.field private static final ACCESSTOKEN_UPDATE_SUCCESS:I = 0x0

.field public static final AUTO_UPDATE_TOKEN_FAIL:Ljava/lang/String; = "at_1001"

.field private static final TAG:Ljava/lang/String; = "TokenManger"

.field private static instance:Lcom/unisound/lib/usercenter/TokenManger; = null

.field private static prepareDealTime:J = 0xe10L

.field private static startTime:J


# instance fields
.field private ACCESSTOKEN_TRY_TIME:I

.field private accessToken:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private eventListener:Lcom/unisound/lib/usercenter/interf/IAssistantGlobalEventListener;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private handler:Landroid/os/Handler;

.field private httpClient:Lcom/unisound/lib/net/UserRequestClient;

.field private isTaskRunning:Z

.field private onATokenResult:Lcom/unisound/lib/usercenter/TokenManger$OnATokenResult;

.field private reportHandler:Landroid/os/Handler;

.field private taskThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->isTaskRunning:Z

    const/16 v0, 0xa

    .line 41
    iput v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->ACCESSTOKEN_TRY_TIME:I

    .line 51
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 52
    invoke-static {}, Lcom/unisound/lib/net/UserRequestClient;->getInstance()Lcom/unisound/lib/net/UserRequestClient;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->httpClient:Lcom/unisound/lib/net/UserRequestClient;

    .line 75
    new-instance v0, Lcom/unisound/lib/usercenter/TokenManger$1;

    invoke-direct {v0, p0}, Lcom/unisound/lib/usercenter/TokenManger$1;-><init>(Lcom/unisound/lib/usercenter/TokenManger;)V

    iput-object v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->reportHandler:Landroid/os/Handler;

    .line 70
    invoke-static {}, Lcom/unisound/lib/utils/GlobalConstant;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->context:Landroid/content/Context;

    .line 71
    invoke-static {}, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->getInstance()Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/unisound/lib/usercenter/TokenManger;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;->registerCheckNetState(Landroid/content/Context;Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver$NetStateListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/unisound/lib/usercenter/TokenManger;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/unisound/lib/usercenter/TokenManger;->afterAccessTokenUpdateFailed()V

    return-void
.end method

.method static synthetic access$100(Lcom/unisound/lib/usercenter/TokenManger;Landroid/os/Message;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/unisound/lib/usercenter/TokenManger;->afterGetAccessToken(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/unisound/lib/usercenter/TokenManger;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/unisound/lib/usercenter/TokenManger;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/unisound/lib/usercenter/TokenManger;Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/unisound/lib/usercenter/TokenManger;->updateAccessToken(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/unisound/lib/usercenter/TokenManger;Lokhttp3/Response;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/unisound/lib/usercenter/TokenManger;->aftergetAccessToken(Lokhttp3/Response;)V

    return-void
.end method

.method static synthetic access$500(Lcom/unisound/lib/usercenter/TokenManger;ILjava/lang/Object;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/unisound/lib/usercenter/TokenManger;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/unisound/lib/usercenter/TokenManger;)Lcom/unisound/lib/net/UserRequestClient;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/unisound/lib/usercenter/TokenManger;->httpClient:Lcom/unisound/lib/net/UserRequestClient;

    return-object p0
.end method

.method private afterAccessTokenUpdateFailed()V
    .locals 4

    const-string v0, "TokenManger"

    const-string v1, "ACCESSTOKEN_UPDATE_SUCCESS------>1"

    .line 93
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->ACCESSTOKEN_TRY_TIME:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->ACCESSTOKEN_TRY_TIME:I

    .line 95
    iget v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->ACCESSTOKEN_TRY_TIME:I

    if-lez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/unisound/lib/usercenter/TokenManger$2;

    invoke-direct {v1, p0}, Lcom/unisound/lib/usercenter/TokenManger$2;-><init>(Lcom/unisound/lib/usercenter/TokenManger;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->eventListener:Lcom/unisound/lib/usercenter/interf/IAssistantGlobalEventListener;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->eventListener:Lcom/unisound/lib/usercenter/interf/IAssistantGlobalEventListener;

    iget-object v2, p0, Lcom/unisound/lib/usercenter/TokenManger;->context:Landroid/content/Context;

    sget v3, Lcom/unisound/lib/connect/R$string;->auto_refresh_token:I

    .line 105
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-interface {v0, v1, v2}, Lcom/unisound/lib/usercenter/interf/IAssistantGlobalEventListener;->onUserGlobalEvent(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private afterGetAccessToken(Landroid/os/Message;)V
    .locals 2

    const-string v0, "TokenManger"

    const-string v1, "ACCESSTOKEN_AUTO_GET------>ACCESSTOKEN_AUTO_GET"

    .line 111
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->onATokenResult:Lcom/unisound/lib/usercenter/TokenManger$OnATokenResult;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->onATokenResult:Lcom/unisound/lib/usercenter/TokenManger$OnATokenResult;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/unisound/lib/usercenter/TokenManger$OnATokenResult;->onTokenCallBack(I)V

    :cond_0
    return-void
.end method

.method private aftergetAccessToken(Lokhttp3/Response;)V
    .locals 1

    .line 216
    invoke-direct {p0, p1}, Lcom/unisound/lib/usercenter/TokenManger;->parseData(Lokhttp3/Response;)Lcom/unisound/lib/usercenter/bean/UserCResult;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 219
    invoke-direct {p0, p1}, Lcom/unisound/lib/usercenter/TokenManger;->getResultSuccess(Lcom/unisound/lib/usercenter/bean/UserCResult;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    const/16 v0, -0x270e

    .line 221
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/unisound/lib/usercenter/TokenManger;->sendMessage(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/unisound/lib/usercenter/TokenManger;
    .locals 1

    .line 123
    sget-object v0, Lcom/unisound/lib/usercenter/TokenManger;->instance:Lcom/unisound/lib/usercenter/TokenManger;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/unisound/lib/usercenter/TokenManger;

    invoke-direct {v0}, Lcom/unisound/lib/usercenter/TokenManger;-><init>()V

    sput-object v0, Lcom/unisound/lib/usercenter/TokenManger;->instance:Lcom/unisound/lib/usercenter/TokenManger;

    .line 126
    :cond_0
    sget-object v0, Lcom/unisound/lib/usercenter/TokenManger;->instance:Lcom/unisound/lib/usercenter/TokenManger;

    return-object v0
.end method

.method private getResultSuccess(Lcom/unisound/lib/usercenter/bean/UserCResult;)V
    .locals 4

    .line 247
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 248
    iput v1, v0, Landroid/os/Message;->what:I

    .line 249
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bean/UserCResult;->getResult()Lcom/unisound/lib/usercenter/bean/Result;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bean/UserCResult;->getResult()Lcom/unisound/lib/usercenter/bean/Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/lib/usercenter/bean/Result;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bean/UserCResult;->getResult()Lcom/unisound/lib/usercenter/bean/Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unisound/lib/usercenter/bean/Result;->getValidTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/unisound/lib/utils/UserSpUtil;->setAccessTokenValidTime(J)V

    .line 252
    invoke-direct {p0, v1}, Lcom/unisound/lib/usercenter/TokenManger;->setAccessToken(Ljava/lang/String;)V

    .line 253
    invoke-static {v1}, Lcom/unisound/lib/utils/UserSpUtil;->setAccessToken(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bean/UserCResult;->getReturnCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/lib/usercenter/ResponseCode;->getReturnCode(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 255
    iget-object p1, p0, Lcom/unisound/lib/usercenter/TokenManger;->reportHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bean/UserCResult;->getReturnCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/lib/usercenter/ResponseCode;->getReturnCode(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 259
    :goto_0
    iget-object p1, p0, Lcom/unisound/lib/usercenter/TokenManger;->reportHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private parseData(Lokhttp3/Response;)Lcom/unisound/lib/usercenter/bean/UserCResult;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 229
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    const-class v1, Lcom/unisound/lib/usercenter/bean/UserCResult;

    invoke-static {p1, v1}, Lcom/unisound/lib/utils/JsonTool;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/lib/usercenter/bean/UserCResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 234
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .locals 1

    .line 263
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 264
    iput p1, v0, Landroid/os/Message;->what:I

    .line 265
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 266
    iget-object p1, p0, Lcom/unisound/lib/usercenter/TokenManger;->reportHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/unisound/lib/usercenter/TokenManger;->accessToken:Ljava/lang/String;

    return-void
.end method

.method private updateAccessToken(Landroid/content/Context;)V
    .locals 8

    const/4 v0, 0x0

    .line 273
    iput-boolean v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->isTaskRunning:Z

    .line 274
    invoke-static {p1}, Lcom/unisound/lib/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    .line 275
    invoke-static {p1}, Lcom/unisound/lib/utils/UserSpUtil;->getFlushToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_3

    const-string v1, "TokenManger"

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAccessToken flushToken:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    new-instance v1, Lcom/unisound/lib/usercenter/bean/TokenHeader;

    invoke-direct {v1}, Lcom/unisound/lib/usercenter/bean/TokenHeader;-><init>()V

    .line 279
    invoke-virtual {v1, v2}, Lcom/unisound/lib/usercenter/bean/TokenHeader;->setFlushToken(Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/unisound/lib/utils/UserSpUtil;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/unisound/lib/usercenter/bean/TokenHeader;->setClientId(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    const-string v5, "TokenManger"

    .line 284
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAccessToken flushToken :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v2, p0, Lcom/unisound/lib/usercenter/TokenManger;->httpClient:Lcom/unisound/lib/net/UserRequestClient;

    invoke-virtual {v2, p1, v1}, Lcom/unisound/lib/net/UserRequestClient;->flushToken(Ljava/lang/Object;Lcom/unisound/lib/usercenter/bean/TokenHeader;)Lcom/unisound/lib/usercenter/bean/UserCResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "TokenManger"

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAccessToken result :"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 287
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bean/UserCResult;->getResult()Lcom/unisound/lib/usercenter/bean/Result;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bean/UserCResult;->getResult()Lcom/unisound/lib/usercenter/bean/Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/lib/usercenter/bean/Result;->getAccessToken()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 293
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 294
    invoke-direct {p0, v1}, Lcom/unisound/lib/usercenter/TokenManger;->setAccessToken(Ljava/lang/String;)V

    .line 295
    invoke-static {v1}, Lcom/unisound/lib/utils/UserSpUtil;->setAccessToken(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object p1, v3

    goto :goto_3

    :catch_1
    move-exception v1

    move-object p1, v3

    .line 291
    :goto_1
    :try_start_2
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 293
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 294
    invoke-direct {p0, v3}, Lcom/unisound/lib/usercenter/TokenManger;->setAccessToken(Ljava/lang/String;)V

    .line 295
    invoke-static {v3}, Lcom/unisound/lib/utils/UserSpUtil;->setAccessToken(Ljava/lang/String;)V

    .line 296
    :goto_2
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bean/UserCResult;->getResult()Lcom/unisound/lib/usercenter/bean/Result;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bean/Result;->getValidTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/unisound/lib/utils/UserSpUtil;->setAccessTokenValidTime(J)V

    .line 297
    iget-object p1, p0, Lcom/unisound/lib/usercenter/TokenManger;->reportHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 299
    :cond_1
    iget-object p1, p0, Lcom/unisound/lib/usercenter/TokenManger;->reportHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    :catchall_1
    move-exception v1

    .line 293
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 294
    invoke-direct {p0, v3}, Lcom/unisound/lib/usercenter/TokenManger;->setAccessToken(Ljava/lang/String;)V

    .line 295
    invoke-static {v3}, Lcom/unisound/lib/utils/UserSpUtil;->setAccessToken(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bean/UserCResult;->getResult()Lcom/unisound/lib/usercenter/bean/Result;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bean/Result;->getValidTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/unisound/lib/utils/UserSpUtil;->setAccessTokenValidTime(J)V

    .line 297
    iget-object p1, p0, Lcom/unisound/lib/usercenter/TokenManger;->reportHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 299
    :cond_2
    iget-object p1, p0, Lcom/unisound/lib/usercenter/TokenManger;->reportHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_4
    throw v1

    :cond_3
    const-string p1, "TokenManger"

    const-string v0, "update accessToken conenct wifi fail"

    .line 304
    invoke-static {p1, v0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessTokenCallBack(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unisound/lib/usercenter/TokenManger$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/unisound/lib/usercenter/TokenManger$4;-><init>(Lcom/unisound/lib/usercenter/TokenManger;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onNetConnected()V
    .locals 2

    const-string v0, "TokenManger"

    const-string v1, "onNetConnected"

    .line 313
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/unisound/lib/usercenter/TokenManger;->startUpdateTokenTask()V

    return-void
.end method

.method public onNetConnecting()V
    .locals 2

    const-string v0, "TokenManger"

    const-string v1, "onNetConnecting"

    .line 309
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNetDisconnected()V
    .locals 6

    const-string v0, "TokenManger"

    const-string v1, "onNetDisconnected"

    .line 318
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 321
    iput-boolean v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->isTaskRunning:Z

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/unisound/lib/usercenter/TokenManger;->startTime:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x3e8

    div-long/2addr v4, v0

    .line 323
    invoke-static {}, Lcom/unisound/lib/utils/UserSpUtil;->getAccessTokenValidTime()J

    move-result-wide v0

    sub-long v2, v0, v4

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 326
    invoke-static {v2, v3}, Lcom/unisound/lib/utils/UserSpUtil;->setAccessTokenValidTime(J)V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->taskThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->taskThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 331
    iget-object v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->taskThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_0

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->taskThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setOnATokenResult(Lcom/unisound/lib/usercenter/TokenManger$OnATokenResult;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/unisound/lib/usercenter/TokenManger;->onATokenResult:Lcom/unisound/lib/usercenter/TokenManger$OnATokenResult;

    return-void
.end method

.method public setUserGlobalEventListener(Lcom/unisound/lib/usercenter/interf/IAssistantGlobalEventListener;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/unisound/lib/usercenter/TokenManger;->eventListener:Lcom/unisound/lib/usercenter/interf/IAssistantGlobalEventListener;

    return-void
.end method

.method public startUpdateTokenTask()V
    .locals 9

    .line 164
    invoke-static {}, Lcom/unisound/lib/utils/UserSpUtil;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {}, Lcom/unisound/lib/utils/UserSpUtil;->getAccessTokenValidTime()J

    move-result-wide v1

    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-wide v3, Lcom/unisound/lib/usercenter/TokenManger;->prepareDealTime:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_1

    const-string v0, "TokenManger"

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start update accessToken task time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "TokenManger"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->taskThread:Landroid/os/HandlerThread;

    .line 169
    iget-object v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->taskThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 170
    new-instance v0, Landroid/os/Handler;

    iget-object v3, p0, Lcom/unisound/lib/usercenter/TokenManger;->taskThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->handler:Landroid/os/Handler;

    .line 171
    iget-boolean v0, p0, Lcom/unisound/lib/usercenter/TokenManger;->isTaskRunning:Z

    if-nez v0, :cond_1

    .line 172
    const-class v0, Lcom/unisound/lib/usercenter/TokenManger;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-boolean v3, p0, Lcom/unisound/lib/usercenter/TokenManger;->isTaskRunning:Z

    if-nez v3, :cond_0

    .line 174
    iget-object v3, p0, Lcom/unisound/lib/usercenter/TokenManger;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/unisound/lib/usercenter/TokenManger$3;

    invoke-direct {v4, p0}, Lcom/unisound/lib/usercenter/TokenManger$3;-><init>(Lcom/unisound/lib/usercenter/TokenManger;)V

    sget-wide v5, Lcom/unisound/lib/usercenter/TokenManger;->prepareDealTime:J

    sub-long v7, v1, v5

    const-wide/16 v1, 0x3e8

    mul-long/2addr v7, v1

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x1

    .line 179
    iput-boolean v1, p0, Lcom/unisound/lib/usercenter/TokenManger;->isTaskRunning:Z

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/unisound/lib/usercenter/TokenManger;->startTime:J

    .line 182
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method
