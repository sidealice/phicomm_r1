.class public Lcom/unisound/ant/device/bean/MusicItem;
.super Ljava/lang/Object;
.source "MusicItem.java"


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private itemId:Ljava/lang/String;

.field private itemType:I

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "itemId"    # Ljava/lang/String;
    .param p4, "itemType"    # I
    .param p5, "album"    # Ljava/lang/String;
    .param p6, "artist"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/unisound/ant/device/bean/MusicItem;->title:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/unisound/ant/device/bean/MusicItem;->url:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/unisound/ant/device/bean/MusicItem;->itemId:Ljava/lang/String;

    .line 33
    iput p4, p0, Lcom/unisound/ant/device/bean/MusicItem;->itemType:I

    .line 34
    iput-object p5, p0, Lcom/unisound/ant/device/bean/MusicItem;->album:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lcom/unisound/ant/device/bean/MusicItem;->artist:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/unisound/ant/device/bean/MusicItem;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/unisound/ant/device/bean/MusicItem;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/unisound/ant/device/bean/MusicItem;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/unisound/ant/device/bean/MusicItem;->itemType:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/unisound/ant/device/bean/MusicItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/unisound/ant/device/bean/MusicItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/unisound/ant/device/bean/MusicItem;->album:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "artist"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/unisound/ant/device/bean/MusicItem;->artist:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/unisound/ant/device/bean/MusicItem;->itemId:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setItemType(I)V
    .locals 0
    .param p1, "itemType"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/unisound/ant/device/bean/MusicItem;->itemType:I

    .line 68
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/unisound/ant/device/bean/MusicItem;->title:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/unisound/ant/device/bean/MusicItem;->url:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/bean/MusicItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/bean/MusicItem;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&itemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/bean/MusicItem;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&itemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unisound/ant/device/bean/MusicItem;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&album="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/bean/MusicItem;->album:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/ant/device/bean/MusicItem;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
