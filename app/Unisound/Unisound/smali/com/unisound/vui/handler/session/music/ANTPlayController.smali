.class public Lcom/unisound/vui/handler/session/music/ANTPlayController;
.super Lcom/unisound/vui/handler/session/music/AbstractPlayController;
.source "ANTPlayController.java"


# static fields
.field public static final OPERATE_CANCLE_COLLECTED:I = 0x15

.field public static final OPERATE_COLLECTED:I = 0x14

.field public static final STATE_BUFFERING:I = 0x6

.field public static final STATE_ENDED:I = 0x4

.field public static final STATE_EXIT:I = 0x0

.field public static final STATE_PAUSE:I = 0x2

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_PREPARED:I = 0x5

.field public static final STATE_STOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ANTPlayController"

.field public static final TYPE_AUDIO:Ljava/lang/String; = "audio"

.field public static final TYPE_MUSIC:Ljava/lang/String; = "music"

.field public static final TYPE_NEWS:Ljava/lang/String; = "news"

.field public static final TYPE_NONE:Ljava/lang/String; = "none"

.field private static status:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private musicService:Lcom/unisound/vui/handler/session/music/MusicService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->status:Ljava/util/Map;

    .line 35
    sget-object v0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->status:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "stop"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->status:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pause"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->status:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "playing"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->status:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "end"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->status:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "prepared"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->status:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "buffering"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/unisound/vui/handler/session/music/MusicService;)V
    .locals 0
    .param p1, "musicService"    # Lcom/unisound/vui/handler/session/music/MusicService;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/music/AbstractPlayController;-><init>(Landroid/content/Context;)V

    .line 61
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    .line 62
    return-void
.end method

.method private addMusicListId(Ljava/util/List;)V
    .locals 7
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
    .line 339
    .local p1, "musicList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    const/4 v3, 0x0

    .line 340
    .local v3, "listId":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v0, "emptyIdlist":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 342
    .local v2, "item":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getListId()Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 344
    move-object v3, v1

    goto :goto_0

    .line 346
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 349
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "item":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 350
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 352
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 353
    .local v4, "music":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    invoke-interface {v4, v3}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->setListId(Ljava/lang/String;)V

    goto :goto_1

    .line 355
    .end local v4    # "music":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    :cond_3
    return-void
.end method


