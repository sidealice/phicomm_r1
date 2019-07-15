.class public Lcom/unisound/ant/device/bean/DeviceAudioData;
.super Ljava/lang/Object;
.source "DeviceAudioData.java"


# instance fields
.field private albumId:Ljava/lang/String;

.field private audioList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/AudioResult$Music;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field private pageCount:I

.field private pageNo:I

.field private pageSize:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "albumId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/AudioResult$Music;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "audioList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/AudioResult$Music;>;"
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/unisound/ant/device/bean/DeviceAudioData;->pageNo:I

    .line 19
    iput v0, p0, Lcom/unisound/ant/device/bean/DeviceAudioData;->pageSize:I

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/unisound/ant/device/bean/DeviceAudioData;->pageCount:I

    .line 23
    iput p1, p0, Lcom/unisound/ant/device/bean/DeviceAudioData;->index:I

    .line 24
    iput-object p2, p0, Lcom/unisound/ant/device/bean/DeviceAudioData;->albumId:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/unisound/ant/device/bean/DeviceAudioData;->audioList:Ljava/util/List;

    .line 26
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/List;III)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "albumId"    # Ljava/lang/String;
    .param p4, "pageNo"    # I
    .param p5, "pageSize"    # I
    .param p6, "pageCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/AudioResult$Music;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .local p3, "audioList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/AudioResult$Music;>;"
    const/4 v0, 0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/unisound/ant/device/bean/DeviceAudioData;->pageNo:I

    .line 19
    iput v0, p0, Lcom/unisound/ant/device/bean/DeviceAudioData;->pageSize:I

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/unisound/ant/device/bean/DeviceAudioData;->pageCount:I

    .line 30
    iput p1, p0, Lcom/unisound/ant/device/bean/DeviceAudioData;->index:I

    .line 31
    iput-object p2, p0, Lcom/unisound/ant/device/bean/DeviceAudioData;->albumId:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/unisound/ant/device/bean/DeviceAudioData;->audioList:Ljava/util/List;

    .line 33
    iput p4, p0, Lcom/unisound/ant/device/bean/DeviceAudioData;->pageNo:I

    .line 34
    iput p5, p0, Lcom/unisound/ant/device/bean/DeviceAudioData;->pageSize:I

    .line 35
    iput p6, p0, Lcom/unisound/ant/device/bean/DeviceAudioData;->pageCount:I

    .line 36
    return-void
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/unisound/ant/device/bean/DeviceAudioData;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/AudioResult$Music;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/unisound/ant/device/bean/DeviceAudioData;->audioList:Ljava/util/List;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/unisound/ant/device/bean/DeviceAudioData;->index:I

    return v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/unisound/ant/device/bean/DeviceAudioData;->pageCount:I

    return v0
.end method

.method public getPageNo()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/unisound/ant/device/bean/DeviceAudioData;->pageNo:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/unisound/ant/device/bean/DeviceAudioData;->pageSize:I

    return v0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/unisound/ant/device/bean/DeviceAudioData;->albumId:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setAudioList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/AudioResult$Music;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "audioList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/AudioResult$Music;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/bean/DeviceAudioData;->audioList:Ljava/util/List;

    .line 84
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/unisound/ant/device/bean/DeviceAudioData;->index:I

    .line 44
    return-void
.end method

.method public setPageCount(I)V
    .locals 0
    .param p1, "pageCount"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/unisound/ant/device/bean/DeviceAudioData;->pageCount:I

    .line 76
    return-void
.end method

.method public setPageNo(I)V
    .locals 0
    .param p1, "pageNo"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/unisound/ant/device/bean/DeviceAudioData;->pageNo:I

    .line 60
    return-void
.end method

.method public setPageSize(I)V
    .locals 0
    .param p1, "pageSize"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/unisound/ant/device/bean/DeviceAudioData;->pageSize:I

    .line 68
    return-void
.end method
