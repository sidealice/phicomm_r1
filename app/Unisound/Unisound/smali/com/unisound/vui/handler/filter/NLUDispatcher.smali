.class public final Lcom/unisound/vui/handler/filter/NLUDispatcher;
.super Lcom/unisound/vui/handler/ANTEventDispatcher;


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Lnluparser/MixtureProcessor;

.field private d:Lnluparser/NluProcessor;

.field private e:Landroid/os/Handler;

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lnluparser/MixtureProcessor;)V
    .locals 3
    .param p1, "mixtureProcessor"    # Lnluparser/MixtureProcessor;

    .prologue
    invoke-direct {p0}, Lcom/unisound/vui/handler/ANTEventDispatcher;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->e:Landroid/os/Handler;

    iput-object p1, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c:Lnluparser/MixtureProcessor;

    new-instance v0, Lnluparser/NluProcessor$Builder;

    invoke-direct {v0}, Lnluparser/NluProcessor$Builder;-><init>()V

    const-string v1, "cn.yunzhisheng.error"

    new-instance v2, Lcom/unisound/vui/handler/filter/NLUDispatcher$1;

    invoke-direct {v2, p0}, Lcom/unisound/vui/handler/filter/NLUDispatcher$1;-><init>(Lcom/unisound/vui/handler/filter/NLUDispatcher;)V

    invoke-virtual {v2}, Lcom/unisound/vui/handler/filter/NLUDispatcher$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnluparser/NluProcessor$Builder;->registerTypeMapper(Ljava/lang/String;Ljava/lang/reflect/Type;)Lnluparser/NluProcessor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnluparser/NluProcessor$Builder;->build()Lnluparser/NluProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->d:Lnluparser/NluProcessor;

    return-void
.end method

.method static synthetic a(Lcom/unisound/vui/handler/filter/NLUDispatcher;Ljava/lang/String;)Lnluparser/scheme/NLU;
    .locals 1

    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const-string v0, "NLUDispatcher"

    const-string v1, "stop asr or nlu result timeout task"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private a(Lcom/unisound/vui/engine/ANTHandlerContext;Z)V
    .locals 2

    const-class v0, Lcom/unisound/vui/handler/filter/NLUDispatcher;

    const-string v1, "RECOGNITION_HANDLED"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/AttributeKey;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v0

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTEngine;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/unisound/vui/handler/filter/NLUDispatcher;Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    return-void
.end method

