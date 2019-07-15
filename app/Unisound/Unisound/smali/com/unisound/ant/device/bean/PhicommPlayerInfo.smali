.class public Lcom/unisound/ant/device/bean/PhicommPlayerInfo;
.super Ljava/lang/Object;
.source "PhicommPlayerInfo.java"


# instance fields
.field private playIndex:I

.field private playList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unisound/ant/device/bean/MusicItem;",
            ">;"
        }
    .end annotation
.end field

.field private playMode:I

.field private playState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlayIndex()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/unisound/ant/device/bean/PhicommPlayerInfo;->playIndex:I

    return v0
.end method

.method public getPlayList()Ljava/util/List;
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
    .line 54
    iget-object v0, p0, Lcom/unisound/ant/device/bean/PhicommPlayerInfo;->playList:Ljava/util/List;

    return-object v0
.end method

.method public getPlayMode()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/unisound/ant/device/bean/PhicommPlayerInfo;->playMode:I

    return v0
.end method

.method public getPlayState()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/unisound/ant/device/bean/PhicommPlayerInfo;->playState:I

    return v0
.end method

.method public setPlayIndex(I)V
    .locals 0
    .param p1, "playIndex"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/unisound/ant/device/bean/PhicommPlayerInfo;->playIndex:I

    .line 51
    return-void
.end method

.method public setPlayList(Ljava/util/List;)V
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
    .line 58
    .local p1, "playList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/device/bean/MusicItem;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/bean/PhicommPlayerInfo;->playList:Ljava/util/List;

    .line 59
    return-void
.end method

.method public setPlayMode(I)V
    .locals 0
    .param p1, "playMode"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/unisound/ant/device/bean/PhicommPlayerInfo;->playMode:I

    .line 35
    return-void
.end method

.method public setPlayState(I)V
    .locals 0
    .param p1, "playState"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/unisound/ant/device/bean/PhicommPlayerInfo;->playState:I

    .line 43
    return-void
.end method
