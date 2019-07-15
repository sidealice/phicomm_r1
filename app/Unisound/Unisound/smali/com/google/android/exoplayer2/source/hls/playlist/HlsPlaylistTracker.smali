.class public final Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
.super Ljava/lang/Object;
.source "HlsPlaylistTracker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;,
        Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;,
        Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback",
        "<",
        "Lcom/google/android/exoplayer2/upstream/ParsingLoadable",
        "<",
        "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final PRIMARY_URL_KEEPALIVE_MS:J = 0x3a98L


# instance fields
.field private final dataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

.field private final eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field private final initialPlaylistLoader:Lcom/google/android/exoplayer2/upstream/Loader;

.field private final initialPlaylistUri:Landroid/net/Uri;

.field private isLive:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private masterPlaylist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

.field private final minRetryCount:I

.field private final playlistBundles:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;",
            ">;"
        }
    .end annotation
.end field

.field private final playlistParser:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

.field private final playlistRefreshHandler:Landroid/os/Handler;

.field private primaryHlsUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

.field private final primaryPlaylistListener:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;

.field private primaryUrlSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;ILcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;)V
    .locals 2
    .param p1, "initialPlaylistUri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;
    .param p3, "eventDispatcher"    # Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;
    .param p4, "minRetryCount"    # I
    .param p5, "primaryPlaylistListener"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->initialPlaylistUri:Landroid/net/Uri;

    .line 113
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->dataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    .line 114
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .line 115
    iput p4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->minRetryCount:I

    .line 116
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryPlaylistListener:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->listeners:Ljava/util/List;

    .line 118
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v1, "HlsPlaylistTracker:MasterPlaylist"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->initialPlaylistLoader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 119
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistParser:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    .line 120
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistRefreshHandler:Landroid/os/Handler;

    .line 122
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p2, "x2"    # J

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->notifyPlaylistBlacklisting(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryHlsUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->maybeSelectNewPrimaryUrl()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .param p2, "x2"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getLatestPlaylistSnapshot(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p2, "x2"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->onPlaylistUpdated(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistRefreshHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->dataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->masterPlaylist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistParser:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->minRetryCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    return-object v0
.end method

.method private createBundles(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 315
    .local v4, "listSize":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 316
    .local v2, "currentTimeMs":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 317
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 318
    .local v5, "url":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    invoke-direct {v0, p0, v5, v2, v3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;-><init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)V

    .line 319
    .local v0, "bundle":Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    invoke-virtual {v6, v5, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    .end local v0    # "bundle":Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;
    .end local v5    # "url":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    :cond_0
    return-void
.end method

.method private static getFirstOldOverlappingSegment(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .locals 4
    .param p0, "oldPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .param p1, "loadedPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .prologue
    .line 416
    iget v2, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    iget v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    sub-int v0, v2, v3

    .line 417
    .local v0, "mediaSequenceOffset":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 418
    .local v1, "oldSegments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getLatestPlaylistSnapshot(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .locals 4
    .param p1, "oldPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .param p2, "loadedPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .prologue
    .line 356
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->isNewerThan(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 357
    iget-boolean v1, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->copyWithEndTag()Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object p1

    .line 369
    .end local p1    # "oldPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    :cond_0
    :goto_0
    return-object p1

    .line 367
    .restart local p1    # "oldPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getLoadedPlaylistStartTimeUs(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)J

    move-result-wide v2

    .line 368
    .local v2, "startTimeUs":J
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getLoadedPlaylistDiscontinuitySequence(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)I

    move-result v0

    .line 369
    .local v0, "discontinuitySequence":I
    invoke-virtual {p2, v2, v3, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->copyWith(JI)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object p1

    goto :goto_0
.end method

.method private getLoadedPlaylistDiscontinuitySequence(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)I
    .locals 5
    .param p1, "oldPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .param p2, "loadedPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .prologue
    const/4 v2, 0x0

    .line 396
    iget-boolean v3, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasDiscontinuitySequence:Z

    if-eqz v3, :cond_1

    .line 397
    iget v1, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    .line 411
    :cond_0
    :goto_0
    return v1

    .line 400
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryUrlSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryUrlSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget v1, v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    .line 402
    .local v1, "primaryUrlDiscontinuitySequence":I
    :goto_1
    if-eqz p1, :cond_0

    .line 405
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getFirstOldOverlappingSegment(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v0

    .line 406
    .local v0, "firstOldOverlappingSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    if-eqz v0, :cond_0

    .line 407
    iget v3, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    iget v4, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeDiscontinuitySequence:I

    add-int/2addr v3, v4

    iget-object v4, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 409
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget v2, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeDiscontinuitySequence:I

    sub-int v1, v3, v2

    goto :goto_0

    .end local v0    # "firstOldOverlappingSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .end local v1    # "primaryUrlDiscontinuitySequence":I
    :cond_2
    move v1, v2

    .line 400
    goto :goto_1
.end method

.method private getLoadedPlaylistStartTimeUs(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)J
    .locals 8
    .param p1, "oldPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .param p2, "loadedPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .prologue
    .line 374
    iget-boolean v4, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    if-eqz v4, :cond_1

    .line 375
    iget-wide v2, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    .line 390
    :cond_0
    :goto_0
    return-wide v2

    .line 377
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryUrlSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryUrlSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-wide v2, v4, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    .line 379
    .local v2, "primarySnapshotStartTimeUs":J
    :goto_1
    if-eqz p1, :cond_0

    .line 382
    iget-object v4, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 383
    .local v1, "oldPlaylistSize":I
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getFirstOldOverlappingSegment(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v0

    .line 384
    .local v0, "firstOldOverlappingSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    if-eqz v0, :cond_3

    .line 385
    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    add-long v2, v4, v6

    goto :goto_0

    .line 377
    .end local v0    # "firstOldOverlappingSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .end local v1    # "oldPlaylistSize":I
    .end local v2    # "primarySnapshotStartTimeUs":J
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_1

    .line 386
    .restart local v0    # "firstOldOverlappingSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .restart local v1    # "oldPlaylistSize":I
    .restart local v2    # "primarySnapshotStartTimeUs":J
    :cond_3
    iget v4, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    iget v5, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    sub-int/2addr v4, v5

    if-ne v1, v4, :cond_0

    .line 387
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->getEndTimeUs()J

    move-result-wide v2

    goto :goto_0
.end method

.method private maybeSelectNewPrimaryUrl()Z
    .locals 8

    .prologue
    .line 283
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->masterPlaylist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    iget-object v4, v6, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    .line 284
    .local v4, "variants":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 285
    .local v5, "variantsSize":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 286
    .local v2, "currentTimeMs":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 287
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    .line 288
    .local v0, "bundle":Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->access$200(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;)J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 289
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->access$300(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryHlsUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 290
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylist()V

    .line 291
    const/4 v6, 0x1

    .line 294
    .end local v0    # "bundle":Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;
    :goto_1
    return v6

    .line 286
    .restart local v0    # "bundle":Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    .end local v0    # "bundle":Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private maybeSetPrimaryUrl(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V
    .locals 8
    .param p1, "url"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .prologue
    .line 298
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->masterPlaylist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryUrlSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryUrlSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryHlsUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    invoke-virtual {v1, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    .line 306
    .local v0, "currentPrimaryBundle":Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->access$400(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;)J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 307
    .local v2, "primarySnapshotAccessAgeMs":J
    const-wide/16 v4, 0x3a98

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 308
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryHlsUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 309
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryHlsUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    invoke-virtual {v1, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylist()V

    goto :goto_0
.end method

.method private notifyPlaylistBlacklisting(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)V
    .locals 4
    .param p1, "url"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p2, "blacklistMs"    # J

    .prologue
    .line 348
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 349
    .local v1, "listenersSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 350
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->listeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;

    invoke-interface {v2, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;->onPlaylistBlacklisted(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)V

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    return-void
.end method

.method private onPlaylistUpdated(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Z
    .locals 5
    .param p1, "url"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p2, "newSnapshot"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 331
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryHlsUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-ne p1, v2, :cond_1

    .line 332
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryUrlSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    if-nez v2, :cond_0

    .line 334
    iget-boolean v2, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->isLive:Z

    .line 336
    :cond_0
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryUrlSnapshot:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 337
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryPlaylistListener:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;

    invoke-interface {v2, p2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;->onPrimaryPlaylistRefreshed(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    .line 339
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 340
    .local v1, "listenersSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 341
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->listeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;->onPlaylistChanged()V

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "listenersSize":I
    :cond_2
    move v2, v4

    .line 334
    goto :goto_0

    .line 344
    .restart local v0    # "i":I
    .restart local v1    # "listenersSize":I
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryHlsUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-ne p1, v2, :cond_4

    iget-boolean v2, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez v2, :cond_4

    :goto_2
    return v3

    :cond_4
    move v3, v4

    goto :goto_2
.end method


# virtual methods
.method public addListener(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public getMasterPlaylist()Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->masterPlaylist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    return-object v0
.end method

.method public getPlaylistSnapshot(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .locals 2
    .param p1, "url"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .prologue
    .line 170
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->getPlaylistSnapshot()Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v0

    .line 171
    .local v0, "snapshot":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->maybeSetPrimaryUrl(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V

    .line 174
    :cond_0
    return-object v0
.end method

.method public isLive()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->isLive:Z

    return v0
.end method

.method public isSnapshotValid(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)Z
    .locals 1
    .param p1, "url"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->isSnapshotValid()Z

    move-result v0

    return v0
.end method

.method public maybeThrowPlaylistRefreshError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->initialPlaylistLoader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 210
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryHlsUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryHlsUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->access$000(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;)Lcom/google/android/exoplayer2/upstream/Loader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 213
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 8

    .prologue
    .line 41
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->onLoadCanceled(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJZ)V
    .locals 10
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "released"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;JJZ)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 v3, 0x4

    .line 268
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    .line 267
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJ)V

    .line 269
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 6

    .prologue
    .line 41
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->onLoadCompleted(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 14
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;>;"
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    .line 240
    .local v12, "result":Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;
    instance-of v0, v12, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 241
    .local v0, "isMediaPlaylist":Z
    if-eqz v0, :cond_0

    .line 242
    iget-object v1, v12, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->createSingleVariantMasterPlaylist(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v10

    .line 246
    .local v10, "masterPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    :goto_0
    iput-object v10, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->masterPlaylist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    .line 247
    iget-object v1, v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryHlsUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 248
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v13, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    iget-object v1, v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 250
    iget-object v1, v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->audios:Ljava/util/List;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 251
    iget-object v1, v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 252
    invoke-direct {p0, v13}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->createBundles(Ljava/util/List;)V

    .line 253
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryHlsUrl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    .line 254
    .local v11, "primaryBundle":Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;
    if-eqz v0, :cond_1

    .line 256
    check-cast v12, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .end local v12    # "result":Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;
    invoke-static {v11, v12}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->access$100(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    .line 260
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 v3, 0x4

    .line 261
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v8

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    .line 260
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJ)V

    .line 262
    return-void

    .end local v10    # "masterPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    .end local v11    # "primaryBundle":Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;
    .end local v13    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    .restart local v12    # "result":Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;
    :cond_0
    move-object v10, v12

    .line 244
    check-cast v10, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    .restart local v10    # "masterPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    goto :goto_0

    .line 258
    .restart local v11    # "primaryBundle":Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;
    .restart local v13    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    :cond_1
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylist()V

    goto :goto_1
.end method

.method public bridge synthetic onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 8

    .prologue
    .line 41
    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->onLoadError(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I

    move-result v0

    return v0
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I
    .locals 14
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;>;"
    move-object/from16 v0, p6

    instance-of v13, v0, Lcom/google/android/exoplayer2/ParserException;

    .line 275
    .local v13, "isFatal":Z
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v4, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 v5, 0x4

    .line 276
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v10

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    .line 275
    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJLjava/io/IOException;Z)V

    .line 277
    if-eqz v13, :cond_0

    const/4 v2, 0x3

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public refreshPlaylist(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V
    .locals 1
    .param p1, "url"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylist()V

    .line 222
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 194
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->initialPlaylistLoader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->release()V

    .line 195
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    .line 196
    .local v0, "bundle":Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->release()V

    goto :goto_0

    .line 198
    .end local v0    # "bundle":Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistRefreshHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 199
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->clear()V

    .line 200
    return-void
.end method

.method public removeListener(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 146
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->dataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    .line 147
    invoke-interface {v1, v4}, Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;->createDataSource(I)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->initialPlaylistUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistParser:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    .line 149
    .local v0, "masterPlaylistLoadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->initialPlaylistLoader:Lcom/google/android/exoplayer2/upstream/Loader;

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->minRetryCount:I

    invoke-virtual {v1, v0, p0, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    .line 150
    return-void
.end method
