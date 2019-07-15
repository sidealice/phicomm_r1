.class public Lcom/phicomm/speaker/bean/player/LyricResult;
.super Ljava/lang/Object;
.source "LyricResult.java"


# instance fields
.field private lyric:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/player/LyricBean;",
            ">;"
        }
    .end annotation
.end field

.field private song_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLyric()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/player/LyricBean;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/phicomm/speaker/bean/player/LyricResult;->lyric:Ljava/util/List;

    return-object v0
.end method

.method public getSong_id()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/phicomm/speaker/bean/player/LyricResult;->song_id:Ljava/lang/String;

    return-object v0
.end method

.method public setLyric(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/player/LyricBean;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/phicomm/speaker/bean/player/LyricResult;->lyric:Ljava/util/List;

    return-void
.end method

.method public setSong_id(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/phicomm/speaker/bean/player/LyricResult;->song_id:Ljava/lang/String;

    return-void
.end method