# virtual methods
.method public addCollectMusic(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/handler/session/music/MusicService;->addCollectMusic(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public appendPlaylist(IILjava/util/List;)V
    .locals 1
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
    .line 215
    .local p3, "musicList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    invoke-direct {p0, p3}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->addMusicListId(Ljava/util/List;)V

    .line 216
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/unisound/vui/handler/session/music/MusicService;->appendPlaylist(IILjava/util/List;)V

    .line 217
    return-void
.end method

.method public batchDeleteCollectMusic(Ljava/lang/String;)V
    .locals 1
    .param p1, "ids"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/handler/session/music/MusicService;->batchDeleteCollectMusic(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public cancelCollect()V
    .locals 2

    .prologue
    .line 184
    const-string v0, "ANTPlayController"

    const-string v1, "-->>cancelCollect"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unisound/vui/handler/session/music/MusicService;->collectItem(Z)V

    .line 186
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/unisound/vui/handler/session/music/MusicService;->onOperateCommandChange(I)V

    .line 187
    return-void
.end method

.method public collect()V
    .locals 2

    .prologue
    .line 194
    const-string v0, "ANTPlayController"

    const-string v1, "-->>collect"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unisound/vui/handler/session/music/MusicService;->collectItem(Z)V

    .line 196
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/unisound/vui/handler/session/music/MusicService;->onOperateCommandChange(I)V

    .line 197
    return-void
.end method

.method public configMediaPlayerState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 118
    const-string v0, "ANTPlayController"

    const-string v1, "configMediaPlayerState. audioFocus=%b"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->audioFocus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->audioFocus:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->audioFocus:I

    if-ne v0, v5, :cond_2

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    const-string v0, "ANTPlayController"

    const-string v1, "audio focus loss, music is Playing, pause it"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->pause()V

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->playOnFocusGain:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->getPlaybackStatus()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 128
    const-string v0, "ANTPlayController"

    const-string v1, "audio focus gain, music is pausing, continue to play"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->getCurrentPostion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->seekTo(J)V

    .line 130
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/MusicService;->playWhenReady()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->play(Z)V

    .line 131
    iput-boolean v4, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->playOnFocusGain:Z

    goto :goto_0
.end method

.method public deleteCollectMusic(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/handler/session/music/MusicService;->deleteCollectMusic(Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public fastForward(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/handler/session/music/MusicService;->setOffsetTime(I)V

    .line 138
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/MusicService;->fastForward()V

    .line 139
    return-void
.end method

.method public getBufferPercent()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/MusicService;->getBufferPercent()I

    move-result v0

    return v0
.end method

.method public getCurrPlayItem()Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/MusicService;->getCurrentItem()Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPostion()J
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/MusicService;->getMusicPlayer()Lcom/unisound/vui/handler/session/music/CommonPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDevicePlayingType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/MusicService;->getDevicePlayingType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/MusicService;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayItemList()Ljava/util/List;
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
    .line 220
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/MusicService;->getItemList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlayMode()Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/MusicService;->getPlayListMode()Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    move-result-object v0

    return-object v0
.end method

.method public getPlayStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/MusicService;->getPlayStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->getPlayStatus(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayStatus(I)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 44
    sget-object v0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->status:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackStatus()I
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/MusicService;->getPlaybackStatus()I

    move-result v0

    return v0
.end method

.method public isCollected()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/MusicService;->isCollected()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/MusicService;->getMusicPlayer()Lcom/unisound/vui/handler/session/music/CommonPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/MusicService;->isPrepared()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/MusicService;->pause()V

    .line 90
    return-void
.end method

.method public play(Ljava/util/List;I)V
    .locals 1
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
    .line 316
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->addMusicListId(Ljava/util/List;)V

    .line 317
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/vui/handler/session/music/MusicService;->play(Ljava/util/List;I)V

    .line 318
    return-void
.end method

.method public play(Ljava/util/List;III)V
    .locals 1
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
    .line 330
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->addMusicListId(Ljava/util/List;)V

    .line 331
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/unisound/vui/handler/session/music/MusicService;->play(Ljava/util/List;III)V

    .line 332
    return-void
.end method

.method public play(Z)V
    .locals 1
    .param p1, "playWhenReady"    # Z

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->playOnFocusGain:Z

    .line 70
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/MusicService;->play()Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 71
    return-void
.end method

.method public play(ZII)V
    .locals 1
    .param p1, "playWhenReady"    # Z
    .param p2, "currentPage"    # I
    .param p3, "totalPage"    # I

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->playOnFocusGain:Z

    .line 80
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0, p2, p3}, Lcom/unisound/vui/handler/session/music/MusicService;->play(II)Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 81
    return-void
.end method

.method public play(ZLjava/lang/String;)V
    .locals 1
    .param p1, "playWhenReady"    # Z
    .param p2, "asrResult"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->playOnFocusGain:Z

    .line 85
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0, p2}, Lcom/unisound/vui/handler/session/music/MusicService;->play(Ljava/lang/String;)Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 86
    return-void
.end method

.method public playNext()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/MusicService;->playNext()V

    .line 106
    return-void
.end method

.method public playPrev()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/MusicService;->playPrev()V

    .line 102
    return-void
.end method

.method public registerMusicListener(Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;)V
    .locals 1
    .param p1, "lis"    # Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/handler/session/music/MusicService;->registerMusicListener(Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;)V

    .line 229
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/MusicService;->getMusicPlayer()Lcom/unisound/vui/handler/session/music/CommonPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->release()V

    .line 111
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/MusicService;->resume()V

    .line 94
    return-void
.end method

.method public rewind(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/handler/session/music/MusicService;->setOffsetTime(I)V

    .line 143
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/MusicService;->rewind()V

    .line 144
    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "pos"    # J

    .prologue
    .line 114
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/MusicService;->getMusicPlayer()Lcom/unisound/vui/handler/session/music/CommonPlayer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->seekTo(J)V

    .line 115
    return-void
.end method

.method public setBeginIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/handler/session/music/MusicService;->setBeginIndex(I)V

    .line 251
    return-void
.end method

.method public setDevicePlayingType(Ljava/lang/String;)V
    .locals 1
    .param p1, "devicePlayingType"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/handler/session/music/MusicService;->setDevicePlayingType(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public setPlayMode(Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;)V
    .locals 3
    .param p1, "playMode"    # Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    .prologue
    const/4 v2, 0x1

    .line 159
    sget-object v0, Lcom/unisound/vui/handler/session/music/ANTPlayController$1;->$SwitchMap$com$unisound$vui$handler$session$music$PlayController$ItemPlayMode:[I

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 161
    :pswitch_0
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0, v2}, Lcom/unisound/vui/handler/session/music/MusicService;->setListLoop(Z)V

    goto :goto_0

    .line 164
    :pswitch_1
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0, v2}, Lcom/unisound/vui/handler/session/music/MusicService;->setRepeating(Z)V

    goto :goto_0

    .line 167
    :pswitch_2
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0, v2}, Lcom/unisound/vui/handler/session/music/MusicService;->setShuffled(Z)V

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setPlaylist(Ljava/util/List;)V
    .locals 1
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
    .line 209
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->addMusicListId(Ljava/util/List;)V

    .line 210
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/handler/session/music/MusicService;->setPlaylist(Ljava/util/List;)V

    .line 211
    return-void
.end method

.method public setStateListener(Lcom/unisound/ant/device/listener/MusicStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/unisound/ant/device/listener/MusicStatusListener;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/handler/session/music/MusicService;->setStateListener(Lcom/unisound/ant/device/listener/MusicStatusListener;)V

    .line 239
    :cond_0
    return-void
.end method

.method public skipToNext(Z)V
    .locals 1
    .param p1, "playWhenReady"    # Z

    .prologue
    .line 147
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/handler/session/music/MusicService;->skipToNext(Z)V

    .line 148
    return-void
.end method

.method public skipToPrevious(Z)V
    .locals 1
    .param p1, "playWhenReady"    # Z

    .prologue
    .line 151
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/handler/session/music/MusicService;->skipToPrevious(Z)V

    .line 152
    return-void
.end method

.method public skipToQueueItem(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "playWhenReady"    # Z

    .prologue
    .line 155
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/vui/handler/session/music/MusicService;->skipToQueueItem(IZ)V

    .line 156
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/MusicService;->stop()V

    .line 98
    return-void
.end method

.method public switchTo(Ljava/lang/String;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/handler/session/music/MusicService;->switchTo(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public unRegisterMusicListener(Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;)V
    .locals 1
    .param p1, "lis"    # Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/ANTPlayController;->musicService:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/handler/session/music/MusicService;->unRegisterListener(Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;)V

    .line 233
    return-void
.end method
