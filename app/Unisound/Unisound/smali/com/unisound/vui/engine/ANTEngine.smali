.class public interface abstract Lcom/unisound/vui/engine/ANTEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/util/AttributeMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/engine/ANTEngine$Unsafe;
    }
.end annotation


# static fields
.field public static final AUDIO_FOCUS_HELPER:Lcom/unisound/vui/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/AttributeKey",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENGINE_ASR:I = 0x2

.field public static final ENGINE_IDLE:I = 0x0

.field public static final ENGINE_RECOGNITION:I = 0x3

.field public static final ENGINE_WAKEUP:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AudioFocusHelper"

    invoke-static {v0}, Lcom/unisound/vui/util/AttributeKey;->newInstance(Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/engine/ANTEngine;->AUDIO_FOCUS_HELPER:Lcom/unisound/vui/util/AttributeKey;

    return-void
.end method


# virtual methods
.method public abstract androidContext()Landroid/content/Context;
.end method

.method public abstract cancelASR()V
.end method

.method public abstract cancelTTS()V
.end method

.method public abstract closeReleaseStatus()V
.end method

.method public abstract config()Lcom/unisound/vui/engine/ANTEngineConfig;
.end method

.method public abstract doPPTAction()V
.end method

.method public abstract enableOneshot(Z)V
.end method

.method public abstract enterASR()V
.end method

.method public abstract enterWakeup(Z)V
.end method

.method public abstract getAecEnable()Z
.end method

.method public abstract getEngineState()I
.end method

.method public abstract initializeMode()V
.end method

.method public abstract initializeSdk()V
.end method

.method public abstract insertVocab(Ljava/util/Map;Ljava/lang/String;)V
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
.end method

.method public abstract isASR()Z
.end method

.method public abstract isIdle()Z
.end method

.method public abstract isModeInitialized()Z
.end method

.method public abstract isNeedRecoveryWakeUp()Z
.end method

.method public abstract isOneshot()Z
.end method

.method public abstract isRecognition()Z
.end method

.method public abstract isShowVolume()Z
.end method

.method public abstract isTTSPlaying()Z
.end method

.method public abstract isWakeup()Z
.end method

.method public abstract isWakeupRecord()Z
.end method

.method public abstract pipeline()Lcom/unisound/vui/engine/ANTPipeline;
.end method

.method public abstract playTTS(Ljava/lang/String;)V
.end method

.method public abstract releaseAudioRecord()V
.end method

.method public abstract setNeedRecoveryWakeUp(Z)V
.end method

.method public abstract setWakeupRecord(Z)V
.end method

.method public abstract setWakeupWord(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract stopASR()V
.end method

.method public abstract stopWakeup()V
.end method

.method public abstract unsafe()Lcom/unisound/vui/engine/ANTEngine$Unsafe;
.end method

.method public abstract updateWakeupWord(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract wakeupWord()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract write(Ljava/lang/Object;)V
.end method
