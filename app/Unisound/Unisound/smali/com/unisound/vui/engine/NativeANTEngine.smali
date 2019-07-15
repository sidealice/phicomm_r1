.class public Lcom/unisound/vui/engine/NativeANTEngine;
.super Lcom/unisound/vui/engine/AbstractANTEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/engine/NativeANTEngine$c;,
        Lcom/unisound/vui/engine/NativeANTEngine$b;,
        Lcom/unisound/vui/engine/NativeANTEngine$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/unisound/vui/engine/ANTEngineConfig;

.field private i:Landroid/os/Handler;

.field private final j:Lcom/unisound/vui/a;

.field private final k:Lcom/unisound/vui/e;

.field private final l:Lcom/unisound/vui/c;

.field private m:Ljava/lang/String;

.field private n:Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;

.field private o:Lcom/google/gson/Gson;

.field private p:Lcom/unisound/vui/engine/NativeANTEngine$b;

.field private q:Lcom/unisound/vui/data/tts/TTSContent;

.field private r:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oneshot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/unisound/vui/util/entity/ExoAsrTag;->TAG_UNIDRIVE_MAIN:Lcom/unisound/vui/util/entity/ExoAsrTag;

    invoke-static {v1}, Lcom/unisound/vui/util/entity/ExoAsrTag;->getMainTag(Lcom/unisound/vui/util/entity/ExoAsrTag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/engine/NativeANTEngine;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/unisound/vui/engine/a$a;Lcom/unisound/client/IAudioSource;)V
    .locals 4
    .param p1, "provider"    # Lcom/unisound/vui/engine/a$a;
    .param p2, "audioSource"    # Lcom/unisound/client/IAudioSource;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/unisound/vui/engine/AbstractANTEngine;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->g:Ljava/util/List;

    new-instance v0, Lcom/unisound/vui/engine/NativeANTEngine$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/unisound/vui/engine/NativeANTEngine$1;-><init>(Lcom/unisound/vui/engine/NativeANTEngine;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->i:Landroid/os/Handler;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->o:Lcom/google/gson/Gson;

    new-instance v0, Lcom/unisound/vui/engine/NativeANTEngine$2;

    invoke-direct {v0, p0}, Lcom/unisound/vui/engine/NativeANTEngine$2;-><init>(Lcom/unisound/vui/engine/NativeANTEngine;)V

    iput-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->r:Landroid/os/Handler;

    const-string v0, "NativeANTEngine"

    const-string v1, "NativeANTEngine"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->a()V

    new-instance v0, Lcom/unisound/vui/engine/b;

    invoke-direct {v0, p0}, Lcom/unisound/vui/engine/b;-><init>(Lcom/unisound/vui/engine/ANTEngine;)V

    iput-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->h:Lcom/unisound/vui/engine/ANTEngineConfig;

    invoke-interface {p1}, Lcom/unisound/vui/engine/a$a;->getANTBuilder()Lcom/unisound/vui/engine/a;

    move-result-object v0

    invoke-interface {p1}, Lcom/unisound/vui/engine/a$a;->context()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/unisound/vui/util/UserPerferenceUtil;->setStartWakeupAfterSetWakeupWord(Landroid/content/Context;Z)V

    invoke-interface {v0}, Lcom/unisound/vui/engine/a;->createASRManager()Lcom/unisound/vui/a;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    invoke-interface {v0}, Lcom/unisound/vui/engine/a;->createNluManager()Lcom/unisound/vui/e;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine;->k:Lcom/unisound/vui/e;

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v1

    new-instance v2, Lcom/unisound/vui/engine/NativeANTEngine$b;

    invoke-direct {v2, p0, v1}, Lcom/unisound/vui/engine/NativeANTEngine$b;-><init>(Lcom/unisound/vui/engine/NativeANTEngine;Lcom/unisound/vui/engine/ANTPipeline;)V

    iput-object v2, p0, Lcom/unisound/vui/engine/NativeANTEngine;->p:Lcom/unisound/vui/engine/NativeANTEngine$b;

    iget-object v2, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    iget-object v3, p0, Lcom/unisound/vui/engine/NativeANTEngine;->p:Lcom/unisound/vui/engine/NativeANTEngine$b;

    invoke-virtual {v2, v3}, Lcom/unisound/vui/a;->a(Lcom/unisound/vui/b;)V

    invoke-interface {v0}, Lcom/unisound/vui/engine/a;->createTTSManager()Lcom/unisound/vui/c;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->l:Lcom/unisound/vui/c;

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->l:Lcom/unisound/vui/c;

    new-instance v2, Lcom/unisound/vui/engine/NativeANTEngine$c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/unisound/vui/engine/NativeANTEngine$c;-><init>(Lcom/unisound/vui/engine/NativeANTEngine;Lcom/unisound/vui/engine/ANTPipeline;Lcom/unisound/vui/engine/NativeANTEngine$1;)V

    invoke-virtual {v0, v2}, Lcom/unisound/vui/c;->a(Lcom/unisound/vui/d;)V

    new-instance v0, Lcom/unisound/vui/data/tts/TTSContent;

    iget-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unisound/vui/data/tts/TTSContent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->q:Lcom/unisound/vui/data/tts/TTSContent;

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->q:Lcom/unisound/vui/data/tts/TTSContent;

    invoke-virtual {v0}, Lcom/unisound/vui/data/tts/TTSContent;->init()V

    return-void
.end method

.method static synthetic a(Lcom/unisound/vui/engine/NativeANTEngine;Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;)Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/engine/NativeANTEngine;->n:Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;

    return-object p1
.end method

.method static synthetic a(Lcom/unisound/vui/engine/NativeANTEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/engine/NativeANTEngine;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/unisound/vui/engine/NativeANTEngine;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->d:Ljava/util/List;

    return-object v0
.end method

.method private a()V
    .locals 3

    const-string v0, "NativeANTEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initReqAddress is versionType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/common/config/ANTConfigPreference;->sVersionType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/unisound/vui/common/config/ANTConfigPreference;->getTRUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/engine/NativeANTEngine;->c:Ljava/lang/String;

    invoke-static {}, Lcom/unisound/vui/common/config/ANTConfigPreference;->isDev()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://106.38.55.5:19999/tr/dataProcess"

    sput-object v0, Lcom/unisound/vui/engine/NativeANTEngine;->b:Ljava/lang/String;

    :cond_0
    const-string v0, "NativeANTEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current asr_server "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/engine/NativeANTEngine;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(I)V
    .locals 4

    if-nez p1, :cond_0

    sget-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->saveWakeUpRecording:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    sget-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->saveRecognizerRecording:Z

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p1}, Lcom/unisound/vui/common/file/FileHelper;->getASRSavedRecordingPath(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeANTEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-setSaveRecordingOption-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v2, 0x422

    invoke-virtual {v1, v2, v0}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getUserTTSModelType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SWEET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->l:Lcom/unisound/vui/c;

    const/16 v1, 0x7d5

    invoke-virtual {v0, v1}, Lcom/unisound/vui/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "sweet"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->q:Lcom/unisound/vui/data/tts/TTSContent;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/data/tts/TTSContent;->isLocalAnswer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<WAV>/system/unisound/audio/tts_answer/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</WAV>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/unisound/vui/engine/NativeANTEngine;)Ljava/util/Map;
    .locals 1

    invoke-direct {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->f()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "AutoStart"

    const-string v1, "understander init"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x2712

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x3e9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x277b

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x277c

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->c()V

    sget-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->sdkDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const v1, 0x1330435

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->d()V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->k:Lcom/unisound/vui/e;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/unisound/vui/e;->a(Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->initOneshotState()V

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->initAecEnableState()V

    return-void
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"activate\":\"true\",\"deviceSn\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    invoke-virtual {v1, v0}, Lcom/unisound/vui/a;->a(Ljava/lang/String;)V

    const-string v1, "NativeANTEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "speechUnderstander init with jsonStr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "NativeANTEngine"

    const-string v1, "jsonStr is null, post delay 1000 ms"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->r:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/unisound/vui/engine/NativeANTEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->c()V

    return-void
.end method

.method static synthetic d(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/a;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    return-object v0
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x447

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/unisound/vui/common/config/ANTConfigPreference;->isDev()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x448

    sget-object v2, Lcom/unisound/vui/engine/NativeANTEngine;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    :cond_2
    const-string v0, "NativeANTEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/vui/engine/NativeANTEngine;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/unisound/vui/util/UserPerferenceUtil;->getValidSdk(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getValidSdk(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x449

    invoke-static {}, Lcom/unisound/vui/util/ExoConstants;->getServiceParam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/c;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->l:Lcom/unisound/vui/c;

    return-object v0
.end method

.method private e()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "AutoStart"

    const-string v1, "tts init"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->l:Lcom/unisound/vui/c;

    const/16 v1, 0x7e6

    const/16 v2, 0x96

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/c;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->l:Lcom/unisound/vui/c;

    const/16 v1, 0x7d3

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/c;->a(ILjava/lang/Object;)V

    sget-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->sdkDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->l:Lcom/unisound/vui/c;

    const v1, 0x1330435

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/c;->a(ILjava/lang/Object;)V

    :cond_0
    sget-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->saveTTSRecording:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->l:Lcom/unisound/vui/c;

    const/16 v1, 0x7de

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/c;->a(ILjava/lang/Object;)V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/unisound/vui/common/file/FileHelper;->getASRSavedRecordingPath(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine;->l:Lcom/unisound/vui/c;

    const/16 v2, 0x7df

    invoke-virtual {v1, v2, v0}, Lcom/unisound/vui/c;->a(ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->l:Lcom/unisound/vui/c;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/unisound/vui/c;->a(Ljava/lang/String;)I

    return-void
.end method

.method static synthetic f(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/e;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->k:Lcom/unisound/vui/e;

    return-object v0
.end method

.method private f()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getMainWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->isOneshot()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "NativeANTEngine"

    const-string v3, "no oneshot"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/unisound/vui/util/entity/VocabSlotTag;->Domain_wakeup_words_slot:Lcom/unisound/vui/util/entity/VocabSlotTag;

    invoke-virtual {v0}, Lcom/unisound/vui/util/entity/VocabSlotTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    const-string v0, "NativeANTEngine"

    const-string v2, "insertWakeupWordVocab wakeupWordsMap size : %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/unisound/vui/engine/NativeANTEngine;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/unisound/vui/util/UserPerferenceUtil;->getOneshotEnableV1(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " <unk>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/unisound/vui/util/entity/VocabSlotTag;->asr_wakeup_words_slot:Lcom/unisound/vui/util/entity/VocabSlotTag;

    invoke-virtual {v0}, Lcom/unisound/vui/util/entity/VocabSlotTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "cccc"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/unisound/vui/util/entity/VocabSlotTag;->Domain_wakeup_words_slot:Lcom/unisound/vui/util/entity/VocabSlotTag;

    invoke-virtual {v2}, Lcom/unisound/vui/util/entity/VocabSlotTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic g(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->n:Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;

    return-object v0
.end method

.method static synthetic h(Lcom/unisound/vui/engine/NativeANTEngine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/unisound/vui/engine/NativeANTEngine;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/unisound/vui/engine/NativeANTEngine;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lcom/unisound/vui/engine/NativeANTEngine;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/unisound/vui/engine/NativeANTEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->b()V

    return-void
.end method


# virtual methods
.method public config()Lcom/unisound/vui/engine/ANTEngineConfig;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->h:Lcom/unisound/vui/engine/ANTEngineConfig;

    return-object v0
.end method

.method protected doCancelASR()V
    .locals 3

    const-string v0, "NativeANTEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCancelASR state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/unisound/vui/engine/NativeANTEngine;->engineState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->isASR()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->isRecognition()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    invoke-virtual {v0}, Lcom/unisound/vui/a;->b()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unisound/vui/engine/NativeANTEngine;->setEngineState(I)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x422

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected doCancelEngine()V
    .locals 3

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->isInSetWakeUpWord()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "NativeANTEngine"

    const-string v1, "doCancelEngine start"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    invoke-virtual {v0}, Lcom/unisound/vui/a;->b()V

    const-string v0, "NativeANTEngine"

    const-string v1, "doCancelEngine end"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x422

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unisound/vui/engine/NativeANTEngine;->setEngineState(I)V

    :cond_1
    return-void
.end method

.method protected doCancelTTS()V
    .locals 2

    const-string v0, "NativeANTEngine"

    const-string v1, "doCancelTTS"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unisound/vui/engine/NativeANTEngine;->setTtsPlaying(Z)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->l:Lcom/unisound/vui/c;

    invoke-virtual {v0}, Lcom/unisound/vui/c;->b()I

    return-void
.end method

.method protected doCloseReleaseStatus()V
    .locals 0

    return-void
.end method

.method protected doEnterASR()V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    sget-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->sdkDebug:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->isAsrRecognitionTest:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x27d6

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->doCancelEngine()V

    const-string v0, "NativeANTEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doEnterASR isWakeUp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->isWakeup()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/unisound/vui/engine/NativeANTEngine;->a(I)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x42e

    sget v2, Lcom/unisound/vui/common/config/ANTConfigPreference;->beepSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    const-string v0, "NativeANTEngine"

    const-string v1, "doEnterASR tag - %s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/unisound/vui/engine/NativeANTEngine;->m:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x3f3

    sget v2, Lcom/unisound/vui/common/config/ANTConfigPreference;->asrVadTimeoutBackSil:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x1390

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/unisound/vui/common/config/ANTConfigPreference;->isDev()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x448

    sget-object v2, Lcom/unisound/vui/engine/NativeANTEngine;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x3f1

    sget-object v2, Lcom/unisound/vui/engine/NativeANTEngine;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x2774

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x438

    const/16 v2, 0x4b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    sget-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->onlineVad:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x271d

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getMainWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getDefaultWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getDefaultWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v2, 0x3f0

    const-string v3, "song"

    invoke-virtual {v0, v2, v3}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v3, 0x3f9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "returnType=json;city="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->h:Lcom/unisound/vui/engine/ANTEngineConfig;

    sget-object v5, Lcom/unisound/vui/engine/ANTEngineOption;->GENERAL_CITY:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-interface {v0, v5}, Lcom/unisound/vui/engine/ANTEngineConfig;->getOption(Lcom/unisound/vui/engine/ANTEngineOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";gps="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->h:Lcom/unisound/vui/engine/ANTEngineConfig;

    sget-object v5, Lcom/unisound/vui/engine/ANTEngineOption;->GENERAL_GPS:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-interface {v0, v5}, Lcom/unisound/vui/engine/ANTEngineConfig;->getOption(Lcom/unisound/vui/engine/ANTEngineOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";time="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/unisound/vui/util/SystemUitls;->getTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";screen=;dpi=;history=;udid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->h:Lcom/unisound/vui/engine/ANTEngineConfig;

    sget-object v5, Lcom/unisound/vui/engine/ANTEngineOption;->GENERAL_UDID:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-interface {v0, v5}, Lcom/unisound/vui/engine/ANTEngineConfig;->getOption(Lcom/unisound/vui/engine/ANTEngineOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";ver=3.0;appver=;oneshotKeyProperty=wakeup;filterName=nlu2;additionalService=athenaAppService;scenario=musicDefault"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/unisound/vui/common/config/ANTConfigPreference;->isDev()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ";filterUrl="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lcom/unisound/vui/engine/NativeANTEngine;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";wakeupword="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";appendLength=2;audioUrl=true;mac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->isWakeupRecord()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v6}, Lcom/unisound/vui/engine/NativeANTEngine;->setWakeupRecord(Z)V

    :cond_4
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    iget-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unisound/vui/a;->b(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unisound/vui/engine/NativeANTEngine;->setEngineState(I)V

    return-void

    :cond_5
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_0

    :cond_6
    const-string v0, ""

    goto :goto_1
.end method

.method protected declared-synchronized doEnterWakeup(Z)V
    .locals 3
    .param p1, "playBeep"    # Z

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->isInSetWakeUpWord()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NativeANTEngine"

    const-string v1, "doEnterWakeup: now is setting wakeup words,cannot start wakeup"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->sdkDebug:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->isWakeupTest:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->isWakeupAecTest:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x27d6

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    :cond_3
    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->isWakeup()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->doCancelEngine()V

    :cond_4
    const-string v0, "NativeANTEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doEnterWakeup isIdle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->isIdle()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current thread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/unisound/vui/engine/NativeANTEngine;->lastPlayBeep:Z

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x2774

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unisound/vui/engine/NativeANTEngine;->a(I)V

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->isOneshot()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x42e

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x3f3

    sget v2, Lcom/unisound/vui/common/config/ANTConfigPreference;->oneshotWakeupVadTimeoutBackSil:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unisound/vui/engine/NativeANTEngine;->setWakeupRecord(Z)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x438

    const/16 v2, 0xf00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    sget-object v1, Lcom/unisound/vui/engine/NativeANTEngine;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unisound/vui/a;->b(Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unisound/vui/engine/NativeANTEngine;->setEngineState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x27d7

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x42e

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x3f3

    sget v2, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupVadTimeoutBackSil:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x1390

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unisound/vui/engine/NativeANTEngine;->setWakeupRecord(Z)V

    const-string v0, "NativeANTEngine"

    const-string v1, "ASR_OPT_RECORDING_PAC_SIZE : 640"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x438

    const/16 v2, 0x280

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const-string v1, "wakeup"

    invoke-virtual {v0, v1}, Lcom/unisound/vui/a;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected doInitEngine()V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->c()V

    return-void
.end method

.method protected doInitializeMode()V
    .locals 5

    new-instance v0, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;

    iget-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_KEY_FRONTEND_MODEL_PATH:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-virtual {v0}, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;->getTTSFrontendPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/unisound/vui/engine/ANTEngineConfig;->setOption(Lcom/unisound/vui/engine/ANTEngineOption;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/unisound/vui/util/UserPerferenceUtil;->getUserTTSModelType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativeANTEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get history speaker:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "FEMALE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_KEY_BACKEND_MODEL_PATH:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-virtual {v0}, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;->getTTSBackendStandarPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/unisound/vui/engine/ANTEngineConfig;->setOption(Lcom/unisound/vui/engine/ANTEngineOption;Ljava/lang/Object;)Z

    :goto_0
    invoke-direct {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->e()V

    return-void

    :cond_0
    const-string v2, "MALE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_KEY_BACKEND_MODEL_PATH:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-virtual {v0}, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;->getTTSBackendMalePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/unisound/vui/engine/ANTEngineConfig;->setOption(Lcom/unisound/vui/engine/ANTEngineOption;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v2, "CHILDREN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_KEY_BACKEND_MODEL_PATH:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-virtual {v0}, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;->getTTSBackendChildPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/unisound/vui/engine/ANTEngineConfig;->setOption(Lcom/unisound/vui/engine/ANTEngineOption;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v2, "SWEET"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_KEY_BACKEND_MODEL_PATH:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-virtual {v0}, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;->getTTSBackendSweetPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/unisound/vui/engine/ANTEngineConfig;->setOption(Lcom/unisound/vui/engine/ANTEngineOption;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_KEY_BACKEND_MODEL_PATH:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-virtual {v0}, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;->getTTSBackendSweetPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/unisound/vui/engine/ANTEngineConfig;->setOption(Lcom/unisound/vui/engine/ANTEngineOption;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected doInitializeSdk()V
    .locals 0

    return-void
.end method

.method protected doPPTAction0()V
    .locals 2

    const-string v0, "NativeANTEngine"

    const-string v1, "doPPTAction0"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->doCancelASR()V

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->doEnterASR()V

    return-void
.end method

.method protected doPlayBuffer([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unisound/vui/engine/NativeANTEngine;->setTtsPlaying(Z)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->l:Lcom/unisound/vui/c;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/c;->a([B)V

    return-void
.end method

.method protected doPlayTTS(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->isTTSPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->doCancelTTS()V

    :cond_0
    const-string v0, "NativeANTEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doPlayTTS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->getAecEnable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->doStopWakeup()V

    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unisound/vui/engine/NativeANTEngine;->setTtsPlaying(Z)V

    invoke-direct {p0, p1}, Lcom/unisound/vui/engine/NativeANTEngine;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->l:Lcom/unisound/vui/c;

    iget-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine;->q:Lcom/unisound/vui/data/tts/TTSContent;

    invoke-virtual {v1, p1}, Lcom/unisound/vui/data/tts/TTSContent;->getLocalAnswerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unisound/vui/engine/NativeANTEngine;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/vui/c;->b(Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->isInSetWakeUpWord()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unisound/vui/engine/NativeANTEngine;->doEnterWakeup(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->l:Lcom/unisound/vui/c;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/c;->b(Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected doReleaseAudioRecord()V
    .locals 0

    return-void
.end method

.method protected doStopASR()V
    .locals 3

    const-string v0, "NativeANTEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStopASR isAsr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->isASR()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->isASR()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->l:Lcom/unisound/vui/c;

    invoke-virtual {v0}, Lcom/unisound/vui/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->l:Lcom/unisound/vui/c;

    invoke-virtual {v0}, Lcom/unisound/vui/c;->c()V

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    invoke-virtual {v0}, Lcom/unisound/vui/a;->a()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/unisound/vui/engine/NativeANTEngine;->setEngineState(I)V

    :cond_1
    return-void
.end method

.method protected doStopWakeup()V
    .locals 3

    const-string v0, "NativeANTEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStopWakeup isWakeUp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->isWakeup()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->isWakeup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    invoke-virtual {v0}, Lcom/unisound/vui/a;->b()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unisound/vui/engine/NativeANTEngine;->setEngineState(I)V

    :cond_0
    return-void
.end method

.method protected doWrite(Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    instance-of v0, p1, Lcom/unisound/vui/transport/out/VocabContent;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/unisound/vui/transport/out/VocabContent;

    .end local p1    # "msg":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/unisound/vui/transport/out/VocabContent;->getVocabContent()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/unisound/vui/transport/out/VocabContent;->getGrammarTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/unisound/vui/engine/NativeANTEngine;->insertVocab0(Ljava/util/Map;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public enableOneshot(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    invoke-super {p0, p1}, Lcom/unisound/vui/engine/AbstractANTEngine;->enableOneshot(Z)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x3fa

    iget-object v2, p0, Lcom/unisound/vui/engine/NativeANTEngine;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/unisound/vui/util/UserPerferenceUtil;->getOneShotWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->f()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/unisound/vui/util/entity/ExoAsrTag;->TAG_UNIDRIVE_MAIN:Lcom/unisound/vui/util/entity/ExoAsrTag;

    invoke-static {v1}, Lcom/unisound/vui/util/entity/ExoAsrTag;->getMainTag(Lcom/unisound/vui/util/entity/ExoAsrTag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/unisound/vui/engine/NativeANTEngine;->insertVocab(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method protected insertVocab0(Ljava/util/Map;Ljava/lang/String;)V
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
    const-string v0, "NativeANTEngine"

    const-string v1, "insertVocab0"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/vui/a;->a(Ljava/util/Map;Ljava/lang/String;)I

    return-void
.end method

.method protected newUnsafe()Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;
    .locals 2

    new-instance v0, Lcom/unisound/vui/engine/NativeANTEngine$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/unisound/vui/engine/NativeANTEngine$a;-><init>(Lcom/unisound/vui/engine/NativeANTEngine;Lcom/unisound/vui/engine/NativeANTEngine$1;)V

    return-object v0
.end method

.method protected setWakeupWord0(Ljava/util/List;Z)V
    .locals 4
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
    const/4 v3, 0x1

    if-nez p1, :cond_0

    const-string v0, "NativeANTEngine"

    const-string v1, "setWakeupWord error, wakeup word is null"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->isInSetWakeUpWord()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NativeANTEngine"

    const-string v1, "now is setting wakeup word, delay 100ms"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/unisound/vui/engine/NativeANTEngine;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->i:Landroid/os/Handler;

    const/16 v1, 0x3eb

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/unisound/vui/engine/NativeANTEngine;->setInSetWakeUpWord(Z)V

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->isASR()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->isRecognition()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->doCancelEngine()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->f:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/unisound/vui/util/StringUtils;->listStringEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "NativeANTEngine"

    const-string v1, "old wake up equals new wake up"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->p:Lcom/unisound/vui/engine/NativeANTEngine$b;

    const/16 v1, 0xc21

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/engine/NativeANTEngine$b;->onEvent(II)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->doCancelEngine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const-string v0, "NativeANTEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWakeupWord0,words="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/vui/engine/NativeANTEngine;->o:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "playBeep:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/unisound/vui/engine/NativeANTEngine;->setNeedRecoveryWakeUp(Z)V

    invoke-virtual {p0, p2}, Lcom/unisound/vui/engine/NativeANTEngine;->setPlayBeep(Z)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "NativeANTEngine"

    const-string v1, "setWakeupWord0"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "wakeup"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    invoke-virtual {v1, v0}, Lcom/unisound/vui/a;->b(Ljava/util/Map;)I

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->setEffectiveWakeupword(Ljava/util/List;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->j:Lcom/unisound/vui/a;

    const/16 v1, 0x3fa

    iget-object v2, p0, Lcom/unisound/vui/engine/NativeANTEngine;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/unisound/vui/util/UserPerferenceUtil;->getOneShotWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public unsafe()Lcom/unisound/vui/engine/ANTEngine$Unsafe;
    .locals 1

    invoke-super {p0}, Lcom/unisound/vui/engine/AbstractANTEngine;->unsafe()Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    move-result-object v0

    return-object v0
.end method

.method protected updateWakeupWord0(Ljava/util/List;)V
    .locals 2
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
    iput-object p1, p0, Lcom/unisound/vui/engine/NativeANTEngine;->d:Ljava/util/List;

    const-string v0, "NativeANTEngine"

    const-string v1, "updateWakeupWord0"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/vui/common/network/NetUtil;->getInstante(Landroid/content/Context;)Lcom/unisound/vui/common/network/NetUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/vui/common/network/NetUtil;->getConnectState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    const/16 v1, 0xc23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/unisound/vui/engine/NativeANTEngine$3;

    invoke-direct {v1, p0, p1}, Lcom/unisound/vui/engine/NativeANTEngine$3;-><init>(Lcom/unisound/vui/engine/NativeANTEngine;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected updateWakeupWord1(Ljava/util/List;)V
    .locals 2
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
    iput-object p1, p0, Lcom/unisound/vui/engine/NativeANTEngine;->d:Ljava/util/List;

    const-string v0, "NativeANTEngine"

    const-string v1, "updateWakeupWord1"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/vui/common/network/NetUtil;->getInstante(Landroid/content/Context;)Lcom/unisound/vui/common/network/NetUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/vui/common/network/NetUtil;->getConnectState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/unisound/vui/engine/NativeANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    const/16 v1, 0xc23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/unisound/vui/engine/NativeANTEngine$4;

    invoke-direct {v1, p0, p1}, Lcom/unisound/vui/engine/NativeANTEngine$4;-><init>(Lcom/unisound/vui/engine/NativeANTEngine;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
