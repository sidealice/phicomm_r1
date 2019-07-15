.class public Lcom/unisound/vui/handler/session/music/playitem/XmItem;
.super Ljava/lang/Object;
.source "XmItem.java"


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private currentDuration:I

.field private duration:I

.field private opr:I

.field private playStatus:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/unisound/vui/handler/session/music/playitem/XmItem;->opr:I

    .line 10
    iput v0, p0, Lcom/unisound/vui/handler/session/music/playitem/XmItem;->playStatus:I

    .line 13
    iput v0, p0, Lcom/unisound/vui/handler/session/music/playitem/XmItem;->duration:I

    .line 15
    iput v0, p0, Lcom/unisound/vui/handler/session/music/playitem/XmItem;->currentDuration:I

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/XmItem;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/XmItem;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentDuration()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/unisound/vui/handler/session/music/playitem/XmItem;->currentDuration:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/unisound/vui/handler/session/music/playitem/XmItem;->duration:I

    return v0
.end method

.method public getOpr()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/unisound/vui/handler/session/music/playitem/XmItem;->opr:I

    return v0
.end method

.method public getPlayStatus()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/unisound/vui/handler/session/music/playitem/XmItem;->playStatus:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/XmItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/playitem/XmItem;->album:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "artist"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/playitem/XmItem;->artist:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setCurrentDuration(I)V
    .locals 0
    .param p1, "currentDuration"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/unisound/vui/handler/session/music/playitem/XmItem;->currentDuration:I

    .line 23
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/unisound/vui/handler/session/music/playitem/XmItem;->duration:I

    .line 55
    return-void
.end method

.method public setOpr(I)V
    .locals 0
    .param p1, "opr"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/unisound/vui/handler/session/music/playitem/XmItem;->opr:I

    .line 71
    return-void
.end method

.method public setPlayStatus(I)V
    .locals 0
    .param p1, "playStatus"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/unisound/vui/handler/session/music/playitem/XmItem;->playStatus:I

    .line 31
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/playitem/XmItem;->title:Ljava/lang/String;

    .line 39
    return-void
.end method
