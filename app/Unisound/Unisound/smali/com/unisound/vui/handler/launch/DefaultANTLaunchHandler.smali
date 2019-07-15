.class public Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;
.super Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;


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
.field public static a:Ljava/lang/Boolean;

.field private static b:Z

.field private static d:Ljava/lang/Boolean;

.field private static e:Ljava/lang/Boolean;

.field private static f:I


# instance fields
.field private final c:Ljava/lang/Object;

.field private g:Z

.field private h:Lcom/unisound/vui/engine/ANTHandlerContext;

.field private i:Landroid/content/Context;

.field private j:I

.field private k:J

.field private l:I

.field private m:Lcom/unisound/vui/common/file/AudioFileHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->b:Z

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->a:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->d:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->e:Ljava/lang/Boolean;

    sget v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->asrMaxDuration:I

    sput v0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->c:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->g:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->j:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->k:J

    iput v2, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->l:I

    const-string v0, "session_launch"

    iput-object v0, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->sessionName:Ljava/lang/String;

    iput-object p1, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->i:Landroid/content/Context;

    new-instance v0, Lcom/unisound/vui/common/file/AudioFileHelper;

    invoke-direct {v0, p1}, Lcom/unisound/vui/common/file/AudioFileHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->m:Lcom/unisound/vui/common/file/AudioFileHelper;

    invoke-direct {p0}, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->m:Lcom/unisound/vui/common/file/AudioFileHelper;

    invoke-virtual {v0}, Lcom/unisound/vui/common/file/AudioFileHelper;->loadWakeupAudio()V

    return-void
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->j:I

    return-void
.end method

