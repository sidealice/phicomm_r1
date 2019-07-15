.class public Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;
.super Ljava/lang/Object;
.source "UpDownMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/msgcenter/message/UpDownMessageManager$MessageExcuteListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UpDownMessageManager"


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/unisound/lib/msgcenter/message/UpDownMessageManager$MessageExcuteListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;->context:Landroid/content/Context;

    .line 59
    invoke-static {p0}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionRegister;->saveUpDownMessageManager(Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;)V

    return-void
.end method


# virtual methods
.method public dispatcherCloudResponse(Ljava/lang/String;Lcom/unisound/lib/msgcenter/service/ActionResponse;)V
    .locals 3

    const-string v0, "UpDownMessageManager"

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>dispatcherCloudResponse dstServiceName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {p1}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionRegister;->getSessionExecuter(Ljava/lang/String;)Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "UpDownMessageManager"

    const-string p2, "--->>dispatcherServiceMessage handler may be null OR not register"

    .line 106
    invoke-static {p1, p2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 109
    :cond_0
    invoke-virtual {p1, p2}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;->dispActionResponse(Lcom/unisound/lib/msgcenter/service/ActionResponse;)V

    return-void
.end method

.method public dispatcherServiceMessage(Ljava/lang/String;Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;)V
    .locals 3

    const-string v0, "UpDownMessageManager"

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>dispatcherServiceMessage dstServiceName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {p1}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionRegister;->getSessionExecuter(Ljava/lang/String;)Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "UpDownMessageManager"

    const-string p2, "--->>dispatcherServiceMessage handler may be null OR not register"

    .line 84
    invoke-static {p1, p2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 87
    :cond_0
    invoke-virtual {p2}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->getAccelerate()Lcom/unisound/lib/msgcenter/bean/Accelerate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p1, p2}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;->dispCloudSyncInfo(Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p2}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->getUniCommand()Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;->dispDstService(Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;)V

    :goto_0
    return-void
.end method

.method public onReportDeviceStatusWithAck(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;)V
    .locals 2

    const-string v0, "UpDownMessageManager"

    const-string v1, "--->>onReportDeviceStatusWithAck"

    .line 120
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v0, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;-><init>()V

    .line 122
    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->setDstState(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p3}, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;->getCapability()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->setDstServiceName(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, p3}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->setUniCommand(Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;)V

    .line 125
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;->listener:Lcom/unisound/lib/msgcenter/message/UpDownMessageManager$MessageExcuteListener;

    if-nez p1, :cond_0

    .line 126
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "listener may be null and please check"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;->listener:Lcom/unisound/lib/msgcenter/message/UpDownMessageManager$MessageExcuteListener;

    const-string p3, "2"

    const-string v1, "uploadPDRequest"

    invoke-interface {p1, p3, v1, p2, v0}, Lcom/unisound/lib/msgcenter/message/UpDownMessageManager$MessageExcuteListener;->onExcuteResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;)V

    return-void
.end method

.method public onReportDeviceStatusWithAckWithOutAck(Ljava/lang/String;Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;)V
    .locals 3

    const-string v0, "UpDownMessageManager"

    const-string v1, "--->>onReportDeviceStatusWithAckWithOutAck"

    .line 159
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v0, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;-><init>()V

    .line 161
    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->setDstState(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;->getCapability()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->setDstServiceName(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, p2}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->setUniCommand(Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;)V

    .line 164
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;->listener:Lcom/unisound/lib/msgcenter/message/UpDownMessageManager$MessageExcuteListener;

    if-nez p1, :cond_0

    .line 165
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "listener may be null and please check"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;->listener:Lcom/unisound/lib/msgcenter/message/UpDownMessageManager$MessageExcuteListener;

    const-string p2, "2"

    const-string v1, "uploadGDRequest"

    const/4 v2, 0x0

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/unisound/lib/msgcenter/message/UpDownMessageManager$MessageExcuteListener;->onExcuteResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;)V

    return-void
.end method

