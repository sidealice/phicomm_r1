.class public Lcom/unisound/vui/handler/session/music/MusicService;
.super Landroid/app/Service;
.source "MusicService.java"

# interfaces
.implements Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;
.implements Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/handler/session/music/MusicService$MusicBinder;
    }
.end annotation


# static fields
.field private static final DEFAULTTIME:I = 0x2710

.field static final MUSIC_LIST_LOOP:B = 0x1t

.field public static final MUSIC_LIST_LOOP_NAME:Ljava/lang/String; = "listLoop"

.field static final MUSIC_LIST_ORDER:B = 0x8t

.field public static final MUSIC_LIST_ORDER_NAME:Ljava/lang/String; = "listOrder"

.field static final MUSIC_LIST_SHUFFLED:B = 0x4t

.field public static final MUSIC_LIST_SHUFFLED_NAME:Ljava/lang/String; = "listShuffled"

.field static final MUSIC_SINGLE_LOOP:B = 0x2t

.field public static final MUSIC_SINGLE_LOOP_NAME:Ljava/lang/String; = "singleLoop"

.field private static final TAG:Ljava/lang/String; = "MusicService"

.field private static playModes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentItemType:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

.field private currentPosition:I

.field private flags:B

.field private mMusicStatusListener:Lcom/unisound/ant/device/listener/MusicStatusListener;

.field private musicListenerIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;",
            ">;"
        }
    .end annotation
.end field

.field private musicListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;",
            ">;"
        }
    .end annotation
.end field

.field private musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

.field private offsetTime:I

.field private playBackState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unisound/vui/handler/session/music/MusicService;->playModes:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->flags:B

    return-void
.end method

.method static synthetic access$000(Lcom/unisound/vui/handler/session/music/MusicService;)Lcom/unisound/vui/handler/session/music/CommonPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/handler/session/music/MusicService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/unisound/vui/handler/session/music/MusicService;Lcom/unisound/vui/handler/session/music/CommonPlayer;)Lcom/unisound/vui/handler/session/music/CommonPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/unisound/vui/handler/session/music/MusicService;
    .param p1, "x1"    # Lcom/unisound/vui/handler/session/music/CommonPlayer;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    return-object p1
.end method

.method private findIndexById(Ljava/lang/String;)I
    .locals 3
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/MusicService;->getItemList()Ljava/util/List;

    move-result-object v1

    .line 386
    .local v1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 387
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 386
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 292
    iget-byte v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->flags:B

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onMusicChanged(ZZ)V
    .locals 3
    .param p1, "isNext"    # Z
    .param p2, "playWhenReady"    # Z

    .prologue
    .line 317
    iget-byte v1, p0, Lcom/unisound/vui/handler/session/music/MusicService;->flags:B

    packed-switch v1, :pswitch_data_0

    .line 329
    :pswitch_0
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/MusicService;->stop()V

    .line 330
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/MusicService;->play()Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 332
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;

    .line 333
    .local v0, "lister":Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;
    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;->fireMusicChange()V

    goto :goto_0

    .line 335
    .end local v0    # "lister":Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;
    :cond_0
    return-void

    .line 317
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setFlag(IZ)V
    .locals 3
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    .prologue
    .line 303
    iget-byte v1, p0, Lcom/unisound/vui/handler/session/music/MusicService;->flags:B

    and-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/unisound/vui/handler/session/music/MusicService;->flags:B

    .line 304
    if-eqz p2, :cond_0

    .line 305
    iget-byte v1, p0, Lcom/unisound/vui/handler/session/music/MusicService;->flags:B

    or-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/unisound/vui/handler/session/music/MusicService;->flags:B

    .line 309
    :goto_0
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListenerIterator:Ljava/util/Iterator;

    .line 310
    :goto_1
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListenerIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    iget-byte v1, p0, Lcom/unisound/vui/handler/session/music/MusicService;->flags:B

    invoke-virtual {p0, v1}, Lcom/unisound/vui/handler/session/music/MusicService;->getPlayMode(B)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "modeString":Ljava/lang/String;
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListenerIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;

    invoke-virtual {v1, v0}, Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;->firePlayModeChanged(Ljava/lang/String;)V

    goto :goto_1

    .line 307
    .end local v0    # "modeString":Ljava/lang/String;
    :cond_0
    iget-byte v1, p0, Lcom/unisound/vui/handler/session/music/MusicService;->flags:B

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/unisound/vui/handler/session/music/MusicService;->flags:B

    goto :goto_0

    .line 314
    :cond_1
    return-void
