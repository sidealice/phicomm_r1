.class public final Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;
.super Lcom/google/android/exoplayer2/offline/SegmentDownloader;
.source "HlsDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/offline/SegmentDownloader",
        "<",
        "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)V
    .locals 0
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "constructorHelper"    # Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)V

    .line 50
    return-void
.end method

.method private static addSegment(Ljava/util/ArrayList;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/util/HashSet;)V
    .locals 11
    .param p1, "mediaPlaylist"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .param p2, "hlsSegment"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "segments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    .local p3, "encryptionKeyUris":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-wide v4, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    add-long v8, v2, v4

    .line 120
    .local v8, "startTimeUs":J
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 123
    .local v7, "keyUri":Landroid/net/Uri;
    invoke-virtual {p3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    new-instance v2, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-direct {v2, v7}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    invoke-direct {v0, v8, v9, v2}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v7    # "keyUri":Landroid/net/Uri;
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 128
    .local v1, "resolvedUri":Landroid/net/Uri;
    new-instance v10, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v2, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeOffset:J

    iget-wide v4, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeLength:J

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    invoke-direct {v10, v8, v9, v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;)V

    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method private static extractUrls(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "hlsUrls":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    .local p1, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 134
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method private loadManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;
    .locals 4
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 v2, 0x3

    invoke-direct {v0, p2, v2}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;I)V

    .line 110
    .local v0, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    const/4 v2, 0x4

    new-instance v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;-><init>()V

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    .line 112
    .local v1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;>;"
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->load()V

    .line 113
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    return-object v2
.end method


# virtual methods
.method protected getAllSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;Z)Ljava/util/List;
    .locals 2
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "manifest"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    .param p3, "allowIndexLoadErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;->extractUrls(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 67
    iget-object v1, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->audios:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;->extractUrls(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 68
    iget-object v1, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;->extractUrls(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;->getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic getAllSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Ljava/lang/Object;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    check-cast p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;->getAllSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    .locals 2
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;->loadManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    move-result-object v0

    .line 55
    .local v0, "hlsPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;
    instance-of v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    if-eqz v1, :cond_0

    .line 56
    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    .line 58
    .end local v0    # "hlsPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;
    :goto_0
    return-object v0

    .restart local v0    # "hlsPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->createSingleVariantMasterPlaylist(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;->getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v0

    return-object v0
.end method

.method protected getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;[Ljava/lang/String;Z)Ljava/util/List;
    .locals 17
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "manifest"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    .param p3, "keys"    # [Ljava/lang/String;
    .param p4, "allowIndexLoadErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 77
    .local v3, "encryptionKeyUris":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v9, "segments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    move-object/from16 v0, p3

    array-length v15, v0

    const/4 v11, 0x0

    move v14, v11

    :goto_0
    if-ge v14, v15, :cond_5

    aget-object v8, p3, v14

    .line 79
    .local v8, "playlistUrl":Ljava/lang/String;
    const/4 v7, 0x0

    .line 80
    .local v7, "mediaPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->baseUri:Ljava/lang/String;

    invoke-static {v11, v8}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 82
    .local v10, "uri":Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;->loadManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-object v7, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    new-instance v11, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    if-eqz v7, :cond_2

    iget-wide v12, v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    :goto_1
    new-instance v16, Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    move-object/from16 v0, v16

    invoke-direct {v11, v12, v13, v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    if-nez v7, :cond_3

    .line 78
    :cond_1
    add-int/lit8 v11, v14, 0x1

    move v14, v11

    goto :goto_0

    .line 83
    :catch_0
    move-exception v2

    .line 84
    .local v2, "e":Ljava/io/IOException;
    if-nez p4, :cond_0

    .line 85
    throw v2

    .line 88
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    const-wide/high16 v12, -0x8000000000000000L

    goto :goto_1

    .line 94
    :cond_3
    iget-object v6, v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->initializationSegment:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 95
    .local v6, "initSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    if-eqz v6, :cond_4

    .line 96
    invoke-static {v9, v7, v6, v3}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;->addSegment(Ljava/util/ArrayList;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/util/HashSet;)V

    .line 99
    :cond_4
    iget-object v4, v7, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 100
    .local v4, "hlsSegments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_1

    .line 101
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    invoke-static {v9, v7, v11, v3}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;->addSegment(Ljava/util/ArrayList;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/util/HashSet;)V

    .line 100
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 104
    .end local v4    # "hlsSegments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .end local v5    # "i":I
    .end local v6    # "initSegment":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .end local v7    # "mediaPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .end local v8    # "playlistUrl":Ljava/lang/String;
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_5
    return-object v9
.end method

.method protected bridge synthetic getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Ljava/lang/Object;[Ljava/lang/Object;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    check-cast p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;->getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
