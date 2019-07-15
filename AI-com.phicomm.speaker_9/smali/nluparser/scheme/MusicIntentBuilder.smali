.class public Lnluparser/scheme/MusicIntentBuilder;
.super Ljava/lang/Object;
.source "MusicIntentBuilder.java"


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private artistType:Ljava/lang/String;

.field private billboard:Ljava/lang/String;

.field private episode:Ljava/lang/String;

.field private genre:Ljava/lang/String;

.field private keyword:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private lyrics:Ljava/lang/String;

.field private mood:Ljava/lang/String;

.field private musicTag:Ljava/lang/String;

.field private scene:Ljava/lang/String;

.field private song:Ljava/lang/String;

.field private songlist:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lnluparser/scheme/MusicIntent;
    .locals 2

    .line 94
    new-instance v0, Lnluparser/scheme/MusicIntent;

    invoke-direct {v0}, Lnluparser/scheme/MusicIntent;-><init>()V

    .line 95
    iget-object v1, p0, Lnluparser/scheme/MusicIntentBuilder;->song:Ljava/lang/String;

    iput-object v1, v0, Lnluparser/scheme/MusicIntent;->song:Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lnluparser/scheme/MusicIntentBuilder;->artist:Ljava/lang/String;

    iput-object v1, v0, Lnluparser/scheme/MusicIntent;->artist:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lnluparser/scheme/MusicIntentBuilder;->genre:Ljava/lang/String;

    iput-object v1, v0, Lnluparser/scheme/MusicIntent;->genre:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lnluparser/scheme/MusicIntentBuilder;->musicTag:Ljava/lang/String;

    iput-object v1, v0, Lnluparser/scheme/MusicIntent;->musicTag:Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lnluparser/scheme/MusicIntentBuilder;->mood:Ljava/lang/String;

    iput-object v1, v0, Lnluparser/scheme/MusicIntent;->mood:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lnluparser/scheme/MusicIntentBuilder;->scene:Ljava/lang/String;

    iput-object v1, v0, Lnluparser/scheme/MusicIntent;->scene:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lnluparser/scheme/MusicIntentBuilder;->billboard:Ljava/lang/String;

    iput-object v1, v0, Lnluparser/scheme/MusicIntent;->billboard:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lnluparser/scheme/MusicIntentBuilder;->language:Ljava/lang/String;

    iput-object v1, v0, Lnluparser/scheme/MusicIntent;->language:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lnluparser/scheme/MusicIntentBuilder;->lyrics:Ljava/lang/String;

    iput-object v1, v0, Lnluparser/scheme/MusicIntent;->lyrics:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lnluparser/scheme/MusicIntentBuilder;->songlist:Ljava/lang/String;

    iput-object v1, v0, Lnluparser/scheme/MusicIntent;->songlist:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lnluparser/scheme/MusicIntentBuilder;->keyword:Ljava/lang/String;

    iput-object v1, v0, Lnluparser/scheme/MusicIntent;->keyword:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lnluparser/scheme/MusicIntentBuilder;->album:Ljava/lang/String;

    iput-object v1, v0, Lnluparser/scheme/MusicIntent;->album:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lnluparser/scheme/MusicIntentBuilder;->artistType:Ljava/lang/String;

    iput-object v1, v0, Lnluparser/scheme/MusicIntent;->artistType:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lnluparser/scheme/MusicIntentBuilder;->episode:Ljava/lang/String;

    iput-object v1, v0, Lnluparser/scheme/MusicIntent;->episode:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)Lnluparser/scheme/MusicIntentBuilder;
    .locals 0

    .line 79
    iput-object p1, p0, Lnluparser/scheme/MusicIntentBuilder;->album:Ljava/lang/String;

    return-object p0
.end method

.method public setArtist(Ljava/lang/String;)Lnluparser/scheme/MusicIntentBuilder;
    .locals 0

    .line 29
    iput-object p1, p0, Lnluparser/scheme/MusicIntentBuilder;->artist:Ljava/lang/String;

    return-object p0
.end method

.method public setArtistType(Ljava/lang/String;)Lnluparser/scheme/MusicIntentBuilder;
    .locals 0

    .line 84
    iput-object p1, p0, Lnluparser/scheme/MusicIntentBuilder;->artistType:Ljava/lang/String;

    return-object p0
.end method

.method public setBillboard(Ljava/lang/String;)Lnluparser/scheme/MusicIntentBuilder;
    .locals 0

    .line 54
    iput-object p1, p0, Lnluparser/scheme/MusicIntentBuilder;->billboard:Ljava/lang/String;

    return-object p0
.end method

.method public setEpisode(Ljava/lang/String;)Lnluparser/scheme/MusicIntentBuilder;
    .locals 0

    .line 89
    iput-object p1, p0, Lnluparser/scheme/MusicIntentBuilder;->episode:Ljava/lang/String;

    return-object p0
.end method

.method public setGenre(Ljava/lang/String;)Lnluparser/scheme/MusicIntentBuilder;
    .locals 0

    .line 34
    iput-object p1, p0, Lnluparser/scheme/MusicIntentBuilder;->genre:Ljava/lang/String;

    return-object p0
.end method

.method public setKeyword(Ljava/lang/String;)Lnluparser/scheme/MusicIntentBuilder;
    .locals 0

    .line 74
    iput-object p1, p0, Lnluparser/scheme/MusicIntentBuilder;->keyword:Ljava/lang/String;

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lnluparser/scheme/MusicIntentBuilder;
    .locals 0

    .line 59
    iput-object p1, p0, Lnluparser/scheme/MusicIntentBuilder;->language:Ljava/lang/String;

    return-object p0
.end method

.method public setLyrics(Ljava/lang/String;)Lnluparser/scheme/MusicIntentBuilder;
    .locals 0

    .line 64
    iput-object p1, p0, Lnluparser/scheme/MusicIntentBuilder;->lyrics:Ljava/lang/String;

    return-object p0
.end method

.method public setMood(Ljava/lang/String;)Lnluparser/scheme/MusicIntentBuilder;
    .locals 0

    .line 44
    iput-object p1, p0, Lnluparser/scheme/MusicIntentBuilder;->mood:Ljava/lang/String;

    return-object p0
.end method

.method public setMusicTag(Ljava/lang/String;)Lnluparser/scheme/MusicIntentBuilder;
    .locals 0

    .line 39
    iput-object p1, p0, Lnluparser/scheme/MusicIntentBuilder;->musicTag:Ljava/lang/String;

    return-object p0
.end method

.method public setScene(Ljava/lang/String;)Lnluparser/scheme/MusicIntentBuilder;
    .locals 0

    .line 49
    iput-object p1, p0, Lnluparser/scheme/MusicIntentBuilder;->scene:Ljava/lang/String;

    return-object p0
.end method

.method public setSong(Ljava/lang/String;)Lnluparser/scheme/MusicIntentBuilder;
    .locals 0

    .line 24
    iput-object p1, p0, Lnluparser/scheme/MusicIntentBuilder;->song:Ljava/lang/String;

    return-object p0
.end method

.method public setSonglist(Ljava/lang/String;)Lnluparser/scheme/MusicIntentBuilder;
    .locals 0

    .line 69
    iput-object p1, p0, Lnluparser/scheme/MusicIntentBuilder;->songlist:Ljava/lang/String;

    return-object p0
.end method
