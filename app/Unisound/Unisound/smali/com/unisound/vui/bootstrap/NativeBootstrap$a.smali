.class final Lcom/unisound/vui/bootstrap/NativeBootstrap$a;
.super Lcom/unisound/vui/engine/ANTEngineInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/bootstrap/NativeBootstrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/unisound/vui/bootstrap/NativeBootstrap;


# direct methods
.method private constructor <init>(Lcom/unisound/vui/bootstrap/NativeBootstrap;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/bootstrap/NativeBootstrap$a;->a:Lcom/unisound/vui/bootstrap/NativeBootstrap;

    invoke-direct {p0}, Lcom/unisound/vui/engine/ANTEngineInitializer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unisound/vui/bootstrap/NativeBootstrap;Lcom/unisound/vui/bootstrap/NativeBootstrap$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisound/vui/bootstrap/NativeBootstrap$a;-><init>(Lcom/unisound/vui/bootstrap/NativeBootstrap;)V

    return-void
.end method


# virtual methods
.method protected onEngineInitDone(Lcom/unisound/vui/engine/ANTEngine;)V
    .locals 5
    .param p1, "engine"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTEngine;->unsafe()Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->markModeInitialized()V

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v0

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_WAKEUP_MODEL_ID:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngineConfig;->getOption(Lcom/unisound/vui/engine/ANTEngineOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v0

    sget-object v2, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_RECOGNIZE_MODEL_ID:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-interface {v0, v2}, Lcom/unisound/vui/engine/ANTEngineConfig;->getOption(Lcom/unisound/vui/engine/ANTEngineOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v2

    sget-object v3, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_WAKEUP_MODEL_ID:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/unisound/vui/engine/ANTEngineConfig;->setOption(Lcom/unisound/vui/engine/ANTEngineOption;Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_RECOGNIZE_MODEL_ID:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/unisound/vui/engine/ANTEngineConfig;->setOption(Lcom/unisound/vui/engine/ANTEngineOption;Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/unisound/vui/engine/ANTHandler;

    iget-object v2, p0, Lcom/unisound/vui/bootstrap/NativeBootstrap$a;->a:Lcom/unisound/vui/bootstrap/NativeBootstrap;

    invoke-virtual {v2}, Lcom/unisound/vui/bootstrap/NativeBootstrap;->initializationHandler()Lcom/unisound/vui/engine/ANTHandler;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTEngine;->unsafe()Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/bootstrap/NativeBootstrap$a;->a:Lcom/unisound/vui/bootstrap/NativeBootstrap;

    invoke-virtual {v1}, Lcom/unisound/vui/bootstrap/NativeBootstrap;->androidContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setAndroidContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/unisound/vui/bootstrap/NativeBootstrap$a;->a:Lcom/unisound/vui/bootstrap/NativeBootstrap;

    invoke-virtual {v0}, Lcom/unisound/vui/bootstrap/NativeBootstrap;->wakeupWord()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, v4}, Lcom/unisound/vui/engine/ANTEngine;->setWakeupWord(Ljava/util/List;Z)V

    new-instance v0, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;

    iget-object v1, p0, Lcom/unisound/vui/bootstrap/NativeBootstrap$a;->a:Lcom/unisound/vui/bootstrap/NativeBootstrap;

    invoke-virtual {v1}, Lcom/unisound/vui/bootstrap/NativeBootstrap;->androidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/unisound/vui/bootstrap/NativeBootstrap$a$2;

    invoke-direct {v1, p0}, Lcom/unisound/vui/bootstrap/NativeBootstrap$a$2;-><init>(Lcom/unisound/vui/bootstrap/NativeBootstrap$a;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/unisound/vui/bootstrap/NativeBootstrap$a$1;

    invoke-direct {v1, p0, p1}, Lcom/unisound/vui/bootstrap/NativeBootstrap$a$1;-><init>(Lcom/unisound/vui/bootstrap/NativeBootstrap$a;Lcom/unisound/vui/engine/ANTEngine;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method
