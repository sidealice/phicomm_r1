.class public Lcom/phicomm/speaker/player/mhdInterface/TrackLinkRequest;
.super Ljava/lang/Object;
.source "TrackLinkRequest.java"


# instance fields
.field private TSID:Ljava/lang/String;

.field private action:Ljava/lang/String;

.field private method:Ljava/lang/String;

.field private rate:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "TSID"    # Ljava/lang/String;
    .param p2, "rate"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "/SONG/trackLink.json"

    iput-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLinkRequest;->action:Ljava/lang/String;

    .line 16
    const-string v0, "POST"

    iput-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLinkRequest;->method:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLinkRequest;->TSID:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLinkRequest;->rate:I

    .line 23
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLinkRequest;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLinkRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLinkRequest;->rate:I

    return v0
.end method

.method public getTSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLinkRequest;->TSID:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLinkRequest;->action:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLinkRequest;->method:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setRate(I)V
    .locals 0
    .param p1, "rate"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLinkRequest;->rate:I

    .line 55
    return-void
.end method

.method public setTSID(Ljava/lang/String;)V
    .locals 0
    .param p1, "TSID"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/TrackLinkRequest;->TSID:Ljava/lang/String;

    .line 47
    return-void
.end method
