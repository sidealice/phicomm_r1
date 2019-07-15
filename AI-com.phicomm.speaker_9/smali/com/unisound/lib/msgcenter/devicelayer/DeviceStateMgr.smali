.class public Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;
.super Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;
.source "DeviceStateMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr$SingleFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceStateMgr"


# instance fields
.field private actionResponses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deviceLogListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/msgcenter/devicelayer/DeviceLogListener;",
            ">;"
        }
    .end annotation
.end field

.field private deviceStatusListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/msgcenter/devicelayer/DeviceStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->deviceStatusListenerList:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->deviceLogListenerList:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->actionResponses:Ljava/util/Map;

    const-string v0, "deviceManagement"

    .line 38
    invoke-static {v0, p0}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionRegister;->associateSessionCenter(Ljava/lang/String;Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr$1;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;-><init>()V

    return-void
.end method

.method private afterGetInfo(Landroid/os/Message;)V
    .locals 2

    .line 127
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;

    .line 128
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->getAccelerate()Lcom/unisound/lib/msgcenter/bean/Accelerate;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/bean/Accelerate;->getValuse()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->getParameter()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "modeSync"

    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "offlineAsrLog"

    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "onlineAsrLog"

    .line 136
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    :cond_2
    invoke-direct {p0, p1}, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->parseAndCallbackData(Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 139
    invoke-direct {p0, p1}, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->getActionResponse(I)Lcom/unisound/lib/msgcenter/service/ActionResponse;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->responseCloudCommand(Ljava/lang/String;Lcom/unisound/lib/msgcenter/service/ActionResponse;)V

    return-void
.end method

.method private disPatchDeviceStateUpdateCommand(Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;)V
    .locals 4

    .line 159
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;->getOperation()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceStateMgr"

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>disPatchDeviceStateUpdateCommand command:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;->getParameter()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/k;

    .line 162
    const-class v1, Lcom/unisound/lib/device/DeviceOnlineStateBean;

    .line 163
    invoke-static {p1, v1}, Lcom/unisound/lib/utils/JsonTool;->fromJson(Lcom/google/gson/k;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/lib/device/DeviceOnlineStateBean;

    .line 164
    invoke-direct {p0, v0, p1}, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->onlineStateCallback(Ljava/lang/String;Lcom/unisound/lib/device/DeviceOnlineStateBean;)V

    return-void
.end method

.method private dispatcherCloudResponse(Lcom/unisound/lib/msgcenter/service/ActionResponse;)V
    .locals 4

    .line 189
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/service/ActionResponse;->getActionResponseId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "online"

    .line 190
    invoke-direct {p0, v0}, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->getOperateResponseId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceStateMgr"

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>dispatcherCloudResponse cloudResponseId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",operateWithId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "changeWifi"

    const/4 v0, 0x0

    .line 197
    invoke-direct {p0, v0}, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->getActionResponse(I)Lcom/unisound/lib/msgcenter/service/ActionResponse;

    move-result-object v0

    .line 196
    invoke-direct {p0, p1, v0}, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->responseCloudCommand(Ljava/lang/String;Lcom/unisound/lib/msgcenter/service/ActionResponse;)V

    :cond_0
    return-void
.end method

.method private getActionResponse(I)Lcom/unisound/lib/msgcenter/service/ActionResponse;
    .locals 3

    .line 202
    new-instance v0, Lcom/unisound/lib/msgcenter/service/ActionResponse;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/service/ActionResponse;-><init>()V

    .line 203
    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/service/ActionResponse;->setActionStatus(I)V

    .line 204
    invoke-static {p1}, Lcom/unisound/lib/msgcenter/bean/ActionStatus;->getStateDetail(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/service/ActionResponse;->setDetailInfo(Ljava/lang/String;)V

    .line 205
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/service/ActionResponse;->setActionResponseId(Ljava/lang/String;)V

    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/service/ActionResponse;->setActionTimestamp(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance()Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;
    .locals 1

    .line 54
    sget-object v0, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr$SingleFactory;->instant:Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;

    return-object v0
.end method

.method private getOperateResponseId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->actionResponses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private onlineStateCallback(Ljava/lang/String;Lcom/unisound/lib/device/DeviceOnlineStateBean;)V
    .locals 1

    const-string v0, "offline"

    .line 169
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 170
    invoke-virtual {p2, p1}, Lcom/unisound/lib/device/DeviceOnlineStateBean;->setOnline(Z)V

    .line 172
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->deviceStatusListenerList:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 173
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->deviceStatusListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStatusListener;

    .line 174
    invoke-interface {v0, p2}, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStatusListener;->onDeviceOnlineState(Lcom/unisound/lib/device/DeviceOnlineStateBean;)V

    goto :goto_0

    :cond_0
    const-string v0, "online"

    .line 177
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 178
    invoke-virtual {p2, p1}, Lcom/unisound/lib/device/DeviceOnlineStateBean;->setOnline(Z)V

    .line 180
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->deviceStatusListenerList:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 181
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->deviceStatusListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStatusListener;

    .line 182
    invoke-interface {v0, p2}, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStatusListener;->onDeviceOnlineState(Lcom/unisound/lib/device/DeviceOnlineStateBean;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private parseAndCallbackData(Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;)V
    .locals 3

    const-string v0, "DeviceStateMgr"

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParameter--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->getParameter()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->getParameter()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/k;

    const-class v0, Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;

    invoke-static {p1, v0}, Lcom/unisound/lib/utils/JsonTool;->fromJson(Lcom/google/gson/k;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;

    .line 148
    invoke-static {p1}, Lcom/unisound/lib/utils/NluParseUtils;->getLogMessage(Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;)Lcom/unisound/lib/msgcenter/bean/LogMessage;

    move-result-object p1

    .line 150
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->deviceLogListenerList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->deviceLogListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/lib/msgcenter/devicelayer/DeviceLogListener;

    .line 152
    invoke-interface {v1, p1}, Lcom/unisound/lib/msgcenter/devicelayer/DeviceLogListener;->onDeviceLog(Lcom/unisound/lib/msgcenter/bean/LogMessage;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private responseCloudCommand(Ljava/lang/String;Lcom/unisound/lib/msgcenter/service/ActionResponse;)V
    .locals 1

    .line 211
    invoke-static {}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;->reponseCloudCommandWithoutAck(Ljava/lang/String;Lcom/unisound/lib/msgcenter/service/ActionResponse;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;->handleMessage(Landroid/os/Message;)V

    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 116
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->afterGetInfo(Landroid/os/Message;)V

    goto :goto_0

    .line 112
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/unisound/lib/msgcenter/service/ActionResponse;

    .line 113
    invoke-direct {p0, p1}, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->dispatcherCloudResponse(Lcom/unisound/lib/msgcenter/service/ActionResponse;)V

    goto :goto_0

    .line 108
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;

    .line 109
    invoke-direct {p0, p1}, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->disPatchDeviceStateUpdateCommand(Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTransportChannelConencted()V
    .locals 2

    const-string v0, "DeviceStateMgr"

    const-string v1, "onTransportChannelConencted"

    .line 218
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeDeviceLogListener(Lcom/unisound/lib/msgcenter/devicelayer/DeviceLogListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->deviceLogListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->deviceLogListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeStatusListener(Lcom/unisound/lib/msgcenter/devicelayer/DeviceStatusListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->deviceStatusListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->deviceStatusListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setDeviceLogListener(Lcom/unisound/lib/msgcenter/devicelayer/DeviceLogListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->deviceLogListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setStatusListener(Lcom/unisound/lib/msgcenter/devicelayer/DeviceStatusListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->deviceStatusListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
