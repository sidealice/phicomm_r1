.class public final Lcom/google/android/exoplayer2/source/smoothstreaming/offline/SsDownloader;
.super Lcom/google/android/exoplayer2/offline/SegmentDownloader;
.source "SsDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/offline/SegmentDownloader",
        "<",
        "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
        "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)V
    .locals 0
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "constructorHelper"    # Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)V

    .line 69
    return-void
.end method


# virtual methods
.method protected getAllSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Z)Ljava/util/List;
    .locals 7
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "manifest"    # Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;
    .param p3, "allowIndexLoadErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
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
    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v2, "segments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 86
    iget-object v4, p2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    aget-object v3, v4, v0

    .line 87
    .local v3, "streamElement":Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v4, v3, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->formats:[Lcom/google/android/exoplayer2/Format;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 88
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;

    const/4 v5, 0x0

    new-instance v6, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;

    invoke-direct {v6, v0, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;-><init>(II)V

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, p2, v4, p3}, Lcom/google/android/exoplayer2/source/smoothstreaming/offline/SsDownloader;->getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;Z)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 85
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "j":I
    .end local v3    # "streamElement":Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    :cond_1
    return-object v2
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
    .line 62
    check-cast p2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/smoothstreaming/offline/SsDownloader;->getAllSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;
    .locals 4
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 v2, 0x3

    invoke-direct {v0, p2, v2}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;I)V

    .line 75
    .local v0, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    const/4 v2, 0x4

    new-instance v3, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;-><init>()V

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    .line 77
    .local v1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;>;"
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->load()V

    .line 78
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    return-object v2
.end method

.method public bridge synthetic getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/smoothstreaming/offline/SsDownloader;->getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    move-result-object v0

    return-object v0
.end method

.method protected getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;Z)Ljava/util/List;
    .locals 11
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "manifest"    # Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;
    .param p3, "keys"    # [Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;
    .param p4, "allowIndexLoadErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            "[",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;",
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
    .line 98
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v2, "segments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    array-length v5, p3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, p3, v4

    .line 100
    .local v1, "key":Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;
    iget-object v6, p2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    iget v7, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->streamElementIndex:I

    aget-object v3, v6, v7

    .line 101
    .local v3, "streamElement":Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v6, v3, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    if-ge v0, v6, :cond_0

    .line 102
    new-instance v6, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v8

    new-instance v7, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v10, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->trackIndex:I

    .line 103
    invoke-virtual {v3, v10, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->buildRequestUri(II)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    invoke-direct {v6, v8, v9, v7}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 102
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "i":I
    .end local v1    # "key":Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;
    .end local v3    # "streamElement":Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    :cond_1
    return-object v2
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
    .line 62
    check-cast p2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    check-cast p3, [Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/smoothstreaming/offline/SsDownloader;->getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
