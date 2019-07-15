.class public Lcom/unisound/lib/UnisDeviceAssistant;
.super Ljava/lang/Object;
.source "UnisDeviceAssistant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/UnisDeviceAssistant$SingleFactory;
    }
.end annotation


# static fields
.field private static final CONTENT:Ljava/lang/String; = "content"

.field private static final OPERATION_TYPE:Ljava/lang/String; = "operationType"

.field private static final TAG:Ljava/lang/String; = "UnisDeviceAssistant"


# instance fields
.field private mICommonCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/common/ICommonCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

.field private mRingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mICommonCallbacks:Ljava/util/List;

    .line 60
    invoke-static {}, Lcom/unisound/lib/net/UserRequestClient;->getInstance()Lcom/unisound/lib/net/UserRequestClient;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    return-void
.end method

.method synthetic constructor <init>(Lcom/unisound/lib/UnisDeviceAssistant$1;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/unisound/lib/UnisDeviceAssistant;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/unisound/lib/UnisDeviceAssistant;->parseBindDeviceData(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/unisound/lib/UnisDeviceAssistant;->afterOnlineResult(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/devices/callback/ILogMessageCallback;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/unisound/lib/UnisDeviceAssistant;->handleNLUdata(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/devices/callback/ILogMessageCallback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/unisound/lib/UnisDeviceAssistant;->afterGetBindResult(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V

    return-void
.end method

.method static synthetic access$500(Lcom/unisound/lib/UnisDeviceAssistant;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/unisound/lib/UnisDeviceAssistant;->afterResp(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/unisound/lib/UnisDeviceAssistant;->afterGetUnBindResult(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method static synthetic access$700(Lcom/unisound/lib/UnisDeviceAssistant;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/unisound/lib/UnisDeviceAssistant;->pareseWakeupWordData(Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method private afterGetBindResult(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 2

    .line 359
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 360
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    invoke-direct {p0, p1}, Lcom/unisound/lib/UnisDeviceAssistant;->afterRespOk(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V

    goto :goto_0

    :cond_0
    const-string v1, "400013"

    .line 362
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    invoke-direct {p0, p1}, Lcom/unisound/lib/UnisDeviceAssistant;->aterRespBindAlready(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V

    goto :goto_0

    .line 365
    :cond_1
    invoke-direct {p0, p1}, Lcom/unisound/lib/UnisDeviceAssistant;->afterRespFail(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V

    :goto_0
    return-void
.end method

.method private afterGetUnBindResult(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 2

    .line 436
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 437
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0, p1}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "400010"

    .line 439
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 440
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0, p1}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    goto :goto_0

    .line 442
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0, p1}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private afterOnlineResult(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 3

    const/4 v0, 0x0

    .line 161
    :try_start_0
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "UnisDeviceAssistant"

    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-class v1, Lcom/unisound/lib/msgcenter/bean/DeviceStatus;

    invoke-virtual {p1, v1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getEntity(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/lib/msgcenter/bean/DeviceStatus;

    .line 164
    invoke-virtual {v1}, Lcom/unisound/lib/msgcenter/bean/DeviceStatus;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unisound/lib/msgcenter/bean/DeviceStatus;->setUdid(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2, v1}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1, v0}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 170
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1, v0}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    const-string p1, "UnisDeviceAssistant"

    .line 171
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDeviceConnectStatsu e = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private afterResp(I)V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mICommonCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mICommonCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/lib/common/ICommonCallback;

    .line 352
    invoke-interface {v1, p1}, Lcom/unisound/lib/common/ICommonCallback;->onResult(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private afterRespFail(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 2

    const-string v0, "UnisDeviceAssistant"

    const-string v1, "bind device fail"

    .line 387
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/unisound/lib/UnisDeviceAssistant;->afterResp(I)V

    return-void
.end method

.method private afterRespOk(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 2

    const-string v0, "UnisDeviceAssistant"

    const-string v1, "bind success"

    .line 371
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 372
    invoke-static {v0}, Lcom/unisound/lib/utils/UserSpUtil;->setDeviceBind(Z)V

    .line 373
    invoke-static {}, Lcom/unisound/lib/utils/GlobalConstant;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/lib/UnisDeviceAssistant;->initMsgCenter(Landroid/content/Context;)V

    .line 374
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/unisound/lib/UnisDeviceAssistant;->afterResp(I)V

    return-void
.end method

.method private aterRespBindAlready(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 2

    const-string v0, "UnisDeviceAssistant"

    const-string v1, "repeat bind device"

    .line 379
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 380
    invoke-static {v0}, Lcom/unisound/lib/utils/UserSpUtil;->setDeviceBind(Z)V

    .line 381
    invoke-static {}, Lcom/unisound/lib/utils/GlobalConstant;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/lib/UnisDeviceAssistant;->initMsgCenter(Landroid/content/Context;)V

    .line 382
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/unisound/lib/UnisDeviceAssistant;->afterResp(I)V

    return-void
.end method

.method private bindDevices(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 334
    invoke-static {}, Lcom/unisound/lib/utils/UserSpUtil;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 335
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    new-instance v6, Lcom/unisound/lib/UnisDeviceAssistant$8;

    invoke-direct {v6, p0}, Lcom/unisound/lib/UnisDeviceAssistant$8;-><init>(Lcom/unisound/lib/UnisDeviceAssistant;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/unisound/lib/net/UserRequestClient;->startBindDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public static getInstance()Lcom/unisound/lib/UnisDeviceAssistant;
    .locals 1

    .line 79
    sget-object v0, Lcom/unisound/lib/UnisDeviceAssistant$SingleFactory;->instant:Lcom/unisound/lib/UnisDeviceAssistant;

    return-object v0
.end method

.method private getParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 305
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "UnisDeviceAssistant"

    const-string p2, "operationType is null, ignore"

    .line 306
    invoke-static {p1, p2}, Lcom/unisound/lib/utils/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 309
    :cond_0
    invoke-static {p1}, Lcom/unisound/lib/utils/UserSpUtil;->setSelfUdid(Ljava/lang/String;)V

    const-string p1, "operationType"

    .line 310
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "content"

    .line 311
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private handleNLUdata(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/devices/callback/ILogMessageCallback;)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 217
    :try_start_0
    const-class v1, Lcom/unisound/lib/msgcenter/bean/ChatMessage;

    invoke-virtual {p1, v1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getEntity(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/lib/msgcenter/bean/ChatMessage;

    .line 219
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/ChatMessage;->getInfo()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/ChatMessage;->getInfo()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/lib/utils/NluParseUtils;->getLogMsgFromServer(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 222
    :goto_0
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/ChatMessage;->getPageCount()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Lcom/unisound/lib/devices/callback/ILogMessageCallback;->onResult(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 225
    :catch_0
    invoke-interface {p2, v0, v0}, Lcom/unisound/lib/devices/callback/ILogMessageCallback;->onResult(Ljava/util/List;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private initMsgCenter(Landroid/content/Context;)V
    .locals 4

    .line 469
    invoke-static {}, Lcom/unisound/lib/utils/UserSpUtil;->isHaveDeviceBind()Z

    move-result v0

    const-string v1, "UnisDeviceAssistant"

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHaveDeviceBind="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 472
    invoke-static {p1}, Lcom/unisound/lib/msgcenter/DataChannelManager;->getDataChannelManager(Landroid/content/Context;)Lcom/unisound/lib/msgcenter/DataChannelManager;

    move-result-object p1

    const/4 v0, 0x1

    .line 473
    invoke-virtual {p1, v0}, Lcom/unisound/lib/msgcenter/DataChannelManager;->openDataChannel(Z)V

    :cond_0
    return-void
.end method

.method private pareseWakeupWordData(Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 2

    .line 536
    :try_start_0
    const-class v0, Lcom/unisound/lib/device/WakeupWordBean;

    invoke-static {p1, v0}, Lcom/unisound/lib/utils/JsonTool;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/lib/device/WakeupWordBean;

    .line 537
    invoke-virtual {p1}, Lcom/unisound/lib/device/WakeupWordBean;->getResultCode()I

    move-result v0

    invoke-interface {p2, v0, p1}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/16 v0, -0x270e

    const/4 v1, 0x0

    .line 539
    invoke-interface {p2, v0, v1}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    const-string p2, "UnisDeviceAssistant"

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "analytic exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private parseBindDeviceData(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 5

    .line 123
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    :try_start_0
    const-class v0, Lcom/unisound/lib/msgcenter/bean/BindDevice;

    invoke-virtual {p1, v0}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getEntity(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/msgcenter/bean/BindDevice;

    .line 126
    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/bean/BindDevice;->getDevices()Ljava/util/List;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2, v0}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "UnisDeviceAssistant"

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/unisound/lib/utils/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1, v1}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1, v1}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bindDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 327
    invoke-static {p2}, Lcom/unisound/lib/utils/UserSpUtil;->setDeviceId(Ljava/lang/String;)V

    .line 328
    invoke-static {p6}, Lcom/unisound/lib/utils/UserSpUtil;->setDeviceAppKey(Ljava/lang/String;)V

    .line 329
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/unisound/lib/UnisDeviceAssistant;->bindDevices(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public cancleHttpRequest()V
    .locals 2

    .line 699
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisDeviceAssistant"

    invoke-virtual {v0, v1}, Lcom/unisound/lib/net/UserRequestClient;->cancelHttpTask(Ljava/lang/String;)V

    return-void
.end method

.method public closeDormantMode(Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 4

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "isDormant"

    const-string v2, "0"

    .line 285
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "modifyDormantStatus"

    .line 287
    invoke-direct {p0, p1, v1, v0}, Lcom/unisound/lib/UnisDeviceAssistant;->getParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v2, "UnisDeviceAssistant"

    new-instance v3, Lcom/unisound/lib/UnisDeviceAssistant$7;

    invoke-direct {v3, p0, p2}, Lcom/unisound/lib/UnisDeviceAssistant$7;-><init>(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/unisound/lib/net/UserRequestClient;->setSelfDefineContract(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public closeFAQ(Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/lib/callback/HttpDataCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisDeviceAssistant"

    new-instance v2, Lcom/unisound/lib/UnisDeviceAssistant$17;

    invoke-direct {v2, p0, p1}, Lcom/unisound/lib/UnisDeviceAssistant$17;-><init>(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/unisound/lib/net/UserRequestClient;->switchFAQSetting(Ljava/lang/String;ZLcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getAmbientLightStatus(Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 4

    const-string v0, "getAmbientLightStatus"

    const/4 v1, 0x0

    .line 611
    invoke-direct {p0, p1, v0, v1}, Lcom/unisound/lib/UnisDeviceAssistant;->getParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 613
    :cond_0
    iget-object v1, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v2, "UnisDeviceAssistant"

    new-instance v3, Lcom/unisound/lib/UnisDeviceAssistant$16;

    invoke-direct {v3, p0, p2}, Lcom/unisound/lib/UnisDeviceAssistant$16;-><init>(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/unisound/lib/net/UserRequestClient;->setSelfDefineContract(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getBindDeivces(Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisDeviceAssistant"

    new-instance v2, Lcom/unisound/lib/UnisDeviceAssistant$1;

    invoke-direct {v2, p0, p1}, Lcom/unisound/lib/UnisDeviceAssistant$1;-><init>(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/unisound/lib/net/UserRequestClient;->getBindDeivces(Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getChatLog(Lcom/unisound/lib/msgcenter/bean/LogReqInfo;Lcom/unisound/lib/devices/callback/ILogMessageCallback;)V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisDeviceAssistant"

    new-instance v2, Lcom/unisound/lib/UnisDeviceAssistant$3;

    invoke-direct {v2, p0, p2}, Lcom/unisound/lib/UnisDeviceAssistant$3;-><init>(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/devices/callback/ILogMessageCallback;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/unisound/lib/net/UserRequestClient;->getChatLog(Ljava/lang/Object;Lcom/unisound/lib/msgcenter/bean/LogReqInfo;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getDeviceOnlineState(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisDeviceAssistant"

    new-instance v2, Lcom/unisound/lib/UnisDeviceAssistant$2;

    invoke-direct {v2, p0, p3}, Lcom/unisound/lib/UnisDeviceAssistant$2;-><init>(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/unisound/lib/net/UserRequestClient;->getDeviceOnlineState(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getDormantStatus(Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 4

    const-string v0, "getDormantStatus"

    const/4 v1, 0x0

    .line 572
    invoke-direct {p0, p1, v0, v1}, Lcom/unisound/lib/UnisDeviceAssistant;->getParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 574
    :cond_0
    iget-object v1, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v2, "UnisDeviceAssistant"

    new-instance v3, Lcom/unisound/lib/UnisDeviceAssistant$14;

    invoke-direct {v3, p0, p2}, Lcom/unisound/lib/UnisDeviceAssistant$14;-><init>(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/unisound/lib/net/UserRequestClient;->setSelfDefineContract(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getRingData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRingList:Ljava/util/List;

    .line 485
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRingList:Ljava/util/List;

    const-string v1, "bling_star"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRingList:Ljava/util/List;

    const-string v1, "blue_sea"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRingList:Ljava/util/List;

    const-string v1, "cheerful_mood"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRingList:Ljava/util/List;

    const-string v1, "elegant_melody"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRingList:Ljava/util/List;

    const-string v1, "exotic"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRingList:Ljava/util/List;

    const-string v1, "happiness"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRingList:Ljava/util/List;

    const-string v1, "ice_thaw"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRingList:Ljava/util/List;

    const-string v1, "musical_jumps"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRingList:Ljava/util/List;

    const-string v1, "piano"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRingList:Ljava/util/List;

    const-string v1, "sky_cloud"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRingList:Ljava/util/List;

    return-object v0
.end method

.method public getWakeupWordScore(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 6

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 509
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "rb35fqpoz33hyu56zh4kklgqqwdicqcmbxzwe4qc"

    .line 511
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "99900e2146fca6dff6d61d7a6c4664a3"

    .line 512
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    new-instance v2, Lcom/lzy/okgo/model/HttpParams;

    invoke-direct {v2}, Lcom/lzy/okgo/model/HttpParams;-><init>()V

    const-string v3, "word"

    const/4 v4, 0x0

    .line 515
    new-array v5, v4, [Z

    invoke-virtual {v2, v3, p2, v5}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    const-string p2, "udid"

    .line 516
    new-array v3, v4, [Z

    invoke-virtual {v2, p2, p1, v3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    const-string p2, "appkey"

    const-string v3, "rb35fqpoz33hyu56zh4kklgqqwdicqcmbxzwe4qc"

    .line 517
    new-array v5, v4, [Z

    invoke-virtual {v2, p2, v3, v5}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    const-string p2, "appsecret"

    const-string v3, "99900e2146fca6dff6d61d7a6c4664a3"

    .line 518
    new-array v5, v4, [Z

    invoke-virtual {v2, p2, v3, v5}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    const-string p2, "timestamp"

    .line 519
    new-array v3, v4, [Z

    invoke-virtual {v2, p2, v1, v3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    const-string p2, "signature"

    .line 520
    invoke-static {v0}, Lcom/unisound/lib/utils/SignatureUtils;->buildSignature(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Z

    invoke-virtual {v2, p2, v0, v1}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 521
    iget-object p2, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v0, "UnisDeviceAssistant"

    new-instance v1, Lcom/unisound/lib/UnisDeviceAssistant$12;

    invoke-direct {v1, p0, p3}, Lcom/unisound/lib/UnisDeviceAssistant$12;-><init>(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    invoke-virtual {p2, v0, p1, v2, v1}, Lcom/unisound/lib/net/UserRequestClient;->getDeviceWakeupWordScore(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okgo/model/HttpParams;Lcom/unisound/lib/net/HttpGetCallBack;)V

    return-void
.end method

.method public openDormantMode(Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 4

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "isDormant"

    const-string v2, "1"

    .line 261
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "modifyDormantStatus"

    .line 263
    invoke-direct {p0, p1, v1, v0}, Lcom/unisound/lib/UnisDeviceAssistant;->getParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v2, "UnisDeviceAssistant"

    new-instance v3, Lcom/unisound/lib/UnisDeviceAssistant$6;

    invoke-direct {v3, p0, p2}, Lcom/unisound/lib/UnisDeviceAssistant$6;-><init>(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/unisound/lib/net/UserRequestClient;->setSelfDefineContract(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public openFAQ(Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/lib/callback/HttpDataCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisDeviceAssistant"

    new-instance v2, Lcom/unisound/lib/UnisDeviceAssistant$15;

    invoke-direct {v2, p0, p1}, Lcom/unisound/lib/UnisDeviceAssistant$15;-><init>(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/unisound/lib/net/UserRequestClient;->switchFAQSetting(Ljava/lang/String;ZLcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public queryFAQStatus(Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/lib/callback/HttpDataCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 676
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisDeviceAssistant"

    new-instance v2, Lcom/unisound/lib/UnisDeviceAssistant$19;

    invoke-direct {v2, p0, p1}, Lcom/unisound/lib/UnisDeviceAssistant$19;-><init>(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/unisound/lib/net/UserRequestClient;->queryFAQSetting(Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public removeBindDeviceListener(Lcom/unisound/lib/common/ICommonCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mICommonCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mICommonCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public resetDeviceData(Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 7

    .line 551
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisDeviceAssistant"

    const-string v3, "deleteAll"

    new-instance v6, Lcom/unisound/lib/UnisDeviceAssistant$13;

    invoke-direct {v6, p0, p2}, Lcom/unisound/lib/UnisDeviceAssistant$13;-><init>(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/unisound/lib/net/UserRequestClient;->memoControlCommand(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/time/bean/AlarmReminder;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public setAmbientLightStatus(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 3

    .line 653
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "isAmbientLight"

    .line 654
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "modifyAmbientLightStatus"

    .line 656
    invoke-direct {p0, p1, p2, v0}, Lcom/unisound/lib/UnisDeviceAssistant;->getParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisDeviceAssistant"

    new-instance v2, Lcom/unisound/lib/UnisDeviceAssistant$18;

    invoke-direct {v2, p0, p3}, Lcom/unisound/lib/UnisDeviceAssistant$18;-><init>(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/unisound/lib/net/UserRequestClient;->setSelfDefineContract(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public setBindDeviceListener(Lcom/unisound/lib/common/ICommonCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mICommonCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mICommonCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setDeviceActive(Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisDeviceAssistant"

    new-instance v2, Lcom/unisound/lib/UnisDeviceAssistant$11;

    invoke-direct {v2, p0, p2}, Lcom/unisound/lib/UnisDeviceAssistant$11;-><init>(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/unisound/lib/net/UserRequestClient;->setDeviceActive(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public setSelfDefineContract(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/unisound/lib/callback/HttpDataCallback;",
            ")V"
        }
    .end annotation

    .line 239
    invoke-direct {p0, p1, p2, p3}, Lcom/unisound/lib/UnisDeviceAssistant;->getParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 241
    :cond_0
    iget-object p3, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v0, "UnisDeviceAssistant"

    new-instance v1, Lcom/unisound/lib/UnisDeviceAssistant$5;

    invoke-direct {v1, p0, p4}, Lcom/unisound/lib/UnisDeviceAssistant$5;-><init>(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    invoke-virtual {p3, p1, v0, p2, v1}, Lcom/unisound/lib/net/UserRequestClient;->setSelfDefineContract(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public unbindDevice(Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 6

    .line 420
    invoke-static {}, Lcom/unisound/lib/utils/UserSpUtil;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 421
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisDeviceAssistant"

    invoke-static {}, Lcom/unisound/lib/utils/UserSpUtil;->getClientId()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/unisound/lib/UnisDeviceAssistant$10;

    invoke-direct {v5, p0, p2}, Lcom/unisound/lib/UnisDeviceAssistant$10;-><init>(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/unisound/lib/net/UserRequestClient;->startUnBindUser(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public unbindDevice(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 400
    invoke-static {}, Lcom/unisound/lib/utils/UserSpUtil;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 401
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisDeviceAssistant"

    new-instance v5, Lcom/unisound/lib/UnisDeviceAssistant$9;

    invoke-direct {v5, p0, p3}, Lcom/unisound/lib/UnisDeviceAssistant$9;-><init>(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/unisound/lib/net/UserRequestClient;->startUnBindUser(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public updateChatLog(Lcom/unisound/lib/msgcenter/bean/LogReqInfo;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisDeviceAssistant"

    new-instance v2, Lcom/unisound/lib/UnisDeviceAssistant$4;

    invoke-direct {v2, p0, p2}, Lcom/unisound/lib/UnisDeviceAssistant$4;-><init>(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/unisound/lib/net/UserRequestClient;->updateChatLog(Ljava/lang/Object;Lcom/unisound/lib/msgcenter/bean/LogReqInfo;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method