.end method


# virtual methods
.method public addCollectMusic(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0, p1}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->addCollectMusic(Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method appendPlaylist(IILjava/util/List;)V
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
    .line 128
    .local p3, "playItemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0, p1, p2, p3}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->appendPlayList(IILjava/util/List;)V

    .line 129
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListenerIterator:Ljava/util/Iterator;

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListenerIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListenerIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;

    invoke-virtual {v0, p3}, Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;->fireMusicListChanged(Ljava/util/List;)V

    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method

.method public batchDeleteCollectMusic(Ljava/lang/String;)V
    .locals 1
    .param p1, "ids"    # Ljava/lang/String;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0, p1}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->batchDeleteCollectMusic(Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method collectItem(Z)V
    .locals 1
    .param p1, "isCollected"    # Z

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/MusicService;->getCurrentItem()Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    move-result-object v0

    .line 182
    .local v0, "currentItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0, p1}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->setCollected(Z)V

    .line 185
    :cond_0
    return-void
.end method

.method public deleteCollectMusic(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0, p1}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->deleteCollectMusic(Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method fastForward()V
    .locals 6

    .prologue
    .line 144
    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->getCurrentPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long v0, v2, v4

    .line 145
    .local v0, "fastForwardTime":J
    iget v2, p0, Lcom/unisound/vui/handler/session/music/MusicService;->offsetTime:I

    if-eqz v2, :cond_0

    .line 146
    iget v2, p0, Lcom/unisound/vui/handler/session/music/MusicService;->offsetTime:I

    int-to-long v0, v2

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v2, v0, v1}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->seekTo(J)V

    .line 149
    const/4 v2, 0x0

    iput v2, p0, Lcom/unisound/vui/handler/session/music/MusicService;->offsetTime:I

    .line 150
    return-void
.end method

.method getBufferPercent()I
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->getBufferPercent()I

    move-result v0

    return v0
.end method

.method getCurrentItem()Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->getCurrentItem()Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePlayingType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->getDevicePlayingType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDuration()J
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method getItemList()Ljava/util/List;
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
    .line 241
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->getItemList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getMusicPlayer()Lcom/unisound/vui/handler/session/music/CommonPlayer;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    return-object v0
.end method

.method public getPlayListMode()Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->getCurrentPlayMode()Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    move-result-object v0

    return-object v0
.end method

.method getPlayMode()B
    .locals 1

    .prologue
    .line 269
    iget-byte v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->flags:B

    return v0
.end method

.method public getPlayMode(B)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # B

    .prologue
    .line 273
    sget-object v0, Lcom/unisound/vui/handler/session/music/MusicService;->playModes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPlayStatus()I
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->getPlayStatus()I

    move-result v0

    return v0
.end method

.method getPlaybackStatus()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->playBackState:I

    return v0
.end method

.method public getRendererType()Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer$RendererType;
    .locals 3

    .prologue
    .line 479
    sget-object v1, Lcom/unisound/vui/handler/session/music/MusicService$1;->$SwitchMap$com$unisound$vui$handler$session$music$playitem$PlayItem$ItemType:[I

    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/MusicService;->currentItemType:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    invoke-virtual {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 490
    sget-object v0, Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer$RendererType;->TYPE_MUSIC:Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer$RendererType;

    .line 493
    .local v0, "rendererType":Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer$RendererType;
    :goto_0
    return-object v0

    .line 481
    .end local v0    # "rendererType":Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer$RendererType;
    :pswitch_0
    sget-object v0, Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer$RendererType;->TYPE_MUSIC:Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer$RendererType;

    .line 482
    .restart local v0    # "rendererType":Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer$RendererType;
    goto :goto_0

    .line 484
    .end local v0    # "rendererType":Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer$RendererType;
    :pswitch_1
    sget-object v0, Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer$RendererType;->TYPE_AUDIO:Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer$RendererType;

    .line 485
    .restart local v0    # "rendererType":Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer$RendererType;
    goto :goto_0

    .line 487
    .end local v0    # "rendererType":Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer$RendererType;
    :pswitch_2
    sget-object v0, Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer$RendererType;->TYPE_RADIO:Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer$RendererType;

    .line 488
    .restart local v0    # "rendererType":Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer$RendererType;
    goto :goto_0

    .line 479
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method isCollected()Z
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/MusicService;->getCurrentItem()Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    move-result-object v0

    .line 189
    .local v0, "currentItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->isCollected()Z

    move-result v1

    .line 192
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isListLoop()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 224
    const-string v0, "MusicService"

    const-string v1, "isListLoop %b"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, v5}, Lcom/unisound/vui/handler/session/music/MusicService;->getFlag(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    invoke-direct {p0, v5}, Lcom/unisound/vui/handler/session/music/MusicService;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method isListOrder()Z
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 235
    const-string v0, "MusicService"

    const-string v1, "isListOrder %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, v5}, Lcom/unisound/vui/handler/session/music/MusicService;->getFlag(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    invoke-direct {p0, v5}, Lcom/unisound/vui/handler/session/music/MusicService;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method isPrepared()Z
    .locals 3

    .prologue
    .line 70
    const-string v0, "MusicService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>isPrepared "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->isPrepared()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->isPrepared()Z

    move-result v0

    return v0
.end method

.method isRepeating()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 202
    const-string v0, "MusicService"

    const-string v1, "getRepeating to %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, v5}, Lcom/unisound/vui/handler/session/music/MusicService;->getFlag(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    invoke-direct {p0, v5}, Lcom/unisound/vui/handler/session/music/MusicService;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method isShuffled()Z
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 213
    const-string v0, "MusicService"

    const-string v1, "isShuffled  %b "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, v5}, Lcom/unisound/vui/handler/session/music/MusicService;->getFlag(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    invoke-direct {p0, v5}, Lcom/unisound/vui/handler/session/music/MusicService;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 338
    new-instance v0, Lcom/unisound/vui/handler/session/music/MusicService$MusicBinder;

    invoke-direct {v0, p0}, Lcom/unisound/vui/handler/session/music/MusicService$MusicBinder;-><init>(Lcom/unisound/vui/handler/session/music/MusicService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 53
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 54
    sget-object v0, Lcom/unisound/vui/handler/session/music/MusicService;->playModes:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "listLoop"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/unisound/vui/handler/session/music/MusicService;->playModes:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "singleLoop"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/unisound/vui/handler/session/music/MusicService;->playModes:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "listShuffled"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/unisound/vui/handler/session/music/MusicService;->playModes:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "listOrder"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {}, Lcom/unisound/ant/device/DeviceCenterHandler;->getDeviceCenterMgr()Lcom/unisound/ant/device/DeviceCenterHandler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/music/MusicService;->setStateListener(Lcom/unisound/ant/device/listener/MusicStatusListener;)V

    .line 59
    return-void
.end method

.method public onOperateCommandChange(I)V
    .locals 5
    .param p1, "operate"    # I

    .prologue
    .line 364
    const-string v0, "MusicService"

    const-string v1, "onOperateCommandChange : %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListenerIterator:Ljava/util/Iterator;

    .line 366
    :goto_0
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListenerIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListenerIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;->fireItemOperateCommand(I)V

    goto :goto_0

    .line 369
    :cond_0
    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 342
    const-string v1, "MusicService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlayStateChanged state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iput p1, p0, Lcom/unisound/vui/handler/session/music/MusicService;->playBackState:I

    .line 344
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/MusicService;->mMusicStatusListener:Lcom/unisound/ant/device/listener/MusicStatusListener;

    invoke-interface {v1, p1}, Lcom/unisound/ant/device/listener/MusicStatusListener;->onMusicStatusChanged(I)V

    .line 345
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListenerIterator:Ljava/util/Iterator;

    .line 346
    :goto_0
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListenerIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListenerIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;

    .line 348
    .local v0, "musicListener":Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;
    invoke-virtual {v0, p1}, Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;->fireStatusChanged(I)V

    goto :goto_0

    .line 350
    .end local v0    # "musicListener":Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;
    :cond_0
    return-void
.end method

.method public onPlayerError(Ljava/lang/String;)V
    .locals 4
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 353
    const-string v0, "MusicService"

    const-string v1, "onPlayerError : %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListenerIterator:Ljava/util/Iterator;

    .line 355
    :goto_0
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListenerIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListenerIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;->fireError(Ljava/lang/String;)V

    goto :goto_0

    .line 358
    :cond_0
    return-void
.end method

.method pause()V
    .locals 2

    .prologue
    .line 90
    const-string v0, "MusicService"

    const-string v1, "--->>pause"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->pause()V

    .line 92
    return-void
.end method

.method play()Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->play()V

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method play(II)Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    .locals 1
    .param p1, "currentPage"    # I
    .param p2, "totalPage"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0, p1, p2}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->play(II)V

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method play(Ljava/lang/String;)Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    .locals 1
    .param p1, "asrResult"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0, p1}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->play(Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x0

    return-object v0
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
    .line 444
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0, p1, p2}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->play(Ljava/util/List;I)V

    .line 445
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
    .line 454
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->play(Ljava/util/List;III)V

    .line 455
    return-void
.end method

.method playNext()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "MusicService"

    const-string v1, "--->>stop"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->playNext()V

    .line 110
    return-void
.end method

.method playPrev()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->playPrev()V

    .line 105
    return-void
.end method

.method playWhenReady()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method registerMusicListener(Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;)V
    .locals 1
    .param p1, "lis"    # Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;

    .prologue
    .line 249
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_0
    return-void
.end method

.method resume()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->resume()V

    .line 96
    return-void
.end method

.method rewind()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 168
    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->getCurrentPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    sub-long v0, v2, v4

    .line 169
    .local v0, "toPostion":J
    iget v2, p0, Lcom/unisound/vui/handler/session/music/MusicService;->offsetTime:I

    if-eqz v2, :cond_0

    .line 170
    iget v2, p0, Lcom/unisound/vui/handler/session/music/MusicService;->offsetTime:I

    int-to-long v0, v2

    .line 172
    :cond_0
    cmp-long v2, v0, v6

    if-gez v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v2, v6, v7}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->seekTo(J)V

    .line 177
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/unisound/vui/handler/session/music/MusicService;->offsetTime:I

    .line 178
    return-void

    .line 175
    :cond_1
    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v2, v0, v1}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->seekTo(J)V

    goto :goto_0
