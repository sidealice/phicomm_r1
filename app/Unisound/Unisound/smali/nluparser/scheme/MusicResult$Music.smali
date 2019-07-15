.class public Lnluparser/scheme/MusicResult$Music;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnluparser/scheme/MusicResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Music"
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    check-cast p1, Lnluparser/scheme/MusicResult$Music;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p0, Lnluparser/scheme/MusicResult$Music;->title:Ljava/lang/String;

    iget-object v2, p1, Lnluparser/scheme/MusicResult$Music;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnluparser/scheme/MusicResult$Music;->artist:Ljava/lang/String;

    iget-object v1, p1, Lnluparser/scheme/MusicResult$Music;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/MusicResult$Music;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/MusicResult$Music;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lnluparser/scheme/MusicResult$Music;->duration:I

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lnluparser/scheme/MusicResult$Music;->errorCode:I

    return v0
.end method

.method public getHdImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/MusicResult$Music;->hdImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/MusicResult$Music;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/MusicResult$Music;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicListId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/MusicResult$Music;->musicListId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/MusicResult$Music;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/MusicResult$Music;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getmLyric()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/MusicResult$Music;->mLyric:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnluparser/scheme/MusicResult$Music;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lnluparser/scheme/MusicResult$Music;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method public isCollected()Z
    .locals 1

    iget-boolean v0, p0, Lnluparser/scheme/MusicResult$Music;->isCollected:Z

    return v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MusicResult$Music;->album:Ljava/lang/String;

    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "artist"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MusicResult$Music;->artist:Ljava/lang/String;

    return-void
.end method

.method public setCollected(Z)V
    .locals 0
    .param p1, "isCollected"    # Z

    .prologue
    iput-boolean p1, p0, Lnluparser/scheme/MusicResult$Music;->isCollected:Z

    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    iput p1, p0, Lnluparser/scheme/MusicResult$Music;->duration:I

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    iput p1, p0, Lnluparser/scheme/MusicResult$Music;->errorCode:I

    return-void
.end method

.method public setHdImgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "hdImgUrl"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MusicResult$Music;->hdImgUrl:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MusicResult$Music;->id:Ljava/lang/String;

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imgUrl"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MusicResult$Music;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setMusicListId(Ljava/lang/String;)V
    .locals 0
    .param p1, "musicListId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MusicResult$Music;->musicListId:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MusicResult$Music;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MusicResult$Music;->url:Ljava/lang/String;

    return-void
.end method

.method public setmLyric(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLyric"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MusicResult$Music;->mLyric:Ljava/lang/String;

    return-void
.end method
