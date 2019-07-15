.class public Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;
.super Ljava/lang/Object;
.source "PhicommPlayer.java"

# interfaces
.implements Lcom/unisound/vui/handler/session/music/CommonPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;
    }
.end annotation


# static fields
.field public static final MESSAGE_CURRENT_ITEM:I = 0x8

.field public static final MESSAGE_CURRENT_PLAY_MODE:I = 0xd

.field public static final MESSAGE_PAUSE:I = 0x2

.field public static final MESSAGE_PLAY:I = 0x1

.field public static final MESSAGE_PLAY_ERROR:I = 0xe

.field public static final MESSAGE_PLAY_LIST_WITH_INDEX:I = 0xf

.field public static final MESSAGE_PLAY_MODE:I = 0x7

.field public static final MESSAGE_PLAY_NEW:I = 0x9

.field public static final MESSAGE_PLAY_NEXT:I = 0x6

.field public static final MESSAGE_PLAY_PREV:I = 0x5

.field public static final MESSAGE_PLAY_SPECIFIED:I = 0xb

.field public static final MESSAGE_QUERY_ITEM_LIST:I = 0x13

.field public static final MESSAGE_RESUME:I = 0x3

.field public static final MESSAGE_STOP:I = 0x4

.field public static final MESSAGE_SYNCHRONIZE_PLAYER:I = 0x10

.field public static final MESSAGE_UDID:I = 0x11

.field private static final PAGE_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PhicommPlayer"

.field private static final TYPE_AUDIO:I = 0x1

.field private static final TYPE_MUSIC:I = 0x0

.field private static final TYPE_NEWS:I = 0x2

.field private static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field private callback:Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;

.field private errorTimes:I

.field public mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

.field private mCurrentPage:I

.field private mCurrentPlayMode:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

.field private mDevicePlayingType:Ljava/lang/String;

.field private mEngine:Lcom/unisound/vui/engine/ANTEngine;

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private mMessageManager:Landroid/os/MessageDispatchManager;

.field private final mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

.field private playState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/unisound/vui/engine/ANTEngine;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "udid"    # Ljava/lang/String;
    .param p3, "engine"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    const/16 v3, 0x11

    const/16 v2, 0x8

    const/4 v4, 0x4

    const/4 v6, -0x1

    const/4 v1, 0x1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x2

    iput v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->playState:I

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    .line 103
    sget-object v0, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;->LIST_LOOP:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentPlayMode:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    .line 105
    const-string v0, "none"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mDevicePlayingType:Ljava/lang/String;

    .line 110
    iput v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentPage:I

    .line 113
    const-string v0, "PhicommPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PhicommPlayer: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iput-object p3, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMainHandler:Landroid/os/Handler;

    .line 116
    invoke-static {p1}, Lcom/phicomm/speaker/device/utils/PhicommMessageManager;->messageCenter(Landroid/content/Context;)Landroid/os/MessageDispatchManager;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    .line 117
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    new-instance v5, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v7}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;-><init>(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$1;)V

    invoke-virtual {v0, v5, v2}, Landroid/os/MessageDispatchManager;->registerMessageReceiver(Landroid/os/MessageDispatchManager$MessageReceiver;I)V

    .line 119
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    .line 120
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    .line 121
    invoke-static {p2}, Landroid/os/ParcelableUtil;->obtain(Ljava/lang/String;)Landroid/os/ParcelableUtil;

    move-result-object v7

    move v5, v3

    .line 120
    invoke-virtual/range {v0 .. v7}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->send(ZIIIIILandroid/os/Parcelable;)V

    .line 124
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 126
    const-string v0, "PhicommPlayer"

    const-string v1, "onSuccess: get device state success"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v1, v6, v2}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 130
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)Lcom/unisound/vui/engine/ANTEngine;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Landroid/os/ParcelableUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;
    .param p1, "x1"    # Landroid/os/ParcelableUtil;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->updateCurrentMode(Landroid/os/ParcelableUtil;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Landroid/os/ParcelableUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;
    .param p1, "x1"    # Landroid/os/ParcelableUtil;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->handlePlayError(Landroid/os/ParcelableUtil;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Landroid/os/ParcelableUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;
    .param p1, "x1"    # Landroid/os/ParcelableUtil;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->synchronizePlayerInfo(Landroid/os/ParcelableUtil;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->queryPlayItem(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->checkResponseSuccess(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->playState:I

    return p1
