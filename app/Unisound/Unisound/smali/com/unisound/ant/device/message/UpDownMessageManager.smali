.class public Lcom/unisound/ant/device/message/UpDownMessageManager;
.super Ljava/lang/Object;
.source "UpDownMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UpDownMessageManager"


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/unisound/ant/device/message/UpDownMessageManager;->context:Landroid/content/Context;

    .line 42
    invoke-static {p0}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->saveUpDownMessageManager(Lcom/unisound/ant/device/message/UpDownMessageManager;)V

    .line 43
    return-void
.end method


# virtual methods
.method public dispatcherCloudResponse(Ljava/lang/String;Lcom/unisound/ant/device/service/ActionResponse;)V
    .locals 4
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "actionResponse"    # Lcom/unisound/ant/device/service/ActionResponse;

    .prologue
    .line 67
    const-string v1, "UpDownMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>dispatcherCloudResponse dstServiceName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {p1}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getSessionExecuter(Ljava/lang/String;)Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;

    move-result-object v0

    .line 72
    .local v0, "handler":Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 73
    :cond_0
    const-string v1, "UpDownMessageManager"

    const-string v2, "--->>dispatcherServiceMessage handler may be null OR not register"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {v0, p2}, Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;->dispActionResponse(Lcom/unisound/ant/device/service/ActionResponse;)V

    goto :goto_0
.end method

.method public dispatcherServiceMessage(Ljava/lang/String;Lcom/unisound/ant/device/profile/DstServiceProfile;)V
    .locals 5
    .param p1, "dstServiceName"    # Ljava/lang/String;
    .param p2, "dstServiceProfile"    # Lcom/unisound/ant/device/profile/DstServiceProfile;

    .prologue
    .line 50
    const-string v2, "UpDownMessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--->>dispatcherServiceMessage dstServiceName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {p1}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getSessionExecuter(Ljava/lang/String;)Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;

    move-result-object v1

    .line 55
    .local v1, "handler":Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;
    invoke-virtual {p2}, Lcom/unisound/ant/device/profile/DstServiceProfile;->getUniCommand()Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    move-result-object v0

    .line 56
    .local v0, "command":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 57
    :cond_0
    const-string v2, "UpDownMessageManager"

    const-string v3, "--->>dispatcherServiceMessage handler may be null OR not register"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {v1, v0}, Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;->dispDstService(Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V

    goto :goto_0
.end method

.method public dispatcherSynServiceStatusReq(Ljava/lang/String;)V
    .locals 4
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string v1, "UpDownMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>dispatcherSynServiceStatusReq serviceName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {p1}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getSessionExecuter(Ljava/lang/String;)Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;

    move-result-object v0

    .line 88
    .local v0, "handler":Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;
    if-nez v0, :cond_0

    .line 89
    const-string v1, "UpDownMessageManager"

    const-string v2, "--->>dispatcherServiceMessage handler may be null OR not register"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {v0}, Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;->dispSyncServiceStatusReq()V

    goto :goto_0
.end method

.method public onReportAlarmReminderStatus(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/bean/AlarmReminder;)V
    .locals 6
    .param p1, "dstStatus"    # Ljava/lang/String;
    .param p2, "commandValue"    # Ljava/lang/String;
    .param p3, "data"    # Lcom/unisound/ant/device/bean/AlarmReminder;

    .prologue
    .line 195
    const-string v2, "UpDownMessageManager"

    const-string v3, "--->>onReportAlarmReminderStatus"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v1, Lcom/unisound/ant/device/profile/DstServiceProfile;

    invoke-direct {v1}, Lcom/unisound/ant/device/profile/DstServiceProfile;-><init>()V

    .line 197
    .local v1, "dstServiceProfile":Lcom/unisound/ant/device/profile/DstServiceProfile;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    const-string p1, "settingOver"

    .line 200
    :cond_0
    invoke-virtual {v1, p1}, Lcom/unisound/ant/device/profile/DstServiceProfile;->setDstState(Ljava/lang/String;)V

    .line 201
    const-string v2, "memoryManager"

    invoke-virtual {v1, v2}, Lcom/unisound/ant/device/profile/DstServiceProfile;->setDstServiceName(Ljava/lang/String;)V

    .line 202
    new-instance v0, Lcom/unisound/ant/device/bean/Accelerate;

    invoke-direct {v0}, Lcom/unisound/ant/device/bean/Accelerate;-><init>()V

    .line 203
    .local v0, "accelerate":Lcom/unisound/ant/device/bean/Accelerate;
    const-string v2, "synInfo"

    invoke-virtual {v0, v2}, Lcom/unisound/ant/device/bean/Accelerate;->setCommand(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0, p2}, Lcom/unisound/ant/device/bean/Accelerate;->setValuse(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v1, v0}, Lcom/unisound/ant/device/profile/DstServiceProfile;->setAccelerate(Lcom/unisound/ant/device/bean/Accelerate;)V

    .line 206
    invoke-virtual {v1, p3}, Lcom/unisound/ant/device/profile/DstServiceProfile;->setParameter(Ljava/lang/Object;)V

    .line 207
    iget-object v2, p0, Lcom/unisound/ant/device/message/UpDownMessageManager;->listener:Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;

    if-nez v2, :cond_1

    .line 208
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener may be null and please check"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_1
    iget-object v2, p0, Lcom/unisound/ant/device/message/UpDownMessageManager;->listener:Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;

    const-string v3, "2"

    const-string v4, "synInfo"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;->onExcuteResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/profile/DstServiceProfile;)V

    .line 212
    return-void