.end method

.method setBeginIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 277
    iput p1, p0, Lcom/unisound/vui/handler/session/music/MusicService;->currentPosition:I

    .line 278
    return-void
.end method

.method public setDevicePlayingType(Ljava/lang/String;)V
    .locals 1
    .param p1, "devicePlayingType"    # Ljava/lang/String;

    .prologue
    .line 458
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0, p1}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->setDevicePlayingType(Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method setListLoop(Z)V
    .locals 6
    .param p1, "listLoop"    # Z

    .prologue
    const/4 v5, 0x1

    .line 218
    const-string v0, "MusicService"

    const-string v1, "setListLoop to %b"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    invoke-direct {p0, v5, p1}, Lcom/unisound/vui/handler/session/music/MusicService;->setFlag(IZ)V

    .line 220
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    sget-object v1, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->MODE_ALL_CIRCLE:Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    invoke-interface {v0, v1}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->setCurrentPlayMode(Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;)V

    .line 221
    return-void
.end method

.method setListOrder(Z)V
    .locals 5
    .param p1, "listOrder"    # Z

    .prologue
    .line 229
    const-string v0, "MusicService"

    const-string v1, "setListOrder ot %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/unisound/vui/handler/session/music/MusicService;->setFlag(IZ)V

    .line 231
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    sget-object v1, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->MODE_ALL_ORDER:Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    invoke-interface {v0, v1}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->setCurrentPlayMode(Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;)V

    .line 232
    return-void
.end method

.method setOffsetTime(I)V
    .locals 0
    .param p1, "offsetTime"    # I

    .prologue
    .line 281
    iput p1, p0, Lcom/unisound/vui/handler/session/music/MusicService;->offsetTime:I

    .line 282
    return-void
.end method

.method setPlaylist(Ljava/util/List;)V
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
    .line 113
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    if-eqz p1, :cond_0

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->currentPosition:I

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0, p1}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->setPlayList(Ljava/util/List;)V

    .line 117
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListenerIterator:Ljava/util/Iterator;

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListenerIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListenerIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;->fireMusicListChanged(Ljava/util/List;)V

    goto :goto_0

    .line 121
    :cond_1
    return-void
