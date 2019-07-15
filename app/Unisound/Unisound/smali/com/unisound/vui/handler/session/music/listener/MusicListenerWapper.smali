.class public abstract Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;
.super Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;
.source "MusicListenerWapper.java"

# interfaces
.implements Lcom/unisound/vui/handler/session/music/listener/MusicListener;
.implements Lcom/unisound/vui/handler/session/music/listener/MusicStatusListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fireError(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;->onError(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public fireItemOperateCommand(I)V
    .locals 0
    .param p1, "operate"    # I

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;->onItemOperateCommand(I)V

    .line 46
    return-void
.end method

.method public fireMusicChange()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public fireMusicEnd(Lcom/unisound/vui/handler/session/music/playitem/PlayItem;)V
    .locals 0
    .param p1, "info"    # Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;->onMusicEnd(Lcom/unisound/vui/handler/session/music/playitem/PlayItem;)V

    .line 22
    return-void
.end method

.method public fireMusicListChanged(Ljava/util/List;)V
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
    .line 13
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;->onMusicListChanged(Ljava/util/List;)V

    .line 14
    return-void
.end method

.method public fireMusicPrepare(Lcom/unisound/vui/handler/session/music/playitem/PlayItem;I)V
    .locals 0
    .param p1, "info"    # Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    .param p2, "index"    # I

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;->onMusicPrepare(Lcom/unisound/vui/handler/session/music/playitem/PlayItem;I)V

    .line 26
    return-void
.end method

.method public fireMusicStart(Lcom/unisound/vui/handler/session/music/playitem/PlayItem;I)V
    .locals 0
    .param p1, "info"    # Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    .param p2, "index"    # I

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;->onMusicStart(Lcom/unisound/vui/handler/session/music/playitem/PlayItem;I)V

    .line 18
    return-void
.end method

.method public firePlayModeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;->onPlayModeChanged(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public fireStatusChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;->onStatusChanged(I)V

    .line 34
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 61
    return-void
.end method

.method public onItemOperateCommand(I)V
    .locals 0
    .param p1, "operate"    # I

    .prologue
    .line 71
    return-void
.end method

.method public onMusicEnd(Lcom/unisound/vui/handler/session/music/playitem/PlayItem;)V
    .locals 0
    .param p1, "info"    # Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .prologue
    .line 55
    return-void
.end method

.method public onMusicListChanged(Ljava/util/List;)V
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
    .line 49
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    return-void
.end method

.method public onMusicPrepare(Lcom/unisound/vui/handler/session/music/playitem/PlayItem;I)V
    .locals 0
    .param p1, "info"    # Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    .param p2, "index"    # I

    .prologue
    .line 58
    return-void
.end method

.method public onMusicStart(Lcom/unisound/vui/handler/session/music/playitem/PlayItem;I)V
    .locals 0
    .param p1, "info"    # Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    .param p2, "index"    # I

    .prologue
    .line 52
    return-void
.end method

.method public onPlayModeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 67
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 64
    return-void
.end method
