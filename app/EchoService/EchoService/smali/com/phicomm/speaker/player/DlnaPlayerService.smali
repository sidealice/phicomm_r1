.class public Lcom/phicomm/speaker/player/DlnaPlayerService;
.super Landroid/app/Service;
.source "DlnaPlayerService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPlayer:Lcom/phicomm/speaker/player/PlayerBinderWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/phicomm/speaker/player/DlnaPlayerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/DlnaPlayerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/DlnaPlayerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onBind"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/phicomm/speaker/player/DlnaPlayerService;->mPlayer:Lcom/phicomm/speaker/player/PlayerBinderWrapper;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->getBinder()Lcom/phicomm/speaker/player/IPlayer$Stub;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/DlnaPlayerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onCreate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    new-instance v0, Lcom/phicomm/speaker/player/PlayerBinderWrapper;

    new-instance v1, Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    invoke-virtual {p0}, Lcom/phicomm/speaker/player/DlnaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/player/PlayerBinderWrapper;-><init>(Lcom/phicomm/speaker/player/model/AbsPlayer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/DlnaPlayerService;->mPlayer:Lcom/phicomm/speaker/player/PlayerBinderWrapper;

    .line 24
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/DlnaPlayerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onDestroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/phicomm/speaker/player/DlnaPlayerService;->mPlayer:Lcom/phicomm/speaker/player/PlayerBinderWrapper;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->destroy()V

    .line 36
    return-void
.end method