.end method

.method static synthetic access$402(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->errorTimes:I

    return p1
.end method

.method static synthetic access$500(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Landroid/os/ParcelableUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;
    .param p1, "x1"    # Landroid/os/ParcelableUtil;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->updateCurrentItem(Landroid/os/ParcelableUtil;)V

    return-void
.end method

.method static synthetic access$600(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->updateDevicePlayingType()V

    return-void
.end method

.method static synthetic access$700(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->onStateChanged()V

    return-void
.end method

.method static synthetic access$802(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mDevicePlayingType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    return-object v0
.end method

.method private buildMusicJson(Ljava/util/List;)Lcom/google/gson/JsonArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;)",
            "Lcom/google/gson/JsonArray;"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 377
    .local v1, "musicJsonArr":Lcom/google/gson/JsonArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 378
    .local v2, "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 379
    .local v0, "musicJson":Lcom/google/gson/JsonObject;
    const-string v4, "itemType"

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getType()Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->parseItemType(Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 380
    const-string v4, "title"

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v4, "url"

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v4, "itemId"

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v4, "album"

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getAlbum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v4, "artist"

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getArtist()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {v1, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 387
    .end local v0    # "musicJson":Lcom/google/gson/JsonObject;
    .end local v2    # "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    :cond_0
    return-object v1
.end method

.method private checkResponseSuccess(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 462
    move-object v0, p1

    check-cast v0, Landroid/os/ParcelableUtil;

    invoke-virtual {v0}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 463
    const-string v0, "PhicommPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illeage arugument!current obj is not boolean but"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Landroid/os/ParcelableUtil;

    .line 464
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 463
    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const/4 v0, 0x0

    .line 467
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    check-cast p1, Landroid/os/ParcelableUtil;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method private handlePlayError(Landroid/os/ParcelableUtil;)V
    .locals 2
    .param p1, "obj"    # Landroid/os/ParcelableUtil;

    .prologue
    .line 517
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->updateCurrentItem(Landroid/os/ParcelableUtil;)V

    .line 518
    const/4 v0, 0x2

    iput v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->playState:I

    .line 519
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->updateDevicePlayingType()V

    .line 520
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->onStateChanged()V

    .line 521
    iget v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->errorTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->errorTimes:I

    .line 523
    iget v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->errorTimes:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->playNext()V

    .line 525
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->resume()V

    .line 529
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    const-string v1, "doFinishAllInterrupt"

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    goto :goto_0
.end method

.method private onStateChanged()V
    .locals 2

    .prologue
    .line 682
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 684
    const-string v0, "PhicommPlayer"

    const-string v1, "current device status is bluetooth, ignore play status changed event"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->callback:Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->callback:Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;

    iget v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->playState:I

    invoke-interface {v0, v1}, Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;->onPlayStateChanged(I)V

    goto :goto_0
.end method

.method private parseCurrentMode(I)Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;
    .locals 1
    .param p1, "playMode"    # I

    .prologue
    .line 491
    packed-switch p1, :pswitch_data_0

    .line 499
    sget-object v0, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;->LIST_LOOP:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    :goto_0
    return-object v0

    .line 493
    :pswitch_0
    sget-object v0, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;->LIST_LOOP:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    goto :goto_0

    .line 495
    :pswitch_1
    sget-object v0, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;->SINGLE_LOOP:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    goto :goto_0

    .line 497
    :pswitch_2
    sget-object v0, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;->LIST_SHUFFLED:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    goto :goto_0

    .line 491
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseCurrentState(I)I
    .locals 1
    .param p1, "playState"    # I

    .prologue
    const/4 v0, 0x1

    .line 634
    packed-switch p1, :pswitch_data_0

    .line 642
    :goto_0
    :pswitch_0
    return v0

    .line 638
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 640
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 634
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private parseItemType(Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;)I
    .locals 2
    .param p1, "type"    # Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    .prologue
    .line 650
    sget-object v0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$3;->$SwitchMap$com$unisound$vui$handler$session$music$playitem$PlayItem$ItemType:[I

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 658
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 652
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 654
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 656
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 650
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private queryPlayItem(I)V
    .locals 5
    .param p1, "page"    # I

    .prologue
    const/4 v3, -0x1

    .line 391
    const/4 v1, -0x1

    .line 392
    .local v1, "type":I
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mDevicePlayingType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    move v2, v3

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 400
    :goto_1
    if-eq v1, v3, :cond_1

    .line 401
    move v0, v1

    .line 402
    .local v0, "finalType":I
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$1;-><init>(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 408
    .end local v0    # "finalType":I
    :cond_1
    return-void

    .line 392
    :sswitch_0
    const-string v4, "news"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "audio"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 394
    :pswitch_0
    const/4 v1, 0x3

    .line 395
    goto :goto_1

    .line 397
    :pswitch_1
    const/4 v1, 0x2

    goto :goto_1

    .line 392
    nop

    :sswitch_data_0
    .sparse-switch
        0x338ad3 -> :sswitch_0
        0x58d9bd6 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private requestPhicommPlayMode()V
    .locals 5

    .prologue
    .line 507
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v1, 0x4

    const/16 v2, 0xd

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 509
    return-void
.end method

.method private resetPage()V
    .locals 1

    .prologue
    .line 693
    const/4 v0, 0x1

    iput v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentPage:I

    .line 694
    return-void
.end method

.method private setCircleMode()V
    .locals 5

    .prologue
    .line 669
    const-string v0, "PhicommPlayer"

    const-string v1, "sendMessage MSG_TYPE_PLAYER setCircleMode 7-2"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v1, 0x4

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/4 v4, 0x2

    .line 671
    invoke-static {v4}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v4

    .line 670
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 672
    return-void
.end method

.method private setRandomMode()V
    .locals 5

    .prologue
    .line 663
    const-string v0, "PhicommPlayer"

    const-string v1, "sendMessage MSG_TYPE_PLAYER setRandomMode 7-1"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v1, 0x4

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 665
    invoke-static {v4}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v4

    .line 664
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 666
    return-void
.end method

.method private setSingleMode()V
    .locals 5

    .prologue
    .line 675
    const-string v0, "PhicommPlayer"

    const-string v1, "sendMessage MSG_TYPE_PLAYER setSingleMode 7-3"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v1, 0x4

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/4 v4, 0x3

    .line 677
    invoke-static {v4}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v4

    .line 676
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 678
    return-void
.end method

.method private synchronizeAuidoList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/ant/device/bean/MusicItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "playList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/device/bean/MusicItem;>;"
    const/4 v6, 0x0

    .line 597
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v1, "audioList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/AudioResult$Music;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unisound/ant/device/bean/MusicItem;

    .line 599
    .local v2, "musicItem":Lcom/unisound/ant/device/bean/MusicItem;
    new-instance v0, Lnluparser/scheme/AudioResult$Music;

    invoke-direct {v0}, Lnluparser/scheme/AudioResult$Music;-><init>()V

    .line 600
    .local v0, "audio":Lnluparser/scheme/AudioResult$Music;
    invoke-virtual {v2}, Lcom/unisound/ant/device/bean/MusicItem;->getItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnluparser/scheme/AudioResult$Music;->setId(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v2}, Lcom/unisound/ant/device/bean/MusicItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnluparser/scheme/AudioResult$Music;->setUrl(Ljava/lang/String;)V

    .line 602
    invoke-virtual {v2}, Lcom/unisound/ant/device/bean/MusicItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnluparser/scheme/AudioResult$Music;->setTitle(Ljava/lang/String;)V

    .line 603
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 605
    .end local v0    # "audio":Lnluparser/scheme/AudioResult$Music;
    .end local v2    # "musicItem":Lcom/unisound/ant/device/bean/MusicItem;
    :cond_0
    invoke-static {v1, v6, v6}, Lcom/unisound/vui/handler/session/music/playitem/PlayItemAdapter;->adaptAudio(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 606
    .local v3, "playItemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 607
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 608
    return-void
.end method

.method private synchronizeMusicList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/ant/device/bean/MusicItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 578
    .local p1, "playList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/device/bean/MusicItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .local v2, "musicList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/ant/device/bean/MusicItem;

    .line 580
    .local v1, "musicItem":Lcom/unisound/ant/device/bean/MusicItem;
    new-instance v0, Lnluparser/scheme/MusicResult$Music;

    invoke-direct {v0}, Lnluparser/scheme/MusicResult$Music;-><init>()V

    .line 581
    .local v0, "music":Lnluparser/scheme/MusicResult$Music;
    invoke-virtual {v1}, Lcom/unisound/ant/device/bean/MusicItem;->getItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnluparser/scheme/MusicResult$Music;->setId(Ljava/lang/String;)V

    .line 582
    invoke-virtual {v1}, Lcom/unisound/ant/device/bean/MusicItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnluparser/scheme/MusicResult$Music;->setUrl(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v1}, Lcom/unisound/ant/device/bean/MusicItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnluparser/scheme/MusicResult$Music;->setTitle(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v1}, Lcom/unisound/ant/device/bean/MusicItem;->getAlbum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnluparser/scheme/MusicResult$Music;->setAlbum(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v1}, Lcom/unisound/ant/device/bean/MusicItem;->getArtist()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnluparser/scheme/MusicResult$Music;->setArtist(Ljava/lang/String;)V

    .line 586
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 588
    .end local v0    # "music":Lnluparser/scheme/MusicResult$Music;
    .end local v1    # "musicItem":Lcom/unisound/ant/device/bean/MusicItem;
    :cond_0
    invoke-static {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItemAdapter;->adaptMusic(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 589
    .local v3, "playItemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 590
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 591
    return-void
.end method

.method private synchronizeNewsList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/ant/device/bean/MusicItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 614
    .local p1, "playList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/device/bean/MusicItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 615
    .local v2, "newsList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/NewsResult$NewsBean;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/ant/device/bean/MusicItem;

    .line 616
    .local v0, "musicItem":Lcom/unisound/ant/device/bean/MusicItem;
    new-instance v1, Lnluparser/scheme/NewsResult$NewsBean;

    invoke-direct {v1}, Lnluparser/scheme/NewsResult$NewsBean;-><init>()V

    .line 617
    .local v1, "newsBean":Lnluparser/scheme/NewsResult$NewsBean;
    invoke-virtual {v0}, Lcom/unisound/ant/device/bean/MusicItem;->getItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnluparser/scheme/NewsResult$NewsBean;->setId(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v0}, Lcom/unisound/ant/device/bean/MusicItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnluparser/scheme/NewsResult$NewsBean;->setAudioUrl(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v0}, Lcom/unisound/ant/device/bean/MusicItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnluparser/scheme/NewsResult$NewsBean;->setTitle(Ljava/lang/String;)V

    .line 620
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 622
    .end local v0    # "musicItem":Lcom/unisound/ant/device/bean/MusicItem;
    .end local v1    # "newsBean":Lnluparser/scheme/NewsResult$NewsBean;
    :cond_0
    invoke-static {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItemAdapter;->adaptNews(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 623
    .local v3, "playItemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 624
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 625
    return-void
.end method

.method private synchronizePlayList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/ant/device/bean/MusicItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 559
    .local p1, "playList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/device/bean/MusicItem;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/ant/device/bean/MusicItem;

    invoke-virtual {v0}, Lcom/unisound/ant/device/bean/MusicItem;->getItemType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 572
    :goto_0
    return-void

    .line 561
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->synchronizeMusicList(Ljava/util/List;)V

    goto :goto_0

    .line 564
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->synchronizeAuidoList(Ljava/util/List;)V

    goto :goto_0

    .line 567
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->synchronizeNewsList(Ljava/util/List;)V

    goto :goto_0

    .line 559
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private synchronizePlayerInfo(Landroid/os/ParcelableUtil;)V
    .locals 7
    .param p1, "obj"    # Landroid/os/ParcelableUtil;

    .prologue
    .line 537
    invoke-virtual {p1}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    .line 538
    .local v0, "json":Ljava/lang/String;
    const-string v4, "PhicommPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncPlayerInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-class v4, Lcom/unisound/ant/device/bean/PhicommPlayerInfo;

    .line 540
    invoke-static {v0, v4}, Lcom/unisound/vui/util/JsonTool;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/ant/device/bean/PhicommPlayerInfo;

    .line 541
    .local v1, "phicommPlayerInfo":Lcom/unisound/ant/device/bean/PhicommPlayerInfo;
    invoke-virtual {v1}, Lcom/unisound/ant/device/bean/PhicommPlayerInfo;->getPlayList()Ljava/util/List;

    move-result-object v3

    .line 544
    .local v3, "playList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/device/bean/MusicItem;>;"
    invoke-virtual {v1}, Lcom/unisound/ant/device/bean/PhicommPlayerInfo;->getPlayIndex()I

    move-result v2

    .line 545
    .local v2, "playIndex":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 546
    :cond_0
    const-string v4, "PhicommPlayer"

    const-string v5, "empty player info, do not sync, return"

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :goto_0
    return-void

    .line 549
    :cond_1
    invoke-direct {p0, v3}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->synchronizePlayList(Ljava/util/List;)V

    .line 550
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/unisound/ant/device/bean/PhicommPlayerInfo;->getPlayIndex()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    iput-object v4, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 551
    invoke-virtual {v1}, Lcom/unisound/ant/device/bean/PhicommPlayerInfo;->getPlayMode()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->parseCurrentMode(I)Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    move-result-object v4

    iput-object v4, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentPlayMode:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    .line 552
    invoke-virtual {v1}, Lcom/unisound/ant/device/bean/PhicommPlayerInfo;->getPlayState()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->parseCurrentState(I)I

    move-result v4

    iput v4, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->playState:I

    goto :goto_0
.end method

.method private updateCurrentItem(Landroid/os/ParcelableUtil;)V
    .locals 8
    .param p1, "obj"    # Landroid/os/ParcelableUtil;

    .prologue
    .line 439
    invoke-virtual {p1}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v2, v5

    check-cast v2, Ljava/lang/String;

    .line 440
    .local v2, "json":Ljava/lang/String;
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 441
    .local v0, "gson":Lcom/google/gson/Gson;
    new-instance v5, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$2;

    invoke-direct {v5, p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$2;-><init>(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)V

    .line 442
    invoke-virtual {v5}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 441
    invoke-virtual {v0, v2, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 443
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/device/bean/MusicItem;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 444
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/unisound/ant/device/bean/MusicItem;

    invoke-virtual {v5}, Lcom/unisound/ant/device/bean/MusicItem;->getItemId()Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "itemId":Ljava/lang/String;
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 446
    .local v4, "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    invoke-interface {v4}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 447
    iput-object v4, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 452
    .end local v1    # "itemId":Ljava/lang/String;
    .end local v4    # "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    :cond_1
    const-string v5, "PhicommPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update currentItem, item is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method private updateCurrentMode(Landroid/os/ParcelableUtil;)V
    .locals 5
    .param p1, "obj"    # Landroid/os/ParcelableUtil;

    .prologue
    .line 476
    invoke-virtual {p1}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 477
    .local v0, "json":Ljava/lang/String;
    const-string v2, "PhicommPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCurrentMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-class v2, Lcom/unisound/ant/device/bean/PhicommModeInfo;

    invoke-static {v0, v2}, Lcom/unisound/vui/util/JsonTool;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/ant/device/bean/PhicommModeInfo;

    .line 479
    .local v1, "modeInfo":Lcom/unisound/ant/device/bean/PhicommModeInfo;
    if-eqz v1, :cond_0

    .line 480
    invoke-virtual {v1}, Lcom/unisound/ant/device/bean/PhicommModeInfo;->getPlayMode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->parseCurrentMode(I)Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    move-result-object v2

    iput-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentPlayMode:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    .line 482
    :cond_0
    return-void
.end method

.method private updateDevicePlayingType()V
    .locals 3

    .prologue
    .line 414
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 416
    .local v0, "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    sget-object v1, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$3;->$SwitchMap$com$unisound$vui$handler$session$music$playitem$PlayItem$ItemType:[I

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getType()Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 427
    const-string v1, "none"

    iput-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mDevicePlayingType:Ljava/lang/String;

    .line 431
    .end local v0    # "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    :cond_0
    :goto_0
    return-void

    .line 418
    .restart local v0    # "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    :pswitch_0
    const-string v1, "audio"

    iput-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mDevicePlayingType:Ljava/lang/String;

    goto :goto_0

    .line 421
    :pswitch_1
    const-string v1, "music"

    iput-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mDevicePlayingType:Ljava/lang/String;

    goto :goto_0

    .line 424
    :pswitch_2
    const-string v1, "news"

    iput-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mDevicePlayingType:Ljava/lang/String;

    goto :goto_0

    .line 416
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addCollectMusic(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 292
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 293
    .local v0, "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    const-string v1, "PhicommPlayer"

    const-string v2, "addCollectMusic: true"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->setCollected(Z)V

    .line 299
    .end local v0    # "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    :cond_1
    return-void
.end method

.method public appendPlayList(IILjava/util/List;)V
    .locals 6
    .param p1, "page"    # I
    .param p2, "totalPage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p3, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    const-string v2, "PhicommPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appendPlayList: page = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", itemList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 338
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 339
    invoke-direct {p0, p3}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->buildMusicJson(Ljava/util/List;)Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 341
    .local v0, "musicJson":Lcom/google/gson/JsonArray;
    iget v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentPage:I

    if-le p1, v2, :cond_2

    .line 342
    iput p1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentPage:I

    .line 346
    :goto_1
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 347
    .local v1, "musicJsonObj":Lcom/google/gson/JsonObject;
    const-string v2, "pageIndex"

    iget v3, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentPage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 348
    const-string v2, "totalPage"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 349
    const-string v2, "curItemId"

    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    invoke-interface {v3}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v2, "itemList"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 351
    const-string v2, "PhicommPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request page "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data success, send item list to phicomm : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/4 v3, 0x4

    const/16 v4, 0x13

    .line 353
    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/ParcelableUtil;->obtain(Ljava/lang/String;)Landroid/os/ParcelableUtil;

    move-result-object v5

    .line 352
    invoke-virtual {v2, v3, v4, v5}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->send(IILandroid/os/Parcelable;)V

    goto :goto_0

    .line 344
    .end local v1    # "musicJsonObj":Lcom/google/gson/JsonObject;
    :cond_2
    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentPage:I

    goto :goto_1
.end method

.method public batchDeleteCollectMusic(Ljava/lang/String;)V
    .locals 6
    .param p1, "ids"    # Ljava/lang/String;

    .prologue
    .line 311
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 313
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 314
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 315
    .local v2, "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getId()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 316
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->setCollected(Z)V

    .line 312
    .end local v2    # "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    .restart local v2    # "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 321
    .end local v1    # "j":I
    .end local v2    # "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    :cond_2
    return-void
.end method

.method public collect()V
    .locals 5

    .prologue
    .line 237
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 238
    return-void
.end method

.method public deleteCollectMusic(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 303
    .local v0, "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->setCollected(Z)V

    .line 308
    .end local v0    # "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    :cond_1
    return-void
.end method

.method public getBufferPercent()I
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentItem()Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    return-object v0
.end method

.method public getCurrentPlayMode()Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentPlayMode:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 253
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDevicePlayingType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mDevicePlayingType:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 249
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    return-object v0
.end method

.method public getPlayStatus()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->playState:I

    return v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 261
    iget v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->playState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x2

    iput v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->playState:I

    .line 196
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    invoke-static {v0}, Lcom/phicomm/speaker/device/utils/PhicommPlayerUtils;->pause(Landroid/os/MessageDispatchManager;)V

    .line 197
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 137
    invoke-virtual {p0, v0, v0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->play(II)V

    .line 138
    return-void
.end method

.method public play(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 286
    const-string v0, "PhicommPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play:start to play index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v1, 0x4

    const/16 v2, 0xb

    const/4 v3, -0x1

    .line 288
    invoke-static {p1}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v4

    .line 287
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 289
    return-void
.end method

.method public play(II)V
    .locals 6
    .param p1, "currentPage"    # I
    .param p2, "totalPage"    # I

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->resetPage()V

    .line 142
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    iput-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 143
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 144
    .local v0, "musicJsonObj":Lcom/google/gson/JsonObject;
    const-string v1, "itemList"

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->buildMusicJson(Ljava/util/List;)Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 145
    const-string v2, "asrResult"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v1, "pageIndex"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 147
    const-string v1, "totalPage"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 149
    const-string v1, "PhicommPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 152
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/ParcelableUtil;->obtain(Ljava/lang/String;)Landroid/os/ParcelableUtil;

    move-result-object v5

    .line 151
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 153
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->requestPhicommPlayMode()V

    .line 154
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 6
    .param p1, "asrResult"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->resetPage()V

    .line 158
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    iput-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 159
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 160
    .local v0, "musicJsonObj":Lcom/google/gson/JsonObject;
    const-string v1, "itemList"

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->buildMusicJson(Ljava/util/List;)Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 161
    const-string v1, "asrResult"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v1, "PhicommPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 165
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/ParcelableUtil;->obtain(Ljava/lang/String;)Landroid/os/ParcelableUtil;

    move-result-object v5

    .line 164
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 166
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->requestPhicommPlayMode()V

    .line 167
    return-void
.end method

.method public play(Ljava/util/List;I)V
    .locals 1
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    const/4 v0, 0x1

    .line 170
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->play(Ljava/util/List;III)V

    .line 171
    return-void
.end method

.method public play(Ljava/util/List;III)V
    .locals 11
    .param p2, "index"    # I
    .param p3, "currentPage"    # I
    .param p4, "totalPage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    const-string v1, "PhicommPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play: index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currentPage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", totalPage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->resetPage()V

    .line 179
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 180
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    iput-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 182
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v7, "musicList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/device/bean/MusicItem;>;"
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 184
    .local v9, "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    new-instance v0, Lcom/unisound/ant/device/bean/MusicItem;

    invoke-interface {v9}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getId()Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-interface {v9}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getType()Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->parseItemType(Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;)I

    move-result v4

    invoke-interface {v9}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getAlbum()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getArtist()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/unisound/ant/device/bean/MusicItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 186
    .local v0, "musicItem":Lcom/unisound/ant/device/bean/MusicItem;
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 188
    .end local v0    # "musicItem":Lcom/unisound/ant/device/bean/MusicItem;
    .end local v9    # "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    :cond_2
    new-instance v8, Lcom/unisound/ant/device/bean/PhicommMusicInfo;

    invoke-direct {v8, p2, v7, p3, p4}, Lcom/unisound/ant/device/bean/PhicommMusicInfo;-><init>(ILjava/util/List;II)V

    .line 189
    .local v8, "phicommMusicInfo":Lcom/unisound/ant/device/bean/PhicommMusicInfo;
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v2, 0x4

    const/16 v3, 0xf

    const/4 v4, -0x1

    .line 190
    invoke-static {v8}, Lcom/unisound/vui/util/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/ParcelableUtil;->obtain(Ljava/lang/String;)Landroid/os/ParcelableUtil;

    move-result-object v5

    .line 189
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 191
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->requestPhicommPlayMode()V

    goto :goto_0
.end method

.method public playNext()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    invoke-static {v0}, Lcom/phicomm/speaker/device/utils/PhicommPlayerUtils;->playNext(Landroid/os/MessageDispatchManager;)V

    .line 215
    return-void
.end method

.method public playPrev()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    invoke-static {v0}, Lcom/phicomm/speaker/device/utils/PhicommPlayerUtils;->playPrev(Landroid/os/MessageDispatchManager;)V

    .line 211
    return-void
.end method

.method public registerCallback(Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->callback:Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;

    .line 274
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x3

    iput v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->playState:I

    .line 201
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    invoke-static {v0}, Lcom/phicomm/speaker/device/utils/PhicommPlayerUtils;->resume(Landroid/os/MessageDispatchManager;)V

    .line 202
    return-void
.end method

.method public seekTo(J)V
    .locals 0
    .param p1, "position"    # J

    .prologue
    .line 242
    return-void
.end method

.method public setCurrentPlayMode(Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;)V
    .locals 2
    .param p1, "currentPlayMode"    # Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    .prologue
    .line 222
    sget-object v0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$3;->$SwitchMap$com$unisound$vui$handler$session$music$kuwo$MusicPlayMode:[I

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 233
    :goto_0
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->requestPhicommPlayMode()V

    .line 234
    return-void

    .line 224
    :pswitch_0
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->setRandomMode()V

    goto :goto_0

    .line 227
    :pswitch_1
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->setSingleMode()V

    goto :goto_0

    .line 230
    :pswitch_2
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->setCircleMode()V

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDevicePlayingType(Ljava/lang/String;)V
    .locals 0
    .param p1, "devicePlayingType"    # Ljava/lang/String;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mDevicePlayingType:Ljava/lang/String;

    .line 365
    return-void
.end method

.method public setPlayList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 328
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 329
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    goto :goto_0
.end method

.method public setRenderer(Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer;)V
    .locals 0
    .param p1, "renderer"    # Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer;

    .prologue
    .line 278
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    iput v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->playState:I

    .line 206
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    invoke-static {v0}, Lcom/phicomm/speaker/device/utils/PhicommPlayerUtils;->stop(Landroid/os/MessageDispatchManager;)V

    .line 207
    return-void
.end method
