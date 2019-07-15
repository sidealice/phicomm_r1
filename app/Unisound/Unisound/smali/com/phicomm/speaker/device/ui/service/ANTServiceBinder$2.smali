.class Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder$2;
.super Ljava/lang/Object;
.source "ANTServiceBinder.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;->initMode(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Lcom/unisound/vui/bootstrap/NativeBootstrap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;

.field final synthetic val$application:Landroid/app/Application;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;Landroid/app/Application;)V
    .locals 0
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder$2;->this$0:Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;

    iput-object p2, p0, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder$2;->val$application:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder$2;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lcom/unisound/vui/bootstrap/NativeBootstrap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lcom/unisound/vui/bootstrap/NativeBootstrap;>;"
    new-instance v0, Lcom/unisound/vui/bootstrap/NativeBootstrap;

    invoke-direct {v0}, Lcom/unisound/vui/bootstrap/NativeBootstrap;-><init>()V

    .line 66
    .local v0, "bootstrap":Lcom/unisound/vui/bootstrap/NativeBootstrap;
    new-instance v1, Lcom/unisound/vui/bootstrap/DefaultUserANTEOptionProvider;

    invoke-direct {v1}, Lcom/unisound/vui/bootstrap/DefaultUserANTEOptionProvider;-><init>()V

    invoke-virtual {v0, v1}, Lcom/unisound/vui/bootstrap/NativeBootstrap;->options(Lcom/unisound/vui/bootstrap/a;)Lcom/unisound/vui/bootstrap/AbstractBootstrap;

    move-result-object v1

    check-cast v1, Lcom/unisound/vui/bootstrap/NativeBootstrap;

    iget-object v2, p0, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder$2;->this$0:Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;

    .line 67
    invoke-static {v2}, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;->access$100(Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;)Lcom/unisound/vui/bootstrap/ANTEFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unisound/vui/bootstrap/NativeBootstrap;->antEngineFactory(Lcom/unisound/vui/bootstrap/ANTEFactory;)Lcom/unisound/vui/bootstrap/AbstractBootstrap;

    move-result-object v1

    check-cast v1, Lcom/unisound/vui/bootstrap/NativeBootstrap;

    iget-object v2, p0, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder$2;->val$application:Landroid/app/Application;

    .line 68
    invoke-virtual {v1, v2}, Lcom/unisound/vui/bootstrap/NativeBootstrap;->androidContext(Landroid/content/Context;)Lcom/unisound/vui/bootstrap/AbstractBootstrap;

    move-result-object v1

    check-cast v1, Lcom/unisound/vui/bootstrap/NativeBootstrap;

    iget-object v2, p0, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder$2;->val$application:Landroid/app/Application;

    sget-boolean v3, Lcom/unisound/vui/common/config/ANTConfigPreference;->isWakeupTest:Z

    .line 70
    invoke-static {v2, v3}, Lcom/unisound/vui/util/UserPerferenceUtil;->getWakeupWord(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Lcom/unisound/vui/bootstrap/NativeBootstrap;->wakeupWord(Ljava/util/List;)Lcom/unisound/vui/bootstrap/AbstractBootstrap;

    move-result-object v1

    check-cast v1, Lcom/unisound/vui/bootstrap/NativeBootstrap;

    sget-object v2, Lcom/unisound/vui/util/entity/ExoAsrTag;->TAG_UNIDRIVE_MAIN:Lcom/unisound/vui/util/entity/ExoAsrTag;

    .line 71
    invoke-static {v2}, Lcom/unisound/vui/util/entity/ExoAsrTag;->getMainTag(Lcom/unisound/vui/util/entity/ExoAsrTag;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unisound/vui/bootstrap/NativeBootstrap;->mainTag(Ljava/lang/String;)Lcom/unisound/vui/bootstrap/AbstractBootstrap;

    move-result-object v1

    check-cast v1, Lcom/unisound/vui/bootstrap/NativeBootstrap;

    new-instance v2, Lcom/unisound/vui/bootstrap/DefaultANTEMainVocabProvider;

    invoke-direct {v2}, Lcom/unisound/vui/bootstrap/DefaultANTEMainVocabProvider;-><init>()V

    iget-object v3, p0, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder$2;->val$application:Landroid/app/Application;

    .line 72
    invoke-virtual {v2, v3}, Lcom/unisound/vui/bootstrap/DefaultANTEMainVocabProvider;->getMainVocab(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unisound/vui/bootstrap/NativeBootstrap;->mainVocab(Ljava/util/Map;)Lcom/unisound/vui/bootstrap/AbstractBootstrap;

    move-result-object v1

    check-cast v1, Lcom/unisound/vui/bootstrap/NativeBootstrap;

    new-instance v2, Lcom/phicomm/speaker/device/ui/ExampleANTEngineInitializer;

    invoke-direct {v2}, Lcom/phicomm/speaker/device/ui/ExampleANTEngineInitializer;-><init>()V

    .line 73
    invoke-virtual {v1, v2}, Lcom/unisound/vui/bootstrap/NativeBootstrap;->initializationHandler(Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/bootstrap/AbstractBootstrap;

    .line 74
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 75
    return-void
.end method
