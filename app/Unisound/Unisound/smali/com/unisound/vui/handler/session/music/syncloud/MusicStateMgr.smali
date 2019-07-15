.class public Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;
.super Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;
.source "MusicStateMgr.java"

# interfaces
.implements Lcom/unisound/ant/device/listener/VolumeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;,
        Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$PlayListCallback;,
        Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;
    }
.end annotation


# static fields
.field public static final BUSINESS_TYPE_AUDIO:Ljava/lang/String; = "audio"

.field public static final BUSINESS_TYPE_MUSIC:Ljava/lang/String; = "music"

.field public static final COMMAND_AUDIO:Ljava/lang/String; = "getAudioCurrentList"

.field public static final COMMAND_MUSIC:Ljava/lang/String; = "getCurrentList"

.field public static final CONTROL_CANCEL_COLLECT:Ljava/lang/String; = "cancelCollect"

.field public static final CONTROL_COLLECT:Ljava/lang/String; = "collect"

.field public static final CONTROL_NEXT:Ljava/lang/String; = "next"

.field public static final CONTROL_PAUSE:Ljava/lang/String; = "pause"

.field public static final CONTROL_PLAY:Ljava/lang/String; = "play"

.field public static final CONTROL_PREV:Ljava/lang/String; = "prev"

.field public static final CONTROL_SWITCH:Ljava/lang/String; = "switch"

.field public static final CONTROL_SWITCH_PLAY_MODE:Ljava/lang/String; = "changeMode"

.field public static final CONTROL_TO_COLLECTION_LIST:Ljava/lang/String; = "toCollectionList"

.field public static final CONTROL_TO_HOT_MUSIC_LIST:Ljava/lang/String; = "toHotMusicList"

.field public static final CONTROL_TO_HOT_SINGER_MUSIC_LIST:Ljava/lang/String; = "toHotSingerMusicList"

.field public static final CONTROL_TO_MUSIC_LIST:Ljava/lang/String; = "toAppAddMusicList"

.field public static final CONTROL_TO_RECOMMAND_LIST:Ljava/lang/String; = "toRecommendList"

.field private static final MSG_ITEM_OPERATE:I = 0x4

.field private static final MSG_MUSIC_PLAYMODE:I = 0x2

.field private static final MSG_MUSIC_STATE:I = 0x1

.field private static final MSG_VOLUME:I = 0x3

.field public static final PAGE_NO:Ljava/lang/String; = "1"

.field public static final PAGE_SIZE:Ljava/lang/String; = "200"

.field public static final PROTOCOL_VERSION:Ljava/lang/String; = "2.0.0"

.field public static final SUB_SYS_ID:I = 0x9

.field private static final TAG:Ljava/lang/String; = "MusicStateMgr"


# instance fields
.field private buttonControl:Lcom/unisound/ant/device/devicelayer/button/ButtonControl;

.field private context:Landroid/content/Context;

.field private final mUdid:Ljava/lang/String;

.field private needRespAction:Ljava/lang/String;

.field private playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

.field public reportHandler:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;


