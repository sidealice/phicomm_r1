.class public Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;
.super Ljava/lang/Object;
.source "MusicInfo.java"


# instance fields
.field private album:Ljava/lang/String;

.field private categoryName:Ljava/lang/String;

.field private music_id:Ljava/lang/String;

.field private singer:Ljava/lang/String;

.field private songName:Ljava/lang/String;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->singer:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->songName:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->music_id:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->album:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->categoryName:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->tag:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "singer"    # Ljava/lang/String;
    .param p2, "songName"    # Ljava/lang/String;
    .param p3, "music_id"    # Ljava/lang/String;
    .param p4, "album"    # Ljava/lang/String;
    .param p5, "categoryName"    # Ljava/lang/String;
    .param p6, "tag"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->singer:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->songName:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->music_id:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->album:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->categoryName:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->tag:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->singer:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->songName:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->music_id:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->album:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->categoryName:Ljava/lang/String;

    .line 21
    iput-object p6, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->tag:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getMusic_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->music_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSinger()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->singer:Ljava/lang/String;

    return-object v0
.end method

.method public getSongName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->songName:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->album:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0
    .param p1, "categoryName"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->categoryName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setMusic_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "music_id"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->music_id:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setSinger(Ljava/lang/String;)V
    .locals 0
    .param p1, "singer"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->singer:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setSongName(Ljava/lang/String;)V
    .locals 0
    .param p1, "songName"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->songName:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/phicomm/speaker/player/statistics/bean/MusicInfo;->tag:Ljava/lang/String;

    .line 73
    return-void
.end method
