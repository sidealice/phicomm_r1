.class public Lcom/phicomm/speaker/device/custom/music/PhicommExternalPlayer;
.super Ljava/lang/Object;
.source "PhicommExternalPlayer.java"

# interfaces
.implements Lcom/unisound/vui/handler/session/music/CommonPlayer;


# instance fields
.field private final mMessageManager:Landroid/os/MessageDispatchManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/phicomm/speaker/device/utils/PhicommMessageManager;->messageCenter(Landroid/content/Context;)Landroid/os/MessageDispatchManager;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommExternalPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    .line 23
    return-void
.end method


# virtual methods
.method public addCollectMusic(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 131
    return-void
.end method

.method public appendPlayList(IILjava/util/List;)V
    .locals 0
    .param p1, "page"    # I
    .param p2, "totalPage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p3, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    return-void
.end method

.method public batchDeleteCollectMusic(Ljava/lang/String;)V
    .locals 0
    .param p1, "ids"    # Ljava/lang/String;

    .prologue
    .line 139
    return-void
.end method

.method public collect()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public deleteCollectMusic(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 135
    return-void
.end method

.method public getBufferPercent()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentItem()Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPlayMode()Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 94
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDevicePlayingType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 90
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayStatus()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommExternalPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    invoke-static {v0}, Lcom/phicomm/speaker/device/utils/PhicommPlayerUtils;->pause(Landroid/os/MessageDispatchManager;)V

    .line 51
    return-void
.end method

.method public play()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public play(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 127
    return-void
.end method

.method public play(II)V
    .locals 0
    .param p1, "currentPage"    # I
    .param p2, "totalPage"    # I

    .prologue
    .line 35
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 0
    .param p1, "asrResult"    # Ljava/lang/String;

    .prologue
    .line 39
    return-void
.end method

.method public play(Ljava/util/List;I)V
    .locals 0
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    return-void
.end method

.method public play(Ljava/util/List;III)V
    .locals 0
    .param p2, "index"    # I
    .param p3, "currentPage"    # I
    .param p4, "totalPage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    return-void
.end method

.method public playNext()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommExternalPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    invoke-static {v0}, Lcom/phicomm/speaker/device/utils/PhicommPlayerUtils;->playNext(Landroid/os/MessageDispatchManager;)V

    .line 67
    return-void
.end method

.method public playPrev()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommExternalPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    invoke-static {v0}, Lcom/phicomm/speaker/device/utils/PhicommPlayerUtils;->playPrev(Landroid/os/MessageDispatchManager;)V

    .line 63
    return-void
.end method

.method public registerCallback(Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;

    .prologue
    .line 119
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommExternalPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    invoke-static {v0}, Lcom/phicomm/speaker/device/utils/PhicommPlayerUtils;->resume(Landroid/os/MessageDispatchManager;)V

    .line 55
    return-void
.end method

.method public seekTo(J)V
    .locals 0
    .param p1, "position"    # J

    .prologue
    .line 83
    return-void
.end method

.method public setCurrentPlayMode(Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;)V
    .locals 0
    .param p1, "currentPlayMode"    # Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    .prologue
    .line 75
    return-void
.end method

.method public setDevicePlayingType(Ljava/lang/String;)V
    .locals 0
    .param p1, "devicePlayingType"    # Ljava/lang/String;

    .prologue
    .line 155
    return-void
.end method

.method public setPlayList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    return-void
.end method

.method public setRenderer(Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer;)V
    .locals 0
    .param p1, "renderer"    # Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer;

    .prologue
    .line 123
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommExternalPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    invoke-static {v0}, Lcom/phicomm/speaker/device/utils/PhicommPlayerUtils;->stop(Landroid/os/MessageDispatchManager;)V

    .line 59
    return-void
.end method
