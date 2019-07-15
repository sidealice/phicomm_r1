.class public Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;
.super Landroid/os/Binder;
.source "ANTServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder$NativeANTEFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private antEngine:Lcom/unisound/vui/engine/ANTEngine;

.field private antEngineANTEFactory:Lcom/unisound/vui/bootstrap/ANTEFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/bootstrap/ANTEFactory",
            "<",
            "Lcom/unisound/vui/engine/ANTEngine;",
            ">;"
        }
    .end annotation
.end field

.field private bindCount:I

.field private engineInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/unisound/vui/engine/ANTAudioSourceImpl;)V
    .locals 3
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "antAudioSource"    # Lcom/unisound/vui/engine/ANTAudioSourceImpl;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;->engineInited:Z

    .line 42
    new-instance v0, Lcom/unisound/vui/auth/BasicCredentials;

    sget-object v1, Lcom/unisound/vui/util/ExoConstants;->APP_KEY:Ljava/lang/String;

    sget-object v2, Lcom/unisound/vui/util/ExoConstants;->APP_SECRET:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/auth/BasicCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .local v0, "credentials":Lcom/unisound/vui/auth/BasicCredentials;
    new-instance v1, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder$NativeANTEFactory;

    invoke-direct {v1, v0, p1, p2}, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder$NativeANTEFactory;-><init>(Lcom/unisound/vui/auth/UNIOSCredentials;Landroid/app/Application;Lcom/unisound/vui/engine/ANTAudioSourceImpl;)V

    iput-object v1, p0, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;->antEngineANTEFactory:Lcom/unisound/vui/bootstrap/ANTEFactory;

    .line 45
    iget-object v1, p0, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;->antEngineANTEFactory:Lcom/unisound/vui/bootstrap/ANTEFactory;

    invoke-interface {v1}, Lcom/unisound/vui/bootstrap/ANTEFactory;->newANTEngine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;->antEngine:Lcom/unisound/vui/engine/ANTEngine;

    .line 46
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;->initMode(Landroid/app/Application;)V

    .line 47
    return-void
.end method

.method static synthetic access$002(Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;->engineInited:Z

    return p1
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;)Lcom/unisound/vui/bootstrap/ANTEFactory;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;->antEngineANTEFactory:Lcom/unisound/vui/bootstrap/ANTEFactory;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initMode(Landroid/app/Application;)V
    .locals 2
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 62
    sget-object v0, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;->TAG:Ljava/lang/String;

    const-string v1, "initMode"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder$2;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder$2;-><init>(Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;Landroid/app/Application;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    .line 77
    invoke-static {}, Lrx/schedulers/Schedulers;->newThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 78
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder$1;-><init>(Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;)V

    .line 79
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 87
    return-void
.end method


# virtual methods
.method public getAntEngine()Lcom/unisound/vui/engine/ANTEngine;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;->antEngine:Lcom/unisound/vui/engine/ANTEngine;

    return-object v0
.end method

.method public getBindCount()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;->bindCount:I

    return v0
.end method

.method public increaseBindCount()V
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;->bindCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;->bindCount:I

    .line 59
    return-void
.end method

.method public isEngineInited()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;->engineInited:Z

    return v0
.end method
