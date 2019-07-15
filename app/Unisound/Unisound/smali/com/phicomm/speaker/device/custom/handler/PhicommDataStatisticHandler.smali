.class public Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;
.super Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;
.source "PhicommDataStatisticHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler",
        "<",
        "Lnluparser/scheme/NLU;",
        ">;"
    }
.end annotation


# static fields
.field private static final BAIKE:Ljava/lang/String; = "BAIKE"

.field private static final DATA_SOURCE_UNISOUND:Ljava/lang/String; = "unisound"

.field private static final KEY_TYPE_DIALOGUE:Ljava/lang/String; = "dialog"

.field private static final KEY_TYPE_WAKEUP:Ljava/lang/String; = "wakeup"

.field private static final KEY_TYPE_WAKEUP_WORD:Ljava/lang/String; = "wakeupWord"

.field private static final SELFDIALOG:Ljava/lang/String; = "selfdialog"

.field private static final STYLE_SELFDIALOG:Ljava/lang/String; = "prvtfaq"

.field private static final TAG:Ljava/lang/String; = "PhicommDataStatisticHandler"


# instance fields
.field private final mMessageSenderDelegate:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

.field private mMixtureProcessor:Lnluparser/MixtureProcessor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnluparser/MixtureProcessor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mixtureProcessor"    # Lnluparser/MixtureProcessor;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->mMixtureProcessor:Lnluparser/MixtureProcessor;

    .line 56
    invoke-static {p1}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->init(Landroid/content/Context;)V

    .line 57
    invoke-static {}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->getInstance()Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->mMessageSenderDelegate:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;)Lnluparser/MixtureProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->mMixtureProcessor:Lnluparser/MixtureProcessor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;Lnluparser/scheme/Mixture;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;
    .param p1, "x1"    # Lnluparser/scheme/Mixture;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->sendMainWakeupStatisticToPhicomm(Lnluparser/scheme/Mixture;)V

    return-void
.end method

.method private getRandomMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendChangeWakeupWordStatisticToPhicomm(Lcom/unisound/vui/transport/out/ChangeWakeupWordEvent;)V
    .locals 4
    .param p1, "evt"    # Lcom/unisound/vui/transport/out/ChangeWakeupWordEvent;

    .prologue
    .line 138
    const-string v1, "PhicommDataStatisticHandler"

    const-string v2, "sendChangeWakeupWordStatisticToPhicomm: "

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 140
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "wakeupWord"

    invoke-virtual {p1}, Lcom/unisound/vui/transport/out/ChangeWakeupWordEvent;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->getRandomMessageId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wakeupWord"

    const-string v3, "unisound"

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->sendStatisticInfoToPhicomm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 143
    return-void
.end method

.method private sendDialogueStatisticToPhicomm(Llogreport/FullLog;)V
    .locals 7
    .param p1, "evt"    # Llogreport/FullLog;

    .prologue
    .line 110
    const-string v4, "PhicommDataStatisticHandler"

    const-string v5, "sendDialogueStatisticToPhicomm: "

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Llogreport/FullLog;->getTtsData()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "ttsData":Ljava/lang/String;
    const-string v4, "tts"

    const-string v5, "<py>[\\d|\\w]+</py>"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v4}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v4

    .line 116
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08000a

    .line 117
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "unSupport":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 119
    .local v3, "unSupportList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    const-string v4, "service"

    const-string v5, "cn.yunzhisheng.illegal"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :goto_0
    const-string v4, "text"

    invoke-virtual {p1}, Llogreport/FullLog;->getNlu()Lnluparser/scheme/NLU;

    move-result-object v5

    invoke-virtual {v5}, Lnluparser/scheme/NLU;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->getRandomMessageId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dialog"

    const-string v6, "unisound"

    invoke-direct {p0, v4, v5, v6, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->sendStatisticInfoToPhicomm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 132
    return-void

    .line 121
    :cond_0
    invoke-virtual {p1}, Llogreport/FullLog;->getNlu()Lnluparser/scheme/NLU;

    move-result-object v4

    invoke-virtual {v4}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, "BAIKE"

    invoke-virtual {p1}, Llogreport/FullLog;->getNlu()Lnluparser/scheme/NLU;

    move-result-object v5

    invoke-virtual {v5}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v5

    invoke-virtual {v5}, Lnluparser/scheme/General;->getStyle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    const-string v4, "service"

    const-string v5, "BAIKE"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p1}, Llogreport/FullLog;->getNlu()Lnluparser/scheme/NLU;

    move-result-object v4

    invoke-virtual {v4}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v4, "prvtfaq"

    invoke-virtual {p1}, Llogreport/FullLog;->getNlu()Lnluparser/scheme/NLU;

    move-result-object v5

    invoke-virtual {v5}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v5

    invoke-virtual {v5}, Lnluparser/scheme/General;->getStyle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 126
    const-string v4, "service"

    const-string v5, "selfdialog"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 128
    :cond_2
    const-string v4, "service"

    invoke-virtual {p1}, Llogreport/FullLog;->getNlu()Lnluparser/scheme/NLU;

    move-result-object v5

    invoke-virtual {v5}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private sendMainWakeupStatisticToPhicomm(Lnluparser/scheme/Mixture;)V
    .locals 6
    .param p1, "mixture"    # Lnluparser/scheme/Mixture;

    .prologue
    .line 97
    const-string v3, "PhicommDataStatisticHandler"

    const-string v4, "sendMainWakeupStatisticToPhicomm: "

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Lnluparser/scheme/Mixture;->getLocalASRList()Ljava/util/List;

    move-result-object v1

    .line 99
    .local v1, "localASRList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/LocalASR;>;"
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnluparser/scheme/LocalASR;

    invoke-virtual {v3}, Lnluparser/scheme/LocalASR;->getRecognitionResult()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "wakeupWord":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "wakeupWord"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v3, "wakeupType"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->getRandomMessageId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wakeup"

    const-string v5, "unisound"

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->sendStatisticInfoToPhicomm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 104
    return-void
