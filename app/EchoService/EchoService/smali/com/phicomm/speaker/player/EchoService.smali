.class public Lcom/phicomm/speaker/player/EchoService;
.super Landroid/app/Service;
.source "EchoService.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

.field private mMsgHandler:Lcom/phicomm/speaker/player/MsgHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 13
    const-string v0, "EchoService"

    iput-object v0, p0, Lcom/phicomm/speaker/player/EchoService;->TAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/player/EchoService;)Lcom/phicomm/speaker/player/model/EasyPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/EchoService;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoService;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/player/EchoService;)Lcom/phicomm/speaker/player/MsgHandler;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/EchoService;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoService;->mMsgHandler:Lcom/phicomm/speaker/player/MsgHandler;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 24
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APP Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/phicomm/speaker/player/EchoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/util/Utils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/EchoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->getInstance(Landroid/content/Context;)Lcom/phicomm/speaker/player/model/EasyPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/EchoService;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

    .line 28
    new-instance v0, Lcom/phicomm/speaker/player/MsgHandler;

    invoke-virtual {p0}, Lcom/phicomm/speaker/player/EchoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/EchoService;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/player/MsgHandler;-><init>(Landroid/content/Context;Lcom/phicomm/speaker/player/model/EasyPlayer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/EchoService;->mMsgHandler:Lcom/phicomm/speaker/player/MsgHandler;

    .line 29
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/player/EchoService$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/EchoService$1;-><init>(Lcom/phicomm/speaker/player/EchoService;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 37
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 47
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoService;->mMsgHandler:Lcom/phicomm/speaker/player/MsgHandler;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/MsgHandler;->stop()V

    .line 48
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoService;->mEasyPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->destroy()V

    .line 49
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/EchoExecutor;->shutdown()V

    .line 50
    return-void
.end method
