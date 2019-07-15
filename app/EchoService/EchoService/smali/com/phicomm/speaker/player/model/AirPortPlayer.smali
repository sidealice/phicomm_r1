.class public Lcom/phicomm/speaker/player/model/AirPortPlayer;
.super Lcom/phicomm/speaker/player/model/AbsPlayer;
.source "AirPortPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/model/AirPortPlayer$1;,
        Lcom/phicomm/speaker/player/model/AirPortPlayer$ShairportListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private jmdnsWrapper:Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;

.field private mContext:Landroid/content/Context;

.field private shairportConfiguration:Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;

.field private shairportListener:Lcom/phicomm/speaker/player/model/AirPortPlayer$ShairportListener;

.field private shairportWrapper:Lcom/phicomm/speaker/player/airplay/ShairportWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/phicomm/speaker/player/model/AirPortPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AbsPlayer;-><init>()V

    .line 18
    new-instance v0, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->shairportConfiguration:Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;

    .line 19
    new-instance v0, Lcom/phicomm/speaker/player/model/AirPortPlayer$ShairportListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/player/model/AirPortPlayer$ShairportListener;-><init>(Lcom/phicomm/speaker/player/model/AirPortPlayer;Lcom/phicomm/speaker/player/model/AirPortPlayer$1;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->shairportListener:Lcom/phicomm/speaker/player/model/AirPortPlayer$ShairportListener;

    .line 22
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->mContext:Landroid/content/Context;

    .line 23
    new-instance v0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->jmdnsWrapper:Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;

    .line 24
    new-instance v0, Lcom/phicomm/speaker/player/airplay/ShairportWrapper;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/airplay/ShairportWrapper;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->shairportWrapper:Lcom/phicomm/speaker/player/airplay/ShairportWrapper;

    .line 25
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/AirPortPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " easy cmd: destroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/AirPortPlayer;->stopServer()V

    .line 75
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->shairportWrapper:Lcom/phicomm/speaker/player/airplay/ShairportWrapper;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/airplay/ShairportWrapper;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public pause()Z
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/AirPortPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " easy cmd: pause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public start()Z
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/AirPortPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " easy cmd: start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public startServer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/AirPortPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " easy cmd: startServer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->shairportWrapper:Lcom/phicomm/speaker/player/airplay/ShairportWrapper;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->shairportListener:Lcom/phicomm/speaker/player/model/AirPortPlayer$ShairportListener;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/airplay/ShairportWrapper;->setShairportListener(Lcom/phicomm/speaker/player/airplay/ShairportWrapper$ShairportListener;)V

    .line 57
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->jmdnsWrapper:Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->shairportConfiguration:Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->getHostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->setHostName(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->jmdnsWrapper:Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->shairportConfiguration:Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->getHwAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->setHardwareAddressString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->jmdnsWrapper:Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->shairportConfiguration:Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->registerService(I)V

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->shairportWrapper:Lcom/phicomm/speaker/player/airplay/ShairportWrapper;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->shairportConfiguration:Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/airplay/ShairportWrapper;->startShairport(Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;)V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/AirPortPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Launched RTSP service with config "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->shairportConfiguration:Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public stop()Z
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/AirPortPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " easy cmd: stop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/AirPortPlayer;->stopServer()V

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public stopServer()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/AirPortPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " easy cmd: stopServer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->shairportWrapper:Lcom/phicomm/speaker/player/airplay/ShairportWrapper;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/airplay/ShairportWrapper;->stopShairport()V

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AirPortPlayer;->jmdnsWrapper:Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->tearDown()V

    .line 69
    return-void
.end method
