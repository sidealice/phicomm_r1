.class public Lcom/unisound/lib/music/bean/MusicList;
.super Ljava/lang/Object;
.source "MusicList.java"


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

.field private playing:Z

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/unisound/lib/music/bean/MusicList;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/unisound/lib/music/bean/MusicList;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()D
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/unisound/lib/music/bean/MusicList;->duration:D

    return-wide v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/unisound/lib/music/bean/MusicList;->errorCode:I

    return v0
.end method

.method public getHdImgUrl()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/unisound/lib/music/bean/MusicList;->hdImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/unisound/lib/music/bean/MusicList;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/unisound/lib/music/bean/MusicList;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLyric()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/unisound/lib/music/bean/MusicList;->lyric:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/unisound/lib/music/bean/MusicList;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/unisound/lib/music/bean/MusicList;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isIsCollected()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/unisound/lib/music/bean/MusicList;->isCollected:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/unisound/lib/music/bean/MusicList;->playing:Z

    return v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/unisound/lib/music/bean/MusicList;->album:Ljava/lang/String;

    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/unisound/lib/music/bean/MusicList;->artist:Ljava/lang/String;

    return-void
.end method

.method public setDuration(D)V
    .locals 0

    .line 48
    iput-wide p1, p0, Lcom/unisound/lib/music/bean/MusicList;->duration:D

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/unisound/lib/music/bean/MusicList;->errorCode:I

    return-void
.end method

.method public setHdImgUrl(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/unisound/lib/music/bean/MusicList;->hdImgUrl:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/unisound/lib/music/bean/MusicList;->id:Ljava/lang/String;

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/unisound/lib/music/bean/MusicList;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setIsCollected(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/unisound/lib/music/bean/MusicList;->isCollected:Z

    return-void
.end method

.method public setLyric(Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/unisound/lib/music/bean/MusicList;->lyric:Ljava/lang/String;

    return-void
.end method

.method public setPlaying(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/unisound/lib/music/bean/MusicList;->playing:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/unisound/lib/music/bean/MusicList;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/unisound/lib/music/bean/MusicList;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicList{album=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/lib/music/bean/MusicList;->album:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", duration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/unisound/lib/music/bean/MusicList;->duration:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", errorCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/unisound/lib/music/bean/MusicList;->errorCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", hdImgUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/music/bean/MusicList;->hdImgUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/music/bean/MusicList;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", imgUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/music/bean/MusicList;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isCollected="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/unisound/lib/music/bean/MusicList;->isCollected:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", lyric=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/music/bean/MusicList;->lyric:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/music/bean/MusicList;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/music/bean/MusicList;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", artist=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/music/bean/MusicList;->artist:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", playing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/unisound/lib/music/bean/MusicList;->playing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
