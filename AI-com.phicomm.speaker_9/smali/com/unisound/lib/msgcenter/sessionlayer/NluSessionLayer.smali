.class public Lcom/unisound/lib/msgcenter/sessionlayer/NluSessionLayer;
.super Ljava/lang/Object;
.source "NluSessionLayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NluSessionLayer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatcherServiceMessage(Ljava/lang/String;Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;)Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;
    .locals 3

    const-string v0, "NluSessionLayer"

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>dispatcherServiceMessage dstServiceName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {p0}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionRegister;->getSessionExecuter(Ljava/lang/String;)Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;

    move-result-object p0

    .line 73
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->getUniCommand()Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;

    move-result-object p1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const-string p0, "NluSessionLayer"

    const-string p1, "--->>dispatcherServiceMessage handler may be null OR not register"

    .line 75
    invoke-static {p0, p1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseNluParameterContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "NluSessionLayer"

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>dispatcherMessage message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 34
    :cond_0
    new-instance v0, Lcom/unisound/lib/msgcenter/sessionlayer/NluSessionLayer$1;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/sessionlayer/NluSessionLayer$1;-><init>()V

    .line 35
    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/sessionlayer/NluSessionLayer$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 37
    invoke-static {p0, v0}, Lcom/unisound/lib/msgcenter/service/ServiceProtocolUtil;->getResponseHeader(Ljava/lang/String;Ljava/lang/reflect/Type;)Lcom/unisound/lib/msgcenter/service/CloudResponse;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lcom/unisound/lib/msgcenter/service/CloudResponse;->getMessageType()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/unisound/lib/msgcenter/service/CloudResponse;->getMessageBody()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unisound/lib/msgcenter/bean/SessionData;

    if-nez p0, :cond_1

    const-string p0, "NluSessionLayer"

    const-string v0, "--parse sessionData is null and this session is not effective"

    .line 41
    invoke-static {p0, v0}, Lcom/unisound/lib/utils/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string v2, "synInfo"

    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 45
    invoke-virtual {p0}, Lcom/unisound/lib/msgcenter/bean/SessionData;->getDstService()Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->getAccelerate()Lcom/unisound/lib/msgcenter/bean/Accelerate;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/bean/Accelerate;->getValuse()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->getParameter()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    const-string v2, "offlineAsrLog"

    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "onlineAsrLog"

    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 53
    :cond_3
    invoke-virtual {p0}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->getParameter()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1
.end method

.method public static parseNluSessionMessage(Ljava/lang/String;)Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;
    .locals 3

    const-string v0, "NluSessionLayer"

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>dispatcherMessage message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 91
    :cond_0
    new-instance v0, Lcom/unisound/lib/msgcenter/sessionlayer/NluSessionLayer$2;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/sessionlayer/NluSessionLayer$2;-><init>()V

    .line 92
    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/sessionlayer/NluSessionLayer$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 94
    invoke-static {p0, v0}, Lcom/unisound/lib/msgcenter/service/ServiceProtocolUtil;->getResponseHeader(Ljava/lang/String;Ljava/lang/reflect/Type;)Lcom/unisound/lib/msgcenter/service/CloudResponse;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Lcom/unisound/lib/msgcenter/service/CloudResponse;->getMessageType()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Lcom/unisound/lib/msgcenter/service/CloudResponse;->getMessageBody()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unisound/lib/msgcenter/bean/SessionData;

    if-nez p0, :cond_1

    const-string p0, "NluSessionLayer"

    const-string v0, "--parse sessionData is null and this session is not effective"

    .line 98
    invoke-static {p0, v0}, Lcom/unisound/lib/utils/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string v2, "intentAction"

    .line 101
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/unisound/lib/msgcenter/bean/SessionData;->getDstService()Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->getUniCommand()Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method
