.class public Lcom/unisound/ant/device/bean/PhicommMusicInfo;
.super Ljava/lang/Object;
.source "PhicommMusicInfo.java"


# instance fields
.field private asrResult:Ljava/lang/String;

.field private index:I

.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unisound/ant/device/bean/MusicItem;",
            ">;"
        }
    .end annotation
.end field

.field private pageIndex:I

.field private totalPage:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/ant/device/bean/MusicItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/device/bean/MusicItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/unisound/ant/device/bean/PhicommMusicInfo;->index:I

    .line 29
    iput-object p2, p0, Lcom/unisound/ant/device/bean/PhicommMusicInfo;->itemList:Ljava/util/List;

    .line 30
    return-void
.end method

.method public constructor <init>(ILjava/util/List;II)V
    .locals 0
    .param p1, "index"    # I
    .param p3, "pageIndex"    # I
    .param p4, "totalPage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/ant/device/bean/MusicItem;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/device/bean/MusicItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/unisound/ant/device/bean/PhicommMusicInfo;->index:I

    .line 35
    iput-object p2, p0, Lcom/unisound/ant/device/bean/PhicommMusicInfo;->itemList:Ljava/util/List;

    .line 36
    iput p3, p0, Lcom/unisound/ant/device/bean/PhicommMusicInfo;->pageIndex:I

    .line 37
    iput p4, p0, Lcom/unisound/ant/device/bean/PhicommMusicInfo;->totalPage:I

    .line 38
    return-void
.end method


# virtual methods
.method public getAsrResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/unisound/ant/device/bean/PhicommMusicInfo;->asrResult:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/unisound/ant/device/bean/PhicommMusicInfo;->index:I

    return v0
.end method

.method public getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/ant/device/bean/MusicItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/unisound/ant/device/bean/PhicommMusicInfo;->itemList:Ljava/util/List;

    return-object v0
.end method

.method public getPageIndex()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/unisound/ant/device/bean/PhicommMusicInfo;->pageIndex:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/unisound/ant/device/bean/PhicommMusicInfo;->totalPage:I

    return v0
.end method

.method public setAsrResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "asrResult"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/unisound/ant/device/bean/PhicommMusicInfo;->asrResult:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/unisound/ant/device/bean/PhicommMusicInfo;->index:I

    .line 46
    return-void
.end method

.method public setItemList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/ant/device/bean/MusicItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/device/bean/MusicItem;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/bean/PhicommMusicInfo;->itemList:Ljava/util/List;

    .line 54
    return-void
.end method

.method public setPageIndex(I)V
    .locals 0
    .param p1, "pageIndex"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/unisound/ant/device/bean/PhicommMusicInfo;->pageIndex:I

    .line 70
    return-void
.end method

.method public setTotalPage(I)V
    .locals 0
    .param p1, "totalPage"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/unisound/ant/device/bean/PhicommMusicInfo;->totalPage:I

    .line 78
    return-void
.end method
