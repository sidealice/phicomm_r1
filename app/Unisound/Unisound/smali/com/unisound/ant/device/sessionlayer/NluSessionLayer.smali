.class public Lcom/unisound/ant/device/sessionlayer/NluSessionLayer;
.super Ljava/lang/Object;
.source "NluSessionLayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NluSessionLayer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatcherServiceMessage(Ljava/lang/String;Lcom/unisound/ant/device/profile/DstServiceProfile;)Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;
    .locals 5
    .param p0, "dstServiceName"    # Ljava/lang/String;
    .param p1, "dstServiceProfile"    # Lcom/unisound/ant/device/profile/DstServiceProfile;

    .prologue
    .line 48
    const-string v2, "NluSessionLayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--->>dispatcherServiceMessage dstServiceName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {p0}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getSessionExecuter(Ljava/lang/String;)Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;

    move-result-object v1

    .line 53
    .local v1, "handler":Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;
    invoke-virtual {p1}, Lcom/unisound/ant/device/profile/DstServiceProfile;->getUniCommand()Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    move-result-object v0

    .line 54
    .local v0, "command":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    const-string v2, "NluSessionLayer"

    const-string v3, "--->>dispatcherServiceMessage handler may be null OR not register"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    .line 58
    .end local v0    # "command":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;
    :cond_1
    return-object v0
.end method

.method public static parseNluSessionContent(Ljava/lang/String;)Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;
    .locals 9
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 23
    const-string v6, "NluSessionLayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--->>dispatcherMessage message:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-object v5

    .line 27
    :cond_1
    new-instance v6, Lcom/unisound/ant/device/sessionlayer/NluSessionLayer$1;

    invoke-direct {v6}, Lcom/unisound/ant/device/sessionlayer/NluSessionLayer$1;-><init>()V

    .line 28
    invoke-virtual {v6}, Lcom/unisound/ant/device/sessionlayer/NluSessionLayer$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 30
    .local v1, "classType":Ljava/lang/reflect/Type;
    invoke-static {p0, v1}, Lcom/unisound/ant/device/service/ServiceProtocolUtil;->getResponseHeader(Ljava/lang/String;Ljava/lang/reflect/Type;)Lcom/unisound/ant/device/service/CloudResponse;

    move-result-object v2

    .line 31
    .local v2, "cloudResponse":Lcom/unisound/ant/device/service/CloudResponse;, "Lcom/unisound/ant/device/service/CloudResponse<Lcom/unisound/ant/device/bean/SessionData<Lcom/google/gson/JsonObject;>;>;"
    invoke-virtual {v2}, Lcom/unisound/ant/device/service/CloudResponse;->getMessageType()Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, "messageType":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/unisound/ant/device/service/CloudResponse;->getMessageBody()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/unisound/ant/device/bean/SessionData;

    .line 33
    .local v4, "sessionData":Lcom/unisound/ant/device/bean/SessionData;
    if-nez v4, :cond_2

    .line 34
    const-string v6, "NluSessionLayer"

    const-string v7, "--parse sessionData is null and this session is not effective"

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_2
    const-string v6, "intentAction"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 38
    invoke-virtual {v4}, Lcom/unisound/ant/device/bean/SessionData;->getDstService()Lcom/unisound/ant/device/profile/DstServiceProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unisound/ant/device/profile/DstServiceProfile;->getUniCommand()Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->getOperation()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/unisound/ant/device/bean/SessionData;->getDialog()Lcom/unisound/ant/device/sessionlayer/DialogProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unisound/ant/device/sessionlayer/DialogProfile;->getDstService()Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-virtual {v4}, Lcom/unisound/ant/device/bean/SessionData;->getDstService()Lcom/unisound/ant/device/profile/DstServiceProfile;

    move-result-object v6

    .line 40
    invoke-static {v5, v6}, Lcom/unisound/ant/device/sessionlayer/NluSessionLayer;->dispatcherServiceMessage(Ljava/lang/String;Lcom/unisound/ant/device/profile/DstServiceProfile;)Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    move-result-object v5

    goto :goto_0
.end method
