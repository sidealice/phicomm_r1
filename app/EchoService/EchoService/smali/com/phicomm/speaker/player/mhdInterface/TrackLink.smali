.class public Lcom/phicomm/speaker/player/mhdInterface/TrackLink;
.super Ljava/lang/Object;
.source "TrackLink.java"


# instance fields
.field private TSID:Ljava/lang/String;

.field private bits:I

.field private duration:Ljava/lang/String;

.field private format:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private rate:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private spBizKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBits()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLink;->bits:I

    return v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLink;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLink;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLink;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLink;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLink;->rate:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLink;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getSpBizKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLink;->spBizKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLink;->TSID:Ljava/lang/String;

    return-object v0
.end method

.method public setBits(I)V
    .locals 0
    .param p1, "bits"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLink;->bits:I

    .line 86
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .param p1, "duration"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLink;->duration:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLink;->format:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLink;->name:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLink;->path:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setRate(Ljava/lang/String;)V
    .locals 0
    .param p1, "rate"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLink;->rate:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLink;->size:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setSpBizKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "spBizKey"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLink;->spBizKey:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setTSID(Ljava/lang/String;)V
    .locals 0
    .param p1, "TSID"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLink;->TSID:Ljava/lang/String;

    .line 78
    return-void
.end method
