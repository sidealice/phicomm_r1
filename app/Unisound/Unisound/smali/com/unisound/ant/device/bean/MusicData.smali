.class public Lcom/unisound/ant/device/bean/MusicData;
.super Lcom/unisound/ant/device/bean/Parameter;
.source "MusicData.java"


# static fields
.field public static final CMD_CANCEL_COLLECT:Ljava/lang/String; = "cancelCollect"

.field public static final CMD_CHANGE_PLAY_MODE:Ljava/lang/String; = "changeMode"

.field public static final CMD_CHANGE_VOLUME:Ljava/lang/String; = "changeVolume"

.field public static final CMD_COLLECT:Ljava/lang/String; = "collect"

.field public static final CMD_EXIT:Ljava/lang/String; = "exit"

.field public static final CMD_PAUSE:Ljava/lang/String; = "pause"

.field public static final CMD_PLAY:Ljava/lang/String; = "play"

.field public static final CMD_STOP:Ljava/lang/String; = "stop"

.field public static final PLAY_MODE_LIST_ORDER:Ljava/lang/String; = "listOrder"

.field public static final PLAY_MODE_LOOP_LIST:Ljava/lang/String; = "listLoop"

.field public static final PLAY_MODE_LOOP_SINGLE:Ljava/lang/String; = "singleLoop"

.field public static final PLAY_MODE_RANDOM:Ljava/lang/String; = "listShuffled"

.field public static final PLAY_STATUS_BUFFERING:Ljava/lang/String; = "buffering"

.field public static final PLAY_STATUS_END:Ljava/lang/String; = "end"

.field public static final PLAY_STATUS_PAUSE:Ljava/lang/String; = "pause"

.field public static final PLAY_STATUS_PLAYING:Ljava/lang/String; = "playing"

.field public static final PLAY_STATUS_PREPARED:Ljava/lang/String; = "prepared"

.field public static final PLAY_STATUS_STOP:Ljava/lang/String; = "stop"


# instance fields
.field private albumId:Ljava/lang/String;

.field private attachedInfo:Lnluparser/scheme/AudioResult$Music;

.field private controlCmd:Ljava/lang/String;

.field private itemId:Ljava/lang/String;

.field private listId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "musicListId"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "musicListId"
    .end annotation
.end field

.field private pageCount:Ljava/lang/String;

.field private pageNo:Ljava/lang/String;

.field private pageSize:Ljava/lang/String;

.field private playMode:Ljava/lang/String;

.field private playState:Ljava/lang/String;

.field private timeAsc:Ljava/lang/String;

.field private volume:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/unisound/ant/device/bean/Parameter;-><init>()V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/ant/device/bean/MusicData;->playMode:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/ant/device/bean/MusicData;->controlCmd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/unisound/ant/device/bean/MusicData;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachedInfo()Lnluparser/scheme/AudioResult$Music;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/unisound/ant/device/bean/MusicData;->attachedInfo:Lnluparser/scheme/AudioResult$Music;

    return-object v0
.end method

.method public getControlCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/unisound/ant/device/bean/MusicData;->controlCmd:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/unisound/ant/device/bean/MusicData;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getListId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/unisound/ant/device/bean/MusicData;->listId:Ljava/lang/String;

    return-object v0
.end method

.method public getPageCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/unisound/ant/device/bean/MusicData;->pageCount:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/unisound/ant/device/bean/MusicData;->pageNo:Ljava/lang/String;

    return-object v0
.end method

.method public getPageSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/unisound/ant/device/bean/MusicData;->pageSize:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/unisound/ant/device/bean/MusicData;->playMode:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/unisound/ant/device/bean/MusicData;->playState:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeAsc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/unisound/ant/device/bean/MusicData;->timeAsc:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/unisound/ant/device/bean/MusicData;->volume:I

    return v0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/unisound/ant/device/bean/MusicData;->albumId:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setAttachedInfo(Lnluparser/scheme/AudioResult$Music;)V
    .locals 0
    .param p1, "attachedInfo"    # Lnluparser/scheme/AudioResult$Music;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/unisound/ant/device/bean/MusicData;->attachedInfo:Lnluparser/scheme/AudioResult$Music;

    .line 125
    return-void
.end method

.method public setControlCmd(Ljava/lang/String;)V
    .locals 0
    .param p1, "controlCmd"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/unisound/ant/device/bean/MusicData;->controlCmd:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/unisound/ant/device/bean/MusicData;->itemId:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setListId(Ljava/lang/String;)V
    .locals 0
    .param p1, "listId"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/unisound/ant/device/bean/MusicData;->listId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setPageCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageCount"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/unisound/ant/device/bean/MusicData;->pageCount:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setPageNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageNo"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/unisound/ant/device/bean/MusicData;->pageNo:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setPageSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageSize"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/unisound/ant/device/bean/MusicData;->pageSize:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setPlayMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "playMode"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/unisound/ant/device/bean/MusicData;->playMode:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setPlayState(Ljava/lang/String;)V
    .locals 0
    .param p1, "playState"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/unisound/ant/device/bean/MusicData;->playState:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setTimeAsc(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeAsc"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/unisound/ant/device/bean/MusicData;->timeAsc:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setVolume(I)V
    .locals 0
    .param p1, "volume"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/unisound/ant/device/bean/MusicData;->volume:I

    .line 117
    return-void
.end method