.method private b()V
    .locals 3

    const-string v0, "DefaultANTLaunchHandler"

    const-string v1, "playWakeupTips"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->h:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->unsafe()Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    move-result-object v0

    const/16 v1, 0x7d4

    const-string v2, "22050"

    invoke-interface {v0, v1, v2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setTTSOption(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->m:Lcom/unisound/vui/common/file/AudioFileHelper;

    invoke-virtual {v0}, Lcom/unisound/vui/common/file/AudioFileHelper;->getRandomWakeUpTips()[B

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->h:Lcom/unisound/vui/engine/ANTHandlerContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<WAV>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->m:Lcom/unisound/vui/common/file/AudioFileHelper;

    invoke-virtual {v2}, Lcom/unisound/vui/common/file/AudioFileHelper;->getRandomWakeUpFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</WAV>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->h:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->playBuffer([B)V

    goto :goto_0
.end method

.method private c()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->j:I

    return-void
.end method


# virtual methods
.method public a(Lnluparser/scheme/NLU;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "cn.yunzhisheng.ant_launch"

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic acceptInboundEvent0(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->a(Lnluparser/scheme/NLU;)Z

    move-result v0

    return v0
.end method

.method protected doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    .locals 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "interruptType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const-string v0, "DefaultANTLaunchHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInterrupt eventReceived:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->eventReceived:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->eventReceived:Z

    if-eqz v0, :cond_0

    sput-boolean v3, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->b:Z

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V

    iput v3, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->l:I

    invoke-direct {p0}, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->c()V

    invoke-virtual {p0}, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->reset()V

    :cond_0
    return-void
.end method

.method public doPPTAction(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v0, "DefaultANTLaunchHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " doPPTAction ttsInited="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->e:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "engine inited"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->d:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enterASR(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->enterASR(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method protected initPriority()V
    .locals 1

    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->setPriority(I)V

    return-void
.end method

.method protected onASREventCancel(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 2
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const-string v0, "DefaultANTLaunchHandler"

    const-string v1, "onASREventCancel startRecognize:0"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->k:J

    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onASREventCancel(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "DefaultANTLaunchHandler"

    const-string v1, "onASREventEngineInitDone"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->h:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->d:Ljava/lang/Boolean;

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v0

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_SERVICE_MODE:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngineConfig;->getOption(Lcom/unisound/vui/engine/ANTEngineOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->e:Ljava/lang/Boolean;

    :goto_0
    const-string v0, "DefaultANTLaunchHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onASREventEngineInitDone ttsEngine ttsInited="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->e:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DefaultANTLaunchHandler"

    const-string v2, "onASREventEngineInitDone enter wakeup"

    invoke-static {v0, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->a:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->fireEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->e:Ljava/lang/Boolean;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onASREventLoadGrammarDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 2
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const-string v0, "DefaultANTLaunchHandler"

    const-string v1, "onASREventLoadGrammarDone"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventOneshotVadTimeout(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 2
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const-string v0, "DefaultANTLaunchHandler"

    const-string v1, "onASREventOneshotVadTimeout"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelEngine()V

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterASR()V

    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventRecognitionEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 2
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const-string v0, "DefaultANTLaunchHandler"

    const-string v1, "onASREventRecognitionEnd:0"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->k:J

    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventRecordingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->isOneshot()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->isASR()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->k:J

    const-string v0, "DefaultANTLaunchHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onASREventRecordingStart startRecognize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onASREventRecordingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventRecordingStop(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 2
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const-string v0, "DefaultANTLaunchHandler"

    const-string v1, "onASREventRecordingStop startRecognize:0"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->k:J

    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onASREventRecordingStop(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASREventVadTimeout(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 2
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const-string v0, "DefaultANTLaunchHandler"

    const-string v1, "onASREventVadTimeout"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventVolumeChange(Lcom/unisound/vui/engine/ANTHandlerContext;I)Z
    .locals 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "volume"    # I

    .prologue
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->isASR()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->k:J

    sub-long/2addr v0, v2

    sget v2, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->f:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-string v0, "DefaultANTLaunchHandler"

    const-string v1, "onASREventVolumeChange stopAsr"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->stopASR()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTTSEvent(ILcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string v0, "DefaultANTLaunchHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTTSEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";enterAsrAfterTtsPlayEnd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->b:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x836

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->l:I

    iget v0, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->l:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    sput-boolean v3, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->b:Z

    iput v3, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->l:I

    :cond_0
    sget-boolean v0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->b:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x83b

    if-ne p1, v0, :cond_1

    const-string v0, "DefaultANTLaunchHandler"

    const-string v1, "onTTSEvent doPPTAction"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v3, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->b:Z

    iput v3, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->l:I

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onTTSEvent(ILcom/unisound/vui/engine/ANTHandlerContext;)V

    goto :goto_0
.end method

.method protected onTTSEventInit(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->e:Ljava/lang/Boolean;

    const-string v0, "DefaultANTLaunchHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onTTSEventInit engineInited="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->d:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DefaultANTLaunchHandler"

    const-string v2, "onTTSEventInit enter wakeup"

    invoke-static {v0, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->a:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->fireEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    :cond_0
    monitor-exit v1

    return v3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 5
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "DefaultANTLaunchHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTTSEventPlayingEnd state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v2

    invoke-interface {v2}, Lcom/unisound/vui/engine/ANTEngine;->unsafe()Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    move-result-object v2

    const/16 v3, 0x7d4

    const-string v4, "16000"

    invoke-interface {v2, v3, v4}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setTTSOption(ILjava/lang/Object;)V

    iget v2, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->j:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    iget-boolean v2, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->g:Z

    if-eqz v2, :cond_0

    const-string v2, "AutoStart"

    const-string v3, "enterASR"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->g:Z

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterASR()V

    :goto_1
    invoke-direct {p0}, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->c()V

    goto :goto_0

    :cond_0
    const-string v1, "AutoStart"

    const-string v2, "enterWakeup"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->reset()V

    goto :goto_1

    :pswitch_1
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterASR()V

    invoke-direct {p0}, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->c()V

    goto :goto_0

    :pswitch_2
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/unisound/vui/engine/ANTEngine;->setWakeupRecord(Z)V

    invoke-direct {p0}, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->c()V

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onWakeupResult(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .locals 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->k:J

    const-string v0, "doAsrInterrupt"

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-virtual {p0, v2}, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->mark(Z)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->a(I)V

    invoke-direct {p0}, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->b()V

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelEngine()V

    return v2
.end method

.method protected reset()V
    .locals 3

    iget-object v0, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->h:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v0

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->NLU_SCENARIO:Lcom/unisound/vui/engine/ANTEngineOption;

    const-string v2, "musicDefault"

    invoke-interface {v0, v1, v2}, Lcom/unisound/vui/engine/ANTEngineConfig;->setOption(Lcom/unisound/vui/engine/ANTEngineOption;Ljava/lang/Object;)Z

    invoke-super {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->reset()V

    return-void
.end method

.method public userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 3
    .param p1, "evt"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v0, "DefaultANTLaunchHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AntLaunchHandler : userEventTriggered---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "switchTtsPlayer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->a()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "doEnterAsrByMic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->eventReceived:Z

    if-nez v0, :cond_1

    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    const-string v1, "doAsrInterrupt"

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->mark(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->c()V

    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V

    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterASR()V

    :cond_2
    const-string v0, "doPttActionByMic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;->doPPTAction(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    goto :goto_0
.end method
