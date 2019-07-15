.class public Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLinkResponse;
.super Ljava/lang/Object;
.source "UniSoundTrackLinkResponse.java"


# instance fields
.field private count:I

.field private dataSourceName:Ljava/lang/String;

.field private errorCode:I

.field private musicinfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLink;",
            ">;"
        }
    .end annotation
.end field

.field private source:I

.field private totalTime:I

.field private updateTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLinkResponse;->count:I

    return v0
.end method

.method public getDataSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLinkResponse;->dataSourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLinkResponse;->errorCode:I

    return v0
.end method

.method public getMusicinfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLinkResponse;->musicinfo:Ljava/util/List;

    return-object v0
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLinkResponse;->source:I

    return v0
.end method

.method public getTotalTime()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLinkResponse;->totalTime:I

    return v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLinkResponse;->updateTime:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLinkResponse;->count:I

    .line 40
    return-void
.end method

.method public setDataSourceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataSourceName"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLinkResponse;->dataSourceName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLinkResponse;->errorCode:I

    .line 24
    return-void
.end method

.method public setMusicinfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLink;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "musicinfo":Ljava/util/List;, "Ljava/util/List<Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLink;>;"
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLinkResponse;->musicinfo:Ljava/util/List;

    .line 72
    return-void
.end method

.method public setSource(I)V
    .locals 0
    .param p1, "source"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLinkResponse;->source:I

    .line 48
    return-void
.end method

.method public setTotalTime(I)V
    .locals 0
    .param p1, "totalTime"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLinkResponse;->totalTime:I

    .line 32
    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateTime"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/UniSoundTrackLinkResponse;->updateTime:Ljava/lang/String;

    .line 64
    return-void
.end method
