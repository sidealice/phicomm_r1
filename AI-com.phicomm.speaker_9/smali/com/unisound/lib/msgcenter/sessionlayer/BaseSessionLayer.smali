.class public final Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;
.super Ljava/lang/Object;
.source "BaseSessionLayer.java"

# interfaces
.implements Lcom/unisound/lib/msgcenter/message/UpDownMessageManager$MessageExcuteListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseSessionLayer"

.field private static actionDialogs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dialogProfile:Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;

.field private upDownMessageManager:Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;

.field private updateCallBack:Lcom/unisound/lib/msgcenter/sessionlayer/SessionUpdateCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->actionDialogs:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unisound/lib/msgcenter/sessionlayer/SessionUpdateCallBack;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;

    invoke-direct {v0, p1}, Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->upDownMessageManager:Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;

    .line 44
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->upDownMessageManager:Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;

    invoke-virtual {p1, p0}, Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;->setMessageExcuteListener(Lcom/unisound/lib/msgcenter/message/UpDownMessageManager$MessageExcuteListener;)V

    .line 45
    iput-object p2, p0, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->updateCallBack:Lcom/unisound/lib/msgcenter/sessionlayer/SessionUpdateCallBack;

    return-void
.end method

.method private dispatchControlSessionMsg(Ljava/lang/String;Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->upDownMessageManager:Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->upDownMessageManager:Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;->dispatcherServiceMessage(Ljava/lang/String;Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;)V

    return-void

    .line 134
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "upDownMessageManager or dstServiceProfile is null and please check"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private receiveCloudResponseSessionMsg(Ljava/lang/String;Lcom/unisound/lib/msgcenter/service/ActionResponse;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 144
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->upDownMessageManager:Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "deviceManagement"

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->upDownMessageManager:Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;->dispatcherCloudResponse(Ljava/lang/String;Lcom/unisound/lib/msgcenter/service/ActionResponse;)V

    const-string p1, "BaseSessionLayer"

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--->>receiveCloudResponseSessionMsg actionResponse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p2}, Lcom/unisound/lib/msgcenter/service/ActionResponse;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 151
    invoke-static {p1, p2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public clearDialogStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->dialogProfile:Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;

    return-void
.end method

.method public filterSessionContent(Ljava/lang/String;)V
    .locals 3

    const-string v0, "BaseSessionLayer"

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>dispatcherMessage message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 88
    :cond_0
    new-instance v0, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer$1;

    invoke-direct {v0, p0}, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer$1;-><init>(Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;)V

    .line 89
    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 91
    invoke-static {p1, v0}, Lcom/unisound/lib/msgcenter/service/ServiceProtocolUtil;->getResponseHeader(Ljava/lang/String;Ljava/lang/reflect/Type;)Lcom/unisound/lib/msgcenter/service/CloudResponse;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/service/CloudResponse;->getMessageType()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/service/CloudResponse;->getMessageBody()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/lib/msgcenter/bean/SessionData;

    if-nez p1, :cond_1

    const-string p1, "BaseSessionLayer"

    const-string v0, "--parse sessionData is null and this session is not effective"

    .line 95
    invoke-static {p1, v0}, Lcom/unisound/lib/utils/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "intentAction"

    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    :try_start_0
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/SessionData;->getDstService()Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->getUniCommand()Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;->getOperation()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/SessionData;->getDialog()Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->saveDialogStatus(Ljava/lang/String;Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "BaseSessionLayer"

    const-string v1, "--->>get action dialog exception"

    .line 104
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_0
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/SessionData;->getDialog()Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;->getDstService()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/SessionData;->getDstService()Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;

    move-result-object p1

    .line 107
    invoke-direct {p0, v0, p1}, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->dispatchControlSessionMsg(Ljava/lang/String;Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;)V

    goto :goto_2

    :cond_2
    const-string v1, "synInfo"

    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    :try_start_1
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/SessionData;->getDstService()Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->getAccelerate()Lcom/unisound/lib/msgcenter/bean/Accelerate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/bean/Accelerate;->getValuse()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/SessionData;->getDialog()Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->saveDialogStatus(Ljava/lang/String;Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v0, "BaseSessionLayer"

    const-string v1, "--->>get action dialog exception"

    .line 115
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v0, "BaseSessionLayer"

    .line 117
    invoke-static {p1}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/SessionData;->getDialog()Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;->getDstService()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/SessionData;->getDstService()Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;

    move-result-object p1

    .line 119
    invoke-direct {p0, v0, p1}, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->dispatchControlSessionMsg(Ljava/lang/String;Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;)V

    goto :goto_2

    :cond_3
    const-string v1, "updateAck"

    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "uploadPDAck"

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 124
    :cond_4
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/SessionData;->getDialog()Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;->getDstService()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/SessionData;->getActionResponse()Lcom/unisound/lib/msgcenter/service/ActionResponse;

    move-result-object p1

    .line 124
    invoke-direct {p0, v0, p1}, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->receiveCloudResponseSessionMsg(Ljava/lang/String;Lcom/unisound/lib/msgcenter/service/ActionResponse;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public getDialogStatus(Ljava/lang/String;)Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;
    .locals 1

    .line 64
    sget-object v0, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->actionDialogs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;

    iput-object p1, p0, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->dialogProfile:Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;

    .line 65
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->dialogProfile:Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;

    if-nez p1, :cond_0

    .line 66
    new-instance p1, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;

    invoke-direct {p1}, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;-><init>()V

    iput-object p1, p0, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->dialogProfile:Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->dialogProfile:Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;

    return-object p1
.end method

.method public onExcuteResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;)V
    .locals 3

    .line 164
    invoke-virtual {p4}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->getUniCommand()Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;->getOperation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->getDialogStatus(Ljava/lang/String;)Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;

    move-result-object v0

    .line 166
    :try_start_0
    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;->getSendToCloudResponse()Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;->getActionResponseId()Ljava/lang/String;

    move-result-object v1

    .line 167
    new-instance v2, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;

    invoke-direct {v2, v1}, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;->setSendToTerminalResponse(Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "BaseSessionLayer"

    const-string v2, "get actionResponseId has exception"

    .line 169
    invoke-static {v1, v2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v1, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;

    invoke-direct {v1, p3}, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;->setSendToTerminalResponse(Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;)V

    .line 172
    :goto_0
    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;->setDstState(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p4}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->getDstServiceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;->setDstService(Ljava/lang/String;)V

    .line 174
    new-instance p1, Lcom/unisound/lib/msgcenter/bean/SessionData;

    invoke-direct {p1}, Lcom/unisound/lib/msgcenter/bean/SessionData;-><init>()V

    .line 175
    invoke-virtual {p1, v0}, Lcom/unisound/lib/msgcenter/bean/SessionData;->setDialog(Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;)V

    .line 176
    invoke-virtual {p1, p4}, Lcom/unisound/lib/msgcenter/bean/SessionData;->setDstService(Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;)V

    .line 182
    :try_start_1
    invoke-virtual {p4}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->getUniCommand()Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;

    move-result-object p3

    invoke-virtual {p3}, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;->getOperation()Ljava/lang/String;

    move-result-object p3

    .line 183
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/SessionData;->getDialog()Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;

    move-result-object p4

    invoke-virtual {p0, p3, p4}, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->saveDialogStatus(Ljava/lang/String;Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string p3, "BaseSessionLayer"

    const-string p4, "--->>get action dialog exception"

    .line 185
    invoke-static {p3, p4}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_1
    iget-object p3, p0, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->updateCallBack:Lcom/unisound/lib/msgcenter/sessionlayer/SessionUpdateCallBack;

    if-nez p3, :cond_0

    const-string p1, "BaseSessionLayer"

    const-string p2, "--->>sessionUpdataCallBack may be null"

    .line 188
    invoke-static {p1, p2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 191
    :cond_0
    iget-object p3, p0, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->updateCallBack:Lcom/unisound/lib/msgcenter/sessionlayer/SessionUpdateCallBack;

    invoke-interface {p3, p2, p1}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionUpdateCallBack;->onSessionDataUpdate(Ljava/lang/String;Lcom/unisound/lib/msgcenter/bean/SessionData;)V

    return-void
.end method

.method public onReportResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/msgcenter/service/ActionResponse;)V
    .locals 2

    .line 200
    invoke-virtual {p0, p3}, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->getDialogStatus(Ljava/lang/String;)Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;

    move-result-object p3

    .line 201
    invoke-virtual {p3, p1}, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;->setDstState(Ljava/lang/String;)V

    .line 202
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    .line 204
    :try_start_0
    invoke-virtual {p3}, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;->getSendToCloudResponse()Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile$TerminalResponse;->getActionResponseId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    const-string v0, "BaseSessionLayer"

    const-string v1, "get actionResponseId has exception"

    .line 206
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :goto_0
    invoke-virtual {p4, p1}, Lcom/unisound/lib/msgcenter/service/ActionResponse;->setActionResponseId(Ljava/lang/String;)V

    .line 209
    new-instance p1, Lcom/unisound/lib/msgcenter/bean/SessionData;

    invoke-direct {p1}, Lcom/unisound/lib/msgcenter/bean/SessionData;-><init>()V

    .line 210
    invoke-virtual {p1, p3}, Lcom/unisound/lib/msgcenter/bean/SessionData;->setDialog(Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;)V

    .line 211
    new-instance p3, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;

    invoke-direct {p3}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;-><init>()V

    const-string v0, "settingOver"

    .line 212
    invoke-virtual {p3, v0}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->setDstState(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1, p3}, Lcom/unisound/lib/msgcenter/bean/SessionData;->setDstService(Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;)V

    .line 214
    invoke-virtual {p1, p4}, Lcom/unisound/lib/msgcenter/bean/SessionData;->setActionResponse(Lcom/unisound/lib/msgcenter/service/ActionResponse;)V

    .line 215
    iget-object p3, p0, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->updateCallBack:Lcom/unisound/lib/msgcenter/sessionlayer/SessionUpdateCallBack;

    if-nez p3, :cond_0

    const-string p1, "BaseSessionLayer"

    const-string p2, "--->>sessionUpdataCallBack may be null"

    .line 216
    invoke-static {p1, p2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 219
    :cond_0
    iget-object p3, p0, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->updateCallBack:Lcom/unisound/lib/msgcenter/sessionlayer/SessionUpdateCallBack;

    invoke-interface {p3, p2, p1}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionUpdateCallBack;->onSessionDataUpdate(Ljava/lang/String;Lcom/unisound/lib/msgcenter/bean/SessionData;)V

    .line 220
    invoke-virtual {p0}, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->clearDialogStatus()V

    return-void
.end method

.method public saveDialogStatus(Ljava/lang/String;Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;)V
    .locals 1

    .line 54
    sget-object v0, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->actionDialogs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iput-object p2, p0, Lcom/unisound/lib/msgcenter/sessionlayer/BaseSessionLayer;->dialogProfile:Lcom/unisound/lib/msgcenter/sessionlayer/DialogProfile;

    return-void
.end method
