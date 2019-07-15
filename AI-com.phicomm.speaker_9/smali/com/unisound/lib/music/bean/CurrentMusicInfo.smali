.class public Lcom/unisound/lib/music/bean/CurrentMusicInfo;
.super Ljava/lang/Object;
.source "CurrentMusicInfo.java"


# instance fields
.field private musicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;"
        }
    .end annotation
.end field

.field private pageCount:I

.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMusicList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/unisound/lib/music/bean/CurrentMusicInfo;->musicList:Ljava/util/List;

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/unisound/lib/music/bean/CurrentMusicInfo;->pageCount:I

    return v0
.end method

.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/unisound/lib/music/bean/CurrentMusicInfo;->result:Ljava/util/List;

    return-object v0
.end method

.method public setMusicList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/unisound/lib/music/bean/CurrentMusicInfo;->musicList:Ljava/util/List;

    return-void
.end method

.method public setPageCount(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/unisound/lib/music/bean/CurrentMusicInfo;->pageCount:I

    return-void
.end method

.method public setResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/unisound/lib/music/bean/CurrentMusicInfo;->result:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CurrentMusicInfo{pageCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unisound/lib/music/bean/CurrentMusicInfo;->pageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/lib/music/bean/CurrentMusicInfo;->result:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