.end method

.method public onReportAudioStatus(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/bean/MusicData;)V
    .locals 6
    .param p1, "dstStatus"    # Ljava/lang/String;
    .param p2, "commandValue"    # Ljava/lang/String;
    .param p3, "data"    # Lcom/unisound/ant/device/bean/MusicData;

    .prologue
    .line 158
    const-string v0, "UpDownMessageManager"

    const-string v1, "--->>onReportAudioStatus"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "enjoyAudio"

    const-string v3, "synInfo"

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/unisound/ant/device/message/UpDownMessageManager;->onReportStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method public onReportDeviceStatusWithAck(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V
    .locals 4
    .param p1, "dstStatus"    # Ljava/lang/String;
    .param p2, "actionResponseId"    # Ljava/lang/String;
    .param p3, "command"    # Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    .prologue
    .line 100
    const-string v1, "UpDownMessageManager"

    const-string v2, "--->>onReportDeviceStatusWithAck"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v0, Lcom/unisound/ant/device/profile/DstServiceProfile;

    invoke-direct {v0}, Lcom/unisound/ant/device/profile/DstServiceProfile;-><init>()V

    .line 102
    .local v0, "dstServiceProfile":Lcom/unisound/ant/device/profile/DstServiceProfile;
    invoke-virtual {v0, p1}, Lcom/unisound/ant/device/profile/DstServiceProfile;->setDstState(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p3}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->getCapability()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/profile/DstServiceProfile;->setDstServiceName(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, p3}, Lcom/unisound/ant/device/profile/DstServiceProfile;->setUniCommand(Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V

    .line 105
    iget-object v1, p0, Lcom/unisound/ant/device/message/UpDownMessageManager;->listener:Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener may be null and please check"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/unisound/ant/device/message/UpDownMessageManager;->listener:Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;

    const-string v2, "2"

    const-string v3, "uploadPDRequest"

    invoke-interface {v1, v2, v3, p2, v0}, Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;->onExcuteResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/profile/DstServiceProfile;)V

    .line 110
    return-void
.end method

.method public onReportDeviceStatusWithAckWithOutAck(Ljava/lang/String;Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V
    .locals 5
    .param p1, "dstStatus"    # Ljava/lang/String;
    .param p2, "command"    # Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    .prologue
    .line 134
    const-string v1, "UpDownMessageManager"

    const-string v2, "--->>onReportDeviceStatusWithAckWithOutAck"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v0, Lcom/unisound/ant/device/profile/DstServiceProfile;

    invoke-direct {v0}, Lcom/unisound/ant/device/profile/DstServiceProfile;-><init>()V

    .line 136
    .local v0, "dstServiceProfile":Lcom/unisound/ant/device/profile/DstServiceProfile;
    invoke-virtual {v0, p1}, Lcom/unisound/ant/device/profile/DstServiceProfile;->setDstState(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->getCapability()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/profile/DstServiceProfile;->setDstServiceName(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0, p2}, Lcom/unisound/ant/device/profile/DstServiceProfile;->setUniCommand(Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V

    .line 139
    iget-object v1, p0, Lcom/unisound/ant/device/message/UpDownMessageManager;->listener:Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;

    if-nez v1, :cond_0

    .line 140
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener may be null and please check"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/unisound/ant/device/message/UpDownMessageManager;->listener:Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;

    const-string v2, "2"

    const-string v3, "uploadGDRequest"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;->onExcuteResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/profile/DstServiceProfile;)V

    .line 144
    return-void
.end method

.method public onReportModeSettingStatus(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/bean/SceneModeInfo;)V
    .locals 6
    .param p1, "dstStatus"    # Ljava/lang/String;
    .param p2, "commandValue"    # Ljava/lang/String;
    .param p3, "data"    # Lcom/unisound/ant/device/bean/SceneModeInfo;

    .prologue
    .line 174
    const-string v2, "UpDownMessageManager"

    const-string v3, "--->>onReportMusicStatus"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v1, Lcom/unisound/ant/device/profile/DstServiceProfile;

    invoke-direct {v1}, Lcom/unisound/ant/device/profile/DstServiceProfile;-><init>()V

    .line 176
    .local v1, "dstServiceProfile":Lcom/unisound/ant/device/profile/DstServiceProfile;
    invoke-virtual {v1, p1}, Lcom/unisound/ant/device/profile/DstServiceProfile;->setDstState(Ljava/lang/String;)V

    .line 177
    const-string v2, "deviceManagement"

    invoke-virtual {v1, v2}, Lcom/unisound/ant/device/profile/DstServiceProfile;->setDstServiceName(Ljava/lang/String;)V

    .line 178
    new-instance v0, Lcom/unisound/ant/device/bean/Accelerate;

    invoke-direct {v0}, Lcom/unisound/ant/device/bean/Accelerate;-><init>()V

    .line 179
    .local v0, "accelerate":Lcom/unisound/ant/device/bean/Accelerate;
    const-string v2, "synInfo"

    invoke-virtual {v0, v2}, Lcom/unisound/ant/device/bean/Accelerate;->setCommand(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0, p2}, Lcom/unisound/ant/device/bean/Accelerate;->setValuse(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v1, v0}, Lcom/unisound/ant/device/profile/DstServiceProfile;->setAccelerate(Lcom/unisound/ant/device/bean/Accelerate;)V

    .line 182
    invoke-virtual {v1, p3}, Lcom/unisound/ant/device/profile/DstServiceProfile;->setParameter(Ljava/lang/Object;)V

    .line 183
    iget-object v2, p0, Lcom/unisound/ant/device/message/UpDownMessageManager;->listener:Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;

    if-nez v2, :cond_0

    .line 184
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener may be null and please check"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/unisound/ant/device/message/UpDownMessageManager;->listener:Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;

    const-string v3, "2"

    const-string v4, "synInfo"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;->onExcuteResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/profile/DstServiceProfile;)V

    .line 188
    return-void
.end method

.method public onReportMusicStatus(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/bean/MusicData;)V
    .locals 6
    .param p1, "dstStatus"    # Ljava/lang/String;
    .param p2, "commandValue"    # Ljava/lang/String;
    .param p3, "data"    # Lcom/unisound/ant/device/bean/MusicData;

    .prologue
    .line 150
    const-string v0, "UpDownMessageManager"

    const-string v1, "--->>onReportMusicStatus"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v1, "enjoyMusic"

    const-string v3, "synInfo"

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/unisound/ant/device/message/UpDownMessageManager;->onReportStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method public onReportNewsStatus(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/bean/MusicData;)V
    .locals 6
    .param p1, "dstStatus"    # Ljava/lang/String;
    .param p2, "commandValue"    # Ljava/lang/String;
    .param p3, "data"    # Lcom/unisound/ant/device/bean/MusicData;

    .prologue
    .line 166
    const-string v0, "UpDownMessageManager"

    const-string v1, "--->>onReportAudioStatus"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v1, "enjoyNews"

    const-string v3, "synInfo"

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/unisound/ant/device/message/UpDownMessageManager;->onReportStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    return-void
.end method

.method public onReportNoteStatus(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/bean/NoteInfo;)V
    .locals 6
    .param p1, "dstStatus"    # Ljava/lang/String;
    .param p2, "commandValue"    # Ljava/lang/String;
    .param p3, "data"    # Lcom/unisound/ant/device/bean/NoteInfo;

    .prologue
    .line 218
    const-string v2, "UpDownMessageManager"

    const-string v3, "--->>onReportNoteStatus"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v1, Lcom/unisound/ant/device/profile/DstServiceProfile;

    invoke-direct {v1}, Lcom/unisound/ant/device/profile/DstServiceProfile;-><init>()V

    .line 220
    .local v1, "dstServiceProfile":Lcom/unisound/ant/device/profile/DstServiceProfile;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    const-string p1, "settingOver"

    .line 223
    :cond_0
    invoke-virtual {v1, p1}, Lcom/unisound/ant/device/profile/DstServiceProfile;->setDstState(Ljava/lang/String;)V

    .line 224
    const-string v2, "noteManager"

    invoke-virtual {v1, v2}, Lcom/unisound/ant/device/profile/DstServiceProfile;->setDstServiceName(Ljava/lang/String;)V

    .line 225
    new-instance v0, Lcom/unisound/ant/device/bean/Accelerate;

    invoke-direct {v0}, Lcom/unisound/ant/device/bean/Accelerate;-><init>()V

    .line 226
    .local v0, "accelerate":Lcom/unisound/ant/device/bean/Accelerate;
    const-string v2, "synInfo"

    invoke-virtual {v0, v2}, Lcom/unisound/ant/device/bean/Accelerate;->setCommand(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0, p2}, Lcom/unisound/ant/device/bean/Accelerate;->setValuse(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1, v0}, Lcom/unisound/ant/device/profile/DstServiceProfile;->setAccelerate(Lcom/unisound/ant/device/bean/Accelerate;)V

    .line 229
    invoke-virtual {v1, p3}, Lcom/unisound/ant/device/profile/DstServiceProfile;->setParameter(Ljava/lang/Object;)V

    .line 230
    iget-object v2, p0, Lcom/unisound/ant/device/message/UpDownMessageManager;->listener:Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;

    if-nez v2, :cond_1

    .line 231
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener may be null and please check"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 233
    :cond_1
    iget-object v2, p0, Lcom/unisound/ant/device/message/UpDownMessageManager;->listener:Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;

    const-string v3, "2"

    const-string v4, "synInfo"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;->onExcuteResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/profile/DstServiceProfile;)V

    .line 235
    return-void
.end method

.method public onReportStatus(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "commandValue"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 243
    const-string v0, "synInfo"

    invoke-virtual {p0, v0, p1, p2}, Lcom/unisound/ant/device/message/UpDownMessageManager;->onReportStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    return-void
.end method

.method public onReportStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "commandValue"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 247
    const-string v1, "deviceManagement"

    const-string v2, "settingOver"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/unisound/ant/device/message/UpDownMessageManager;->onReportStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method public onReportStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "dstService"    # Ljava/lang/String;
    .param p2, "dstStatus"    # Ljava/lang/String;
    .param p3, "commandValue"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    .line 253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const-string p1, "deviceManagement"

    .line 256
    :cond_0
    const-string v3, "synInfo"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/unisound/ant/device/message/UpDownMessageManager;->onReportStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 257
    return-void
.end method

.method public onReportStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "dstService"    # Ljava/lang/String;
    .param p2, "dstStatus"    # Ljava/lang/String;
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "commandValue"    # Ljava/lang/String;
    .param p5, "data"    # Ljava/lang/Object;

    .prologue
    .line 261
    const-string v2, "UpDownMessageManager"

    const-string v3, "--->>onReportMusicStatus"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v1, Lcom/unisound/ant/device/profile/DstServiceProfile;

    invoke-direct {v1}, Lcom/unisound/ant/device/profile/DstServiceProfile;-><init>()V

    .line 263
    .local v1, "dstServiceProfile":Lcom/unisound/ant/device/profile/DstServiceProfile;
    invoke-virtual {v1, p2}, Lcom/unisound/ant/device/profile/DstServiceProfile;->setDstState(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v1, p1}, Lcom/unisound/ant/device/profile/DstServiceProfile;->setDstServiceName(Ljava/lang/String;)V

    .line 265
    new-instance v0, Lcom/unisound/ant/device/bean/Accelerate;

    invoke-direct {v0}, Lcom/unisound/ant/device/bean/Accelerate;-><init>()V

    .line 266
    .local v0, "accelerate":Lcom/unisound/ant/device/bean/Accelerate;
    invoke-virtual {v0, p3}, Lcom/unisound/ant/device/bean/Accelerate;->setCommand(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0, p4}, Lcom/unisound/ant/device/bean/Accelerate;->setValuse(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v1, v0}, Lcom/unisound/ant/device/profile/DstServiceProfile;->setAccelerate(Lcom/unisound/ant/device/bean/Accelerate;)V

    .line 269
    invoke-virtual {v1, p5}, Lcom/unisound/ant/device/profile/DstServiceProfile;->setParameter(Ljava/lang/Object;)V

    .line 270
    iget-object v2, p0, Lcom/unisound/ant/device/message/UpDownMessageManager;->listener:Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;

    if-nez v2, :cond_0

    .line 271
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener may be null and please check"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 273
    :cond_0
    iget-object v2, p0, Lcom/unisound/ant/device/message/UpDownMessageManager;->listener:Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;

    const-string v3, "2"

    const-string v4, "synInfo"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;->onExcuteResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/profile/DstServiceProfile;)V

    .line 275
    return-void
.end method

.method public reponseCloudCommandWithoutAck(Ljava/lang/String;Lcom/unisound/ant/device/service/ActionResponse;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "actionResponse"    # Lcom/unisound/ant/device/service/ActionResponse;

    .prologue
    .line 281
    const-string v0, "UpDownMessageManager"

    const-string v1, "--->>reponseCloudCommandWithoutAck"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/unisound/ant/device/message/UpDownMessageManager;->listener:Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener may be null and please check"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/unisound/ant/device/message/UpDownMessageManager;->listener:Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;

    const-string v1, "2"

    const-string v2, "intentAck"

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;->onReportResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/service/ActionResponse;)V

    .line 287
    return-void
.end method

.method public setMessageExcuteListener(Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/unisound/ant/device/message/UpDownMessageManager;->listener:Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;

    .line 47
    return-void
.end method

.method public syncInfoForDeviceWithAck(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V
    .locals 4
    .param p1, "dstStatus"    # Ljava/lang/String;
    .param p2, "actionResponseId"    # Ljava/lang/String;
    .param p3, "command"    # Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    .prologue
    .line 117
    const-string v1, "UpDownMessageManager"

    const-string v2, "--->>onReportDeviceStatusWithAck"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v0, Lcom/unisound/ant/device/profile/DstServiceProfile;

    invoke-direct {v0}, Lcom/unisound/ant/device/profile/DstServiceProfile;-><init>()V

    .line 119
    .local v0, "dstServiceProfile":Lcom/unisound/ant/device/profile/DstServiceProfile;
    invoke-virtual {v0, p1}, Lcom/unisound/ant/device/profile/DstServiceProfile;->setDstState(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p3}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->getCapability()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/profile/DstServiceProfile;->setDstServiceName(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, p3}, Lcom/unisound/ant/device/profile/DstServiceProfile;->setUniCommand(Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V

    .line 122
    iget-object v1, p0, Lcom/unisound/ant/device/message/UpDownMessageManager;->listener:Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;

    if-nez v1, :cond_0

    .line 123
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener may be null and please check"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/unisound/ant/device/message/UpDownMessageManager;->listener:Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;

    const-string v2, "2"

    const-string v3, "synInfo"

    invoke-interface {v1, v2, v3, p2, v0}, Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;->onExcuteResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/profile/DstServiceProfile;)V

    .line 127
    return-void
.end method
