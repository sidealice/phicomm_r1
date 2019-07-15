.class public Lcom/phicomm/speaker/device/custom/api/CustomApiManager;
.super Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;
.source "CustomApiManager.java"


# static fields
.field public static final AMBIENT_LIGHT_OFF:Ljava/lang/String; = "0"

.field public static final AMBIENT_LIGHT_ON:Ljava/lang/String; = "1"

.field public static final DORMANT_OFF:Ljava/lang/String; = "0"

.field public static final DORMANT_ON:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_LIGHT_OFF:Ljava/lang/String; = "1"

.field private static final TYPE_LIGHT_ON:Ljava/lang/String; = "0"

.field public static final TYPE_RINGING:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEngine:Lcom/unisound/vui/engine/ANTEngine;

.field private mListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/phicomm/speaker/device/custom/api/CustomApiListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPhicommPlayer:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

.field private phicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

.field private phicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTEngine;Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "engine"    # Lcom/unisound/vui/engine/ANTEngine;
    .param p3, "phicommPlayer"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;-><init>()V

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mListenerMap:Landroid/util/SparseArray;

    .line 75
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    .line 77
    iput-object p3, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mPhicommPlayer:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    .line 78
    const-string v0, "selfDefinedManager"

    invoke-static {v0, p0}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->associateSessionCenter(Ljava/lang/String;Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;)V

    .line 79
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->phicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    .line 80
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->phicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    .line 81
    return-void
.end method

.method private closeAmbientLight()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 579
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/device/utils/PhicommPerferenceUtil;->getAmbientLightState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->phicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->closeAmbientLight()V

    .line 581
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/phicomm/speaker/device/utils/PhicommPerferenceUtil;->setAmbientLightState(Landroid/content/Context;Z)V

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    const v2, 0x7f05002d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->playTTS(Ljava/lang/String;)V

    .line 585
    return v3
.end method

