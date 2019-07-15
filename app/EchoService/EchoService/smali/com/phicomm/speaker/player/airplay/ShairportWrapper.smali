.class public Lcom/phicomm/speaker/player/airplay/ShairportWrapper;
.super Lcom/phicomm/speaker/player/swig/Callback;
.source "ShairportWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/airplay/ShairportWrapper$ShairportListener;,
        Lcom/phicomm/speaker/player/airplay/ShairportWrapper$ShairportCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile isPlaying:Z

.field private mHandler:Landroid/os/Handler;

.field private shairportCallback:Lcom/phicomm/speaker/player/airplay/ShairportWrapper$ShairportCallback;

.field private shairportListener:Lcom/phicomm/speaker/player/airplay/ShairportWrapper$ShairportListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/phicomm/speaker/player/airplay/ShairportWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/airplay/ShairportWrapper;->TAG:Ljava/lang/String;

    .line 27
    const-string v0, "shairport"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/phicomm/speaker/player/swig/Callback;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/airplay/ShairportWrapper;->isPlaying:Z

    .line 22
    new-instance v0, Lcom/phicomm/speaker/player/airplay/ShairportWrapper$ShairportCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/player/airplay/ShairportWrapper$ShairportCallback;-><init>(Lcom/phicomm/speaker/player/airplay/ShairportWrapper;Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/airplay/ShairportWrapper;->shairportCallback:Lcom/phicomm/speaker/player/airplay/ShairportWrapper$ShairportCallback;

    .line 50
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1;-><init>(Lcom/phicomm/speaker/player/airplay/ShairportWrapper;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/airplay/ShairportWrapper;->mHandler:Landroid/os/Handler;

    .line 114
    return-void
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/player/airplay/ShairportWrapper;)Lcom/phicomm/speaker/player/airplay/ShairportWrapper$ShairportListener;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/airplay/ShairportWrapper;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/ShairportWrapper;->shairportListener:Lcom/phicomm/speaker/player/airplay/ShairportWrapper$ShairportListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/phicomm/speaker/player/airplay/ShairportWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/airplay/ShairportWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/airplay/ShairportWrapper;->isPlaying:Z

    return p1
.end method

.method static synthetic access$300(Lcom/phicomm/speaker/player/airplay/ShairportWrapper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/airplay/ShairportWrapper;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/ShairportWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public isPlaying()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/airplay/ShairportWrapper;->isPlaying:Z

    return v0
.end method

.method public setShairportListener(Lcom/phicomm/speaker/player/airplay/ShairportWrapper$ShairportListener;)V
    .locals 0
    .param p1, "shairportListener"    # Lcom/phicomm/speaker/player/airplay/ShairportWrapper$ShairportListener;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/phicomm/speaker/player/airplay/ShairportWrapper;->shairportListener:Lcom/phicomm/speaker/player/airplay/ShairportWrapper$ShairportListener;

    .line 48
    return-void
.end method

.method public startShairport(Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;)V
    .locals 1
    .param p1, "configuration"    # Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/swig/Shairport;->set_airplay_hostname(Ljava/lang/String;)I

    .line 32
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->getHwAddr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/swig/Shairport;->set_airplay_hwAddr(Ljava/lang/String;)I

    .line 33
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->getPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/swig/Shairport;->set_airplay_port(Ljava/lang/String;)I

    .line 34
    invoke-static {}, Lcom/phicomm/speaker/player/swig/Shairport;->start_airplay()I

    .line 35
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/ShairportWrapper;->shairportCallback:Lcom/phicomm/speaker/player/airplay/ShairportWrapper$ShairportCallback;

    invoke-static {v0}, Lcom/phicomm/speaker/player/swig/Shairport;->setCallbackObject(Lcom/phicomm/speaker/player/swig/Callback;)V

    .line 36
    return-void
.end method

.method public stopShairport()V
    .locals 0

    .prologue
    .line 39
    invoke-static {}, Lcom/phicomm/speaker/player/swig/Shairport;->stop_airplay()I

    .line 40
    return-void
.end method
