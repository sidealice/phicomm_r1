.class public Lcom/unisound/vui/handler/session/music/kuwo/KwMusicController;
.super Ljava/lang/Object;
.source "KwMusicController.java"

# interfaces
.implements Lcom/unisound/vui/handler/session/music/impl/IMusicController;


# instance fields
.field private context:Landroid/content/Context;

.field private kwApi:Lcn/kuwo/autosdk/api/KWAPI;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/kuwo/KwMusicController;->context:Landroid/content/Context;

    .line 20
    const-string v0, "auto"

    invoke-static {p1, v0}, Lcn/kuwo/autosdk/api/KWAPI;->createKWAPI(Landroid/content/Context;Ljava/lang/String;)Lcn/kuwo/autosdk/api/KWAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/kuwo/KwMusicController;->kwApi:Lcn/kuwo/autosdk/api/KWAPI;

    .line 21
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/kuwo/KwMusicController;->kwApi:Lcn/kuwo/autosdk/api/KWAPI;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/kuwo/KwMusicController;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/kuwo/autosdk/api/KWAPI;->exitAPP(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/kuwo/KwMusicController;->kwApi:Lcn/kuwo/autosdk/api/KWAPI;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/kuwo/KwMusicController;->context:Landroid/content/Context;

    sget-object v2, Lcn/kuwo/autosdk/api/PlayState;->STATE_PAUSE:Lcn/kuwo/autosdk/api/PlayState;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/autosdk/api/KWAPI;->setPlayState(Landroid/content/Context;Lcn/kuwo/autosdk/api/PlayState;)V

    .line 72
    return-void
.end method

.method public play()V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/kuwo/KwMusicController;->playRandomMusic()V

    .line 68
    return-void
.end method

.method public playNext()V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/kuwo/KwMusicController;->kwApi:Lcn/kuwo/autosdk/api/KWAPI;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/kuwo/KwMusicController;->context:Landroid/content/Context;

    sget-object v2, Lcn/kuwo/autosdk/api/PlayState;->STATE_NEXT:Lcn/kuwo/autosdk/api/PlayState;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/autosdk/api/KWAPI;->setPlayState(Landroid/content/Context;Lcn/kuwo/autosdk/api/PlayState;)V

    .line 38
    return-void
.end method

.method public playPrev()V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/kuwo/KwMusicController;->kwApi:Lcn/kuwo/autosdk/api/KWAPI;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/kuwo/KwMusicController;->context:Landroid/content/Context;

    sget-object v2, Lcn/kuwo/autosdk/api/PlayState;->STATE_PRE:Lcn/kuwo/autosdk/api/PlayState;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/autosdk/api/KWAPI;->setPlayState(Landroid/content/Context;Lcn/kuwo/autosdk/api/PlayState;)V

    .line 42
    return-void
.end method

.method public playRandomMusic()V
    .locals 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/kuwo/KwMusicController;->kwApi:Lcn/kuwo/autosdk/api/KWAPI;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/kuwo/KwMusicController;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/autosdk/api/KWAPI;->startAPP(Landroid/content/Context;Z)V

    .line 25
    return-void
.end method

.method public playSpecifiedMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "song"    # Ljava/lang/String;
    .param p2, "singer"    # Ljava/lang/String;
    .param p3, "album"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/kuwo/KwMusicController;->kwApi:Lcn/kuwo/autosdk/api/KWAPI;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/kuwo/KwMusicController;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcn/kuwo/autosdk/api/KWAPI;->playClientMusics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public playSpecifiedMusic(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/MusicResult$Music;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "musicList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    return-void
.end method

.method public setPlayMode(Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;)V
    .locals 3
    .param p1, "playMode"    # Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    .prologue
    .line 45
    sget-object v0, Lcom/unisound/vui/handler/session/music/kuwo/KwMusicController$1;->$SwitchMap$com$unisound$vui$handler$session$music$kuwo$MusicPlayMode:[I

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 47
    :pswitch_0
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/kuwo/KwMusicController;->kwApi:Lcn/kuwo/autosdk/api/KWAPI;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/kuwo/KwMusicController;->context:Landroid/content/Context;

    sget-object v2, Lcn/kuwo/autosdk/api/PlayMode;->MODE_ALL_CIRCLE:Lcn/kuwo/autosdk/api/PlayMode;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/autosdk/api/KWAPI;->setPlayMode(Landroid/content/Context;Lcn/kuwo/autosdk/api/PlayMode;)V

    goto :goto_0

    .line 50
    :pswitch_1
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/kuwo/KwMusicController;->kwApi:Lcn/kuwo/autosdk/api/KWAPI;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/kuwo/KwMusicController;->context:Landroid/content/Context;

    sget-object v2, Lcn/kuwo/autosdk/api/PlayMode;->MODE_SINGLE_CIRCLE:Lcn/kuwo/autosdk/api/PlayMode;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/autosdk/api/KWAPI;->setPlayMode(Landroid/content/Context;Lcn/kuwo/autosdk/api/PlayMode;)V

    goto :goto_0

    .line 53
    :pswitch_2
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/kuwo/KwMusicController;->kwApi:Lcn/kuwo/autosdk/api/KWAPI;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/kuwo/KwMusicController;->context:Landroid/content/Context;

    sget-object v2, Lcn/kuwo/autosdk/api/PlayMode;->MODE_SINGLE_PLAY:Lcn/kuwo/autosdk/api/PlayMode;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/autosdk/api/KWAPI;->setPlayMode(Landroid/content/Context;Lcn/kuwo/autosdk/api/PlayMode;)V

    goto :goto_0

    .line 56
    :pswitch_3
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/kuwo/KwMusicController;->kwApi:Lcn/kuwo/autosdk/api/KWAPI;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/kuwo/KwMusicController;->context:Landroid/content/Context;

    sget-object v2, Lcn/kuwo/autosdk/api/PlayMode;->MODE_ALL_ORDER:Lcn/kuwo/autosdk/api/PlayMode;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/autosdk/api/KWAPI;->setPlayMode(Landroid/content/Context;Lcn/kuwo/autosdk/api/PlayMode;)V

    goto :goto_0

    .line 59
    :pswitch_4
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/kuwo/KwMusicController;->kwApi:Lcn/kuwo/autosdk/api/KWAPI;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/kuwo/KwMusicController;->context:Landroid/content/Context;

    sget-object v2, Lcn/kuwo/autosdk/api/PlayMode;->MODE_ALL_RANDOM:Lcn/kuwo/autosdk/api/PlayMode;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/autosdk/api/KWAPI;->setPlayMode(Landroid/content/Context;Lcn/kuwo/autosdk/api/PlayMode;)V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
