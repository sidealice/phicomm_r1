.class public Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;
.super Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;
.source "DeviceStateMgr.java"

# interfaces
.implements Lcom/unisound/vui/common/media/IMediaPlayerStateListener;


# static fields
.field private static final DEVICE_STATUS_BIND:Ljava/lang/String; = "binded"

.field private static final DEVICE_STATUS_UNBIND:Ljava/lang/String; = "unBinded"

.field private static final START_TAG:Ljava/lang/String; = "start_tag"

.field private static final TAG:Ljava/lang/String; = "DeviceStateMgr"


# instance fields
.field private actionResponses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field protected ctx:Lcom/unisound/vui/engine/ANTHandlerContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->actionResponses:Ljava/util/Map;

    .line 67
    iput-object p1, p0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->context:Landroid/content/Context;

    .line 68
    const-string v0, "deviceManagement"

    invoke-static {v0, p0}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->associateSessionCenter(Ljava/lang/String;Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;)V
    .locals 0
    .param p0, "x0"    # Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->queryDeviceBoundStatus()V

    return-void
.end method

.method private dispatcherCloudResponse(Lcom/unisound/ant/device/service/ActionResponse;)V
    .locals 5
    .param p1, "actionResponse"    # Lcom/unisound/ant/device/service/ActionResponse;

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/unisound/ant/device/service/ActionResponse;->getActionResponseId()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "cloudResponseId":Ljava/lang/String;
    const-string v2, "deviceOnline"

    invoke-direct {p0, v2}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->getOperateResponseId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "operateWithId":Ljava/lang/String;
    const-string v2, "DeviceStateMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--->>dispatcherCloudResponse cloudResponseId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",operateWithId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    const-string v2, "changeWifi"

    const/4 v3, 0x0

    .line 129
    invoke-virtual {p0, v3}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->getActionResponse(I)Lcom/unisound/ant/device/service/ActionResponse;

    move-result-object v3

    .line 128
    invoke-direct {p0, v2, v3}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->responseCloudCommand(Ljava/lang/String;Lcom/unisound/ant/device/service/ActionResponse;)V

    .line 131
    :cond_0
    return-void
.end method

.method private fireModifyDeviceNickNameNlu(Ljava/lang/String;)V
    .locals 8
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 173
    const-string v5, "DeviceStateMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--->>fireModifyDeviceNickNameNlu nickName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v1, Lnluparser/scheme/NLU;

    invoke-direct {v1}, Lnluparser/scheme/NLU;-><init>()V

    .line 175
    .local v1, "nlu":Lnluparser/scheme/NLU;
    const-string v5, "cn.yunzhisheng.setting"

    invoke-virtual {v1, v5}, Lnluparser/scheme/NLU;->setService(Ljava/lang/String;)V

    .line 176
    const-string v5, "SETTING_EXEC"

    invoke-virtual {v1, v5}, Lnluparser/scheme/NLU;->setCode(Ljava/lang/String;)V

    .line 177
    new-instance v4, Lnluparser/scheme/Semantic;

    invoke-direct {v4}, Lnluparser/scheme/Semantic;-><init>()V

    .line 178
    .local v4, "semantic":Lnluparser/scheme/Semantic;
    new-instance v0, Lnluparser/scheme/SettingExtIntent;

    invoke-direct {v0}, Lnluparser/scheme/SettingExtIntent;-><init>()V

    .line 179
    .local v0, "intent":Lnluparser/scheme/SettingExtIntent;
    new-instance v2, Lnluparser/scheme/SettingIntent;

    invoke-direct {v2}, Lnluparser/scheme/SettingIntent;-><init>()V

    .line 180
    .local v2, "operatorIntent":Lnluparser/scheme/SettingIntent;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v3, "operators":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/SettingIntent;>;"
    const-string v5, "ATTR_NAME"

    invoke-virtual {v2, v5}, Lnluparser/scheme/SettingIntent;->setOperands(Ljava/lang/String;)V

    .line 182
    const-string v5, "ACT_SET"

    invoke-virtual {v2, v5}, Lnluparser/scheme/SettingIntent;->setOperator(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v2, p1}, Lnluparser/scheme/SettingIntent;->setValue(Ljava/lang/String;)V

    .line 184
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {v0, v3}, Lnluparser/scheme/SettingExtIntent;->setOperations(Ljava/util/List;)V

    .line 186
    invoke-virtual {v4, v0}, Lnluparser/scheme/Semantic;->setIntent(Lnluparser/scheme/Intent;)V

    .line 187
    invoke-virtual {v1, v4}, Lnluparser/scheme/NLU;->setSemantic(Lnluparser/scheme/Semantic;)V

    .line 188
    iget-object v5, p0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    if-eqz v5, :cond_0

    .line 189
    iget-object v5, p0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v5}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v5

    invoke-interface {v5}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 190
    const-string v5, "modifyDeviceName"

    const/4 v6, 0x0

    .line 191
    invoke-virtual {p0, v6}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->getActionResponse(I)Lcom/unisound/ant/device/service/ActionResponse;

    move-result-object v6

    .line 190
    invoke-direct {p0, v5, v6}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->responseCloudCommand(Ljava/lang/String;Lcom/unisound/ant/device/service/ActionResponse;)V

    .line 197
    :goto_0
    return-void

    .line 193
    :cond_0
    const-string v5, "DeviceStateMgr"

    const-string v6, "-->>fireModifyDeviceNickNameNlu current ctx is null"

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v5, "modifyDeviceName"

    const/4 v6, -0x1

    .line 195
    invoke-virtual {p0, v6}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->getActionResponse(I)Lcom/unisound/ant/device/service/ActionResponse;

    move-result-object v6

    .line 194
    invoke-direct {p0, v5, v6}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->responseCloudCommand(Ljava/lang/String;Lcom/unisound/ant/device/service/ActionResponse;)V

    goto :goto_0
