.class public Lcom/unisound/ant/device/bean/CurrentMusicList$ControlInfo;
.super Ljava/lang/Object;
.source "CurrentMusicList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/ant/device/bean/CurrentMusicList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControlInfo"
.end annotation


# instance fields
.field private pageCount:I

.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/MusicResult$Music;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageCount()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/unisound/ant/device/bean/CurrentMusicList$ControlInfo;->pageCount:I

    return v0
.end method

.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/MusicResult$Music;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/unisound/ant/device/bean/CurrentMusicList$ControlInfo;->result:Ljava/util/List;

    return-object v0
.end method

.method public setPageCount(I)V
    .locals 0
    .param p1, "pageCount"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/unisound/ant/device/bean/CurrentMusicList$ControlInfo;->pageCount:I

    .line 64
    return-void
.end method

.method public setResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/MusicResult$Music;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/bean/CurrentMusicList$ControlInfo;->result:Ljava/util/List;

    .line 72
    return-void
.end method
