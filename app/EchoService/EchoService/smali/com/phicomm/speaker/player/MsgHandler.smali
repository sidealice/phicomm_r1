.class public Lcom/phicomm/speaker/player/MsgHandler;
.super Ljava/lang/Object;
.source "MsgHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/MsgHandler$1;,
        Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;,
        Lcom/phicomm/speaker/player/MsgHandler$MsgReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDispatchManager:Landroid/os/MessageDispatchManager;

.field private mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

.field private mMessageHandler:Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;

.field private mMsgReceiver:Lcom/phicomm/speaker/player/MsgHandler$MsgReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/phicomm/speaker/player/MsgHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/phicomm/speaker/player/model/EasyPlayer;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mEasyPlayer"    # Lcom/phicomm/speaker/player/model/EasyPlayer;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/phicomm/speaker/player/MsgHandler$MsgReceiver;

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/player/MsgHandler$MsgReceiver;-><init>(Lcom/phicomm/speaker/player/MsgHandler;Lcom/phicomm/speaker/player/MsgHandler$1;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/MsgHandler;->mMsgReceiver:Lcom/phicomm/speaker/player/MsgHandler$MsgReceiver;

    .line 41
    iput-object p2, p0, Lcom/phicomm/speaker/player/MsgHandler;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

    .line 42
    iput-object p1, p0, Lcom/phicomm/speaker/player/MsgHandler;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;-><init>(Lcom/phicomm/speaker/player/MsgHandler;Lcom/phicomm/speaker/player/MsgHandler$1;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/MsgHandler;->mMessageHandler:Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;

    .line 44
    return-void
.end method

.method private HandleMqttNotify(Ljava/lang/String;)V
    .locals 9
    .param p1, "notify"    # Ljava/lang/String;

    .prologue
    .line 231
    :try_start_0
    new-instance v7, Lcom/google/gson/JsonParser;

    invoke-direct {v7}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v7, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 232
    .local v3, "jsonElement":Lcom/google/gson/JsonElement;
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 233
    .local v5, "root":Lcom/google/gson/JsonObject;
    const-string v7, "topic"

    invoke-virtual {v5, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 234
    .local v6, "topic":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 235
    invoke-static {}, Lcom/phicomm/speaker/player/util/Utils;->musicStatusRequestTopic()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 237
    iget-object v7, p0, Lcom/phicomm/speaker/player/MsgHandler;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-virtual {v7}, Lcom/phicomm/speaker/player/model/EasyPlayer;->getPlayPosition()Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    move-result-object v4

    .line 239
    .local v4, "playPositionInfo":Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    if-eqz v4, :cond_0

    .line 240
    iget-object v7, p0, Lcom/phicomm/speaker/player/MsgHandler;->mContext:Landroid/content/Context;

    invoke-static {v7, v4}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->reportPlayingPosition(Landroid/content/Context;Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 251
    .end local v3    # "jsonElement":Lcom/google/gson/JsonElement;
    .end local v4    # "playPositionInfo":Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    .end local v5    # "root":Lcom/google/gson/JsonObject;
    .end local v6    # "topic":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 242
    .restart local v3    # "jsonElement":Lcom/google/gson/JsonElement;
    .restart local v5    # "root":Lcom/google/gson/JsonObject;
    .restart local v6    # "topic":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/phicomm/speaker/player/util/Utils;->musicReportConfigTopic()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 243
    const-string v7, "body"

    invoke-virtual {v5, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 244
    .local v0, "body":Lcom/google/gson/JsonObject;
    const-string v7, "interval"

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    .line 245
    .local v2, "interval":I
    iget-object v7, p0, Lcom/phicomm/speaker/player/MsgHandler;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-virtual {v7, v2}, Lcom/phicomm/speaker/player/model/EasyPlayer;->setMusicPositionReportInterval(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    .end local v0    # "body":Lcom/google/gson/JsonObject;
    .end local v2    # "interval":I
    .end local v3    # "jsonElement":Lcom/google/gson/JsonElement;
    .end local v5    # "root":Lcom/google/gson/JsonObject;
    .end local v6    # "topic":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " HandleMqttNotify parse json error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/phicomm/speaker/player/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/phicomm/speaker/player/MsgHandler;Lcom/phicomm/speaker/player/model/RequestMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/MsgHandler;
    .param p1, "x1"    # Lcom/phicomm/speaker/player/model/RequestMessage;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/MsgHandler;->handleGetPlayMode(Lcom/phicomm/speaker/player/model/RequestMessage;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/phicomm/speaker/player/MsgHandler;Lcom/phicomm/speaker/player/model/RequestMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/MsgHandler;
    .param p1, "x1"    # Lcom/phicomm/speaker/player/model/RequestMessage;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/MsgHandler;->handleGetPlayAllStates(Lcom/phicomm/speaker/player/model/RequestMessage;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/phicomm/speaker/player/MsgHandler;Lcom/phicomm/speaker/player/model/RequestMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/MsgHandler;
    .param p1, "x1"    # Lcom/phicomm/speaker/player/model/RequestMessage;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/MsgHandler;->handleNewPageRequest(Lcom/phicomm/speaker/player/model/RequestMessage;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/phicomm/speaker/player/MsgHandler;Lcom/phicomm/speaker/player/model/RequestMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/MsgHandler;
    .param p1, "x1"    # Lcom/phicomm/speaker/player/model/RequestMessage;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/MsgHandler;->handleAudioBandGetStatus(Lcom/phicomm/speaker/player/model/RequestMessage;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/phicomm/speaker/player/MsgHandler;)Landroid/os/MessageDispatchManager;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/MsgHandler;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/phicomm/speaker/player/MsgHandler;->mDispatchManager:Landroid/os/MessageDispatchManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/phicomm/speaker/player/MsgHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/MsgHandler;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/phicomm/speaker/player/MsgHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/phicomm/speaker/player/MsgHandler;)Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/MsgHandler;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/phicomm/speaker/player/MsgHandler;->mMessageHandler:Lcom/phicomm/speaker/player/MsgHandler$MessageHandler;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/phicomm/speaker/player/MsgHandler;Lcom/phicomm/speaker/player/model/RequestMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/MsgHandler;
    .param p1, "x1"    # Lcom/phicomm/speaker/player/model/RequestMessage;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/MsgHandler;->handleMqttMessage(Lcom/phicomm/speaker/player/model/RequestMessage;)V

    return-void
.end method

.method static synthetic access$700(Lcom/phicomm/speaker/player/MsgHandler;Lcom/phicomm/speaker/player/model/RequestMessage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/MsgHandler;
    .param p1, "x1"    # Lcom/phicomm/speaker/player/model/RequestMessage;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/MsgHandler;->handlePlayRequest(Lcom/phicomm/speaker/player/model/RequestMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/phicomm/speaker/player/MsgHandler;)Lcom/phicomm/speaker/player/model/EasyPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/MsgHandler;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/phicomm/speaker/player/MsgHandler;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/phicomm/speaker/player/MsgHandler;Lcom/phicomm/speaker/player/model/RequestMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/MsgHandler;
    .param p1, "x1"    # Lcom/phicomm/speaker/player/model/RequestMessage;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/MsgHandler;->handleGetSongName(Lcom/phicomm/speaker/player/model/RequestMessage;)V

    return-void
.end method

.method private handleAudioBandGetStatus(Lcom/phicomm/speaker/player/model/RequestMessage;)V
    .locals 11
    .param p1, "msg"    # Lcom/phicomm/speaker/player/model/RequestMessage;

    .prologue
    .line 381
    :try_start_0
    iget-object v7, p0, Lcom/phicomm/speaker/player/MsgHandler;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-virtual {v7}, Lcom/phicomm/speaker/player/model/EasyPlayer;->getPlayAllStates()Lcom/phicomm/speaker/player/model/PlayAllStates;

    move-result-object v2

    .line 383
    .local v2, "playAllStates":Lcom/phicomm/speaker/player/model/PlayAllStates;
    invoke-virtual {v2}, Lcom/phicomm/speaker/player/model/PlayAllStates;->getPlayState()I

    move-result v7

    invoke-static {v7}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->statusConvert(I)I

    move-result v4

    .line 384
    .local v4, "playerState":I
    iget-object v7, p0, Lcom/phicomm/speaker/player/MsgHandler;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-virtual {v7}, Lcom/phicomm/speaker/player/model/EasyPlayer;->getPlayerSort()I

    move-result v3

    .line 385
    .local v3, "playerSort":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "playerState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 386
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "playerSort : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 387
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 388
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v7, "playerState"

    invoke-virtual {v1, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 389
    const-string v7, "playerSort"

    invoke-virtual {v1, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 390
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 391
    .local v6, "stateString":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AudioBandGetStatus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 392
    invoke-static {v6}, Landroid/os/ParcelableUtil;->obtain(Ljava/lang/String;)Landroid/os/ParcelableUtil;

    move-result-object v5

    .line 393
    .local v5, "result":Landroid/os/ParcelableUtil;
    iget-object v7, p0, Lcom/phicomm/speaker/player/MsgHandler;->mDispatchManager:Landroid/os/MessageDispatchManager;

    const/16 v8, 0x8

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestMethod()I

    move-result v9

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestCseq()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10, v5}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "playAllStates":Lcom/phicomm/speaker/player/model/PlayAllStates;
    .end local v3    # "playerSort":I
    .end local v4    # "playerState":I
    .end local v5    # "result":Landroid/os/ParcelableUtil;
    .end local v6    # "stateString":Ljava/lang/String;
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " handleAudioBandGetStatus construct json error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/phicomm/speaker/player/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleGetPlayAllStates(Lcom/phicomm/speaker/player/model/RequestMessage;)V
    .locals 10
    .param p1, "msg"    # Lcom/phicomm/speaker/player/model/RequestMessage;

    .prologue
    const/4 v9, 0x0

    .line 288
    :try_start_0
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 289
    .local v1, "jsonElementRoot":Lcom/google/gson/JsonElement;
    iget-object v5, p0, Lcom/phicomm/speaker/player/MsgHandler;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-virtual {v5}, Lcom/phicomm/speaker/player/model/EasyPlayer;->getPlayAllStates()Lcom/phicomm/speaker/player/model/PlayAllStates;

    move-result-object v2

    .line 290
    .local v2, "playAllStates":Lcom/phicomm/speaker/player/model/PlayAllStates;
    if-eqz v2, :cond_0

    .line 291
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, v2}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 293
    :cond_0
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "resultString":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/ParcelableUtil;->obtain(Ljava/lang/String;)Landroid/os/ParcelableUtil;

    move-result-object v3

    .line 295
    .local v3, "result":Landroid/os/ParcelableUtil;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " handleGetPlayAllStates response result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    iget-object v5, p0, Lcom/phicomm/speaker/player/MsgHandler;->mDispatchManager:Landroid/os/MessageDispatchManager;

    const/16 v6, 0x8

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestMethod()I

    move-result v7

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestCseq()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8, v3}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .end local v1    # "jsonElementRoot":Lcom/google/gson/JsonElement;
    .end local v2    # "playAllStates":Lcom/phicomm/speaker/player/model/PlayAllStates;
    .end local v3    # "result":Landroid/os/ParcelableUtil;
    .end local v4    # "resultString":Ljava/lang/String;
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " handleGetPlayAllStates construct json error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/phicomm/speaker/player/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleGetPlayMode(Lcom/phicomm/speaker/player/model/RequestMessage;)V
    .locals 10
    .param p1, "msg"    # Lcom/phicomm/speaker/player/model/RequestMessage;

    .prologue
    const/4 v9, 0x0

    .line 273
    :try_start_0
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 274
    .local v1, "jsonObject":Lcom/google/gson/JsonObject;
    iget-object v5, p0, Lcom/phicomm/speaker/player/MsgHandler;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-virtual {v5}, Lcom/phicomm/speaker/player/model/EasyPlayer;->getPlayMode()I

    move-result v2

    .line 275
    .local v2, "playMode":I
    const-string v5, "playMode"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 276
    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 277
    .local v4, "resultString":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/ParcelableUtil;->obtain(Ljava/lang/String;)Landroid/os/ParcelableUtil;

    move-result-object v3

    .line 278
    .local v3, "result":Landroid/os/ParcelableUtil;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " response result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    iget-object v5, p0, Lcom/phicomm/speaker/player/MsgHandler;->mDispatchManager:Landroid/os/MessageDispatchManager;

    const/16 v6, 0x8

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestMethod()I

    move-result v7

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestCseq()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8, v3}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v1    # "jsonObject":Lcom/google/gson/JsonObject;
    .end local v2    # "playMode":I
    .end local v3    # "result":Landroid/os/ParcelableUtil;
    .end local v4    # "resultString":Ljava/lang/String;
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " handleGetPlayMode construct json error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/phicomm/speaker/player/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleGetSongName(Lcom/phicomm/speaker/player/model/RequestMessage;)V
    .locals 11
    .param p1, "msg"    # Lcom/phicomm/speaker/player/model/RequestMessage;

    .prologue
    const/4 v10, 0x0

    .line 255
    :try_start_0
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 256
    .local v1, "jsonArray":Lcom/google/gson/JsonArray;
    iget-object v6, p0, Lcom/phicomm/speaker/player/MsgHandler;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-virtual {v6}, Lcom/phicomm/speaker/player/model/EasyPlayer;->getCurrentSong()Lcom/phicomm/speaker/player/model/PlaySong;

    move-result-object v5

    .line 257
    .local v5, "song":Lcom/phicomm/speaker/player/model/PlaySong;
    if-eqz v5, :cond_0

    .line 258
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v6, v5}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 259
    .local v2, "jsonElement":Lcom/google/gson/JsonElement;
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 261
    .end local v2    # "jsonElement":Lcom/google/gson/JsonElement;
    :cond_0
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, "resultString":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/ParcelableUtil;->obtain(Ljava/lang/String;)Landroid/os/ParcelableUtil;

    move-result-object v3

    .line 263
    .local v3, "result":Landroid/os/ParcelableUtil;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " response result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    iget-object v6, p0, Lcom/phicomm/speaker/player/MsgHandler;->mDispatchManager:Landroid/os/MessageDispatchManager;

    const/16 v7, 0x8

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestMethod()I

    move-result v8

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestCseq()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9, v3}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v1    # "jsonArray":Lcom/google/gson/JsonArray;
    .end local v3    # "result":Landroid/os/ParcelableUtil;
    .end local v4    # "resultString":Ljava/lang/String;
    .end local v5    # "song":Lcom/phicomm/speaker/player/model/PlaySong;
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " handleGetSongName construct json error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/phicomm/speaker/player/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleMqttMessage(Lcom/phicomm/speaker/player/model/RequestMessage;)V
    .locals 4
    .param p1, "msg"    # Lcom/phicomm/speaker/player/model/RequestMessage;

    .prologue
    const/4 v3, 0x0

    .line 213
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestMethod()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " receive MQTT cann\'t process msg org1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestMethod()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    :goto_0
    return-void

    .line 215
    :pswitch_0
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestContent()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CMD_MQTT_NOTIFY msg.obj is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelableUtil;

    .line 220
    .local v0, "param":Landroid/os/ParcelableUtil;
    invoke-virtual {v0}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/MsgHandler;->HandleMqttNotify(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private handleNewPageRequest(Lcom/phicomm/speaker/player/model/RequestMessage;)V
    .locals 5
    .param p1, "msg"    # Lcom/phicomm/speaker/player/model/RequestMessage;

    .prologue
    .line 337
    const/4 v2, 0x0

    .line 339
    .local v2, "resultBoolean":Z
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestContent()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " handleNewPageRequest is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    :cond_0
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelableUtil;

    .line 344
    .local v0, "param":Landroid/os/ParcelableUtil;
    invoke-virtual {v0}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/phicomm/speaker/player/MsgHandler;->parsePlayRequetJson(Ljava/lang/String;)Lcom/phicomm/speaker/player/model/PlayRequestInfo;

    move-result-object v1

    .line 345
    .local v1, "playRequestInfo":Lcom/phicomm/speaker/player/model/PlayRequestInfo;
    if-eqz v1, :cond_1

    .line 346
    iget-object v3, p0, Lcom/phicomm/speaker/player/MsgHandler;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-virtual {v3, v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->ackNewPage(Lcom/phicomm/speaker/player/model/PlayRequestInfo;)V

    .line 349
    :cond_1
    return-void
.end method

.method private handlePlayRequest(Lcom/phicomm/speaker/player/model/RequestMessage;)Z
    .locals 8
    .param p1, "msg"    # Lcom/phicomm/speaker/player/model/RequestMessage;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 305
    const/4 v3, 0x0

    .line 307
    .local v3, "resultBoolean":Z
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestContent()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 308
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " CMD_PLAY msg.obj is null"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v5, v7}, Lcom/phicomm/speaker/player/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v6

    .line 332
    :goto_0
    return v5

    .line 312
    :cond_0
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestMethod()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_1
    move v5, v3

    .line 332
    goto :goto_0

    .line 315
    :sswitch_0
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelableUtil;

    .line 316
    .local v1, "param":Landroid/os/ParcelableUtil;
    invoke-virtual {v1}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/phicomm/speaker/player/MsgHandler;->parsePlayRequetJson(Ljava/lang/String;)Lcom/phicomm/speaker/player/model/PlayRequestInfo;

    move-result-object v2

    .line 317
    .local v2, "playRequestInfo":Lcom/phicomm/speaker/player/model/PlayRequestInfo;
    if-eqz v2, :cond_1

    .line 318
    const/4 v4, 0x1

    .line 319
    .local v4, "startSelf":Z
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestMethod()I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 320
    const/4 v4, 0x0

    .line 321
    invoke-virtual {v2, v6}, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->setIndex(I)V

    .line 323
    :cond_2
    iget-object v5, p0, Lcom/phicomm/speaker/player/MsgHandler;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-virtual {v5, v2, v4}, Lcom/phicomm/speaker/player/model/EasyPlayer;->play(Lcom/phicomm/speaker/player/model/PlayRequestInfo;Z)Z

    move-result v3

    .line 324
    goto :goto_1

    .line 327
    .end local v1    # "param":Landroid/os/ParcelableUtil;
    .end local v2    # "playRequestInfo":Lcom/phicomm/speaker/player/model/PlayRequestInfo;
    .end local v4    # "startSelf":Z
    :sswitch_1
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/RequestMessage;->getRequestContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelableUtil;

    .line 328
    .restart local v1    # "param":Landroid/os/ParcelableUtil;
    invoke-virtual {v1}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 329
    .local v0, "index":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/phicomm/speaker/player/MsgHandler;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6, v7}, Lcom/phicomm/speaker/player/model/EasyPlayer;->playIndex(IZ)Z

    move-result v3

    goto :goto_1

    .line 312
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xb -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method private parsePlayRequetJson(Ljava/lang/String;)Lcom/phicomm/speaker/player/model/PlayRequestInfo;
    .locals 4
    .param p1, "songJson"    # Ljava/lang/String;

    .prologue
    .line 358
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/phicomm/speaker/player/model/PlayRequestInfo;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/player/model/PlayRequestInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    return-object v1

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/phicomm/speaker/player/MsgHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " parsePlayRequetJson parse json error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/phicomm/speaker/player/MsgHandler;->mContext:Landroid/content/Context;

    const-string v1, "msgcenter"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageDispatchManager;

    iput-object v0, p0, Lcom/phicomm/speaker/player/MsgHandler;->mDispatchManager:Landroid/os/MessageDispatchManager;

    .line 48
    iget-object v0, p0, Lcom/phicomm/speaker/player/MsgHandler;->mDispatchManager:Landroid/os/MessageDispatchManager;

    iget-object v1, p0, Lcom/phicomm/speaker/player/MsgHandler;->mMsgReceiver:Lcom/phicomm/speaker/player/MsgHandler$MsgReceiver;

    const v2, 0x200044

    invoke-virtual {v0, v1, v2}, Landroid/os/MessageDispatchManager;->registerMessageReceiver(Landroid/os/MessageDispatchManager$MessageReceiver;I)V

    .line 52
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/phicomm/speaker/player/MsgHandler;->mDispatchManager:Landroid/os/MessageDispatchManager;

    iget-object v1, p0, Lcom/phicomm/speaker/player/MsgHandler;->mMsgReceiver:Lcom/phicomm/speaker/player/MsgHandler$MsgReceiver;

    invoke-virtual {v0, v1}, Landroid/os/MessageDispatchManager;->unregisterMessageReceiver(Landroid/os/MessageDispatchManager$MessageReceiver;)V

    .line 56
    return-void
.end method
