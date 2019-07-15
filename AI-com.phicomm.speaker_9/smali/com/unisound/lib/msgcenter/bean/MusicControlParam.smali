.class public Lcom/unisound/lib/msgcenter/bean/MusicControlParam;
.super Lcom/unisound/lib/msgcenter/bean/BaseInfo;
.source "MusicControlParam.java"


# static fields
.field public static final CONTROL_CANCEL_COLLECT:Ljava/lang/String; = "cancelCollect"

.field public static final CONTROL_CHANGE_ATTRIBUTE:Ljava/lang/String; = "changeAttribute"

.field public static final CONTROL_CHANGE_MODE:Ljava/lang/String; = "changeMode"

.field public static final CONTROL_CHANGE_VOLUME:Ljava/lang/String; = "changeVolume"

.field public static final CONTROL_COLLECT:Ljava/lang/String; = "collect"

.field public static final CONTROL_EXIT:Ljava/lang/String; = "exit"

.field public static final CONTROL_NEXT:Ljava/lang/String; = "next"

.field public static final CONTROL_PAUSE:Ljava/lang/String; = "pause"

.field public static final CONTROL_PLAY:Ljava/lang/String; = "play"

.field public static final CONTROL_PREV:Ljava/lang/String; = "prev"

.field public static final CONTROL_SWITCH:Ljava/lang/String; = "switch"

.field public static final CONTROL_TO_COLLECTION_LIST:Ljava/lang/String; = "toCollectionList"

.field public static final CONTROL_TO_HOT_MUSIC:Ljava/lang/String; = "toHotMusicList"

.field public static final CONTROL_TO_HOT_SINGER_MUSIC:Ljava/lang/String; = "toHotSingerMusicList"

.field public static final CONTROL_TO_MUSIC_LIST:Ljava/lang/String; = "toAppAddMusicList"

.field public static final CONTROL_TO_RECOMMEND_LIST:Ljava/lang/String; = "toRecommendList"

.field public static final MODE_LIST_LOOP:Ljava/lang/String; = "listLoop"

.field public static final MODE_LIST_ORDER:Ljava/lang/String; = "listOrder"

.field public static final MODE_LIST_SHURFFLED:Ljava/lang/String; = "listShuffled"

.field public static final MODE_SINGLE_LOOP:Ljava/lang/String; = "singleLoop"


# instance fields
.field private albumId:Ljava/lang/String;

.field private controlCmd:Ljava/lang/String;

.field private isCollected:Z

.field private isCollectedList:Z

.field private itemId:Ljava/lang/String;

.field private pageNo:Ljava/lang/String;

.field private pageSize:Ljava/lang/String;

.field private playMode:Ljava/lang/String;

.field private playState:Ljava/lang/String;

.field private timeAsc:Ljava/lang/String;

.field private volume:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/unisound/lib/msgcenter/bean/BaseInfo;-><init>()V

    const-string v0, ""

    .line 89
    iput-object v0, p0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->playMode:Ljava/lang/String;

    const-string v0, ""

    .line 90
    iput-object v0, p0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->controlCmd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getControlCmd()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->controlCmd:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNo()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->pageNo:Ljava/lang/String;

    return-object v0
.end method

.method public getPageSize()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->pageSize:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayMode()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->playMode:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayState()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->playState:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeAsc()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->timeAsc:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .line 268
    iget v0, p0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->volume:I

    return v0
.end method

.method public isCollected()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->isCollected:Z

    return v0
.end method

.method public isCollectedList()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->isCollectedList:Z

    return v0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->albumId:Ljava/lang/String;

    return-void
.end method

.method public setCollected(Z)V
    .locals 0

    .line 185
    iput-boolean p1, p0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->isCollected:Z

    return-void
.end method

.method public setCollectedList(Z)V
    .locals 0

    .line 205
    iput-boolean p1, p0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->isCollectedList:Z

    return-void
.end method

.method public setControlCmd(Ljava/lang/String;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->controlCmd:Ljava/lang/String;

    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->itemId:Ljava/lang/String;

    return-void
.end method

.method public setPageNo(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->pageNo:Ljava/lang/String;

    return-void
.end method

.method public setPageSize(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->pageSize:Ljava/lang/String;

    return-void
.end method

.method public setPlayMode(Ljava/lang/String;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->playMode:Ljava/lang/String;

    return-void
.end method

.method public setPlayState(Ljava/lang/String;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->playState:Ljava/lang/String;

    return-void
.end method

.method public setTimeAsc(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->timeAsc:Ljava/lang/String;

    return-void
.end method

.method public setVolume(I)V
    .locals 0

    .line 277
    iput p1, p0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->volume:I

    return-void
.end method
