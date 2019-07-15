.class public Lnluparser/scheme/AudioIntentBuilder;
.super Ljava/lang/Object;
.source "AudioIntentBuilder.java"


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private episode:Ljava/lang/String;

.field private keyword:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lnluparser/scheme/AudioIntent;
    .locals 2

    .line 51
    new-instance v0, Lnluparser/scheme/AudioIntent;

    invoke-direct {v0}, Lnluparser/scheme/AudioIntent;-><init>()V

    .line 52
    iget-object v1, p0, Lnluparser/scheme/AudioIntentBuilder;->episode:Ljava/lang/String;

    iput-object v1, v0, Lnluparser/scheme/AudioIntent;->episode:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lnluparser/scheme/AudioIntentBuilder;->category:Ljava/lang/String;

    iput-object v1, v0, Lnluparser/scheme/AudioIntent;->category:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lnluparser/scheme/AudioIntentBuilder;->tag:Ljava/lang/String;

    iput-object v1, v0, Lnluparser/scheme/AudioIntent;->tag:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lnluparser/scheme/AudioIntentBuilder;->album:Ljava/lang/String;

    iput-object v1, v0, Lnluparser/scheme/AudioIntent;->album:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lnluparser/scheme/AudioIntentBuilder;->keyword:Ljava/lang/String;

    iput-object v1, v0, Lnluparser/scheme/AudioIntent;->keyword:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lnluparser/scheme/AudioIntentBuilder;->artist:Ljava/lang/String;

    iput-object v1, v0, Lnluparser/scheme/AudioIntent;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)Lnluparser/scheme/AudioIntentBuilder;
    .locals 0

    .line 16
    iput-object p1, p0, Lnluparser/scheme/AudioIntentBuilder;->album:Ljava/lang/String;

    return-object p0
.end method

.method public setArtist(Ljava/lang/String;)Lnluparser/scheme/AudioIntentBuilder;
    .locals 0

    .line 21
    iput-object p1, p0, Lnluparser/scheme/AudioIntentBuilder;->artist:Ljava/lang/String;

    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Lnluparser/scheme/AudioIntentBuilder;
    .locals 0

    .line 41
    iput-object p1, p0, Lnluparser/scheme/AudioIntentBuilder;->category:Ljava/lang/String;

    return-object p0
.end method

.method public setEpisode(Ljava/lang/String;)Lnluparser/scheme/AudioIntentBuilder;
    .locals 0

    .line 26
    iput-object p1, p0, Lnluparser/scheme/AudioIntentBuilder;->episode:Ljava/lang/String;

    return-object p0
.end method

.method public setKeyword(Ljava/lang/String;)Lnluparser/scheme/AudioIntentBuilder;
    .locals 0

    .line 31
    iput-object p1, p0, Lnluparser/scheme/AudioIntentBuilder;->keyword:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lnluparser/scheme/AudioIntentBuilder;
    .locals 0

    .line 36
    iput-object p1, p0, Lnluparser/scheme/AudioIntentBuilder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lnluparser/scheme/AudioIntentBuilder;
    .locals 0

    .line 46
    iput-object p1, p0, Lnluparser/scheme/AudioIntentBuilder;->tag:Ljava/lang/String;

    return-object p0
.end method
