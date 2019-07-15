.class public Lcom/unisound/ant/device/bean/RemoteMusicInfo;
.super Ljava/lang/Object;
.source "RemoteMusicInfo.java"


# instance fields
.field private musicinfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/MusicResult$Music;",
            ">;"
        }
    .end annotation
.end field

.field private voiceTip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMusicinfo()Ljava/util/List;
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
    .line 15
    iget-object v0, p0, Lcom/unisound/ant/device/bean/RemoteMusicInfo;->musicinfo:Ljava/util/List;

    return-object v0
.end method

.method public getVoiceTip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/unisound/ant/device/bean/RemoteMusicInfo;->voiceTip:Ljava/lang/String;

    return-object v0
.end method

.method public setMusicinfo(Ljava/util/List;)V
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
    .line 19
    .local p1, "musicinfo":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/bean/RemoteMusicInfo;->musicinfo:Ljava/util/List;

    .line 20
    return-void
.end method

.method public setVoiceTip(Ljava/lang/String;)V
    .locals 0
    .param p1, "voiceTip"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/unisound/ant/device/bean/RemoteMusicInfo;->voiceTip:Ljava/lang/String;

    .line 28
    return-void
.end method
