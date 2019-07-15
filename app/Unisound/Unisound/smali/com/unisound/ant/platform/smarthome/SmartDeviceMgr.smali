.class public Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;
.super Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;
.source "SmartDeviceMgr.java"

# interfaces
.implements Lcom/unisound/ant/platform/smarthome/SmartExecutor$ExecutorCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr$ReportHandler;
    }
.end annotation


# static fields
.field private static final SMART_DEVICE_SYNC_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SmartDeviceMgr"


# instance fields
.field private context:Landroid/content/Context;

.field private executor:Lcom/unisound/ant/platform/smarthome/SmartExecutor;

.field public reportHandler:Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr$ReportHandler;


# direct methods
.method public constructor <init>(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;-><init>()V

    .line 40
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;->context:Landroid/content/Context;

    .line 41
    new-instance v0, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr$ReportHandler;

    invoke-direct {v0, p0}, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr$ReportHandler;-><init>(Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;)V

    iput-object v0, p0, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;->reportHandler:Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr$ReportHandler;

    .line 42
    new-instance v0, Lcom/unisound/ant/platform/smarthome/SmartExecutor;

    invoke-direct {v0, p1}, Lcom/unisound/ant/platform/smarthome/SmartExecutor;-><init>(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    iput-object v0, p0, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;->executor:Lcom/unisound/ant/platform/smarthome/SmartExecutor;

    .line 43
    iget-object v0, p0, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;->executor:Lcom/unisound/ant/platform/smarthome/SmartExecutor;

    invoke-virtual {v0, p0}, Lcom/unisound/ant/platform/smarthome/SmartExecutor;->setCallBack(Lcom/unisound/ant/platform/smarthome/SmartExecutor$ExecutorCallBack;)V

    .line 44
    const-string v0, "center-control"

    invoke-static {v0, p0}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->associateSessionCenter(Ljava/lang/String;Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/platform/smarthome/bean/SmartDeviceStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/unisound/ant/platform/smarthome/bean/SmartDeviceStatus;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;->updateExecuteStatus(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/platform/smarthome/bean/SmartDeviceStatus;)V

    return-void
.end method

.method private dispatchSmartHouseControlCommand(Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V
    .locals 7
    .param p1, "command"    # Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    const-string v4, "SmartDeviceMgr"

    const-string v5, "dispatchSmartHouseControlCommand command is null"

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 63
    :cond_0
    const-string v4, "SmartDeviceMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--->>dispatchSmartHouseControlCommand operate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->getOperation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->getParameter()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonObject;

    .line 65
    .local v2, "parameter":Lcom/google/gson/JsonObject;
    const-string v4, "operations"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 66
    .local v1, "operations":Lcom/google/gson/JsonArray;
    new-instance v4, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr$1;

    invoke-direct {v4, p0}, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr$1;-><init>(Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;)V

    .line 67
    invoke-virtual {v4}, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 68
    .local v3, "type":Ljava/lang/reflect/Type;
    invoke-static {v1, v3}, Lcom/unisound/vui/util/JsonTool;->fromJson(Lcom/google/gson/JsonArray;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 69
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/platform/smarthome/bean/SmartAction;>;"
    if-nez v0, :cond_1

    .line 70
    const-string v4, "SmartDeviceMgr"

    const-string v5, "dispatchSmartHouseControlCommand actions is null"

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_1
    iget-object v4, p0, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;->executor:Lcom/unisound/ant/platform/smarthome/SmartExecutor;

    invoke-virtual {v4, v0}, Lcom/unisound/ant/platform/smarthome/SmartExecutor;->executeCommands(Ljava/util/List;)V

    goto :goto_0
.end method

.method private reportActionResp(Ljava/lang/String;)V
    .locals 1
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;->reportHandler:Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr$ReportHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;->reportHandler:Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr$ReportHandler;

    invoke-virtual {v0}, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr$ReportHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;->getActionResponse(I)Lcom/unisound/ant/device/service/ActionResponse;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;->responseCloudCommand(Ljava/lang/String;Lcom/unisound/ant/device/service/ActionResponse;)V

    .line 80
    :cond_0
    return-void
.end method

.method private responseCloudCommand(Ljava/lang/String;Lcom/unisound/ant/device/service/ActionResponse;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "response"    # Lcom/unisound/ant/device/service/ActionResponse;

    .prologue
    .line 83
    invoke-static {}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/ant/device/message/UpDownMessageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/unisound/ant/device/message/UpDownMessageManager;->reponseCloudCommandWithoutAck(Ljava/lang/String;Lcom/unisound/ant/device/service/ActionResponse;)V

    .line 84
    return-void
.end method

.method private updateExecuteStatus(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/platform/smarthome/bean/SmartDeviceStatus;)V
    .locals 2
    .param p1, "dstStatus"    # Ljava/lang/String;
    .param p2, "operate"    # Ljava/lang/String;
    .param p3, "aSmartStatus"    # Lcom/unisound/ant/platform/smarthome/bean/SmartDeviceStatus;

    .prologue
    .line 121
    invoke-static {}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/ant/device/message/UpDownMessageManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 122
    const-string v0, "SmartDeviceMgr"

    const-string v1, "--->>messgaeMonitor is null"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-static {}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/ant/device/message/UpDownMessageManager;

    move-result-object v0

    const-string v1, "center-control"

    .line 126
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/unisound/ant/device/message/UpDownMessageManager;->onReportStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getActionResponse(I)Lcom/unisound/ant/device/service/ActionResponse;
    .locals 4
    .param p1, "statusCode"    # I

    .prologue
    .line 131
    new-instance v0, Lcom/unisound/ant/device/service/ActionResponse;

    invoke-direct {v0}, Lcom/unisound/ant/device/service/ActionResponse;-><init>()V

    .line 132
    .local v0, "response":Lcom/unisound/ant/device/service/ActionResponse;
    invoke-virtual {v0, p1}, Lcom/unisound/ant/device/service/ActionResponse;->setActionStatus(I)V

    .line 133
    invoke-static {p1}, Lcom/unisound/ant/device/bean/ActionStatus;->getStateDetail(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/service/ActionResponse;->setDetailInfo(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/service/ActionResponse;->setActionResponseId(Ljava/lang/String;)V

    .line 135
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

    .line 136
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 48
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 56
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    .line 51
    .local v0, "command":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;
    invoke-direct {p0, v0}, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;->dispatchSmartHouseControlCommand(Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onControlResult(Ljava/lang/String;Lcom/unisound/ant/platform/smarthome/bean/SmartDeviceStatus;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "statusDetail"    # Lcom/unisound/ant/platform/smarthome/bean/SmartDeviceStatus;

    .prologue
    .line 92
    iget-object v1, p0, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;->reportHandler:Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr$ReportHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;->reportHandler:Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr$ReportHandler;

    invoke-virtual {v1}, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr$ReportHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 94
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 95
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;->reportHandler:Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr$ReportHandler;

    invoke-virtual {v1, v0}, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr$ReportHandler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
