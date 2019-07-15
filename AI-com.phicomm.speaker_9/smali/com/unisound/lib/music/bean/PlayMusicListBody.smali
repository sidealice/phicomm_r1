.class public Lcom/unisound/lib/music/bean/PlayMusicListBody;
.super Lcom/unisound/lib/msgcenter/bean/BaseInfo;
.source "PlayMusicListBody.java"


# instance fields
.field private appKey:Ljava/lang/String;

.field private musicList:Ljava/util/List;
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

    .line 10
    invoke-direct {p0}, Lcom/unisound/lib/msgcenter/bean/BaseInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/unisound/lib/music/bean/PlayMusicListBody;->appKey:Ljava/lang/String;

    return-object v0
.end method

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

    .line 40
    iget-object v0, p0, Lcom/unisound/lib/music/bean/PlayMusicListBody;->musicList:Ljava/util/List;

    return-object v0
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/unisound/lib/music/bean/PlayMusicListBody;->appKey:Ljava/lang/String;

    return-void
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

    .line 49
    iput-object p1, p0, Lcom/unisound/lib/music/bean/PlayMusicListBody;->musicList:Ljava/util/List;

    return-void
.end method
