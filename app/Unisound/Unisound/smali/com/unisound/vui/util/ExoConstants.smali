.class public final Lcom/unisound/vui/util/ExoConstants;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/util/ExoConstants$a;,
        Lcom/unisound/vui/util/ExoConstants$b;
    }
.end annotation


# static fields
.field public static final APP_KEY:Ljava/lang/String;

.field public static final APP_SECRET:Ljava/lang/String;

.field public static final DO_ACTIVE_INTERRUPT:Ljava/lang/String; = "doActiveInterrupt"

.field public static final DO_ASR_INTERRUPT:Ljava/lang/String; = "doAsrInterrupt"

.field public static final DO_ENGINE_INIT_DONE:Ljava/lang/String; = "doEngineInitDone"

.field public static final DO_ENTER_ASR_BY_MIC:Ljava/lang/String; = "doEnterAsrByMic"

.field public static final DO_FINISH_ALL_INTERRUPT:Ljava/lang/String; = "doFinishAllInterrupt"

.field public static final DO_ONE_SHOT_INTERRUPT:Ljava/lang/String; = "doOneShotInterrupt"

.field public static final DO_PASSIVE_INTERRUPT:Ljava/lang/String; = "doPassiveInterrupt"

.field public static final DO_PTT_ACTION_BY_MIC:Ljava/lang/String; = "doPttActionByMic"

.field public static final DO_RESUME:Ljava/lang/String; = "doResume"

.field public static final FIRE_ACTIVE_INTERRUPT:Ljava/lang/String; = "fireActiveInterrupt"

.field public static final FIRE_ASR_INTERRUPT:Ljava/lang/String; = "fireAsrInterrupt"

.field public static final FIRE_ENGINE_INIT_DONE:Ljava/lang/String; = "firEngineInitDone"

.field public static final FIRE_ONE_SHOT_INTERRUPT:Ljava/lang/String; = "fireOneShotInterrupt"

.field public static final FIRE_PASSIVE_INTERRUPT:Ljava/lang/String; = "firePassiveInterrupt"

.field public static final FIRE_RESUME:Ljava/lang/String; = "fireResume"

.field public static final MUSIC_START:Ljava/lang/String; = "musicStart"

.field public static final SWITCH_TTS_PLAYER:Ljava/lang/String; = "switchTtsPlayer"

.field public static createHtml5:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "rb35fqpoz33hyu56zh4kklgqqwdicqcmbxzwe4qc"

    sput-object v0, Lcom/unisound/vui/util/ExoConstants;->APP_KEY:Ljava/lang/String;

    const-string v0, "99900e2146fca6dff6d61d7a6c4664a3"

    sput-object v0, Lcom/unisound/vui/util/ExoConstants;->APP_SECRET:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unisound/vui/util/ExoConstants;->createHtml5:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServiceParam()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/unisound/vui/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getValidSdk(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    sget-boolean v1, Lcom/unisound/vui/util/ExoConstants;->createHtml5:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"param\":{\"createH5URL\":\"true\",\"deviceToken\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"activateVer\":\"v3.1\"}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "SdkVeri"

    invoke-static {v1, v0}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"param\":{\"deviceToken\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"activateVer\":\"v3.1\"}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
