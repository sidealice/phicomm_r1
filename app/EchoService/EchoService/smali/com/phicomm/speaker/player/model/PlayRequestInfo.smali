.class public Lcom/phicomm/speaker/player/model/PlayRequestInfo;
.super Ljava/lang/Object;
.source "PlayRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/phicomm/speaker/player/model/PlayRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private asrResult:Ljava/lang/String;

.field private curItemId:Ljava/lang/String;

.field private index:I

.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/phicomm/speaker/player/model/PlaySong;",
            ">;"
        }
    .end annotation
.end field

.field private pageIndex:I

.field private totalPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/phicomm/speaker/player/model/PlayRequestInfo$1;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/model/PlayRequestInfo$1;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->index:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->asrResult:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->pageIndex:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->totalPage:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->curItemId:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/phicomm/speaker/player/model/PlaySong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->itemList:Ljava/util/List;

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getAsrResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->asrResult:Ljava/lang/String;

    return-object v0
.end method

.method public getCurItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->curItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->index:I

    return v0
.end method

.method public getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/phicomm/speaker/player/model/PlaySong;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->itemList:Ljava/util/List;

    return-object v0
.end method

.method public getPageIndex()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->pageIndex:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->totalPage:I

    return v0
.end method

.method public setAsrResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "asrResult"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->asrResult:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setCurItemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "curItemId"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->curItemId:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->index:I

    .line 55
    return-void
.end method

.method public setItemList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/phicomm/speaker/player/model/PlaySong;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/phicomm/speaker/player/model/PlaySong;>;"
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->itemList:Ljava/util/List;

    .line 95
    return-void
.end method

.method public setPageIndex(I)V
    .locals 0
    .param p1, "pageIndex"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->pageIndex:I

    .line 71
    return-void
.end method

.method public setTotalPage(I)V
    .locals 0
    .param p1, "totalPage"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->totalPage:I

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayRequestInfo{index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", asrResult=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->asrResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->pageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curItemId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->curItemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->itemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 104
    iget v0, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->asrResult:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget v0, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->pageIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget v0, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->totalPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->curItemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->itemList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 110
    return-void
.end method
