.class public Lnluparser/scheme/AudioIntentBuilder;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lnluparser/scheme/AudioIntent;
    .locals 2

    new-instance v0, Lnluparser/scheme/AudioIntent;

    invoke-direct {v0}, Lnluparser/scheme/AudioIntent;-><init>()V

    iget-object v1, p0, Lnluparser/scheme/AudioIntentBuilder;->episode:Ljava/lang/String;

    iput-object v1, v0, Lnluparser/scheme/AudioIntent;->episode:Ljava/lang/String;

    iget-object v1, p0, Lnluparser/scheme/AudioIntentBuilder;->category:Ljava/lang/String;

    iput-object v1, v0, Lnluparser/scheme/AudioIntent;->category:Ljava/lang/String;

    iget-object v1, p0, Lnluparser/scheme/AudioIntentBuilder;->tag:Ljava/lang/String;

    iput-object v1, v0, Lnluparser/scheme/AudioIntent;->tag:Ljava/lang/String;

    iget-object v1, p0, Lnluparser/scheme/AudioIntentBuilder;->album:Ljava/lang/String;

    iput-object v1, v0, Lnluparser/scheme/AudioIntent;->album:Ljava/lang/String;

    iget-object v1, p0, Lnluparser/scheme/AudioIntentBuilder;->keyword:Ljava/lang/String;

    iput-object v1, v0, Lnluparser/scheme/AudioIntent;->keyword:Ljava/lang/String;

    iget-object v1, p0, Lnluparser/scheme/AudioIntentBuilder;->artist:Ljava/lang/String;

    iput-object v1, v0, Lnluparser/scheme/AudioIntent;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)Lnluparser/scheme/AudioIntentBuilder;
    .locals 0
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/AudioIntentBuilder;->album:Ljava/lang/String;

    return-object p0
.end method

.method public setArtist(Ljava/lang/String;)Lnluparser/scheme/AudioIntentBuilder;
    .locals 0
    .param p1, "artist"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/AudioIntentBuilder;->artist:Ljava/lang/String;

    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Lnluparser/scheme/AudioIntentBuilder;
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/AudioIntentBuilder;->category:Ljava/lang/String;

    return-object p0
.end method

.method public setEpisode(Ljava/lang/String;)Lnluparser/scheme/AudioIntentBuilder;
    .locals 0
    .param p1, "episode"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/AudioIntentBuilder;->episode:Ljava/lang/String;

    return-object p0
.end method

.method public setKeyword(Ljava/lang/String;)Lnluparser/scheme/AudioIntentBuilder;
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/AudioIntentBuilder;->keyword:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lnluparser/scheme/AudioIntentBuilder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/AudioIntentBuilder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lnluparser/scheme/AudioIntentBuilder;
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/AudioIntentBuilder;->tag:Ljava/lang/String;

    return-object p0
.end method
