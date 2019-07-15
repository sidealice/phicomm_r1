.class public final Lcom/google/android/exoplayer2/source/dash/DashUtil;
.super Ljava/lang/Object;
.source "DashUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFirstRepresentation(Lcom/google/android/exoplayer2/source/dash/manifest/Period;I)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .locals 4
    .param p0, "period"    # Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 193
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->getAdaptationSetIndex(I)I

    move-result v0

    .line 194
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 198
    :goto_0
    return-object v3

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v1, v2, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 198
    .local v1, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v3

    :goto_1
    move-object v3, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    goto :goto_1
.end method

.method public static loadChunkIndex(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/extractor/ChunkIndex;
    .locals 2
    .param p0, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p1, "trackType"    # I
    .param p2, "representation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadInitializationData(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;Z)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-result-object v0

    .line 129
    .local v0, "extractorWrapper":Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->getSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    goto :goto_0
.end method

.method public static loadDrmInitData(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/Period;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .locals 6
    .param p0, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p1, "period"    # Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 75
    const/4 v1, 0x2

    .line 76
    .local v1, "primaryTrackType":I
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->getFirstRepresentation(Lcom/google/android/exoplayer2/source/dash/manifest/Period;I)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object v2

    .line 77
    .local v2, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    if-nez v2, :cond_1

    .line 78
    const/4 v1, 0x1

    .line 79
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->getFirstRepresentation(Lcom/google/android/exoplayer2/source/dash/manifest/Period;I)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object v2

    .line 80
    if-nez v2, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-object v4

    .line 84
    :cond_1
    iget-object v5, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v5, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 85
    .local v0, "drmInitData":Lcom/google/android/exoplayer2/drm/DrmInitData;
    if-eqz v0, :cond_2

    move-object v4, v0

    .line 88
    goto :goto_0

    .line 90
    :cond_2
    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadSampleFormat(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 91
    .local v3, "sampleFormat":Lcom/google/android/exoplayer2/Format;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    goto :goto_0
.end method

.method private static loadInitializationData(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;Z)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;
    .locals 6
    .param p0, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p1, "trackType"    # I
    .param p2, "representation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .param p3, "loadIndex"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 148
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getInitializationUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v2

    .line 149
    .local v2, "initializationUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    if-nez v2, :cond_0

    move-object v0, v4

    .line 170
    :goto_0
    return-object v0

    .line 152
    :cond_0
    iget-object v5, p2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, v5}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->newWrappedExtractor(ILcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-result-object v0

    .line 154
    .local v0, "extractorWrapper":Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;
    if-eqz p3, :cond_3

    .line 155
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndexUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v1

    .line 156
    .local v1, "indexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    if-nez v1, :cond_1

    move-object v0, v4

    .line 157
    goto :goto_0

    .line 161
    :cond_1
    iget-object v4, p2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->attemptMerge(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v3

    .line 162
    .local v3, "requestUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    if-nez v3, :cond_2

    .line 163
    invoke-static {p0, p2, v0, v2}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadInitializationData(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)V

    .line 164
    move-object v3, v1

    .line 169
    .end local v1    # "indexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :cond_2
    :goto_1
    invoke-static {p0, p2, v0, v3}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadInitializationData(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)V

    goto :goto_0

    .line 167
    .end local v3    # "requestUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :cond_3
    move-object v3, v2

    .restart local v3    # "requestUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    goto :goto_1
.end method

.method private static loadInitializationData(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/dash/manifest/Representation;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)V
    .locals 8
    .param p0, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p1, "representation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .param p2, "extractorWrapper"    # Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;
    .param p3, "requestUri"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    invoke-virtual {p3, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p3, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v4, p3, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    .line 177
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 178
    .local v0, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v1, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    iget-object v4, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;)V

    .line 181
    .local v1, "initializationChunk":Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->load()V

    .line 182
    return-void
.end method

.method public static loadManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 4
    .param p0, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 v2, 0x3

    invoke-direct {v0, p1, v2}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;I)V

    .line 58
    .local v0, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    const/4 v2, 0x4

    new-instance v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;-><init>()V

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    .line 60
    .local v1, "loadable":Lcom/google/android/exoplayer2/upstream/ParsingLoadable;, "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;>;"
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->load()V

    .line 61
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    return-object v2
.end method

.method public static loadSampleFormat(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/Format;
    .locals 3
    .param p0, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p1, "trackType"    # I
    .param p2, "representation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-static {p0, p1, p2, v2}, Lcom/google/android/exoplayer2/source/dash/DashUtil;->loadInitializationData(Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/source/dash/manifest/Representation;Z)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-result-object v0

    .line 109
    .local v0, "extractorWrapper":Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->getSampleFormats()[Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method private static newWrappedExtractor(ILcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;
    .locals 4
    .param p0, "trackType"    # I
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    .line 185
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 186
    .local v2, "mimeType":Ljava/lang/String;
    const-string v3, "video/webm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "audio/webm"

    .line 187
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 188
    .local v1, "isWebm":Z
    :goto_0
    if-eqz v1, :cond_2

    new-instance v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>()V

    .line 189
    .local v0, "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :goto_1
    new-instance v3, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    invoke-direct {v3, v0, p0, p1}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;-><init>(Lcom/google/android/exoplayer2/extractor/Extractor;ILcom/google/android/exoplayer2/Format;)V

    return-object v3

    .line 187
    .end local v0    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    .end local v1    # "isWebm":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 188
    .restart local v1    # "isWebm":Z
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>()V

    goto :goto_1
.end method