.method public onReportMusicStatus(Ljava/lang/String;Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;)V
    .locals 3

    const-string v0, "UpDownMessageManager"

    const-string v1, "--->>onReportMusicStatus"

    .line 177
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v0, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;-><init>()V

    .line 179
    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->setDstState(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0, p2}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->setUniCommand(Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;)V

    .line 181
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;->listener:Lcom/unisound/lib/msgcenter/message/UpDownMessageManager$MessageExcuteListener;

    if-nez p1, :cond_0

    .line 182
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "listener may be null and please check"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;->listener:Lcom/unisound/lib/msgcenter/message/UpDownMessageManager$MessageExcuteListener;

    const-string p2, "2"

    const-string v1, "uploadGDRequest"

    const/4 v2, 0x0

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/unisound/lib/msgcenter/message/UpDownMessageManager$MessageExcuteListener;->onExcuteResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;)V

    return-void
.end method

.method public onReportStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "UpDownMessageManager"

    const-string v1, "--->>onReportMusicStatus"

    .line 195
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v0, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;-><init>()V

    .line 197
    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->setDstState(Ljava/lang/String;)V

    const-string p1, "deviceManagement"

    .line 198
    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->setDstServiceName(Ljava/lang/String;)V

    .line 199
    new-instance p1, Lcom/unisound/lib/msgcenter/bean/Accelerate;

    invoke-direct {p1}, Lcom/unisound/lib/msgcenter/bean/Accelerate;-><init>()V

    const-string v1, "syncInfo"

    .line 200
    invoke-virtual {p1, v1}, Lcom/unisound/lib/msgcenter/bean/Accelerate;->setCommand(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1, p2}, Lcom/unisound/lib/msgcenter/bean/Accelerate;->setValuse(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->setAccelerate(Lcom/unisound/lib/msgcenter/bean/Accelerate;)V

    .line 203
    invoke-virtual {v0, p3}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->setParameter(Ljava/lang/Object;)V

    .line 204
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;->listener:Lcom/unisound/lib/msgcenter/message/UpDownMessageManager$MessageExcuteListener;

    if-nez p1, :cond_0

    .line 205
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "listener may be null and please check"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 207
    :cond_0
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;->listener:Lcom/unisound/lib/msgcenter/message/UpDownMessageManager$MessageExcuteListener;

    const-string p2, "2"

    const-string p3, "syncInfo"

    const/4 v1, 0x0

    invoke-interface {p1, p2, p3, v1, v0}, Lcom/unisound/lib/msgcenter/message/UpDownMessageManager$MessageExcuteListener;->onExcuteResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;)V

    return-void
.end method

.method public reponseCloudCommandWithoutAck(Ljava/lang/String;Lcom/unisound/lib/msgcenter/service/ActionResponse;)V
    .locals 3

    const-string v0, "UpDownMessageManager"

    const-string v1, "--->>reponseCloudCommandWithoutAck"

    .line 217
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;->listener:Lcom/unisound/lib/msgcenter/message/UpDownMessageManager$MessageExcuteListener;

    if-nez v0, :cond_0

    .line 219
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "listener may be null and please check"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;->listener:Lcom/unisound/lib/msgcenter/message/UpDownMessageManager$MessageExcuteListener;

    const-string v1, "2"

    const-string v2, "intentAck"

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/unisound/lib/msgcenter/message/UpDownMessageManager$MessageExcuteListener;->onReportResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/msgcenter/service/ActionResponse;)V

    return-void
.end method

.method public setMessageExcuteListener(Lcom/unisound/lib/msgcenter/message/UpDownMessageManager$MessageExcuteListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;->listener:Lcom/unisound/lib/msgcenter/message/UpDownMessageManager$MessageExcuteListener;

    return-void
.end method

.method public syncInfoForDeviceWithAck(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;)V
    .locals 2

    const-string v0, "UpDownMessageManager"

    const-string v1, "--->>onReportDeviceStatusWithAck"

    .line 140
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;-><init>()V

    .line 142
    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->setDstState(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p3}, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;->getCapability()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->setDstServiceName(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, p3}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->setUniCommand(Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;)V

    .line 145
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;->listener:Lcom/unisound/lib/msgcenter/message/UpDownMessageManager$MessageExcuteListener;

    if-nez p1, :cond_0

    .line 146
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "listener may be null and please check"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;->listener:Lcom/unisound/lib/msgcenter/message/UpDownMessageManager$MessageExcuteListener;

    const-string p3, "2"

    const-string v1, "syncInfo"

    invoke-interface {p1, p3, v1, p2, v0}, Lcom/unisound/lib/msgcenter/message/UpDownMessageManager$MessageExcuteListener;->onExcuteResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;)V

    return-void
.end method