# direct methods
.method public constructor <init>(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;-><init>()V

    .line 92
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->context:Landroid/content/Context;

    .line 93
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v0

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->GENERAL_UDID:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngineConfig;->getOption(Lcom/unisound/vui/engine/ANTEngineOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->mUdid:Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;

    invoke-direct {v0, p0}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;-><init>(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;)V

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->reportHandler:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;

    .line 95
    new-instance v0, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;

    invoke-direct {v0, p1}, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;-><init>(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->buttonControl:Lcom/unisound/ant/device/devicelayer/button/ButtonControl;

    .line 96
    const-string v0, "enjoyMusic"

    invoke-static {v0, p0}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->associateSessionCenter(Ljava/lang/String;Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;)V

    .line 97
    const-string v0, "enjoyAudio"

    invoke-static {v0, p0}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->associateSessionCenter(Ljava/lang/String;Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;)Lcom/unisound/vui/handler/session/music/ANTPlayController;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;
    .param p1, "x1"    # Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->getPlayStatusOperate(Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;ILcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->getPlayStatusDstState(ILcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;
    .param p1, "x1"    # Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->parsePlayMode(Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/bean/MusicData;)V
    .locals 0
    .param p0, "x0"    # Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;
    .param p1, "x1"    # Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/unisound/ant/device/bean/MusicData;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->updateMusicExecuteStatus(Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/bean/MusicData;)V

    return-void
.end method

.method static synthetic access$500(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;Ljava/util/List;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->findIndexById(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;)Lcom/unisound/ant/device/devicelayer/button/ButtonControl;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->buttonControl:Lcom/unisound/ant/device/devicelayer/button/ButtonControl;

    return-object v0
.end method

.method private buildRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/unisound/ant/device/bean/RequestInfo;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;

    .prologue
    .line 238
    new-instance v3, Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;

    const-string v0, "1"

    const-string v1, "200"

    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->mUdid:Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2}, Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .local v3, "pageInfo":Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;
    new-instance v4, Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;

    const/16 v0, 0x9

    invoke-direct {v4, v0}, Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;-><init>(I)V

    .line 240
    .local v4, "clientInfo":Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;
    new-instance v0, Lcom/unisound/ant/device/bean/RequestInfo;

    const-string v5, "2.0.0"

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/unisound/ant/device/bean/RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;Ljava/lang/String;)V

    return-object v0
.end method

.method private buildRequestBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/unisound/ant/device/bean/RequestInfo;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "pageNo"    # Ljava/lang/String;
    .param p4, "pageSize"    # Ljava/lang/String;
    .param p5, "albumId"    # Ljava/lang/String;
    .param p6, "timeAsc"    # Ljava/lang/String;

    .prologue
    .line 248
    new-instance v0, Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;

    iget-object v3, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->mUdid:Ljava/lang/String;

    move-object v1, p3

    move-object v2, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .local v0, "pageInfo":Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;
    new-instance v5, Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;

    const/16 v1, 0x9

    invoke-direct {v5, v1}, Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;-><init>(I)V

    .line 251
    .local v5, "clientInfo":Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;
    new-instance v1, Lcom/unisound/ant/device/bean/RequestInfo;

    const-string v6, "2.0.0"

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/unisound/ant/device/bean/RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;Ljava/lang/String;)V

    return-object v1
.end method

.method private dispatchMusicControlCommand(Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V
    .locals 22
    .param p1, "command"    # Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    .prologue
    .line 124
    if-nez p1, :cond_1

    .line 125
    const-string v1, "MusicStateMgr"

    const-string v2, "dispatchMusicControlCommand command is null"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->getOperation()Ljava/lang/String;

    move-result-object v18

    .line 129
    .local v18, "operation":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->getParameter()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/gson/JsonObject;

    .line 130
    .local v20, "parameter":Lcom/google/gson/JsonObject;
    const-string v1, "MusicStateMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>dispatchMusicControlCommand operate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v1, "terminalUploadMusicList"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    invoke-direct/range {p0 .. p0}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->uploadPlayList()V

    .line 212
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->reportHandler:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->reportHandler:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;

    invoke-virtual {v1}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual/range {p1 .. p1}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->getOperation()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->needRespAction:Ljava/lang/String;

    .line 214
    invoke-virtual/range {p1 .. p1}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->getOperation()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->getActionResponse(I)Lcom/unisound/ant/device/service/ActionResponse;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->responseCloudCommand(Ljava/lang/String;Lcom/unisound/ant/device/service/ActionResponse;)V

    goto :goto_0

    .line 135
    :cond_3
    const-string v1, "addCollectMusic"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 136
    const-class v1, Lcom/unisound/ant/device/bean/CollectInfo;

    move-object/from16 v0, v20

    invoke-static {v0, v1}, Lcom/unisound/vui/util/JsonTool;->fromJson(Lcom/google/gson/JsonObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/unisound/ant/device/bean/CollectInfo;

    .line 137
    .local v15, "collectInfo":Lcom/unisound/ant/device/bean/CollectInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v15}, Lcom/unisound/ant/device/bean/CollectInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->addCollectMusic(Ljava/lang/String;)V

    goto :goto_1

    .line 138
    .end local v15    # "collectInfo":Lcom/unisound/ant/device/bean/CollectInfo;
    :cond_4
    const-string v1, "delCollectMusic"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 140
    const-class v1, Lcom/unisound/ant/device/bean/CollectInfo;

    move-object/from16 v0, v20

    invoke-static {v0, v1}, Lcom/unisound/vui/util/JsonTool;->fromJson(Lcom/google/gson/JsonObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/unisound/ant/device/bean/CollectInfo;

    .line 141
    .restart local v15    # "collectInfo":Lcom/unisound/ant/device/bean/CollectInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v15}, Lcom/unisound/ant/device/bean/CollectInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->deleteCollectMusic(Ljava/lang/String;)V

    goto :goto_1

    .line 142
    .end local v15    # "collectInfo":Lcom/unisound/ant/device/bean/CollectInfo;
    :cond_5
    const-string v1, "batchDelCollectMusic"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 144
    const-class v1, Lcom/unisound/ant/device/bean/CollectInfo;

    move-object/from16 v0, v20

    invoke-static {v0, v1}, Lcom/unisound/vui/util/JsonTool;->fromJson(Lcom/google/gson/JsonObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/unisound/ant/device/bean/CollectInfo;

    .line 145
    .restart local v15    # "collectInfo":Lcom/unisound/ant/device/bean/CollectInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v15}, Lcom/unisound/ant/device/bean/CollectInfo;->getIds()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->batchDeleteCollectMusic(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 148
    .end local v15    # "collectInfo":Lcom/unisound/ant/device/bean/CollectInfo;
    :cond_6
    const-string v1, "changePlayState"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "changeAudioPlayState"

    .line 149
    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "changeNewsPlayState"

    .line 150
    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    :cond_7
    const-class v1, Lcom/unisound/ant/device/bean/MusicData;

    move-object/from16 v0, v20

    invoke-static {v0, v1}, Lcom/unisound/vui/util/JsonTool;->fromJson(Lcom/google/gson/JsonObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/unisound/ant/device/bean/MusicData;

    .line 152
    .local v17, "musicData":Lcom/unisound/ant/device/bean/MusicData;
    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->buttonControl:Lcom/unisound/ant/device/devicelayer/button/ButtonControl;

    if-eqz v1, :cond_2

    .line 153
    invoke-virtual/range {v17 .. v17}, Lcom/unisound/ant/device/bean/MusicData;->getControlCmd()Ljava/lang/String;

    move-result-object v21

    .line 154
    .local v21, "playControl":Ljava/lang/String;
    const-string v1, "prev"

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->buttonControl:Lcom/unisound/ant/device/devicelayer/button/ButtonControl;

    invoke-virtual {v1}, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->prevMusic()V

    goto/16 :goto_1

    .line 156
    :cond_8
    const-string v1, "play"

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v1}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->buttonControl:Lcom/unisound/ant/device/devicelayer/button/ButtonControl;

    invoke-virtual {v1}, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->pauseMusic()V

    goto/16 :goto_1

    .line 160
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->buttonControl:Lcom/unisound/ant/device/devicelayer/button/ButtonControl;

    invoke-virtual {v1}, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->playMusic()V

    goto/16 :goto_1

    .line 162
    :cond_a
    const-string v1, "pause"

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 163
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->buttonControl:Lcom/unisound/ant/device/devicelayer/button/ButtonControl;

    invoke-virtual {v1}, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->pauseMusic()V

    goto/16 :goto_1

    .line 164
    :cond_b
    const-string v1, "next"

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->buttonControl:Lcom/unisound/ant/device/devicelayer/button/ButtonControl;

    invoke-virtual {v1}, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->nextMusic()V

    goto/16 :goto_1

    .line 166
    :cond_c
    const-string v1, "changeMode"

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->buttonControl:Lcom/unisound/ant/device/devicelayer/button/ButtonControl;

    invoke-virtual/range {v17 .. v17}, Lcom/unisound/ant/device/bean/MusicData;->getPlayMode()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->parseMusicPlayMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->switchMusicPlayMode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 168
    :cond_d
    const-string v1, "switch"

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 169
    invoke-virtual/range {v17 .. v17}, Lcom/unisound/ant/device/bean/MusicData;->getItemId()Ljava/lang/String;

    move-result-object v16

    .line 170
    .local v16, "itemId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->buttonControl:Lcom/unisound/ant/device/devicelayer/button/ButtonControl;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->switchTo(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 171
    .end local v16    # "itemId":Ljava/lang/String;
    :cond_e
    const-string v1, "toCollectionList"

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 173
    const-string v1, "changePlayState"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 174
    invoke-static {}, Lcom/unisound/vui/handler/session/music/network/Api;->getMusicApi()Lcom/unisound/vui/handler/session/music/network/MusicApi;

    move-result-object v1

    const-string v2, "music"

    const-string v3, "getCurrentList"

    .line 175
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->buildRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/unisound/ant/device/bean/RequestInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/unisound/vui/handler/session/music/network/MusicApi;->getCurrentMusicList(Lcom/unisound/ant/device/bean/RequestInfo;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$PlayListCallback;

    .line 176
    invoke-virtual/range {v17 .. v17}, Lcom/unisound/ant/device/bean/MusicData;->getItemId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$PlayListCallback;-><init>(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto/16 :goto_1

    .line 177
    :cond_f
    const-string v1, "changeAudioPlayState"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    invoke-static {}, Lcom/unisound/vui/handler/session/music/network/Api;->getMusicApi()Lcom/unisound/vui/handler/session/music/network/MusicApi;

    move-result-object v1

    const-string v2, "audio"

    const-string v3, "getAudioCurrentList"

    .line 179
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->buildRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/unisound/ant/device/bean/RequestInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/unisound/vui/handler/session/music/network/MusicApi;->getCurrentAudioList(Lcom/unisound/ant/device/bean/RequestInfo;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;

    .line 180
    invoke-virtual/range {v17 .. v17}, Lcom/unisound/ant/device/bean/MusicData;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/unisound/ant/device/bean/MusicData;->getAlbumId()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v8}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;-><init>(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto/16 :goto_1

    .line 182
    :cond_10
    const-string v1, "toRecommendList"

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 184
    invoke-virtual/range {v17 .. v17}, Lcom/unisound/ant/device/bean/MusicData;->getPageNo()Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, "pageNo":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/unisound/ant/device/bean/MusicData;->getPageSize()Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, "pageSize":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/unisound/ant/device/bean/MusicData;->getAlbumId()Ljava/lang/String;

    move-result-object v6

    .line 187
    .local v6, "albumId":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/unisound/ant/device/bean/MusicData;->getTimeAsc()Ljava/lang/String;

    move-result-object v7

    .line 188
    .local v7, "timeAsc":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/unisound/ant/device/bean/MusicData;->getPageCount()Ljava/lang/String;

    move-result-object v19

    .line 190
    .local v19, "pageCount":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 191
    const/4 v14, 0x2

    .line 195
    .local v14, "count":I
    :goto_2
    invoke-static {}, Lcom/unisound/vui/handler/session/music/network/Api;->getMusicApi()Lcom/unisound/vui/handler/session/music/network/MusicApi;

    move-result-object v8

    const-string v2, "audio"

    const-string v3, "getAudioCurrentList"

    move-object/from16 v1, p0

    .line 197
    invoke-direct/range {v1 .. v7}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->buildRequestBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/unisound/ant/device/bean/RequestInfo;

    move-result-object v1

    .line 196
    invoke-interface {v8, v1}, Lcom/unisound/vui/handler/session/music/network/MusicApi;->getCurrentAudioList(Lcom/unisound/ant/device/bean/RequestInfo;)Lretrofit2/Call;

    move-result-object v1

    new-instance v8, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;

    .line 199
    invoke-virtual/range {v17 .. v17}, Lcom/unisound/ant/device/bean/MusicData;->getItemId()Ljava/lang/String;

    move-result-object v10

    .line 200
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v9, p0

    move-object v11, v6

    invoke-direct/range {v8 .. v14}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;-><init>(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;Ljava/lang/String;Ljava/lang/String;III)V

    .line 199
    invoke-interface {v1, v8}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto/16 :goto_1

    .line 193
    .end local v14    # "count":I
    :cond_11
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .restart local v14    # "count":I
    goto :goto_2

    .line 201
    .end local v4    # "pageNo":Ljava/lang/String;
    .end local v5    # "pageSize":Ljava/lang/String;
    .end local v6    # "albumId":Ljava/lang/String;
    .end local v7    # "timeAsc":Ljava/lang/String;
    .end local v14    # "count":I
    .end local v19    # "pageCount":Ljava/lang/String;
    :cond_12
    const-string v1, "toHotMusicList"

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "toHotSingerMusicList"

    .line 202
    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "toAppAddMusicList"

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    :cond_13
    invoke-static {}, Lcom/unisound/vui/handler/session/music/network/Api;->getMusicApi()Lcom/unisound/vui/handler/session/music/network/MusicApi;

    move-result-object v1

    const-string v2, "music"

    const-string v3, "getCurrentList"

    .line 205
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->buildRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/unisound/ant/device/bean/RequestInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/unisound/vui/handler/session/music/network/MusicApi;->getCurrentMusicList(Lcom/unisound/ant/device/bean/RequestInfo;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$PlayListCallback;

    .line 206
    invoke-virtual/range {v17 .. v17}, Lcom/unisound/ant/device/bean/MusicData;->getItemId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$PlayListCallback;-><init>(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto/16 :goto_1
.end method

.method private findIndexById(Ljava/util/List;Ljava/lang/String;)I
    .locals 2
    .param p2, "itemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 552
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 553
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    invoke-interface {v1}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 552
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 557
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getPlayStatusDstState(ILcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;)Ljava/lang/String;
    .locals 2
    .param p1, "playStatus"    # I
    .param p2, "itemType"    # Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 440
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 441
    sget-object v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$1;->$SwitchMap$com$unisound$vui$handler$session$music$playitem$PlayItem$ItemType:[I

    invoke-virtual {p2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 449
    const-string v0, "playingMusic"

    .line 474
    :goto_0
    return-object v0

    .line 443
    :pswitch_0
    const-string v0, "playingNews"

    goto :goto_0

    .line 445
    :pswitch_1
    const-string v0, "playingMusic"

    goto :goto_0

    .line 447
    :pswitch_2
    const-string v0, "playingAudio"

    goto :goto_0

    .line 451
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 452
    sget-object v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$1;->$SwitchMap$com$unisound$vui$handler$session$music$playitem$PlayItem$ItemType:[I

    invoke-virtual {p2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 460
    const-string v0, "pauseMusic"

    goto :goto_0

    .line 454
    :pswitch_3
    const-string v0, "pauseNews"

    goto :goto_0

    .line 456
    :pswitch_4
    const-string v0, "pauseMusic"

    goto :goto_0

    .line 458
    :pswitch_5
    const-string v0, "pauseAudio"

    goto :goto_0

    .line 462
    :cond_1
    if-nez p1, :cond_2

    .line 463
    sget-object v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$1;->$SwitchMap$com$unisound$vui$handler$session$music$playitem$PlayItem$ItemType:[I

    invoke-virtual {p2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 471
    const-string v0, "exitMusic"

    goto :goto_0

    .line 465
    :pswitch_6
    const-string v0, "exitNews"

    goto :goto_0

    .line 467
    :pswitch_7
    const-string v0, "exitMusic"

    goto :goto_0

    .line 469
    :pswitch_8
    const-string v0, "exitAudio"

    goto :goto_0

    .line 474
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 441
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 452
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 463
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getPlayStatusOperate(Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;)Ljava/lang/String;
    .locals 2
    .param p1, "itemType"    # Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 429
    sget-object v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$1;->$SwitchMap$com$unisound$vui$handler$session$music$playitem$PlayItem$ItemType:[I

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 435
    const-string v0, "changePlayState"

    :goto_0
    return-object v0

    .line 431
    :pswitch_0
    const-string v0, "changeNewsPlayState"

    goto :goto_0

    .line 433
    :pswitch_1
    const-string v0, "changePlayState"

    goto :goto_0

    .line 429
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseMusicPlayMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 261
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 263
    const-string v0, "MODE_ORDER"

    .line 271
    :goto_1
    return-object v0

    .line 261
    :sswitch_0
    const-string v1, "listShuffled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v1, "listLoop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "singleLoop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, "listOrder"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 265
    :pswitch_0
    const-string v0, "MODE_SHUFFLE"

    goto :goto_1

    .line 267
    :pswitch_1
    const-string v0, "MODE_ALL_REPEAT"

    goto :goto_1

    .line 269
    :pswitch_2
    const-string v0, "MODE_REPEAT_ONCE"

    goto :goto_1

    .line 271
    :pswitch_3
    const-string v0, "MODE_ORDER"

    goto :goto_1

    .line 261
    :sswitch_data_0
    .sparse-switch
        -0x49d866b0 -> :sswitch_3
        0x35bd2f49 -> :sswitch_0
        0x36715b0c -> :sswitch_2
        0x50316c62 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private parsePlayMode(Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;)Ljava/lang/String;
    .locals 2
    .param p1, "playMode"    # Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    .prologue
    .line 282
    sget-object v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$1;->$SwitchMap$com$unisound$vui$handler$session$music$PlayController$ItemPlayMode:[I

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 292
    const-string v0, "listLoop"

    :goto_0
    return-object v0

    .line 284
    :pswitch_0
    const-string v0, "listLoop"

    goto :goto_0

    .line 286
    :pswitch_1
    const-string v0, "listOrder"

    goto :goto_0

    .line 288
    :pswitch_2
    const-string v0, "listShuffled"

    goto :goto_0

    .line 290
    :pswitch_3
    const-string v0, "singleLoop"

    goto :goto_0

    .line 282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private responseCloudCommand(Ljava/lang/String;Lcom/unisound/ant/device/service/ActionResponse;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "response"    # Lcom/unisound/ant/device/service/ActionResponse;

    .prologue
    .line 297
    invoke-static {}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/ant/device/message/UpDownMessageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/unisound/ant/device/message/UpDownMessageManager;->reponseCloudCommandWithoutAck(Ljava/lang/String;Lcom/unisound/ant/device/service/ActionResponse;)V

    .line 298
    return-void
.end method

.method private updateMusicExecuteStatus(Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/bean/MusicData;)V
    .locals 3
    .param p1, "type"    # Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;
    .param p2, "dstStatus"    # Ljava/lang/String;
    .param p3, "operate"    # Ljava/lang/String;
    .param p4, "data"    # Lcom/unisound/ant/device/bean/MusicData;

    .prologue
    .line 485
    invoke-static {}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/ant/device/message/UpDownMessageManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 486
    const-string v0, "MusicStateMgr"

    const-string v1, "--->>messgaeMonitor is null"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :goto_0
    return-void

    .line 489
    :cond_0
    sget-object v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$1;->$SwitchMap$com$unisound$vui$handler$session$music$playitem$PlayItem$ItemType:[I

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 491
    const-string v0, "MusicStateMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error report type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cancel reporting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 494
    :pswitch_0
    invoke-static {}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/ant/device/message/UpDownMessageManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/unisound/ant/device/message/UpDownMessageManager;->onReportAudioStatus(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/bean/MusicData;)V

    goto :goto_0

    .line 497
    :pswitch_1
    invoke-static {}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/ant/device/message/UpDownMessageManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/unisound/ant/device/message/UpDownMessageManager;->onReportMusicStatus(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/bean/MusicData;)V

    goto :goto_0

    .line 500
    :pswitch_2
    invoke-static {}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/ant/device/message/UpDownMessageManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/unisound/ant/device/message/UpDownMessageManager;->onReportNewsStatus(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/bean/MusicData;)V

    goto :goto_0

    .line 489
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private uploadPlayList()V
    .locals 2

    .prologue
    .line 223
    const-string v0, "stop"

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v1}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->getPlayStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->mUdid:Ljava/lang/String;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v1}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->getPlayItemList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/handler/session/music/syncloud/MusicHttpUtils;->uploadMusicList(Ljava/lang/String;Ljava/util/List;)V

    .line 228
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->getPlaybackStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->onStatusChanged(I)V

    goto :goto_0
.end method


# virtual methods
.method public bindPlayController(Lcom/unisound/vui/handler/session/music/ANTPlayController;)V
    .locals 1
    .param p1, "playController"    # Lcom/unisound/vui/handler/session/music/ANTPlayController;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    .line 102
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v0, p0}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->registerMusicListener(Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;)V

    .line 103
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getInstance(Landroid/content/Context;)Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->registerListener(Lcom/unisound/ant/device/listener/VolumeListener;)V

    .line 104
    return-void
.end method

.method public getActionResponse(I)Lcom/unisound/ant/device/service/ActionResponse;
    .locals 4
    .param p1, "statusCode"    # I

    .prologue
    .line 506
    new-instance v0, Lcom/unisound/ant/device/service/ActionResponse;

    invoke-direct {v0}, Lcom/unisound/ant/device/service/ActionResponse;-><init>()V

    .line 507
    .local v0, "response":Lcom/unisound/ant/device/service/ActionResponse;
    invoke-virtual {v0, p1}, Lcom/unisound/ant/device/service/ActionResponse;->setActionStatus(I)V

    .line 508
    invoke-static {p1}, Lcom/unisound/ant/device/bean/ActionStatus;->getStateDetail(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/service/ActionResponse;->setDetailInfo(Ljava/lang/String;)V

    .line 509
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/service/ActionResponse;->setActionResponseId(Ljava/lang/String;)V

    .line 510
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

    .line 511
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 107
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 121
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 109
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    .line 110
    .local v0, "command":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;
    invoke-direct {p0, v0}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->dispatchMusicControlCommand(Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V

    goto :goto_0

    .line 113
    .end local v0    # "command":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;
    :pswitch_2
    const-string v1, "MusicStateMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>need startSync action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->needRespAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->needRespAction:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->needRespAction:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->getActionResponse(I)Lcom/unisound/ant/device/service/ActionResponse;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->responseCloudCommand(Ljava/lang/String;Lcom/unisound/ant/device/service/ActionResponse;)V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onItemOperateCommand(I)V
    .locals 2
    .param p1, "operate"    # I

    .prologue
    .line 328
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->reportHandler:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->reportHandler:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;

    invoke-virtual {v1}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 330
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 331
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 334
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->reportHandler:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;

    invoke-virtual {v1, v0}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;->handleMessage(Landroid/os/Message;)V

    .line 336
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onPlayModeChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 301
    const-string v1, "MusicStateMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "firePlayModeChanged-->mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->reportHandler:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->reportHandler:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;

    invoke-virtual {v1}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 304
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 305
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 308
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->reportHandler:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;

    invoke-virtual {v1, v0}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;->handleMessage(Landroid/os/Message;)V

    .line 310
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    .line 313
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->reportHandler:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->reportHandler:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;

    invoke-virtual {v1}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_1

    .line 317
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 318
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 319
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 322
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->reportHandler:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;

    invoke-virtual {v1, v0}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;->handleMessage(Landroid/os/Message;)V

    .line 325
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public onVolumeChanged(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;)V
    .locals 4
    .param p1, "current"    # Ljava/lang/Integer;
    .param p2, "max"    # Ljava/lang/Integer;
    .param p3, "percent"    # Ljava/lang/Float;

    .prologue
    .line 342
    const-string v1, "MusicStateMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVolumeChanged-->current:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",parcent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->reportHandler:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->reportHandler:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;

    invoke-virtual {v1}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 345
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 346
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 349
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->reportHandler:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;

    invoke-virtual {v1, v0}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;->handleMessage(Landroid/os/Message;)V

    .line 351
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
