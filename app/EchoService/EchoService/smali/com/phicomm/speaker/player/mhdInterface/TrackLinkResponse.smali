.class public Lcom/phicomm/speaker/player/mhdInterface/TrackLinkResponse;
.super Ljava/lang/Object;
.source "TrackLinkResponse.java"


# instance fields
.field private errcode:I

.field private errmsg:Ljava/lang/String;

.field private state:Z

.field private trackLink:Lcom/phicomm/speaker/player/mhdInterface/TrackLink;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrcode()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLinkResponse;->errcode:I

    return v0
.end method

.method public getErrmsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLinkResponse;->errmsg:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackLink()Lcom/phicomm/speaker/player/mhdInterface/TrackLink;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLinkResponse;->trackLink:Lcom/phicomm/speaker/player/mhdInterface/TrackLink;

    return-object v0
.end method

.method public isState()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLinkResponse;->state:Z

    return v0
.end method

.method public setErrcode(I)V
    .locals 0
    .param p1, "errcode"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLinkResponse;->errcode:I

    .line 49
    return-void
.end method

.method public setErrmsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "errmsg"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLinkResponse;->errmsg:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLinkResponse;->state:Z

    .line 41
    return-void
.end method

.method public setTrackLink(Lcom/phicomm/speaker/player/mhdInterface/TrackLink;)V
    .locals 0
    .param p1, "trackLink"    # Lcom/phicomm/speaker/player/mhdInterface/TrackLink;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLinkResponse;->trackLink:Lcom/phicomm/speaker/player/mhdInterface/TrackLink;

    .line 65
    return-void
.end method