.method private closeSleepMode()I
    .locals 2

    .prologue
    .line 556
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 557
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->phicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->triggeredOneClickEvent()V

    .line 559
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getActionResponse(I)Lcom/unisound/ant/device/service/ActionResponse;
    .locals 4
    .param p1, "statusCode"    # I

    .prologue
    .line 510
    new-instance v0, Lcom/unisound/ant/device/service/ActionResponse;

    invoke-direct {v0}, Lcom/unisound/ant/device/service/ActionResponse;-><init>()V

    .line 511
    .local v0, "response":Lcom/unisound/ant/device/service/ActionResponse;
    invoke-virtual {v0, p1}, Lcom/unisound/ant/device/service/ActionResponse;->setActionStatus(I)V

    .line 512
    invoke-static {p1}, Lcom/unisound/ant/device/bean/ActionStatus;->getStateDetail(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/service/ActionResponse;->setDetailInfo(Ljava/lang/String;)V

    .line 513
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/service/ActionResponse;->setActionResponseId(Ljava/lang/String;)V

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/service/ActionResponse;->setActionTimestamp(Ljava/lang/String;)V

    .line 515
    return-object v0
.end method

.method private getDormantStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 491
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 492
    const-string v0, "1"

    .line 494
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private handleAuditionRinging(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, -0x1

    .line 351
    .local v5, "status":I
    :try_start_0
    const-string v6, "alarmFile"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 352
    .local v1, "alarmFile":Ljava/lang/Object;
    if-eqz v1, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Lcom/unisound/vui/handler/session/memo/utils/RingingUtils;->getRingingFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 353
    const/4 v5, 0x0

    .line 354
    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mListenerMap:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 355
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/phicomm/speaker/device/custom/api/CustomApiListener;>;"
    if-eqz v3, :cond_0

    .line 356
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/phicomm/speaker/device/custom/api/CustomApiListener;

    .line 357
    .local v4, "listener":Lcom/phicomm/speaker/device/custom/api/CustomApiListener;
    const/4 v7, 0x1

    invoke-interface {v4, v7, v1}, Lcom/phicomm/speaker/device/custom/api/CustomApiListener;->onCustomEvent(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    .end local v1    # "alarmFile":Ljava/lang/Object;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/phicomm/speaker/device/custom/api/CustomApiListener;>;"
    .end local v4    # "listener":Lcom/phicomm/speaker/device/custom/api/CustomApiListener;
    :catch_0
    move-exception v2

    .line 362
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    const-string v7, "handleAuditionRinging error : "

    invoke-static {v6, v7, v2}, Lcom/phicomm/speaker/device/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 364
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v6, "audition"

    invoke-direct {p0, v6, v5}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;I)V

    .line 365
    return-void
.end method

.method private handleAuditionTtsSpeaker(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 373
    .local p1, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, -0x1

    .line 375
    .local v2, "status":I
    :try_start_0
    const-string v3, "ttsSpeaker"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, "speaker":Ljava/lang/String;
    sget-object v3, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audition tts speaker, speaker is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 378
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->listeningTtsSpeaker(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 385
    .end local v1    # "speaker":Ljava/lang/String;
    :goto_0
    const-string v3, "auditionTtsSpeaker"

    invoke-direct {p0, v3, v2}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;I)V

    .line 386
    return-void

    .line 380
    .restart local v1    # "speaker":Ljava/lang/String;
    :cond_0
    :try_start_1
    sget-object v3, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    const-string v4, "audition tts speaker, but speaker is null"

    invoke-static {v3, v4}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 382
    .end local v1    # "speaker":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    const-string v4, "handleAuditionTtsSpeaker error : "

    invoke-static {v3, v4, v0}, Lcom/phicomm/speaker/device/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private handleCheckDeviceState()V
    .locals 3

    .prologue
    .line 194
    new-instance v0, Lcom/unisound/ant/device/bean/DevicePlayingType;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mPhicommPlayer:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    .line 195
    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->getDevicePlayingType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unisound/ant/device/bean/DevicePlayingType;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, "devicePlayingType":Lcom/unisound/ant/device/bean/DevicePlayingType;
    const-string v1, "checkDeviceStateManager"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;ILjava/lang/Object;)V

    .line 198
    return-void
.end method

.method private handleGetAmbientLightStatus()V
    .locals 3

    .prologue
    .line 336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 337
    .local v0, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "currentAmbientLightStatus"

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    .line 338
    invoke-static {v1}, Lcom/phicomm/speaker/device/utils/PhicommPerferenceUtil;->getAmbientLightState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    .line 337
    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v1, "getAmbientLightStatus"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;ILjava/lang/Object;)V

    .line 343
    return-void

    .line 338
    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method private handleGetDeviceInfo()V
    .locals 3

    .prologue
    .line 435
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 436
    .local v0, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ttsPlayer"

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/unisound/vui/util/UserPerferenceUtil;->getUserTTSModelType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string v1, "wakeUpWord"

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/unisound/vui/util/UserPerferenceUtil;->getActuallyMainWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v1, "getDeviceInfoManager"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;ILjava/lang/Object;)V

    .line 440
    return-void
.end method

.method private handleGetDormantStatus()V
    .locals 3

    .prologue
    .line 292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 293
    .local v0, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "currentDormantStatus"

    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->getDormantStatus()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v1, "getDormantStatus"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;ILjava/lang/Object;)V

    .line 296
    return-void
.end method

.method private handleGetLightingStatus()V
    .locals 3

    .prologue
    .line 424
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 425
    .local v0, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "isLighting"

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    .line 426
    invoke-static {v2}, Lcom/unisound/vui/util/UserPerferenceUtil;->getDormantLightState(Landroid/content/Context;)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->parseDormantLightStatus(Z)Ljava/lang/String;

    move-result-object v2

    .line 425
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string v1, "getLightingStatusManager"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;ILjava/lang/Object;)V

    .line 429
    return-void
.end method

