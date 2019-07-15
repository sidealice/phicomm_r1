.class public Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLink;
.super Ljava/lang/Object;
.source "UniSoundTrackLink.java"


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private duration:I

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLink;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLink;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLink;->duration:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLink;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLink;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLink;->album:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "artist"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLink;->artist:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLink;->duration:I

    .line 45
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLink;->title:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLink;->url:Ljava/lang/String;

    .line 53
    return-void
.end method
