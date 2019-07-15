.class public Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;
.super Ljava/lang/Object;
.source "SongInfo.java"


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private duration:D

.field private errorCode:I

.field private hdImgUrl:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private imgUrl:Ljava/lang/String;

.field private isCollected:Z

.field private lyric:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->album:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()D
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->duration:D

    return-wide v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->errorCode:I

    return v0
.end method

.method public getHdImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->hdImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLyric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->lyric:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isCollected()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->isCollected:Z

    return v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->album:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "artist"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->artist:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setCollected(Z)V
    .locals 0
    .param p1, "collected"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->isCollected:Z

    .line 110
    return-void
.end method

.method public setDuration(D)V
    .locals 1
    .param p1, "duration"    # D

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->duration:D

    .line 26
    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->errorCode:I

    .line 54
    return-void
.end method

.method public setHdImgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "hdImgUrl"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->hdImgUrl:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->id:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->imgUrl:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setLyric(Ljava/lang/String;)V
    .locals 0
    .param p1, "lyric"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->lyric:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->title:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->url:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SongInfo{album=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->album:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->duration:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hdImgUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->hdImgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imgUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lyric=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->lyric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", artist=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCollected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->isCollected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
