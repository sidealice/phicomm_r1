.class public Lcom/unisound/lib/msgcenter/bean/CollectMusicInfo;
.super Ljava/lang/Object;
.source "CollectMusicInfo.java"


# instance fields
.field private collectMusic:Ljava/util/List;
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

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollectMusic()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/CollectMusicInfo;->collectMusic:Ljava/util/List;

    return-object v0
.end method

.method public setCollectMusic(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/CollectMusicInfo;->collectMusic:Ljava/util/List;

    return-void
.end method
