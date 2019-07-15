.class public Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;
.super Landroid/app/Service;
.source "MemoRingingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService$LocalBinder;
    }
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field private final mBinder:Landroid/os/IBinder;

.field private mRingPlayer:Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "memolog-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;->TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService$LocalBinder;-><init>(Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;)V

    iput-object v0, p0, Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;->mBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;->TAG:Ljava/lang/String;

    const-string v1, "MemoRingingService onBind"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 27
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;->TAG:Ljava/lang/String;

    const-string v1, "MemoRingingService created!"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;

    invoke-direct {v0, p0}, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;->mRingPlayer:Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;

    .line 29
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 43
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate destroyed!"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;->TAG:Ljava/lang/String;

    const-string v1, "MemoRingingService onUnbind"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startPlayingRing(ZLjava/lang/String;)V
    .locals 5
    .param p1, "isLooping"    # Z
    .param p2, "ringName"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v2, p0, Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPlayingRing, ringName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v2, "happiness"

    invoke-static {p2, v2}, Lcom/unisound/vui/handler/session/memo/utils/RingingUtils;->getRingingFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 55
    .local v0, "ringing":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 56
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;->mRingPlayer:Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;

    invoke-virtual {v2, v1, p1}, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->play(Landroid/net/Uri;Z)V

    .line 57
    return-void
.end method

.method public stopPlayRing()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;->mRingPlayer:Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;->mRingPlayer:Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->stop()V

    .line 50
    :cond_0
    return-void
.end method