.method private handleModifyAmbientLightStatus(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x1

    .line 302
    const/4 v3, -0x1

    .line 303
    .local v3, "status":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 305
    .local v2, "resContent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v5, "isAmbientLight"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 306
    .local v4, "switchAmbientLight":Ljava/lang/Object;
    sget-object v5, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifyAmbientLightStatus switchAmbientLight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/phicomm/speaker/device/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    if-eqz v4, :cond_0

    .line 308
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v1, :cond_1

    .line 309
    .local v1, "isAmbientLight":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 310
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->openAmbientLight()I

    move-result v3

    .line 311
    if-nez v3, :cond_2

    .line 312
    const-string v5, "currentAmbientLightStatus"

    const-string v6, "1"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .end local v1    # "isAmbientLight":Z
    .end local v4    # "switchAmbientLight":Ljava/lang/Object;
    :cond_0
    :goto_1
    const-string v5, "modifyAmbientLightStatus"

    invoke-direct {p0, v5, v3, v2}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;ILjava/lang/Object;)V

    .line 330
    return-void

    .line 308
    .restart local v4    # "switchAmbientLight":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 314
    .restart local v1    # "isAmbientLight":Z
    :cond_2
    :try_start_1
    const-string v5, "currentAmbientLightStatus"

    const-string v6, "0"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 325
    .end local v1    # "isAmbientLight":Z
    .end local v4    # "switchAmbientLight":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    const-string v6, "modifyAmbientLightStatus error : "

    invoke-static {v5, v6, v0}, Lcom/phicomm/speaker/device/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 317
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "isAmbientLight":Z
    .restart local v4    # "switchAmbientLight":Ljava/lang/Object;
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->closeAmbientLight()I

    move-result v3

    .line 318
    if-nez v3, :cond_4

    .line 319
    const-string v5, "currentAmbientLightStatus"

    const-string v6, "0"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 321
    :cond_4
    const-string v5, "currentAmbientLightStatus"

    const-string v6, "1"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private handleModifyDormantLightStatus(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, -0x1

    .line 244
    .local v2, "status":I
    :try_start_0
    const-string v3, "isLighting"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 245
    .local v1, "isLighting":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 246
    check-cast v1, Ljava/lang/String;

    .end local v1    # "isLighting":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->processChangeLightingStatus(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 251
    :cond_0
    :goto_0
    const-string v3, "modifyDormantLightStatus"

    invoke-direct {p0, v3, v2}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;I)V

    .line 252
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    const-string v4, "handleModifyDormantLightStatus error : "

    invoke-static {v3, v4, v0}, Lcom/phicomm/speaker/device/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private handleModifyDormantStatus(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x1

    .line 258
    const/4 v3, -0x1

    .line 259
    .local v3, "status":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 261
    .local v2, "resContent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v5, "isDormant"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 262
    .local v4, "switchSleepMode":Ljava/lang/Object;
    sget-object v5, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifyDormantStatus switchSleepMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/phicomm/speaker/device/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    if-eqz v4, :cond_0

    .line 264
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v1, :cond_1

    .line 265
    .local v1, "isDormant":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 266
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->openSleepMode()I

    move-result v3

    .line 267
    if-nez v3, :cond_2

    .line 268
    const-string v5, "currentDormantStatus"

    const-string v6, "1"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v1    # "isDormant":Z
    .end local v4    # "switchSleepMode":Ljava/lang/Object;
    :cond_0
    :goto_1
    const-string v5, "modifyDormantStatus"

    invoke-direct {p0, v5, v3, v2}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;ILjava/lang/Object;)V

    .line 286
    return-void

    .line 264
    .restart local v4    # "switchSleepMode":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 270
    .restart local v1    # "isDormant":Z
    :cond_2
    :try_start_1
    const-string v5, "currentDormantStatus"

    const-string v6, "0"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 281
    .end local v1    # "isDormant":Z
    .end local v4    # "switchSleepMode":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    const-string v6, "modifyDormantStatus error : "

    invoke-static {v5, v6, v0}, Lcom/phicomm/speaker/device/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 273
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "isDormant":Z
    .restart local v4    # "switchSleepMode":Ljava/lang/Object;
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->closeSleepMode()I

    move-result v3

    .line 274
    if-nez v3, :cond_4

    .line 275
    const-string v5, "currentDormantStatus"

    const-string v6, "0"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 277
    :cond_4
    const-string v5, "currentDormantStatus"

    const-string v6, "1"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private handleModifyTtsPlayer(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, -0x1

    .line 221
    .local v1, "status":I
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v4}, Lcom/unisound/vui/engine/ANTEngine;->isTTSPlaying()Z

    move-result v3

    .line 222
    .local v3, "ttsPlaying":Z
    sget-object v4, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isTTSPlaying = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    if-nez v3, :cond_1

    .line 225
    :try_start_0
    const-string v4, "ttsPlayer"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 226
    .local v2, "ttsPlayer":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 227
    check-cast v2, Ljava/lang/String;

    .end local v2    # "ttsPlayer":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->processSwitchTTSSpeaker(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 235
    :cond_0
    :goto_0
    const-string v4, "modifyTtsPlayer"

    invoke-direct {p0, v4, v1}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;I)V

    .line 236
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    const-string v5, "handleModifyTtsPlayer error : "

    invoke-static {v4, v5, v0}, Lcom/phicomm/speaker/device/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v1, -0x65

    goto :goto_0
