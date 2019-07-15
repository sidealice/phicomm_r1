.class public Lcom/unisound/ant/device/bean/DeviceMusicData;
.super Ljava/lang/Object;
.source "DeviceMusicData.java"


# instance fields
.field private index:I

.field private musicList:Ljava/util/List;
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
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/MusicResult$Music;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, "musicList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/unisound/ant/device/bean/DeviceMusicData;->index:I

    .line 19
    iput-object p2, p0, Lcom/unisound/ant/device/bean/DeviceMusicData;->musicList:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/unisound/ant/device/bean/DeviceMusicData;->index:I

    return v0
.end method

.method public getMusicList()Ljava/util/List;
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
    .line 31
    iget-object v0, p0, Lcom/unisound/ant/device/bean/DeviceMusicData;->musicList:Ljava/util/List;

    return-object v0
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/unisound/ant/device/bean/DeviceMusicData;->index:I

    .line 28
    return-void
.end method

.method public setMusicList(Ljava/util/List;)V
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
    .line 35
    .local p1, "musicList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/bean/DeviceMusicData;->musicList:Ljava/util/List;

    .line 36
    return-void
.end method
