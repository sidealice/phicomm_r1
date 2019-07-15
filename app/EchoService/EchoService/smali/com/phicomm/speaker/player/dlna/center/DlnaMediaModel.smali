.class public Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;
.super Ljava/lang/Object;
.source "DlnaMediaModel.java"


# instance fields
.field private album:Ljava/lang/String;

.field private albumiconuri:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private objectclass:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->uri:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->title:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->artist:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->album:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->albumiconuri:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->objectclass:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->album:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->unicode2Chinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->albumiconuri:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->artist:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->unicode2Chinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->objectclass:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->unicode2Chinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    .line 28
    if-eqz p1, :cond_0

    .end local p1    # "album":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->album:Ljava/lang/String;

    .line 29
    return-void

    .line 28
    .restart local p1    # "album":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setAlbumUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumiconuri"    # Ljava/lang/String;

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .end local p1    # "albumiconuri":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->albumiconuri:Ljava/lang/String;

    .line 53
    return-void

    .line 52
    .restart local p1    # "albumiconuri":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "artist"    # Ljava/lang/String;

    .prologue
    .line 24
    if-eqz p1, :cond_0

    .end local p1    # "artist":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->artist:Ljava/lang/String;

    .line 25
    return-void

    .line 24
    .restart local p1    # "artist":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setObjectClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "objectClass"    # Ljava/lang/String;

    .prologue
    .line 35
    if-eqz p1, :cond_0

    .end local p1    # "objectClass":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->objectclass:Ljava/lang/String;

    .line 36
    return-void

    .line 35
    .restart local p1    # "objectClass":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 17
    if-eqz p1, :cond_0

    .end local p1    # "title":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->title:Ljava/lang/String;

    .line 18
    return-void

    .line 17
    .restart local p1    # "title":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .end local p1    # "uri":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->uri:Ljava/lang/String;

    .line 43
    return-void

    .line 42
    .restart local p1    # "uri":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public unicode2Chinese(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "unicodeString"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v0, ""

    .line 59
    .local v0, "chineseString":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 60
    .local v4, "unicodeChar":[C
    const/4 v3, 0x0

    .line 62
    .local v3, "i":I
    const/4 v3, 0x0

    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 64
    add-int/lit8 v5, v3, 0x7

    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 66
    aget-char v5, v4, v3

    const/16 v6, 0x26

    if-ne v5, v6, :cond_0

    add-int/lit8 v5, v3, 0x1

    aget-char v5, v4, v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_0

    add-int/lit8 v5, v3, 0x7

    aget-char v5, v4, v5

    const/16 v6, 0x3b

    if-ne v5, v6, :cond_0

    .line 67
    add-int/lit8 v5, v3, 0x2

    add-int/lit8 v6, v3, 0x7

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "code":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    add-int/lit8 v3, v3, 0x7

    .line 62
    .end local v1    # "code":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    .restart local v1    # "code":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 75
    .end local v1    # "code":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-char v6, v4, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 79
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-char v6, v4, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 82
    :cond_2
    return-object v0
.end method
