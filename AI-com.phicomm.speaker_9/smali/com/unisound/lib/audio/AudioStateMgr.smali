.class public Lcom/unisound/lib/audio/AudioStateMgr;
.super Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;
.source "AudioStateMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/audio/AudioStateMgr$SingleFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioStateMgr"


# instance fields
.field private iAudioUpdateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/callback/IAudioUpdate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/lib/audio/AudioStateMgr;->iAudioUpdateList:Ljava/util/List;

    const-string v0, "enjoyAudio"

    .line 38
    invoke-static {v0, p0}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionRegister;->associateSessionCenter(Ljava/lang/String;Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unisound/lib/audio/AudioStateMgr$1;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/unisound/lib/audio/AudioStateMgr;-><init>()V

    return-void
.end method

.method private dispatchMusicControlCommand(Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "AudioStateMgr"

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>dispatchAudioControlCommand operate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;->getOperation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/unisound/lib/audio/AudioStateMgr;
    .locals 1

    .line 54
    sget-object v0, Lcom/unisound/lib/audio/AudioStateMgr$SingleFactory;->instant:Lcom/unisound/lib/audio/AudioStateMgr;

    return-object v0
.end method

.method private responseCloudCommand(Ljava/lang/String;Lcom/unisound/lib/msgcenter/service/ActionResponse;)V
    .locals 1

    .line 116
    invoke-static {}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/unisound/lib/msgcenter/message/UpDownMessageManager;->reponseCloudCommandWithoutAck(Ljava/lang/String;Lcom/unisound/lib/msgcenter/service/ActionResponse;)V

    return-void
.end method


# virtual methods
.method public getActionResponse(I)Lcom/unisound/lib/msgcenter/service/ActionResponse;
    .locals 3

    .line 126
    new-instance v0, Lcom/unisound/lib/msgcenter/service/ActionResponse;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/service/ActionResponse;-><init>()V

    .line 127
    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/service/ActionResponse;->setActionStatus(I)V

    .line 128
    invoke-static {p1}, Lcom/unisound/lib/msgcenter/bean/ActionStatus;->getStateDetail(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/service/ActionResponse;->setDetailInfo(Ljava/lang/String;)V

    .line 129
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/service/ActionResponse;->setActionResponseId(Ljava/lang/String;)V

    .line 130
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

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 86
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;

    .line 87
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->getAccelerate()Lcom/unisound/lib/msgcenter/bean/Accelerate;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/bean/Accelerate;->getValuse()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->getParameter()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v1, "AudioStateMgr"

    .line 92
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->getParameter()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v1, Lcom/google/gson/d;

    invoke-direct {v1}, Lcom/google/gson/d;-><init>()V

    .line 94
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->getParameter()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/k;

    const-class v2, Lcom/unisound/lib/audio/bean/AudioInfo;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/d;->a(Lcom/google/gson/i;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/lib/audio/bean/AudioInfo;

    const-string v1, "AudioStateMgr"

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "command:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",parameter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/unisound/lib/audio/AudioStateMgr;->iAudioUpdateList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/unisound/lib/audio/AudioStateMgr;->iAudioUpdateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unisound/lib/audio/callback/IAudioUpdate;

    .line 98
    invoke-interface {v2, v0, p1}, Lcom/unisound/lib/audio/callback/IAudioUpdate;->onAudioUpdate(Ljava/lang/String;Lcom/unisound/lib/audio/bean/AudioInfo;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 101
    invoke-virtual {p0, p1}, Lcom/unisound/lib/audio/AudioStateMgr;->getActionResponse(I)Lcom/unisound/lib/msgcenter/service/ActionResponse;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unisound/lib/audio/AudioStateMgr;->responseCloudCommand(Ljava/lang/String;Lcom/unisound/lib/msgcenter/service/ActionResponse;)V

    goto :goto_1

    .line 82
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;

    .line 83
    invoke-direct {p0, p1}, Lcom/unisound/lib/audio/AudioStateMgr;->dispatchMusicControlCommand(Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;)V

    :goto_1
    return-void
.end method

.method public removeAudioUpdateListener(Lcom/unisound/lib/audio/callback/IAudioUpdate;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/unisound/lib/audio/AudioStateMgr;->iAudioUpdateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/unisound/lib/audio/AudioStateMgr;->iAudioUpdateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setAudioUpdateListener(Lcom/unisound/lib/audio/callback/IAudioUpdate;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/unisound/lib/audio/AudioStateMgr;->iAudioUpdateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/unisound/lib/audio/AudioStateMgr;->iAudioUpdateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
