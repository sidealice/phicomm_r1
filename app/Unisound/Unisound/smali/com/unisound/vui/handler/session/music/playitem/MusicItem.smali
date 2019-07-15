.class final Lcom/unisound/vui/handler/session/music/playitem/MusicItem;
.super Ljava/lang/Object;
.source "MusicItem.java"

# interfaces
.implements Lcom/unisound/vui/handler/session/music/playitem/PlayItem;


# instance fields
.field private final music:Lnluparser/scheme/MusicResult$Music;


# direct methods
.method constructor <init>(Lnluparser/scheme/MusicResult$Music;)V
    .locals 0
    .param p1, "music"    # Lnluparser/scheme/MusicResult$Music;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/playitem/MusicItem;->music:Lnluparser/scheme/MusicResult$Music;

    .line 17
    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/MusicItem;->music:Lnluparser/scheme/MusicResult$Music;

    invoke-virtual {v0}, Lnluparser/scheme/MusicResult$Music;->getAlbum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/MusicItem;->music:Lnluparser/scheme/MusicResult$Music;

    invoke-virtual {v0}, Lnluparser/scheme/MusicResult$Music;->getArtist()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/MusicItem;->music:Lnluparser/scheme/MusicResult$Music;

    invoke-virtual {v0}, Lnluparser/scheme/MusicResult$Music;->getDuration()I

    move-result v0

    return v0
.end method

.method public getHdImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/MusicItem;->music:Lnluparser/scheme/MusicResult$Music;

    invoke-virtual {v0}, Lnluparser/scheme/MusicResult$Music;->getHdImgUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/MusicItem;->music:Lnluparser/scheme/MusicResult$Music;

    invoke-virtual {v0}, Lnluparser/scheme/MusicResult$Music;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/MusicItem;->music:Lnluparser/scheme/MusicResult$Music;

    invoke-virtual {v0}, Lnluparser/scheme/MusicResult$Music;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/MusicItem;->music:Lnluparser/scheme/MusicResult$Music;

    invoke-virtual {v0}, Lnluparser/scheme/MusicResult$Music;->getMusicListId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/MusicItem;->music:Lnluparser/scheme/MusicResult$Music;

    invoke-virtual {v0}, Lnluparser/scheme/MusicResult$Music;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->TYPE_MUSIC:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/MusicItem;->music:Lnluparser/scheme/MusicResult$Music;

    invoke-virtual {v0}, Lnluparser/scheme/MusicResult$Music;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getmLyric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/MusicItem;->music:Lnluparser/scheme/MusicResult$Music;

    invoke-virtual {v0}, Lnluparser/scheme/MusicResult$Music;->getmLyric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCollected()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/MusicItem;->music:Lnluparser/scheme/MusicResult$Music;

    invoke-virtual {v0}, Lnluparser/scheme/MusicResult$Music;->isCollected()Z

    move-result v0

    return v0
.end method

.method public setCollected(Z)V
    .locals 1
    .param p1, "isCollected"    # Z

    .prologue
    .line 72
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/MusicItem;->music:Lnluparser/scheme/MusicResult$Music;

    invoke-virtual {v0, p1}, Lnluparser/scheme/MusicResult$Music;->setCollected(Z)V

    .line 73
    return-void
.end method

.method public setListId(Ljava/lang/String;)V
    .locals 1
    .param p1, "listId"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/MusicItem;->music:Lnluparser/scheme/MusicResult$Music;

    invoke-virtual {v0, p1}, Lnluparser/scheme/MusicResult$Music;->setMusicListId(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/playitem/MusicItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/playitem/MusicItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/playitem/MusicItem;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&album="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/playitem/MusicItem;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/playitem/MusicItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/playitem/MusicItem;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&imgUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/playitem/MusicItem;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&hdImgUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/playitem/MusicItem;->getHdImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&mLyric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/playitem/MusicItem;->getmLyric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&isCollected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/playitem/MusicItem;->isCollected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    return-object v0
.end method
