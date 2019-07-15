.class public Lcom/unisound/vui/handler/session/music/playitem/NewsItem;
.super Ljava/lang/Object;
.source "NewsItem.java"

# interfaces
.implements Lcom/unisound/vui/handler/session/music/playitem/PlayItem;


# instance fields
.field private final newsBean:Lnluparser/scheme/NewsResult$NewsBean;


# direct methods
.method constructor <init>(Lnluparser/scheme/NewsResult$NewsBean;)V
    .locals 0
    .param p1, "newsBean"    # Lnluparser/scheme/NewsResult$NewsBean;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/playitem/NewsItem;->newsBean:Lnluparser/scheme/NewsResult$NewsBean;

    .line 15
    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/NewsItem;->newsBean:Lnluparser/scheme/NewsResult$NewsBean;

    invoke-virtual {v0}, Lnluparser/scheme/NewsResult$NewsBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/NewsItem;->newsBean:Lnluparser/scheme/NewsResult$NewsBean;

    invoke-virtual {v0}, Lnluparser/scheme/NewsResult$NewsBean;->getDuration()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getHdImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/NewsItem;->newsBean:Lnluparser/scheme/NewsResult$NewsBean;

    invoke-virtual {v0}, Lnluparser/scheme/NewsResult$NewsBean;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/NewsItem;->newsBean:Lnluparser/scheme/NewsResult$NewsBean;

    invoke-virtual {v0}, Lnluparser/scheme/NewsResult$NewsBean;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->TYPE_NEWS:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/NewsItem;->newsBean:Lnluparser/scheme/NewsResult$NewsBean;

    invoke-virtual {v0}, Lnluparser/scheme/NewsResult$NewsBean;->getAudioUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getmLyric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCollected()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public setCollected(Z)V
    .locals 0
    .param p1, "isCollected"    # Z

    .prologue
    .line 67
    return-void
.end method

.method public setListId(Ljava/lang/String;)V
    .locals 0
    .param p1, "listId"    # Ljava/lang/String;

    .prologue
    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewsItem{newsBean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/playitem/NewsItem;->newsBean:Lnluparser/scheme/NewsResult$NewsBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