.method private a(F)Z
    .locals 1

    sget v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->FUNCTION_WAKEUP_BENCHMARK:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/unisound/vui/util/UserPerferenceUtil;->getCmopetitionWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a:Z

    const-string v1, "bluetooth_error"

    invoke-direct {p0, v1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v1

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/unisound/vui/transport/R$string;->tts_music_change_no_supported:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b:Z

    if-eqz v1, :cond_2

    :cond_1
    iput-boolean v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a:Z

    const-string v1, "-90002"

    invoke-direct {p0, v1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v1

    const-string v2, "no network"

    invoke-virtual {v1, v2}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;Lnluparser/scheme/Mixture;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/vui/engine/ANTHandlerContext;",
            "Ljava/lang/String;",
            "Lnluparser/scheme/Mixture",
            "<",
            "Lnluparser/scheme/Intent;",
            "Lnluparser/scheme/Result;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p3}, Lnluparser/scheme/Mixture;->getNluList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnluparser/scheme/NLU;

    invoke-direct {p0, p3, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lnluparser/scheme/Mixture;Lnluparser/scheme/NLU;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "NLUDispatcher"

    const-string v2, "handleNetFilterService return filter service ..."

    invoke-static {v0, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iput-boolean v2, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a:Z

    invoke-virtual {v0, v1}, Lnluparser/scheme/NLU;->setLocalNLU(Z)V

    invoke-virtual {v0, p2}, Lnluparser/scheme/NLU;->setAsrResult(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    move v0, v2

    goto :goto_0
.end method

.method private a(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;Lnluparser/scheme/NLU;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p3}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a:Z

    invoke-virtual {p3, v0}, Lnluparser/scheme/NLU;->setLocalNLU(Z)V

    invoke-virtual {p3, p2}, Lnluparser/scheme/NLU;->setAsrResult(Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    goto :goto_0
.end method

.method private a(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/LocalASR;)Z
    .locals 1

    invoke-interface {p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;

    const/4 v0, 0x1

    return v0
.end method

.method private a(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)Z
    .locals 1

    invoke-virtual {p2}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/unisound/vui/handler/filter/a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Lnluparser/scheme/LocalASR;Lnluparser/scheme/NLU;)Z
    .locals 2

    invoke-virtual {p2}, Lnluparser/scheme/NLU;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lnluparser/scheme/LocalASR;->getScore()F

    move-result v0

    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->recognizerScore:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lnluparser/scheme/Mixture;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/Mixture",
            "<",
            "Lnluparser/scheme/Intent;",
            "Lnluparser/scheme/Result;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Lnluparser/scheme/Mixture;->getNetASRList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "full"

    invoke-virtual {p1}, Lnluparser/scheme/Mixture;->getNetASRList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnluparser/scheme/NetASR;

    invoke-virtual {v0}, Lnluparser/scheme/NetASR;->getResultType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private a(Lnluparser/scheme/Mixture;Lnluparser/scheme/NLU;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/Mixture",
            "<",
            "Lnluparser/scheme/Intent;",
            "Lnluparser/scheme/Result;",
            ">;",
            "Lnluparser/scheme/NLU;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p2}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lnluparser/scheme/Mixture;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V
    .locals 3

    const-string v0, "NLUDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preHandleNetNlu nlu :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lnluparser/scheme/NLU;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "-63551"

    invoke-direct {p0, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    goto :goto_0
.end method

.method private b(F)Z
    .locals 1

    sget v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->effectWakeupBenchmark:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/unisound/vui/util/UserPerferenceUtil;->getMainWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 2

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->unsafe()Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/unisound/vui/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Lnluparser/scheme/Mixture;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/Mixture",
            "<",
            "Lnluparser/scheme/Intent;",
            "Lnluparser/scheme/Result;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lnluparser/scheme/Mixture;->getNluList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Lnluparser/scheme/NLU;
    .locals 2

    new-instance v0, Lnluparser/scheme/NLU;

    invoke-direct {v0}, Lnluparser/scheme/NLU;-><init>()V

    const-string v1, "cn.yunzhisheng.error"

    invoke-virtual {v0, v1}, Lnluparser/scheme/NLU;->setService(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lnluparser/scheme/NLU;->setCode(Ljava/lang/String;)V

    return-object v0
.end method

.method private c(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a()V

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    const/16 v1, 0x44e

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireASREvent(I)Lcom/unisound/vui/engine/ANTPipeline;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lcom/unisound/vui/engine/ANTHandlerContext;Z)V

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelEngine()V

    invoke-interface {p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;

    iput-boolean v2, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b:Z

    iput-boolean v2, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a:Z

    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/unisound/vui/util/UserPerferenceUtil;->getMainWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private c(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/common/network/NetUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private d(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 4

    iget-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    const-string v0, "NLUDispatcher"

    const-string v1, "start asr or nlu result timeout task"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/unisound/vui/handler/filter/NLUDispatcher$2;

    invoke-direct {v0, p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher$2;-><init>(Lcom/unisound/vui/handler/filter/NLUDispatcher;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    iput-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected onASRError(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .locals 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->d(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    const-string v0, "NLUDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-onASRError-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/unisound/vui/util/JsonTool;->parseToJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "errorCode"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/JsonTool;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "errorMsg"

    invoke-static {v0, v2}, Lcom/unisound/vui/util/JsonTool;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b:Z

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_0
    iput-boolean v3, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a:Z

    invoke-direct {p0, v1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    goto :goto_0
.end method

.method protected onASREventCancel(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-direct {p0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a()V

    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventRecordingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 2
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const-string v0, "NLUDispatcher"

    const-string v1, "onASREventRecordingStart"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lcom/unisound/vui/engine/ANTHandlerContext;Z)V

    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventRecordingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onASRResultLocal(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .locals 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const-string v0, "NLUDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onASRResultLocal:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "NLUDispatcher"

    const-string v1, "result has handled, local nlu handle return"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->d(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    iget-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c:Lnluparser/MixtureProcessor;

    invoke-virtual {v0, p2}, Lnluparser/MixtureProcessor;->from(Ljava/lang/String;)Lnluparser/scheme/Mixture;

    move-result-object v0

    invoke-virtual {v0}, Lnluparser/scheme/Mixture;->getLocalASRList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnluparser/scheme/LocalASR;

    iget-object v2, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->d:Lnluparser/NluProcessor;

    invoke-virtual {v0}, Lnluparser/scheme/LocalASR;->getRecognitionResult()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnluparser/NluProcessor;->from(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lnluparser/scheme/LocalASR;Lnluparser/scheme/NLU;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2}, Lnluparser/scheme/NLU;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, v2}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;Lnluparser/scheme/NLU;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onASRResultNet(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .locals 5
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "NLUDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onASRResultNet:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a:Z

    if-eqz v2, :cond_1

    const-string v0, "NLUDispatcher"

    const-string v2, "result has handled, net nlu handle return"

    invoke-static {v0, v2}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->d(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    iget-object v2, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c:Lnluparser/MixtureProcessor;

    invoke-virtual {v2, p2}, Lnluparser/MixtureProcessor;->from(Ljava/lang/String;)Lnluparser/scheme/Mixture;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {p2}, Lcom/unisound/vui/util/JsonTool;->parseToJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v2, "net_nlu"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "text"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v2, "NLUDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported domain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a:Z

    const-string v2, "unsupportedDomain"

    invoke-direct {p0, v2}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    invoke-direct {p0, p1, v2}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "NLUDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported domain \u89e3\u6790\u7528\u6237\u8bf4\u7684\u8bdd\u51fa\u9519 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b(Lnluparser/scheme/Mixture;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2, v2}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;Lnluparser/scheme/Mixture;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onWakeupResult(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .locals 6
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "NLUDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWakeupResult:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c:Lnluparser/MixtureProcessor;

    invoke-virtual {v0, p2}, Lnluparser/MixtureProcessor;->from(Ljava/lang/String;)Lnluparser/scheme/Mixture;

    move-result-object v0

    invoke-virtual {v0}, Lnluparser/scheme/Mixture;->getLocalASRList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnluparser/scheme/LocalASR;

    invoke-virtual {v0}, Lnluparser/scheme/LocalASR;->getRecognitionResult()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "NLUDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is CompetitionWord, return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lnluparser/scheme/LocalASR;->getScore()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(F)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "NLUDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFunctionWakeupWord : wakeupResult:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";success core:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lnluparser/scheme/LocalASR;->getScore()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/LocalASR;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lnluparser/scheme/LocalASR;->getScore()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b(F)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "NLUDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMainWakeupWord : wakeupResult:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";success core:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lnluparser/scheme/LocalASR;->getScore()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "evt"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-interface {p2, p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;

    return-void
.end method
