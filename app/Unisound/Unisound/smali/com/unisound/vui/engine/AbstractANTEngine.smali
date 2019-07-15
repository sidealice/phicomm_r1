.class public abstract Lcom/unisound/vui/engine/AbstractANTEngine;
.super Lcom/unisound/vui/util/d;

# interfaces
.implements Lcom/unisound/vui/engine/ANTEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;
    }
.end annotation


# static fields
.field private static final ANDROID_CONTEXT:Lcom/unisound/vui/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/AttributeKey",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static final MODE_INITIALIZED:Lcom/unisound/vui/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/AttributeKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final NEED_RECOVERY_WAKE_UP:Lcom/unisound/vui/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/AttributeKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected static final TAG:Ljava/lang/String; = "NativeANTEngine"

.field private static final TTS_PCM_END_TAG:Ljava/lang/String; = "</PCM>"

.field private static final TTS_PCM_START_TAG:Ljava/lang/String; = "<PCM>"

.field private static final WAKEUP_WORD:Lcom/unisound/vui/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/AttributeKey",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private volatile aecEnable:Z

.field protected context:Landroid/content/Context;

.field protected volatile engineState:I

.field private volatile inSetWakeUpWord:Z

.field private volatile isOneshot:Z

.field protected volatile isTtsPlaying:Z

.field private volatile isWakeupRecord:Z

.field protected volatile lastPlayBeep:Z

.field private final pipeline:Lcom/unisound/vui/engine/DefaultANTPipeline;

.field private volatile playBeep:Z