.end method

.method setRepeating(Z)V
    .locals 5
    .param p1, "repeating"    # Z

    .prologue
    .line 196
    const-string v0, "MusicService"

    const-string v1, "setRepeating to %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/unisound/vui/handler/session/music/MusicService;->setFlag(IZ)V

    .line 198
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    sget-object v1, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->MODE_SINGLE_CIRCLE:Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    invoke-interface {v0, v1}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->setCurrentPlayMode(Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;)V

    .line 199
    return-void
.end method

.method setShuffled(Z)V
    .locals 5
    .param p1, "shuffled"    # Z

    .prologue
    .line 207
    const-string v0, "MusicService"

    const-string v1, "setShuffled from %b to %b "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/MusicService;->isShuffled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/unisound/vui/handler/session/music/MusicService;->setFlag(IZ)V

    .line 209
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    sget-object v1, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->MODE_ALL_RANDOM:Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    invoke-interface {v0, v1}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->setCurrentPlayMode(Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;)V

    .line 210
    return-void
.end method

.method public setStateListener(Lcom/unisound/ant/device/listener/MusicStatusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/unisound/ant/device/listener/MusicStatusListener;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/MusicService;->mMusicStatusListener:Lcom/unisound/ant/device/listener/MusicStatusListener;

    .line 63
    return-void
.end method

.method skipToNext(Z)V
    .locals 5
    .param p1, "playWhenReady"    # Z

    .prologue
    const/4 v2, 0x1

    .line 153
    invoke-direct {p0, v2, p1}, Lcom/unisound/vui/handler/session/music/MusicService;->onMusicChanged(ZZ)V

    .line 154
    const-string v0, "MusicService"

    const-string v1, "skipToNext musicIndex = %d "

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/unisound/vui/handler/session/music/MusicService;->currentPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method skipToPrevious(Z)V
    .locals 5
    .param p1, "playWhenReady"    # Z

    .prologue
    const/4 v4, 0x0

    .line 158
    invoke-direct {p0, v4, p1}, Lcom/unisound/vui/handler/session/music/MusicService;->onMusicChanged(ZZ)V

    .line 159
    const-string v0, "MusicService"

    const-string v1, "skipToPrevious musicIndex = %d "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/unisound/vui/handler/session/music/MusicService;->currentPosition:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method skipToQueueItem(IZ)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "playWhenReady"    # Z

    .prologue
    .line 163
    const-string v0, "MusicService"

    const-string v1, "skipToQueueItem musicIndex = %d "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/MusicService;->play()Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 165
    return-void
.end method

.method stop()V
    .locals 2

    .prologue
    .line 99
    const-string v0, "MusicService"

    const-string v1, "--->>stop"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->stop()V

    .line 101
    return-void
.end method

.method public switchTo(Ljava/lang/String;)V
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/music/MusicService;->findIndexById(Ljava/lang/String;)I

    move-result v0

    .line 376
    .local v0, "index":I
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v1, v0}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->play(I)V

    .line 377
    return-void
.end method

.method unRegisterListener(Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;)V
    .locals 1
    .param p1, "lis"    # Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService;->musicListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 258
    :cond_0
    return-void
.end method
