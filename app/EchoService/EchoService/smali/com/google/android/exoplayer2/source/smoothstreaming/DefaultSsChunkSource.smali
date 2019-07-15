.class public Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;
.super Ljava/lang/Object;
.source "DefaultSsChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;
    }
.end annotation


# instance fields
.field private currentManifestChunkOffset:I

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final elementIndex:I

.field private final extractorWrappers:[Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

.field private fatalError:Ljava/io/IOException;

.field private manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

.field private final manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private final trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;ILcom/google/android/exoplayer2/trackselection/TrackSelection;Lcom/google/android/exoplayer2/upstream/DataSource;[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;)V
    .locals 20
    .param p1, "manifestLoaderErrorThrower"    # Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;
    .param p2, "manifest"    # Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;
    .param p3, "elementIndex"    # I
    .param p4, "trackSelection"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .param p5, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p6, "trackEncryptionBoxes"    # [Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 87
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 88
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->elementIndex:I

    .line 89
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 90
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 92
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    aget-object v19, v5, p3

    .line 94
    .local v19, "streamElement":Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    invoke-interface/range {p4 .. p4}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->extractorWrappers:[Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    .line 95
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->extractorWrappers:[Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    array-length v5, v5

    move/from16 v0, v18

    if-ge v0, v5, :cond_1

    .line 96
    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v4

    .line 97
    .local v4, "manifestTrackIndex":I
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v12, v5, v4

    .line 98
    .local v12, "format":Lcom/google/android/exoplayer2/Format;
    move-object/from16 v0, v19

    iget v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const/4 v15, 0x4

    .line 99
    .local v15, "nalUnitLengthFieldLength":I
    :goto_1
    new-instance v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    move-object/from16 v0, v19

    iget v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->type:I

    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->timescale:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->durationUs:J

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v14, p6

    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer2/extractor/mp4/Track;-><init>(IIJJJLcom/google/android/exoplayer2/Format;I[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V

    .line 102
    .local v3, "track":Lcom/google/android/exoplayer2/extractor/mp4/Track;
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v2, v5, v6, v3, v7}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    .line 105
    .local v2, "extractor":Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->extractorWrappers:[Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    new-instance v6, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-object/from16 v0, v19

    iget v7, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->type:I

    invoke-direct {v6, v2, v7, v12}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;-><init>(Lcom/google/android/exoplayer2/extractor/Extractor;ILcom/google/android/exoplayer2/Format;)V

    aput-object v6, v5, v18

    .line 95
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 98
    .end local v2    # "extractor":Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;
    .end local v3    # "track":Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .end local v15    # "nalUnitLengthFieldLength":I
    :cond_0
    const/4 v15, 0x0

    goto :goto_1

    .line 107
    .end local v4    # "manifestTrackIndex":I
    .end local v12    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_1
    return-void
.end method

.method private static newMediaChunk(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;Ljava/lang/String;IJJILjava/lang/Object;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;)Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
    .locals 17
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "cacheKey"    # Ljava/lang/String;
    .param p4, "chunkIndex"    # I
    .param p5, "chunkStartTimeUs"    # J
    .param p7, "chunkEndTimeUs"    # J
    .param p9, "trackSelectionReason"    # I
    .param p10, "trackSelectionData"    # Ljava/lang/Object;
    .param p11, "extractorWrapper"    # Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    .prologue
    .line 218
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object/from16 v1, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 221
    .local v0, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    move-wide/from16 v14, p5

    .line 222
    .local v14, "sampleOffsetUs":J
    new-instance v2, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;

    const/4 v13, 0x1

    move-object/from16 v3, p1

    move-object v4, v0

    move-object/from16 v5, p0

    move/from16 v6, p9

    move-object/from16 v7, p10

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p4

    move-object/from16 v16, p11

    invoke-direct/range {v2 .. v16}, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJIIJLcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;)V

    return-object v2
.end method

.method private resolveTimeToLiveEdgeUs(J)J
    .locals 9
    .param p1, "playbackPositionUs"    # J

    .prologue
    .line 228
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-nez v4, :cond_0

    .line 229
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 236
    :goto_0
    return-wide v4

    .line 232
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    iget v5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->elementIndex:I

    aget-object v0, v4, v5

    .line 233
    .local v0, "currentElement":Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    iget v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    add-int/lit8 v1, v4, -0x1

    .line 234
    .local v1, "lastChunkIndex":I
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v4

    .line 235
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v6

    add-long v2, v4, v6

    .line 236
    .local v2, "lastChunkEndTimeUs":J
    sub-long v4, v2, p1

    goto :goto_0
.end method


# virtual methods
.method public final getNextChunk(Lcom/google/android/exoplayer2/source/chunk/MediaChunk;JJLcom/google/android/exoplayer2/source/chunk/ChunkHolder;)V
    .locals 28
    .param p1, "previous"    # Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
    .param p2, "playbackPositionUs"    # J
    .param p4, "loadPositionUs"    # J
    .param p6, "out"    # Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    .prologue
    .line 154
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v5, :cond_0

    .line 200
    :goto_0
    return-void

    .line 158
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->elementIndex:I

    aget-object v25, v5, v6

    .line 159
    .local v25, "streamElement":Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    move-object/from16 v0, v25

    iget v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    if-nez v5, :cond_2

    .line 161
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v5, v5, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p6

    iput-boolean v5, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 166
    :cond_2
    if-nez p1, :cond_4

    .line 167
    move-object/from16 v0, v25

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkIndex(J)I

    move-result v4

    .line 177
    .local v4, "chunkIndex":I
    :cond_3
    move-object/from16 v0, v25

    iget v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    if-lt v4, v5, :cond_6

    .line 179
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v5, v5, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-nez v5, :cond_5

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p6

    iput-boolean v5, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    goto :goto_0

    .line 169
    .end local v4    # "chunkIndex":I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->getNextChunkIndex()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    sub-int v4, v5, v6

    .line 170
    .restart local v4    # "chunkIndex":I
    if-gez v4, :cond_3

    .line 172
    new-instance v5, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->fatalError:Ljava/io/IOException;

    goto :goto_0

    .line 179
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 183
    :cond_6
    sub-long v8, p4, p2

    .line 184
    .local v8, "bufferedDurationUs":J
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->resolveTimeToLiveEdgeUs(J)J

    move-result-wide v10

    .line 185
    .local v10, "timeToLiveEdgeUs":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-wide/from16 v6, p2

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->updateSelectedTrack(JJJ)V

    .line 187
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v18

    .line 188
    .local v18, "chunkStartTimeUs":J
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v6

    add-long v20, v18, v6

    .line 189
    .local v20, "chunkEndTimeUs":J
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    add-int v17, v4, v5

    .line 191
    .local v17, "currentAbsoluteChunkIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedIndex()I

    move-result v26

    .line 192
    .local v26, "trackSelectionIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->extractorWrappers:[Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    aget-object v24, v5, v26

    .line 194
    .local v24, "extractorWrapper":Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move/from16 v0, v26

    invoke-interface {v5, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v12

    .line 195
    .local v12, "manifestTrackIndex":I
    move-object/from16 v0, v25

    invoke-virtual {v0, v12, v4}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->buildRequestUri(II)Landroid/net/Uri;

    move-result-object v15

    .line 197
    .local v15, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 199
    invoke-interface {v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v23

    .line 197
    invoke-static/range {v13 .. v24}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->newMediaChunk(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;Ljava/lang/String;IJJILjava/lang/Object;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;)Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    move-result-object v5

    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    goto/16 :goto_0
.end method

.method public getPreferredQueueSize(JLjava/util/List;)I
    .locals 3
    .param p1, "playbackPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 145
    .local p3, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/source/chunk/MediaChunk;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 146
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 148
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->evaluateQueueSize(JLjava/util/List;)I

    move-result v0

    goto :goto_0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->fatalError:Ljava/io/IOException;

    throw v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    .line 141
    return-void
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V
    .locals 0
    .param p1, "chunk"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .prologue
    .line 205
    return-void
.end method

.method public onChunkLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;ZLjava/lang/Exception;)Z
    .locals 3
    .param p1, "chunk"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .param p2, "cancelable"    # Z
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 209
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 210
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    .line 209
    invoke-static {v0, v1, p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkedTrackBlacklistUtil;->maybeBlacklistTrack(Lcom/google/android/exoplayer2/trackselection/TrackSelection;ILjava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateManifest(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;)V
    .locals 12
    .param p1, "newManifest"    # Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .prologue
    .line 111
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    iget v8, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->elementIndex:I

    aget-object v0, v5, v8

    .line 112
    .local v0, "currentElement":Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    iget v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    .line 113
    .local v1, "currentElementChunkCount":I
    iget-object v5, p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    iget v8, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->elementIndex:I

    aget-object v4, v5, v8

    .line 114
    .local v4, "newElement":Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    if-eqz v1, :cond_0

    iget v5, v4, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    if-nez v5, :cond_1

    .line 116
    :cond_0
    iget v5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    .line 129
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 130
    return-void

    .line 118
    :cond_1
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v8

    add-int/lit8 v5, v1, -0x1

    .line 119
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v10

    add-long v2, v8, v10

    .line 120
    .local v2, "currentElementEndTimeUs":J
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v6

    .line 121
    .local v6, "newElementStartTimeUs":J
    cmp-long v5, v2, v6

    if-gtz v5, :cond_2

    .line 123
    iget v5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    goto :goto_0

    .line 126
    :cond_2
    iget v5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    invoke-virtual {v0, v6, v7}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkIndex(J)I

    move-result v8

    add-int/2addr v5, v8

    iput v5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    goto :goto_0
.end method