.end method

.method private handleModifyWakeUpWord(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, -0x1

    .line 206
    .local v1, "status":I
    :try_start_0
    const-string v3, "wakeUpWord"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 207
    .local v2, "wakeUpWord":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 208
    check-cast v2, Ljava/lang/String;

    .end local v2    # "wakeUpWord":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->processChangeWakeupWord(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 213
    :cond_0
    :goto_0
    const-string v3, "modifyWakeUpWord"

    invoke-direct {p0, v3, v1}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;I)V

    .line 214
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    const-string v4, "handleModifyWakeUpWord error : "

    invoke-static {v3, v4, v0}, Lcom/phicomm/speaker/device/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private handleResetDevice()V
    .locals 2

    .prologue
    .line 185
    sget-object v0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    const-string v1, "handleResetDevice: "

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->phicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->resetDevice()V

    .line 187
    const-string v0, "resetDevice"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;I)V

    .line 188
    return-void
.end method

.method private handleSelfDefinedCommand(Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V
    .locals 6
    .param p1, "command"    # Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    .prologue
    const/4 v4, 0x0

    .line 125
    invoke-virtual {p1}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->getParameter()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 126
    .local v1, "parameter":Lcom/google/gson/JsonObject;
    const-class v3, Lcom/unisound/ant/device/bean/SelfDefinationRequestInfo;

    .line 127
    invoke-static {v1, v3}, Lcom/unisound/vui/util/JsonTool;->fromJson(Lcom/google/gson/JsonObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unisound/ant/device/bean/SelfDefinationRequestInfo;

    .line 128
    .local v2, "selfDefinationRequestInfo":Lcom/unisound/ant/device/bean/SelfDefinationRequestInfo;
    invoke-virtual {v2}, Lcom/unisound/ant/device/bean/SelfDefinationRequestInfo;->getOperationType()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "operationType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    sget-object v3, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    const-string v4, "operationType is null, ignore"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 176
    :goto_2
    invoke-static {}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/ant/device/message/UpDownMessageManager;

    move-result-object v3

    .line 177
    invoke-virtual {p1}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->getOperation()Ljava/lang/String;

    move-result-object v5

    .line 178
    invoke-direct {p0, v4}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->getActionResponse(I)Lcom/unisound/ant/device/service/ActionResponse;

    move-result-object v4

    .line 177
    invoke-virtual {v3, v5, v4}, Lcom/unisound/ant/device/message/UpDownMessageManager;->reponseCloudCommandWithoutAck(Ljava/lang/String;Lcom/unisound/ant/device/service/ActionResponse;)V

    goto :goto_0

    .line 133
    :sswitch_0
    const-string v5, "checkDeviceStateManager"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    goto :goto_1

    :sswitch_1
    const-string v5, "modifyWakeUpWord"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v5, "modifyTtsPlayer"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v5, "modifyDormantLightStatus"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v5, "modifyDormantStatus"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_5
    const-string v5, "getDormantStatus"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_6
    const-string v5, "modifyAmbientLightStatus"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_7
    const-string v5, "getAmbientLightStatus"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_8
    const-string v5, "audition"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_9
    const-string v5, "auditionTtsSpeaker"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v3, 0x9

    goto :goto_1

    :sswitch_a
    const-string v5, "resetDevice"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string v5, "getLightingStatusManager"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v5, "getDeviceInfoManager"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v3, 0xc

    goto/16 :goto_1

    .line 135
    :pswitch_0
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleCheckDeviceState()V

    goto/16 :goto_2

    .line 138
    :pswitch_1
    invoke-virtual {v2}, Lcom/unisound/ant/device/bean/SelfDefinationRequestInfo;->getContent()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleModifyWakeUpWord(Ljava/util/Map;)V

    goto/16 :goto_2

    .line 141
    :pswitch_2
    invoke-virtual {v2}, Lcom/unisound/ant/device/bean/SelfDefinationRequestInfo;->getContent()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleModifyTtsPlayer(Ljava/util/Map;)V

    goto/16 :goto_2

    .line 144
    :pswitch_3
    invoke-virtual {v2}, Lcom/unisound/ant/device/bean/SelfDefinationRequestInfo;->getContent()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleModifyDormantLightStatus(Ljava/util/Map;)V

    goto/16 :goto_2

    .line 147
    :pswitch_4
    invoke-virtual {v2}, Lcom/unisound/ant/device/bean/SelfDefinationRequestInfo;->getContent()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleModifyDormantStatus(Ljava/util/Map;)V

    goto/16 :goto_2

    .line 150
    :pswitch_5
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleGetDormantStatus()V

    goto/16 :goto_2

    .line 153
    :pswitch_6
    invoke-virtual {v2}, Lcom/unisound/ant/device/bean/SelfDefinationRequestInfo;->getContent()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleModifyAmbientLightStatus(Ljava/util/Map;)V

    goto/16 :goto_2

    .line 156
    :pswitch_7
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleGetAmbientLightStatus()V

    goto/16 :goto_2

    .line 159
    :pswitch_8
    invoke-virtual {v2}, Lcom/unisound/ant/device/bean/SelfDefinationRequestInfo;->getContent()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleAuditionRinging(Ljava/util/Map;)V

    goto/16 :goto_2

    .line 162
    :pswitch_9
    invoke-virtual {v2}, Lcom/unisound/ant/device/bean/SelfDefinationRequestInfo;->getContent()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleAuditionTtsSpeaker(Ljava/util/Map;)V

    goto/16 :goto_2

    .line 165
    :pswitch_a
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleResetDevice()V

    goto/16 :goto_2

    .line 168
    :pswitch_b
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleGetLightingStatus()V

    goto/16 :goto_2

    .line 171
    :pswitch_c
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleGetDeviceInfo()V

    goto/16 :goto_2

    .line 133
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b4a949d -> :sswitch_1
        -0x48774f7b -> :sswitch_a
        -0x45d18747 -> :sswitch_9
        -0x3d9ddb27 -> :sswitch_4
        -0x13195443 -> :sswitch_5
        -0xfad13df -> :sswitch_3
        -0x15aaf1a -> :sswitch_7
        0x835294a -> :sswitch_6
        0x3a2daa4d -> :sswitch_8
        0x48a62233 -> :sswitch_c
        0x59049f1a -> :sswitch_2
        0x7005de7a -> :sswitch_0
        0x760e75f9 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private isWakeupWordValid(Ljava/lang/String;)Z
    .locals 3
    .param p1, "wakeupWord"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 466
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    .line 467
    :cond_0
    sget-object v0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change wakeup word error,new wakeup word is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const/4 v0, 0x0

    .line 470
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private listeningTtsSpeaker(Ljava/lang/String;)I
    .locals 4
    .param p1, "speaker"    # Ljava/lang/String;

    .prologue
    .line 395
    const-string v0, "system/unisound/audio/tts_audition/"

    .line 396
    .local v0, "speakerFile":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 398
    sget-object v1, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audition tts speaker, but speaker is wrong, speaker = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const/16 v1, -0x191

    .line 417
    :goto_1
    return v1

    .line 396
    :sswitch_0
    const-string v2, "FEMALE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "MALE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "CHILDREN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "SWEET"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "LZL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    .line 401
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tts_speaker_xiaowen.wav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    :goto_2
    invoke-static {}, Lcom/unisound/vui/common/media/UniMediaPlayer;->getInstance()Lcom/unisound/vui/common/media/UniMediaPlayer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/unisound/vui/common/media/UniMediaPlayer;->play(Ljava/lang/String;Lcom/unisound/vui/common/media/IMediaPlayerStateListener;)V

    .line 417
    const/4 v1, 0x0

    goto :goto_1

    .line 404
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tts_speaker_xiaofeng.wav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    goto :goto_2

    .line 407
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tts_speaker_tangtang.wav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    goto :goto_2

    .line 410
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tts_speaker_xuanxuan.wav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    goto :goto_2

    .line 413
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tts_speaker_lingling.wav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 396
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e6fb201 -> :sswitch_2
        0x1287e -> :sswitch_4
        0x23fe0d -> :sswitch_1
        0x4ba36d0 -> :sswitch_3
        0x7b638f4c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private openAmbientLight()I
    .locals 3

    .prologue
    .line 566
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/device/utils/PhicommPerferenceUtil;->getAmbientLightState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->phicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->openAmbientLight()V

    .line 568
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/PhicommPerferenceUtil;->setAmbientLightState(Landroid/content/Context;Z)V

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    const v2, 0x7f050077

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->playTTS(Ljava/lang/String;)V

    .line 572
    const/4 v0, 0x0

    return v0
.end method

.method private openSleepMode()I
    .locals 2

    .prologue
    .line 545
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 546
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->phicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->triggeredDoubleClickEvent()V

    .line 548
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private parseDormantLightStatus(Z)Ljava/lang/String;
    .locals 1
    .param p1, "dormantLightState"    # Z

    .prologue
    .line 487
    if-eqz p1, :cond_0

    const-string v0, "0"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "1"

    goto :goto_0
.end method

.method private processChangeLightingStatus(Ljava/lang/String;)I
    .locals 4
    .param p1, "lighting"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 524
    sget-object v1, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processChangeLightingStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 528
    const/16 v0, -0x1f5

    .line 537
    :goto_0
    return v0

    .line 530
    :cond_0
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 531
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->phicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOnDormantLight()V

    .line 532
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/unisound/vui/util/UserPerferenceUtil;->setDormantLightState(Landroid/content/Context;Z)V

    goto :goto_0

    .line 534
    :cond_1
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->phicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffDormantLight()V

    .line 535
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->setDormantLightState(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private processChangeWakeupWord(Ljava/lang/String;)I
    .locals 3
    .param p1, "wakeupWord"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->isWakeupWordValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, -0x12d

    .line 456
    :goto_0
    return v1

    .line 449
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTEngine;->cancelTTS()V

    .line 452
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTEngine;->cancelASR()V

    .line 453
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTEngine;->stopWakeup()V

    .line 454
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTEngine;->updateWakeupWord(Ljava/util/List;)V

    .line 455
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v1

    new-instance v2, Lcom/unisound/vui/transport/out/ChangeWakeupWordEvent;

    invoke-direct {v2, p1}, Lcom/unisound/vui/transport/out/ChangeWakeupWordEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 456
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processSwitchTTSSpeaker(Ljava/lang/String;)I
    .locals 2
    .param p1, "ttsSpeaker"    # Ljava/lang/String;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-static {v0, v1, p1}, Lcom/phicomm/speaker/device/utils/TTSUtils;->switchSpeaker(Landroid/content/Context;Lcom/unisound/vui/engine/ANTEngine;Ljava/lang/String;)V

    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method private responseToClient(Ljava/lang/String;I)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 498
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;ILjava/lang/Object;)V

    .line 499
    return-void
.end method

.method private responseToClient(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "content"    # Ljava/lang/Object;

    .prologue
    .line 502
    new-instance v5, Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;

    invoke-direct {v5, p1, p2, p3}, Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    .line 504
    .local v5, "selfDefinationResponseInfo":Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;
    invoke-static {}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/ant/device/message/UpDownMessageManager;

    move-result-object v0

    const-string v1, "selfDefinedManager"

    const/4 v2, 0x0

    const-string v3, "selfDefinedManager"

    const-string v4, "selfDefinedManager"

    .line 505
    invoke-virtual/range {v0 .. v5}, Lcom/unisound/ant/device/message/UpDownMessageManager;->onReportStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 507
    return-void
.end method


# virtual methods
.method public addListener(ILcom/phicomm/speaker/device/custom/api/CustomApiListener;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/phicomm/speaker/device/custom/api/CustomApiListener;

    .prologue
    .line 90
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 91
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/phicomm/speaker/device/custom/api/CustomApiListener;>;"
    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/phicomm/speaker/device/custom/api/CustomApiListener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/phicomm/speaker/device/custom/api/CustomApiListener;>;"
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 112
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 122
    :goto_0
    :pswitch_0
    return-void

    .line 114
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    .line 115
    .local v0, "command":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleSelfDefinedCommand(Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public removeListener(ILcom/phicomm/speaker/device/custom/api/CustomApiListener;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/phicomm/speaker/device/custom/api/CustomApiListener;

    .prologue
    .line 105
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 106
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/phicomm/speaker/device/custom/api/CustomApiListener;>;"
    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 109
    :cond_0
    return-void
.end method