.end method

.method private sendSimulateWakeupStatisticToPhicomm(Lcom/unisound/vui/transport/out/SimulateWakeupEvent;)V
    .locals 4
    .param p1, "evt"    # Lcom/unisound/vui/transport/out/SimulateWakeupEvent;

    .prologue
    .line 149
    const-string v1, "PhicommDataStatisticHandler"

    const-string v2, "sendSimulateWakeupStatisticToPhicomm: "

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "wakeupWord"

    invoke-virtual {p1}, Lcom/unisound/vui/transport/out/SimulateWakeupEvent;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v1, "wakeupType"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->getRandomMessageId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wakeup"

    const-string v3, "unisound"

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->sendStatisticInfoToPhicomm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 154
    return-void
.end method

.method private sendStatisticInfoToPhicomm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 9
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "from"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x3

    .line 173
    new-instance v8, Lcom/unisound/ant/device/bean/PhicommStatisticInfo;

    invoke-direct {v8, p1, p2, p3, p4}, Lcom/unisound/ant/device/bean/PhicommStatisticInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 174
    .local v8, "phicommStatisticInfo":Lcom/unisound/ant/device/bean/PhicommStatisticInfo;
    const-string v0, "PhicommDataStatisticHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendStatisticInfoToPhicomm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Lcom/unisound/vui/util/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->mMessageSenderDelegate:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    const/high16 v4, 0x2000000

    const/4 v6, -0x1

    .line 177
    invoke-static {v8}, Lcom/unisound/vui/util/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/ParcelableUtil;->obtain(Ljava/lang/String;)Landroid/os/ParcelableUtil;

    move-result-object v7

    move v5, v3

    .line 175
    invoke-virtual/range {v0 .. v7}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->send(ZIIIIILandroid/os/Parcelable;)V

    .line 178
    return-void
.end method


# virtual methods
.method protected initPriority()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method protected onWakeupResult(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler$1;

    invoke-direct {v0, p0, p2}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler$1;-><init>(Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unisound/vui/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 74
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onWakeupResult(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 1
    .param p1, "evt"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Lcom/unisound/vui/common/config/ANTConfigPreference;->isDev()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 91
    :goto_0
    return-void

    .line 83
    :cond_0
    instance-of v0, p1, Llogreport/FullLog;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 84
    check-cast v0, Llogreport/FullLog;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->sendDialogueStatisticToPhicomm(Llogreport/FullLog;)V

    .line 90
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    goto :goto_0

    .line 85
    :cond_2
    instance-of v0, p1, Lcom/unisound/vui/transport/out/ChangeWakeupWordEvent;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 86
    check-cast v0, Lcom/unisound/vui/transport/out/ChangeWakeupWordEvent;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->sendChangeWakeupWordStatisticToPhicomm(Lcom/unisound/vui/transport/out/ChangeWakeupWordEvent;)V

    goto :goto_1

    .line 87
    :cond_3
    instance-of v0, p1, Lcom/unisound/vui/transport/out/SimulateWakeupEvent;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 88
    check-cast v0, Lcom/unisound/vui/transport/out/SimulateWakeupEvent;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->sendSimulateWakeupStatisticToPhicomm(Lcom/unisound/vui/transport/out/SimulateWakeupEvent;)V

    goto :goto_1
.end method