.field private final unsafe:Lcom/unisound/vui/engine/ANTEngine$Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ANDROID_CONTEXT"

    invoke-static {v0}, Lcom/unisound/vui/util/AttributeKey;->newInstance(Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/engine/AbstractANTEngine;->ANDROID_CONTEXT:Lcom/unisound/vui/util/AttributeKey;

    const-string v0, "WAKEUP_WORD"

    invoke-static {v0}, Lcom/unisound/vui/util/AttributeKey;->newInstance(Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/engine/AbstractANTEngine;->WAKEUP_WORD:Lcom/unisound/vui/util/AttributeKey;

    const-string v0, "MODE_INITIALIZED"

    invoke-static {v0}, Lcom/unisound/vui/util/AttributeKey;->newInstance(Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/engine/AbstractANTEngine;->MODE_INITIALIZED:Lcom/unisound/vui/util/AttributeKey;

    const-string v0, "NEED_RECOVERY_WAKE_UP"

    invoke-static {v0}, Lcom/unisound/vui/util/AttributeKey;->newInstance(Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/engine/AbstractANTEngine;->NEED_RECOVERY_WAKE_UP:Lcom/unisound/vui/util/AttributeKey;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/unisound/vui/util/d;-><init>()V

    iput-boolean v2, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->isTtsPlaying:Z

    iput-boolean v2, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->lastPlayBeep:Z

    iput-boolean v2, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->inSetWakeUpWord:Z

    iput-boolean v2, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->playBeep:Z

    invoke-virtual {p0}, Lcom/unisound/vui/engine/AbstractANTEngine;->newUnsafe()Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->unsafe:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    new-instance v0, Lcom/unisound/vui/engine/DefaultANTPipeline;

    invoke-direct {v0, p0}, Lcom/unisound/vui/engine/DefaultANTPipeline;-><init>(Lcom/unisound/vui/engine/ANTEngine;)V

    iput-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->pipeline:Lcom/unisound/vui/engine/DefaultANTPipeline;

    sget-object v0, Lcom/unisound/vui/engine/AbstractANTEngine;->MODE_INITIALIZED:Lcom/unisound/vui/util/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/engine/AbstractANTEngine;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    sget-object v0, Lcom/unisound/vui/engine/AbstractANTEngine;->NEED_RECOVERY_WAKE_UP:Lcom/unisound/vui/util/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/engine/AbstractANTEngine;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000()Lcom/unisound/vui/util/AttributeKey;
    .locals 1

    sget-object v0, Lcom/unisound/vui/engine/AbstractANTEngine;->WAKEUP_WORD:Lcom/unisound/vui/util/AttributeKey;

    return-object v0
.end method

.method static synthetic access$100()Lcom/unisound/vui/util/AttributeKey;
    .locals 1

    sget-object v0, Lcom/unisound/vui/engine/AbstractANTEngine;->ANDROID_CONTEXT:Lcom/unisound/vui/util/AttributeKey;

    return-object v0
.end method

.method static synthetic access$200()Lcom/unisound/vui/util/AttributeKey;
    .locals 1

    sget-object v0, Lcom/unisound/vui/engine/AbstractANTEngine;->MODE_INITIALIZED:Lcom/unisound/vui/util/AttributeKey;

    return-object v0
.end method


# virtual methods
.method public androidContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/unisound/vui/engine/AbstractANTEngine;->ANDROID_CONTEXT:Lcom/unisound/vui/util/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/engine/AbstractANTEngine;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public cancelASR()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->pipeline:Lcom/unisound/vui/engine/DefaultANTPipeline;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/DefaultANTPipeline;->cancelASR()V

    return-void
.end method

.method public cancelTTS()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->pipeline:Lcom/unisound/vui/engine/DefaultANTPipeline;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/DefaultANTPipeline;->cancelTTS()V

    return-void
.end method

.method public closeReleaseStatus()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/unisound/vui/engine/AbstractANTEngine;->doCloseReleaseStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected abstract doCancelASR()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doCancelEngine()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doCancelTTS()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doCloseReleaseStatus()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doEnterASR()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doEnterWakeup(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doInitEngine()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doInitializeMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doInitializeSdk()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public doPPTAction()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->pipeline:Lcom/unisound/vui/engine/DefaultANTPipeline;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/DefaultANTPipeline;->doPPTAction()V

    return-void
.end method

.method protected abstract doPPTAction0()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doPlayBuffer([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doPlayTTS(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doReleaseAudioRecord()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doStopASR()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doStopWakeup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doWrite(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public enableOneshot(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/unisound/vui/engine/AbstractANTEngine;->androidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/unisound/vui/util/UserPerferenceUtil;->setOneshotEnable(Landroid/content/Context;Z)V

    iput-boolean p1, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->isOneshot:Z

    return-void
.end method

.method public enterASR()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->pipeline:Lcom/unisound/vui/engine/DefaultANTPipeline;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/DefaultANTPipeline;->enterASR()V

    return-void
.end method

.method public enterWakeup(Z)V
    .locals 1
    .param p1, "playBeep"    # Z

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->pipeline:Lcom/unisound/vui/engine/DefaultANTPipeline;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/engine/DefaultANTPipeline;->enterWakeup(Z)V

    return-void
.end method

.method public getAecEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->aecEnable:Z

    return v0
.end method

.method public getEngineState()I
    .locals 1

    iget v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->engineState:I

    return v0
.end method

.method initAecEnableState()V
    .locals 1

    invoke-virtual {p0}, Lcom/unisound/vui/engine/AbstractANTEngine;->androidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getAecEnable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->aecEnable:Z

    return-void
.end method

.method initOneshotState()V
    .locals 1

    invoke-virtual {p0}, Lcom/unisound/vui/engine/AbstractANTEngine;->androidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getOneshotEnable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->isOneshot:Z

    return-void
.end method

.method public initializeMode()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->pipeline:Lcom/unisound/vui/engine/DefaultANTPipeline;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/DefaultANTPipeline;->initializeMode()V

    return-void
.end method

.method public initializeSdk()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->pipeline:Lcom/unisound/vui/engine/DefaultANTPipeline;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/DefaultANTPipeline;->initializeSdk()V

    return-void
.end method

.method public insertVocab(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .param p2, "grammarTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "vocabcontent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v0, Lcom/unisound/vui/transport/out/VocabContent;

    invoke-direct {v0, p1, p2}, Lcom/unisound/vui/transport/out/VocabContent;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->pipeline:Lcom/unisound/vui/engine/DefaultANTPipeline;

    invoke-virtual {v1, v0}, Lcom/unisound/vui/engine/DefaultANTPipeline;->write(Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract insertVocab0(Ljava/util/Map;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public isASR()Z
    .locals 2

    iget v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->engineState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIdle()Z
    .locals 1

    iget v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->engineState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInSetWakeUpWord()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->inSetWakeUpWord:Z

    return v0
.end method

.method public isModeInitialized()Z
    .locals 1

    sget-object v0, Lcom/unisound/vui/engine/AbstractANTEngine;->MODE_INITIALIZED:Lcom/unisound/vui/util/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/engine/AbstractANTEngine;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isNeedRecoveryWakeUp()Z
    .locals 1

    sget-object v0, Lcom/unisound/vui/engine/AbstractANTEngine;->NEED_RECOVERY_WAKE_UP:Lcom/unisound/vui/util/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/engine/AbstractANTEngine;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isOneshot()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->isOneshot:Z

    return v0
.end method

.method public isPlayBeep()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->playBeep:Z

    return v0
.end method

.method public isRecognition()Z
    .locals 2

    iget v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->engineState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowVolume()Z
    .locals 1

    invoke-virtual {p0}, Lcom/unisound/vui/engine/AbstractANTEngine;->isASR()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/unisound/vui/engine/AbstractANTEngine;->isWakeup()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->lastPlayBeep:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTTSPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->isTtsPlaying:Z

    return v0
.end method

.method public isWakeup()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->engineState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWakeupRecord()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->isWakeupRecord:Z

    return v0
.end method

.method protected abstract newUnsafe()Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;
.end method

.method public pipeline()Lcom/unisound/vui/engine/ANTPipeline;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->pipeline:Lcom/unisound/vui/engine/DefaultANTPipeline;

    return-object v0
.end method

.method public playTTS(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->pipeline:Lcom/unisound/vui/engine/DefaultANTPipeline;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/engine/DefaultANTPipeline;->playTTS(Ljava/lang/String;)V

    return-void
.end method

.method public releaseAudioRecord()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/unisound/vui/engine/AbstractANTEngine;->doReleaseAudioRecord()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method final setEngineState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const-string v0, "NativeANTEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->engineState:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->engineState:I

    goto :goto_0
.end method

.method public setInSetWakeUpWord(Z)V
    .locals 0
    .param p1, "inSetWakeUpWord"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->inSetWakeUpWord:Z

    return-void
.end method

.method public setNeedRecoveryWakeUp(Z)V
    .locals 2
    .param p1, "intercept"    # Z

    .prologue
    sget-object v0, Lcom/unisound/vui/engine/AbstractANTEngine;->NEED_RECOVERY_WAKE_UP:Lcom/unisound/vui/util/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/engine/AbstractANTEngine;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public setPlayBeep(Z)V
    .locals 3
    .param p1, "playBeep"    # Z

    .prologue
    const-string v0, "NativeANTEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayBeep:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->playBeep:Z

    return-void
.end method

.method protected setTtsPlaying(Z)V
    .locals 0
    .param p1, "ttsPlaying"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->isTtsPlaying:Z

    return-void
.end method

.method public setWakeupRecord(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->isWakeupRecord:Z

    return-void
.end method

.method public setWakeupWord(Ljava/util/List;Z)V
    .locals 1
    .param p2, "playBeep"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "wakeup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->pipeline:Lcom/unisound/vui/engine/DefaultANTPipeline;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/vui/engine/DefaultANTPipeline;->setWakeupWord(Ljava/util/List;Z)V

    return-void
.end method

.method protected abstract setWakeupWord0(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public stopASR()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->pipeline:Lcom/unisound/vui/engine/DefaultANTPipeline;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/DefaultANTPipeline;->stopASR()V

    return-void
.end method

.method public stopWakeup()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->pipeline:Lcom/unisound/vui/engine/DefaultANTPipeline;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/DefaultANTPipeline;->stopWakeup()V

    return-void
.end method

.method public unsafe()Lcom/unisound/vui/engine/ANTEngine$Unsafe;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->unsafe:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    return-object v0
.end method

.method public updateWakeupWord(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "wakeup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->pipeline:Lcom/unisound/vui/engine/DefaultANTPipeline;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/engine/DefaultANTPipeline;->updateWakeupWord(Ljava/util/List;)V

    return-void
.end method

.method protected abstract updateWakeupWord0(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract updateWakeupWord1(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public wakeupWord()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/unisound/vui/engine/AbstractANTEngine;->WAKEUP_WORD:Lcom/unisound/vui/util/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/engine/AbstractANTEngine;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public write(Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine;->pipeline:Lcom/unisound/vui/engine/DefaultANTPipeline;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/engine/DefaultANTPipeline;->write(Ljava/lang/Object;)V

    return-void
.end method