.end method

.method private getOperateResponseId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "operate"    # Ljava/lang/String;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->actionResponses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private queryDeviceBoundStatus()V
    .locals 6

    .prologue
    .line 229
    iget-object v3, p0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    if-nez v3, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->reQueryDeviceBoundStatus()V

    .line 242
    :goto_0
    return-void

    .line 233
    :cond_0
    const-string v3, "DeviceStateMgr"

    const-string v4, "query device bound status"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v3, p0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v3}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v3

    invoke-interface {v3}, Lcom/unisound/vui/engine/ANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v3

    sget-object v4, Lcom/unisound/vui/engine/ANTEngineOption;->GENERAL_UDID:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-interface {v3, v4}, Lcom/unisound/vui/engine/ANTEngineConfig;->getOption(Lcom/unisound/vui/engine/ANTEngineOption;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 236
    .local v2, "udid":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/unisound/ant/device/netmodule/DeviceInfoUtils;->isDeviceBounded(Ljava/lang/String;)Z

    move-result v0

    .line 237
    .local v0, "bound":Z
    iget-object v3, p0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->context:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->setDeviceBindState(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    .end local v0    # "bound":Z
    :catch_0
    move-exception v1

    .line 239
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "DeviceStateMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryDeviceBoundStatus error, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-direct {p0}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->reQueryDeviceBoundStatus()V

    goto :goto_0
.end method

.method private reQueryDeviceBoundStatus()V
    .locals 1

    .prologue
    .line 245
    new-instance v0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr$3;

    invoke-direct {v0, p0}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr$3;-><init>(Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;)V

    invoke-static {v0}, Lcom/unisound/vui/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 251
    return-void
.end method

.method private reportDevcieOnlineMsg(Ljava/lang/String;)V
    .locals 4
    .param p1, "accessId"    # Ljava/lang/String;

    .prologue
    .line 257
    new-instance v1, Lcom/unisound/ant/device/bean/OnOffLineMessage;

    invoke-direct {v1}, Lcom/unisound/ant/device/bean/OnOffLineMessage;-><init>()V

    .line 258
    .local v1, "message":Lcom/unisound/ant/device/bean/OnOffLineMessage;
    invoke-static {}, Lcom/unisound/vui/util/AppGlobalConstant;->getUdid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unisound/ant/device/bean/OnOffLineMessage;->setUdid(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v1, p1}, Lcom/unisound/ant/device/bean/OnOffLineMessage;->setConnAccessId(Ljava/lang/String;)V

    .line 260
    const-string v2, "deviceManagement"

    const-string v3, "deviceOnline"

    .line 261
    invoke-static {v2, v3, v1}, Lcom/unisound/ant/device/service/DeviceCommandFactory;->buildCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    move-result-object v0

    .line 263
    .local v0, "command":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;
    const/4 v2, 0x1

    const-string v3, "settingOver"

    invoke-direct {p0, v2, v3, v0}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->reportDeviceParametersInfo(ZLjava/lang/String;Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V

    .line 264
    return-void
.end method

.method private reportDeviceParametersInfo(ZLjava/lang/String;Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V
    .locals 2
    .param p1, "isNeedAck"    # Z
    .param p2, "dstState"    # Ljava/lang/String;
    .param p3, "unisoundDeviceCommand"    # Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    .prologue
    .line 315
    invoke-static {}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/ant/device/message/UpDownMessageManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 316
    const-string v0, "DeviceStateMgr"

    const-string v1, "--->>messgaeMonitor is null"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :goto_0
    return-void

    .line 319
    :cond_0
    if-eqz p1, :cond_1

    .line 320
    invoke-static {}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/ant/device/message/UpDownMessageManager;

    move-result-object v0

    .line 322
    invoke-virtual {p3}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->getOperation()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->saveActionResponseId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    invoke-virtual {v0, p2, v1, p3}, Lcom/unisound/ant/device/message/UpDownMessageManager;->onReportDeviceStatusWithAck(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V

    goto :goto_0

    .line 324
    :cond_1
    invoke-static {}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/ant/device/message/UpDownMessageManager;

    move-result-object v0

    .line 325
    invoke-virtual {v0, p2, p3}, Lcom/unisound/ant/device/message/UpDownMessageManager;->onReportDeviceStatusWithAckWithOutAck(Ljava/lang/String;Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V

    goto :goto_0
.end method

.method private reportHardwareParameters()V
    .locals 4

    .prologue
    .line 294
    iget-object v2, p0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/unisound/ant/device/devicelayer/DeviceUtils;->getDeviceProfile(Landroid/content/Context;)Lcom/unisound/ant/device/profile/DeviceProfileInfo;

    move-result-object v1

    .line 295
    .local v1, "deviceProfile":Lcom/unisound/ant/device/profile/DeviceProfileInfo;
    const-string v2, "deviceManagement"

    const-string v3, "uploadDeviceInfo"

    .line 296
    invoke-static {v2, v3, v1}, Lcom/unisound/ant/device/service/DeviceCommandFactory;->buildCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    move-result-object v0

    .line 298
    .local v0, "command":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;
    const/4 v2, 0x1

    const-string v3, "settingOver"

    invoke-direct {p0, v2, v3, v0}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->reportDeviceParametersInfo(ZLjava/lang/String;Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V

    .line 299
    return-void
.end method

.method private responseCloudCommand(Ljava/lang/String;Lcom/unisound/ant/device/service/ActionResponse;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "response"    # Lcom/unisound/ant/device/service/ActionResponse;

    .prologue
    .line 330
    invoke-static {}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/ant/device/message/UpDownMessageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/unisound/ant/device/message/UpDownMessageManager;->reponseCloudCommandWithoutAck(Ljava/lang/String;Lcom/unisound/ant/device/service/ActionResponse;)V

    .line 331
    return-void
.end method

.method private saveActionRespIds(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "operate"    # Ljava/lang/String;
    .param p2, "actionRespId"    # Ljava/lang/String;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->actionResponses:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    return-void
.end method

.method private saveActionResponseId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "operate"    # Ljava/lang/String;

    .prologue
    .line 374
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "actionResponseId":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->saveActionRespIds(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-object v0
.end method


# virtual methods
.method public bindAntHandlerContext(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 73
    return-void
.end method

.method public disPatchDeviceStateUpdateCommand(Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V
    .locals 9
    .param p1, "command"    # Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->getOperation()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "operation":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->getParameter()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonObject;

    .line 98
    .local v4, "parameter":Lcom/google/gson/JsonObject;
    const-string v6, "DeviceStateMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--->>disPatchDeviceStateUpdateCommand command:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v6, "bind"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 100
    const-class v6, Lcom/unisound/ant/device/bean/UserBinderStatus;

    .line 101
    invoke-static {v4, v6}, Lcom/unisound/vui/util/JsonTool;->fromJson(Lcom/google/gson/JsonObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/ant/device/bean/UserBinderStatus;

    .line 102
    .local v0, "binderStatus":Lcom/unisound/ant/device/bean/UserBinderStatus;
    invoke-virtual {v0}, Lcom/unisound/ant/device/bean/UserBinderStatus;->getState()Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "status":Ljava/lang/String;
    const-string v6, "binded"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 104
    iget-object v6, p0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v6

    new-instance v7, Lcom/unisound/vui/transport/out/BindStatusEvent;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/unisound/vui/transport/out/BindStatusEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v6, v7}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 118
    .end local v0    # "binderStatus":Lcom/unisound/ant/device/bean/UserBinderStatus;
    .end local v5    # "status":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 105
    .restart local v0    # "binderStatus":Lcom/unisound/ant/device/bean/UserBinderStatus;
    .restart local v5    # "status":Ljava/lang/String;
    :cond_1
    const-string v6, "unBinded"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 106
    iget-object v6, p0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v6

    new-instance v7, Lcom/unisound/vui/transport/out/BindStatusEvent;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/unisound/vui/transport/out/BindStatusEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v6, v7}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    goto :goto_0

    .line 108
    .end local v0    # "binderStatus":Lcom/unisound/ant/device/bean/UserBinderStatus;
    .end local v5    # "status":Ljava/lang/String;
    :cond_2
    const-string v6, "modifyDeviceName"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 109
    const-class v6, Lcom/unisound/ant/device/bean/DeviceSummaryInfo;

    .line 110
    invoke-static {v4, v6}, Lcom/unisound/vui/util/JsonTool;->fromJson(Lcom/google/gson/JsonObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/ant/device/bean/DeviceSummaryInfo;

    .line 111
    .local v1, "info":Lcom/unisound/ant/device/bean/DeviceSummaryInfo;
    invoke-virtual {v1}, Lcom/unisound/ant/device/bean/DeviceSummaryInfo;->getDeviceNickName()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "nickName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->fireModifyDeviceNickNameNlu(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    .end local v1    # "info":Lcom/unisound/ant/device/bean/DeviceSummaryInfo;
    .end local v2    # "nickName":Ljava/lang/String;
    :cond_3
    const-string v6, "modeSetting"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "setSceneMode"

    .line 114
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 115
    :cond_4
    const-class v6, Lcom/unisound/ant/device/bean/SceneModeInfo;

    invoke-static {v4, v6}, Lcom/unisound/vui/util/JsonTool;->fromJson(Lcom/google/gson/JsonObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/ant/device/bean/SceneModeInfo;

    .line 116
    .local v1, "info":Lcom/unisound/ant/device/bean/SceneModeInfo;
    invoke-virtual {p0, v1}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->fireModeSetting(Lcom/unisound/ant/device/bean/SceneModeInfo;)V

    goto :goto_0
.end method

.method public fireModeSetting(Lcom/unisound/ant/device/bean/SceneModeInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/unisound/ant/device/bean/SceneModeInfo;

    .prologue
    .line 146
    new-instance v2, Lnluparser/scheme/NLU;

    invoke-direct {v2}, Lnluparser/scheme/NLU;-><init>()V

    .line 147
    .local v2, "nlu":Lnluparser/scheme/NLU;
    const-string v4, "cn.yunzhisheng.scenemode"

    invoke-virtual {v2, v4}, Lnluparser/scheme/NLU;->setService(Ljava/lang/String;)V

    .line 148
    new-instance v0, Lnluparser/scheme/General;

    invoke-direct {v0}, Lnluparser/scheme/General;-><init>()V

    .line 149
    .local v0, "general":Lnluparser/scheme/General;
    invoke-virtual {p1}, Lcom/unisound/ant/device/bean/SceneModeInfo;->getModeTip()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lnluparser/scheme/General;->setText(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v2, v0}, Lnluparser/scheme/NLU;->setGeneral(Lnluparser/scheme/General;)V

    .line 151
    new-instance v3, Lnluparser/scheme/Semantic;

    invoke-direct {v3}, Lnluparser/scheme/Semantic;-><init>()V

    .line 152
    .local v3, "semantic":Lnluparser/scheme/Semantic;
    new-instance v1, Lnluparser/scheme/SceneModeIntent;

    invoke-direct {v1}, Lnluparser/scheme/SceneModeIntent;-><init>()V

    .line 153
    .local v1, "intent":Lnluparser/scheme/SceneModeIntent;
    invoke-virtual {p1}, Lcom/unisound/ant/device/bean/SceneModeInfo;->getModeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnluparser/scheme/SceneModeIntent;->setSceneName(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Lcom/unisound/ant/device/bean/SceneModeInfo;->isOpen()Z

    move-result v4

    invoke-virtual {v1, v4}, Lnluparser/scheme/SceneModeIntent;->setOpen(Z)V

    .line 155
    invoke-virtual {p1}, Lcom/unisound/ant/device/bean/SceneModeInfo;->getModeState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnluparser/scheme/SceneModeIntent;->setModeState(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v3, v1}, Lnluparser/scheme/Semantic;->setIntent(Lnluparser/scheme/Intent;)V

    .line 157
    invoke-virtual {v2, v3}, Lnluparser/scheme/NLU;->setSemantic(Lnluparser/scheme/Semantic;)V

    .line 158
    iget-object v4, p0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    if-eqz v4, :cond_0

    .line 159
    iget-object v4, p0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v4}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 160
    const-string v4, "modeSetting"

    const/4 v5, 0x0

    .line 161
    invoke-virtual {p0, v5}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->getActionResponse(I)Lcom/unisound/ant/device/service/ActionResponse;

    move-result-object v5

    .line 160
    invoke-direct {p0, v4, v5}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->responseCloudCommand(Ljava/lang/String;Lcom/unisound/ant/device/service/ActionResponse;)V

    .line 167
    :goto_0
    return-void

    .line 163
    :cond_0
    const-string v4, "-->>ctx is null"

    invoke-static {v4}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;)V

    .line 164
    const-string v4, "modeSetting"

    const/4 v5, -0x1

    .line 165
    invoke-virtual {p0, v5}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->getActionResponse(I)Lcom/unisound/ant/device/service/ActionResponse;

    move-result-object v5

    .line 164
    invoke-direct {p0, v4, v5}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->responseCloudCommand(Ljava/lang/String;Lcom/unisound/ant/device/service/ActionResponse;)V

    goto :goto_0
.end method

.method public getActionResponse(I)Lcom/unisound/ant/device/service/ActionResponse;
    .locals 4
    .param p1, "statusCode"    # I

    .prologue
    .line 134
    new-instance v0, Lcom/unisound/ant/device/service/ActionResponse;

    invoke-direct {v0}, Lcom/unisound/ant/device/service/ActionResponse;-><init>()V

    .line 135
    .local v0, "response":Lcom/unisound/ant/device/service/ActionResponse;
    invoke-virtual {v0, p1}, Lcom/unisound/ant/device/service/ActionResponse;->setActionStatus(I)V

    .line 136
    invoke-static {p1}, Lcom/unisound/ant/device/bean/ActionStatus;->getStateDetail(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/service/ActionResponse;->setDetailInfo(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/service/ActionResponse;->setActionResponseId(Ljava/lang/String;)V

    .line 138
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

    .line 139
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;->handleMessage(Landroid/os/Message;)V

    .line 77
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    .line 80
    .local v1, "command":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;
    invoke-virtual {p0, v1}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->disPatchDeviceStateUpdateCommand(Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V

    goto :goto_0

    .line 83
    .end local v1    # "command":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/unisound/ant/device/service/ActionResponse;

    .line 84
    .local v0, "actionResponse":Lcom/unisound/ant/device/service/ActionResponse;
    invoke-direct {p0, v0}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->dispatcherCloudResponse(Lcom/unisound/ant/device/service/ActionResponse;)V

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNetConnectedSuccess()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public onPlayerState(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 334
    const-string v0, "DeviceStateMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>onPlayerState state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    .line 340
    :cond_0
    const-string v0, "start_tag"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getNeedInstallUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    invoke-virtual {p0}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->startInstallAPK()V

    .line 343
    const-string v0, "DeviceStateMgr"

    const-string v1, "OtaUtil.notifyToInstall"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_1
    return-void
.end method

.method public onTransportChannelConencted()V
    .locals 1

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->reportHardwareParameters()V

    .line 214
    new-instance v0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr$1;

    invoke-direct {v0, p0}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr$1;-><init>(Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;)V

    invoke-static {v0}, Lcom/unisound/vui/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 220
    new-instance v0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr$2;

    invoke-direct {v0, p0}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr$2;-><init>(Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;)V

    invoke-virtual {p0, v0}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->post(Ljava/lang/Runnable;)Z

    .line 225
    return-void
.end method

.method public reportDeviceLocationInfo()V
    .locals 7

    .prologue
    .line 270
    iget-object v4, p0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/unisound/vui/util/UserPerferenceUtil;->getLocationInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "locationInfo":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 288
    :goto_0
    return-void

    .line 274
    :cond_0
    const-string v4, "DeviceStateMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get userLocationInfo :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-class v4, Lcom/unisound/vui/common/location/bean/LocationInfo;

    invoke-static {v3, v4}, Lcom/unisound/vui/util/JsonTool;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unisound/vui/common/location/bean/LocationInfo;

    .line 276
    .local v2, "info":Lcom/unisound/vui/common/location/bean/LocationInfo;
    new-instance v1, Lcom/unisound/ant/device/bean/GpsInfo;

    invoke-direct {v1}, Lcom/unisound/ant/device/bean/GpsInfo;-><init>()V

    .line 277
    .local v1, "gpsInfo":Lcom/unisound/ant/device/bean/GpsInfo;
    invoke-virtual {v2}, Lcom/unisound/vui/common/location/bean/LocationInfo;->getmCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/unisound/ant/device/bean/GpsInfo;->setCountry(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v2}, Lcom/unisound/vui/common/location/bean/LocationInfo;->getProvince()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/unisound/ant/device/bean/GpsInfo;->setProvince(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v2}, Lcom/unisound/vui/common/location/bean/LocationInfo;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/unisound/ant/device/bean/GpsInfo;->setCity(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v2}, Lcom/unisound/vui/common/location/bean/LocationInfo;->getDistrict()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/unisound/ant/device/bean/GpsInfo;->setRegion(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v2}, Lcom/unisound/vui/common/location/bean/LocationInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/unisound/ant/device/bean/GpsInfo;->setAddress(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v2}, Lcom/unisound/vui/common/location/bean/LocationInfo;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/unisound/ant/device/bean/GpsInfo;->setLat(D)V

    .line 283
    invoke-virtual {v2}, Lcom/unisound/vui/common/location/bean/LocationInfo;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/unisound/ant/device/bean/GpsInfo;->setLon(D)V

    .line 284
    const-string v4, "deviceManagement"

    const-string v5, "updateLocation"

    .line 285
    invoke-static {v4, v5, v1}, Lcom/unisound/ant/device/service/DeviceCommandFactory;->buildCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    move-result-object v0

    .line 287
    .local v0, "command":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;
    const/4 v4, 0x0

    const-string v5, "settingOver"

    invoke-direct {p0, v4, v5, v0}, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->reportDeviceParametersInfo(ZLjava/lang/String;Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V

    goto :goto_0
.end method

.method public reportLocalAsrLog(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "messageType"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/Object;

    .prologue
    .line 305
    const-string v0, "DeviceStateMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>reportLocalAsrLog content:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/ant/device/message/UpDownMessageManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 307
    const-string v0, "DeviceStateMgr"

    const-string v1, "--->>messgaeMonitor is null"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-static {}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/ant/device/message/UpDownMessageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/unisound/ant/device/message/UpDownMessageManager;->onReportStatus(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public startInstallAPK()V
    .locals 3

    .prologue
    .line 353
    const-string v1, "DeviceStateMgr"

    const-string v2, "startInstallAPK()"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v0, Lnluparser/scheme/NLU;

    invoke-direct {v0}, Lnluparser/scheme/NLU;-><init>()V

    .line 355
    .local v0, "nlu":Lnluparser/scheme/NLU;
    const-string v1, "cn.yunzhisheng.ota"

    invoke-virtual {v0, v1}, Lnluparser/scheme/NLU;->setService(Ljava/lang/String;)V

    .line 356
    const-string v1, "OTA_NOTIFY_INSTALL"

    invoke-virtual {v0, v1}, Lnluparser/scheme/NLU;->setCode(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelEngine()V

    .line 359
    iget-object v1, p0, Lcom/unisound/ant/device/devicelayer/DeviceStateMgr;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    const-string v1, "-->>ctx is null"

    invoke-static {v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
