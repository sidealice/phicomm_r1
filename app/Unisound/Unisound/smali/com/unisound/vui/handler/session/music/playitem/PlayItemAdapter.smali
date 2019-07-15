.class public final Lcom/unisound/vui/handler/session/music/playitem/PlayItemAdapter;
.super Ljava/lang/Object;
.source "PlayItemAdapter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static adapt(Lnluparser/scheme/AudioResult$Music;Ljava/lang/String;Ljava/lang/String;)Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    .locals 1
    .param p0, "audio"    # Lnluparser/scheme/AudioResult$Music;
    .param p1, "album"    # Ljava/lang/String;
    .param p2, "artist"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v0, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;

    invoke-direct {v0, p0, p1, p2}, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;-><init>(Lnluparser/scheme/AudioResult$Music;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static adapt(Lnluparser/scheme/BroadcastResult;)Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    .locals 1
    .param p0, "broadcastResult"    # Lnluparser/scheme/BroadcastResult;

    .prologue
    .line 54
    new-instance v0, Lcom/unisound/vui/handler/session/music/playitem/BroadcastItem;

    invoke-direct {v0, p0}, Lcom/unisound/vui/handler/session/music/playitem/BroadcastItem;-><init>(Lnluparser/scheme/BroadcastResult;)V

    return-object v0
.end method

.method public static adapt(Lnluparser/scheme/MusicResult$Music;)Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    .locals 1
    .param p0, "music"    # Lnluparser/scheme/MusicResult$Music;

    .prologue
    .line 58
    new-instance v0, Lcom/unisound/vui/handler/session/music/playitem/MusicItem;

    invoke-direct {v0, p0}, Lcom/unisound/vui/handler/session/music/playitem/MusicItem;-><init>(Lnluparser/scheme/MusicResult$Music;)V

    return-object v0
.end method

.method public static adapt(Lnluparser/scheme/NewsResult$NewsBean;)Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    .locals 1
    .param p0, "newsBean"    # Lnluparser/scheme/NewsResult$NewsBean;

    .prologue
    .line 51
    new-instance v0, Lcom/unisound/vui/handler/session/music/playitem/NewsItem;

    invoke-direct {v0, p0}, Lcom/unisound/vui/handler/session/music/playitem/NewsItem;-><init>(Lnluparser/scheme/NewsResult$NewsBean;)V

    return-object v0
.end method

.method public static adaptAudio(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "album"    # Ljava/lang/String;
    .param p2, "artist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/AudioResult$Music;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "audios":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/AudioResult$Music;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .local v1, "playItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnluparser/scheme/AudioResult$Music;

    .line 31
    .local v0, "audio":Lnluparser/scheme/AudioResult$Music;
    invoke-static {v0, p1, p2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItemAdapter;->adapt(Lnluparser/scheme/AudioResult$Music;Ljava/lang/String;Ljava/lang/String;)Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    .end local v0    # "audio":Lnluparser/scheme/AudioResult$Music;
    :cond_0
    return-object v1
.end method

.method public static adaptBroadcast(Lnluparser/scheme/BroadcastResult;)Ljava/util/List;
    .locals 2
    .param p0, "broadcastResult"    # Lnluparser/scheme/BroadcastResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/BroadcastResult;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v0, "playItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    invoke-static {p0}, Lcom/unisound/vui/handler/session/music/playitem/PlayItemAdapter;->adapt(Lnluparser/scheme/BroadcastResult;)Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    return-object v0
.end method

.method public static adaptMusic(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/MusicResult$Music;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "musics":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .local v1, "playItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnluparser/scheme/MusicResult$Music;

    .line 22
    .local v0, "audio":Lnluparser/scheme/MusicResult$Music;
    invoke-static {v0}, Lcom/unisound/vui/handler/session/music/playitem/PlayItemAdapter;->adapt(Lnluparser/scheme/MusicResult$Music;)Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    .end local v0    # "audio":Lnluparser/scheme/MusicResult$Music;
    :cond_0
    return-object v1
.end method

.method public static adaptNews(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/NewsResult$NewsBean;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "news":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/NewsResult$NewsBean;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .local v1, "playItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnluparser/scheme/NewsResult$NewsBean;

    .line 39
    .local v0, "newItem":Lnluparser/scheme/NewsResult$NewsBean;
    invoke-static {v0}, Lcom/unisound/vui/handler/session/music/playitem/PlayItemAdapter;->adapt(Lnluparser/scheme/NewsResult$NewsBean;)Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    .end local v0    # "newItem":Lnluparser/scheme/NewsResult$NewsBean;
    :cond_0
    return-object v1
.end method
