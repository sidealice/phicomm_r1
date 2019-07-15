.class public Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;
.super Ljava/lang/Object;
.source "SyncMusicListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicInfo"
.end annotation


# instance fields
.field album:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "album"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "album"
    .end annotation
.end field

.field artist:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "artist"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "artist"
    .end annotation
.end field

.field duration:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "duration"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field errorCode:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "errorCode"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errorCode"
    .end annotation
.end field

.field hdImgUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "hdImgUrl"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hdImgUrl"
    .end annotation
.end field

.field id:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "id"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field imgUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "imgUrl"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imgUrl"
    .end annotation
.end field

.field isCollected:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "isCollected"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isCollected"
    .end annotation
.end field

.field mLyric:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "lyric"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lyric"
    .end annotation
.end field

.field musicListId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "musicListId"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "musicListId"
    .end annotation
.end field

.field title:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "title"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field url:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "url"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->duration:I

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->errorCode:I

    return v0
.end method

.method public getHdImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->hdImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicListId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->musicListId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getmLyric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->mLyric:Ljava/lang/String;

    return-object v0
.end method

.method public isCollected()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->isCollected:Z

    return v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->album:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "artist"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->artist:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setCollected(Z)V
    .locals 0
    .param p1, "isCollected"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->isCollected:Z

    .line 153
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->duration:I

    .line 129
    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->errorCode:I

    .line 133
    return-void
.end method

.method public setHdImgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "hdImgUrl"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->hdImgUrl:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->id:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->imgUrl:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setMusicListId(Ljava/lang/String;)V
    .locals 0
    .param p1, "musicListId"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->musicListId:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->title:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->url:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setmLyric(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLyric"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->mLyric:Ljava/lang/String;

    .line 145
    return-void
.end method
