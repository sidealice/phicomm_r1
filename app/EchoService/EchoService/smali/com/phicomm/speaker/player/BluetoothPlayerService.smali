.class public Lcom/phicomm/speaker/player/BluetoothPlayerService;
.super Landroid/app/Service;
.source "BluetoothPlayerService.java"


# instance fields
.field private mPlayer:Lcom/phicomm/speaker/player/PlayerBinderWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/phicomm/speaker/player/BluetoothPlayerService;->mPlayer:Lcom/phicomm/speaker/player/PlayerBinderWrapper;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->getBinder()Lcom/phicomm/speaker/player/IPlayer$Stub;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Lcom/phicomm/speaker/player/PlayerBinderWrapper;

    new-instance v1, Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    invoke-virtual {p0}, Lcom/phicomm/speaker/player/BluetoothPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/player/PlayerBinderWrapper;-><init>(Lcom/phicomm/speaker/player/model/AbsPlayer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/BluetoothPlayerService;->mPlayer:Lcom/phicomm/speaker/player/PlayerBinderWrapper;

    .line 19
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/player/BluetoothPlayerService;->mPlayer:Lcom/phicomm/speaker/player/PlayerBinderWrapper;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->destroy()V

    .line 29
    return-void
.end method
