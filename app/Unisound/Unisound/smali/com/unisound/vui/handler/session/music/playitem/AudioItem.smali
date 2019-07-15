.class public final Lcom/unisound/vui/handler/session/music/playitem/AudioItem;
.super Ljava/lang/Object;
.source "AudioItem.java"

# interfaces
.implements Lcom/unisound/vui/handler/session/music/playitem/PlayItem;


# static fields
.field static final EMPTY:Ljava/lang/String; = ""


# instance fields
.field album:Ljava/lang/String;

.field artist:Ljava/lang/String;

.field audio:Lnluparser/scheme/AudioResult$Music;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->audio:Lnluparser/scheme/AudioResult$Music;

    .line 25
    return-void
.end method

.method constructor <init>(Lnluparser/scheme/AudioResult$Music;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "audio"    # Lnluparser/scheme/AudioResult$Music;
    .param p2, "album"    # Ljava/lang/String;
    .param p3, "artist"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->audio:Lnluparser/scheme/AudioResult$Music;

    .line 19
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->audio:Lnluparser/scheme/AudioResult$Music;

    .line 20
    if-nez p2, :cond_0

    const-string p2, ""

    .end local p2    # "album":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->album:Ljava/lang/String;

    .line 21
    if-nez p3, :cond_1

    const-string p3, ""

    .end local p3    # "artist":Ljava/lang/String;
    :cond_1
    iput-object p3, p0, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->artist:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 68
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->audio:Lnluparser/scheme/AudioResult$Music;

    invoke-virtual {v1}, Lnluparser/scheme/AudioResult$Music;->getDuration()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "duration":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getHdImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->audio:Lnluparser/scheme/AudioResult$Music;

    invoke-virtual {v0}, Lnluparser/scheme/AudioResult$Music;->getCoverLarge()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->audio:Lnluparser/scheme/AudioResult$Music;

    invoke-virtual {v0}, Lnluparser/scheme/AudioResult$Music;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->audio:Lnluparser/scheme/AudioResult$Music;

    invoke-virtual {v0}, Lnluparser/scheme/AudioResult$Music;->getCover()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->audio:Lnluparser/scheme/AudioResult$Music;

    invoke-virtual {v0}, Lnluparser/scheme/AudioResult$Music;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->TYPE_AUDIO:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->audio:Lnluparser/scheme/AudioResult$Music;

    invoke-virtual {v0}, Lnluparser/scheme/AudioResult$Music;->getUrlHigh()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getmLyric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, ""

    return-object v0
.end method

.method public isCollected()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->audio:Lnluparser/scheme/AudioResult$Music;

    invoke-virtual {v0}, Lnluparser/scheme/AudioResult$Music;->isCollected()Z

    move-result v0

    return v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->album:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "artist"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->artist:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setAudio(Lnluparser/scheme/AudioResult$Music;)V
    .locals 0
    .param p1, "audio"    # Lnluparser/scheme/AudioResult$Music;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->audio:Lnluparser/scheme/AudioResult$Music;

    .line 29
    return-void
.end method

.method public setCollected(Z)V
    .locals 1
    .param p1, "isCollected"    # Z

    .prologue
    .line 89
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->audio:Lnluparser/scheme/AudioResult$Music;

    invoke-virtual {v0, p1}, Lnluparser/scheme/AudioResult$Music;->setCollected(Z)V

    .line 90
    return-void
.end method

.method public setListId(Ljava/lang/String;)V
    .locals 0
    .param p1, "listId"    # Ljava/lang/String;

    .prologue
    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&album="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&imgUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&hdImgUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->getHdImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&mLyric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->getmLyric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&isCollected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/playitem/AudioItem;->isCollected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    return-object v0
.end method
