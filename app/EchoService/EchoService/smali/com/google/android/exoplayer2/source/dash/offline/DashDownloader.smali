.class public final Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;
.super Lcom/google/android/exoplayer2/offline/SegmentDownloader;
.source "DashDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/offline/SegmentDownloader",
        "<",
        "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
        "Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)V
    .locals 0
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "constructorHelper"    # Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)V

    .line 75
    return-void
.end method

.method private static addSegment(Ljava/util/ArrayList;JLjava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)V
    .locals 7
    .param p1, "startTimeUs"    # J
    .param p3, "baseUrl"    # Ljava/lang/String;
    .param p4, "rangedUri"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;J",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "segments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-virtual {p4, p3}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p4, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v4, p4, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 170
    .local v0, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v1, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    invoke-direct {v1, p1, p2, v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method private getSegmentIndex(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;)Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .locals 6
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "manifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p3, "key"    # Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 155
    iget v4, p3, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->periodIndex:I

    invoke-virtual {p2, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    iget v5, p3, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->adaptationSetIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 157
    .local v0, "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    iget v5, p3, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->representationIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 158
    .local v2, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v1

    .line 159
    .local v1, "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    if-eqz v1, :cond_0

    .line 163
    .end local v1    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    :goto_0
    return-object v1

    .line 162
    .restart local v1    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    :cond_0
    iget v4, v0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    invoke-static {p1, v4, v2}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadChunkIndex(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    move-result-object v3

    .line 163
    .local v3, "seekMap":Lcom/google/android/exoplayer2/extractor/ChunkIndex;
    if-nez v3, :cond_1

    const/4 v4, 0x0

    :goto_1
    move-object v1, v4

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;-><init>(Lcom/google/android/exoplayer2/extractor/ChunkIndex;)V

    goto :goto_1
.end method


# virtual methods
.method protected getAllSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Z)Ljava/util/List;
    .locals 8
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "manifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p3, "allowIndexLoadErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
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
    .line 85
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v6, "segments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    const/4 v5, 0x0

    .local v5, "periodIndex":I
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 87
    invoke-virtual {p2, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v7

    iget-object v2, v7, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 88
    .local v2, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    const/4 v0, 0x0

    .local v0, "adaptationIndex":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 89
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 90
    .local v1, "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v4, v7, [Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;

    .line 91
    .local v4, "keys":[Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v7, v4

    if-ge v3, v7, :cond_0

    .line 92
    new-instance v7, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;

    invoke-direct {v7, v5, v0, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;-><init>(III)V

    aput-object v7, v4, v3

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 94
    :cond_0
    invoke-virtual {p0, p1, p2, v4, p3}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;[Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;Z)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 86
    .end local v1    # "adaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .end local v3    # "i":I
    .end local v4    # "keys":[Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "adaptationIndex":I
    .end local v2    # "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    :cond_2
    return-object v6
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
    .line 68
    check-cast p2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->getAllSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 1
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object v0

    return-object v0
.end method

.method protected getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;[Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;Z)Ljava/util/List;
    .locals 24
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "manifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p3, "keys"    # [Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;
    .param p4, "allowIndexLoadErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            "[",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;",
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
    .line 104
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v16, "segments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;>;"
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v17, 0x0

    move/from16 v20, v17

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    aget-object v11, p3, v20

    .line 108
    .local v11, "key":Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v11}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->getSegmentIndex(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;)Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v7

    .line 109
    .local v7, "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    if-nez v7, :cond_2

    .line 111
    new-instance v17, Lcom/google/android/exoplayer2/offline/DownloadException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "No index for representation: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v7    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    :catch_0
    move-exception v5

    .line 114
    .local v5, "e":Ljava/io/IOException;
    if-eqz p4, :cond_1

    .line 105
    .end local v5    # "e":Ljava/io/IOException;
    :cond_0
    add-int/lit8 v17, v20, 0x1

    move/from16 v20, v17

    goto :goto_0

    .line 118
    .restart local v5    # "e":Ljava/io/IOException;
    :cond_1
    throw v5

    .line 122
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v7    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    :cond_2
    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v0, v22

    invoke-interface {v7, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentCount(J)I

    move-result v15

    .line 123
    .local v15, "segmentCount":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_3

    .line 124
    new-instance v17, Lcom/google/android/exoplayer2/offline/DownloadException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unbounded index for representation: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 127
    :cond_3
    iget v0, v11, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->periodIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v13

    .line 128
    .local v13, "period":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    iget-object v0, v13, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    move-object/from16 v17, v0

    iget v0, v11, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->adaptationSetIndex:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    move-object/from16 v17, v0

    iget v0, v11, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->representationIndex:I

    move/from16 v22, v0

    .line 129
    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 130
    .local v14, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    iget-wide v0, v13, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v18

    .line 131
    .local v18, "startUs":J
    iget-object v4, v14, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    .line 132
    .local v4, "baseUrl":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getInitializationUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v9

    .line 133
    .local v9, "initializationUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    if-eqz v9, :cond_4

    .line 134
    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v4, v9}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->addSegment(Ljava/util/ArrayList;JLjava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)V

    .line 136
    :cond_4
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndexUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v8

    .line 137
    .local v8, "indexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    if-eqz v8, :cond_5

    .line 138
    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v4, v8}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->addSegment(Ljava/util/ArrayList;JLjava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)V

    .line 141
    :cond_5
    invoke-interface {v7}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()I

    move-result v6

    .line 142
    .local v6, "firstSegmentNum":I
    add-int v17, v6, v15

    add-int/lit8 v12, v17, -0x1

    .line 143
    .local v12, "lastSegmentNum":I
    move v10, v6

    .local v10, "j":I
    :goto_1
    if-gt v10, v12, :cond_0

    .line 144
    invoke-interface {v7, v10}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v22

    add-long v22, v22, v18

    invoke-interface {v7, v10}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentUrl(I)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v17

    move-object/from16 v0, v16

    move-wide/from16 v1, v22

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v4, v3}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->addSegment(Ljava/util/ArrayList;JLjava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)V

    .line 143
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 147
    .end local v4    # "baseUrl":Ljava/lang/String;
    .end local v6    # "firstSegmentNum":I
    .end local v7    # "index":Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .end local v8    # "indexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v9    # "initializationUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v10    # "j":I
    .end local v11    # "key":Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;
    .end local v12    # "lastSegmentNum":I
    .end local v13    # "period":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .end local v14    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .end local v15    # "segmentCount":I
    .end local v18    # "startUs":J
    :cond_6
    return-object v16
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
    .line 68
    check-cast p2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    check-cast p3, [Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;[Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
