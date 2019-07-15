.class public Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/dash/DashChunkSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;,
        Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;
    }
.end annotation


# instance fields
.field private final adaptationSetIndices:[I

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final elapsedRealtimeOffsetMs:J

.field private fatalError:Ljava/io/IOException;

.field private liveEdgeTimeUs:J

.field private manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private final manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private final maxSegmentsPerLoad:I

.field private missingLastSegment:Z

.field private periodIndex:I

.field protected final representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

.field private final trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

.field private final trackType:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I[ILcom/google/android/exoplayer2/trackselection/TrackSelection;ILcom/google/android/exoplayer2/upstream/DataSource;JIZZ)V
    .locals 12
    .param p1, "manifestLoaderErrorThrower"    # Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;
    .param p2, "manifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p3, "periodIndex"    # I
    .param p4, "adaptationSetIndices"    # [I
    .param p5, "trackSelection"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .param p6, "trackType"    # I
    .param p7, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p8, "elapsedRealtimeOffsetMs"    # J
    .param p10, "maxSegmentsPerLoad"    # I
    .param p11, "enableEventMessageTrack"    # Z
    .param p12, "enableCea608Track"    # Z

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 124
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 125
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->adaptationSetIndices:[I

    .line 126
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 127
    move/from16 v0, p6

    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackType:I

    .line 128
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 129
    iput p3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    .line 130
    move-wide/from16 v0, p8

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->elapsedRealtimeOffsetMs:J

    .line 131
    move/from16 v0, p10

    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->maxSegmentsPerLoad:I

    .line 133
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v4

    .line 134
    .local v4, "periodDurationUs":J
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v8, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->liveEdgeTimeUs:J

    .line 135
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->getRepresentations()Ljava/util/ArrayList;

    move-result-object v10

    .line 136
    .local v10, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    invoke-interface/range {p5 .. p5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 137
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 138
    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v3

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 139
    .local v7, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    iget-object v11, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    new-instance v3, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    move/from16 v6, p6

    move/from16 v8, p11

    move/from16 v9, p12

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JILcom/google/android/exoplayer2/source/dash/manifest/Representation;ZZ)V

    aput-object v3, v11, v2

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    .end local v7    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :cond_0
    return-void
.end method

.method private getNowUnixTimeUs()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 326
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->elapsedRealtimeOffsetMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 327
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->elapsedRealtimeOffsetMs:J

    add-long/2addr v0, v2

    mul-long/2addr v0, v4

    .line 329
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-long/2addr v0, v4

    goto :goto_0
.end method

.method private getRepresentations()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v3

    iget-object v1, v3, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 312
    .local v1, "manifestAdapationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v2, "representations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->adaptationSetIndices:[I

    array-length v6, v5

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_0

    aget v0, v5, v4

    .line 314
    .local v0, "adaptationSetIndex":I
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 313
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 316
    .end local v0    # "adaptationSetIndex":I
    :cond_0
    return-object v2
.end method

.method protected static newInitializationChunk(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .locals 12
    .param p0, "representationHolder"    # Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "trackSelectionReason"    # I
    .param p4, "trackSelectionData"    # Ljava/lang/Object;
    .param p5, "initializationUri"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .param p6, "indexUri"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    .prologue
    .line 342
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    iget-object v10, v3, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    .line 343
    .local v10, "baseUrl":Ljava/lang/String;
    if-eqz p5, :cond_1

    .line 346
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v10}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->attemptMerge(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v11

    .line 347
    .local v11, "requestUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    if-nez v11, :cond_0

    .line 348
    move-object/from16 v11, p5

    .line 353
    :cond_0
    :goto_0
    new-instance v2, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-virtual {v11, v10}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-wide v4, v11, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v6, v11, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 354
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 355
    .local v2, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v3, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-object v4, p1

    move-object v5, v2

    move-object v6, p2

    move v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;)V

    return-object v3

    .line 351
    .end local v2    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local v11    # "requestUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :cond_1
    move-object/from16 v11, p6

    .restart local v11    # "requestUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    goto :goto_0
.end method

.method protected static newMediaChunk(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;II)Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .locals 27
    .param p0, "representationHolder"    # Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .param p1, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;
    .param p2, "trackType"    # I
    .param p3, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;
    .param p6, "firstSegmentNum"    # I
    .param p7, "maxSegmentCount"    # I

    .prologue
    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-object/from16 v25, v0

    .line 363
    .local v25, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(I)J

    move-result-wide v12

    .line 364
    .local v12, "startTimeUs":J
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentUrl(I)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v26

    .line 365
    .local v26, "segmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 366
    .local v21, "baseUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    if-nez v5, :cond_0

    .line 367
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(I)J

    move-result-wide v14

    .line 368
    .local v14, "endTimeUs":J
    new-instance v4, Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v26

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    move-object/from16 v0, v26

    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    .line 369
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 370
    .local v4, "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    new-instance v6, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;

    move-object/from16 v7, p1

    move-object v8, v4

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v16, p6

    move/from16 v17, p2

    move-object/from16 v18, p3

    invoke-direct/range {v6 .. v18}, Lcom/google/android/exoplayer2/source/chunk/SingleSampleMediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJIILcom/google/android/exoplayer2/Format;)V

    .line 388
    :goto_0
    return-object v6

    .line 373
    .end local v4    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local v14    # "endTimeUs":J
    :cond_0
    const/16 v17, 0x1

    .line 374
    .local v17, "segmentCount":I
    const/16 v22, 0x1

    .local v22, "i":I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, p7

    if-ge v0, v1, :cond_1

    .line 375
    add-int v5, p6, v22

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentUrl(I)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v24

    .line 376
    .local v24, "nextSegmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->attemptMerge(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v23

    .line 377
    .local v23, "mergedSegmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    if-nez v23, :cond_2

    .line 384
    .end local v23    # "mergedSegmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v24    # "nextSegmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :cond_1
    add-int v5, p6, v17

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(I)J

    move-result-wide v14

    .line 385
    .restart local v14    # "endTimeUs":J
    new-instance v4, Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v26

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    move-object/from16 v0, v26

    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    .line 386
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 387
    .restart local v4    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    move-object/from16 v0, v25

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->presentationTimeOffsetUs:J

    neg-long v0, v6

    move-wide/from16 v18, v0

    .line 388
    .local v18, "sampleOffsetUs":J
    new-instance v6, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-object/from16 v20, v0

    move-object/from16 v7, p1

    move-object v8, v4

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v16, p6

    invoke-direct/range {v6 .. v20}, Lcom/google/android/exoplayer2/source/chunk/ContainerMediaChunk;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJIIJLcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;)V

    goto :goto_0

    .line 381
    .end local v4    # "dataSpec":Lcom/google/android/exoplayer2/upstream/DataSpec;
    .end local v14    # "endTimeUs":J
    .end local v18    # "sampleOffsetUs":J
    .restart local v23    # "mergedSegmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .restart local v24    # "nextSegmentUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :cond_2
    move-object/from16 v26, v23

    .line 382
    add-int/lit8 v17, v17, 0x1

    .line 374
    add-int/lit8 v22, v22, 0x1

    goto :goto_1
.end method

.method private resolveTimeToLiveEdgeUs(J)J
    .locals 7
    .param p1, "playbackPositionUs"    # J

    .prologue
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 334
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v1, :cond_1

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->liveEdgeTimeUs:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 335
    .local v0, "resolveTimeToLiveEdgePossible":Z
    :goto_0
    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->liveEdgeTimeUs:J

    sub-long/2addr v2, p1

    :cond_0
    return-wide v2

    .line 334
    .end local v0    # "resolveTimeToLiveEdgePossible":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLiveEdgeTimeUs(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;I)V
    .locals 2
    .param p1, "representationHolder"    # Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .param p2, "lastAvailableSegmentNum"    # I

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(I)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->liveEdgeTimeUs:J

    .line 323
    return-void

    .line 322
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method


# virtual methods
.method public getNextChunk(Lcom/google/android/exoplayer2/source/chunk/MediaChunk;JJLcom/google/android/exoplayer2/source/chunk/ChunkHolder;)V
    .locals 38
    .param p1, "previous"    # Lcom/google/android/exoplayer2/source/chunk/MediaChunk;
    .param p2, "playbackPositionUs"    # J
    .param p4, "loadPositionUs"    # J
    .param p6, "out"    # Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    .prologue
    .line 180
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v5, :cond_0

    .line 263
    :goto_0
    return-void

    .line 184
    :cond_0
    sub-long v8, p4, p2

    .line 185
    .local v8, "bufferedDurationUs":J
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->resolveTimeToLiveEdgeUs(J)J

    move-result-wide v10

    .line 186
    .local v10, "timeToLiveEdgeUs":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-wide/from16 v6, p2

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->updateSelectedTrack(JJJ)V

    .line 188
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 189
    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedIndex()I

    move-result v6

    aget-object v12, v5, v6

    .line 191
    .local v12, "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    iget-object v5, v12, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    if-eqz v5, :cond_4

    .line 192
    iget-object v0, v12, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-object/from16 v31, v0

    .line 193
    .local v31, "selectedRepresentation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    const/16 v17, 0x0

    .line 194
    .local v17, "pendingInitializationUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    const/16 v18, 0x0

    .line 195
    .local v18, "pendingIndexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    iget-object v5, v12, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->getSampleFormats()[Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    if-nez v5, :cond_1

    .line 196
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getInitializationUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v17

    .line 198
    :cond_1
    iget-object v5, v12, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    if-nez v5, :cond_2

    .line 199
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndexUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v18

    .line 201
    :cond_2
    if-nez v17, :cond_3

    if-eqz v18, :cond_4

    .line 203
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 204
    invoke-interface {v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 205
    invoke-interface {v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v16

    .line 203
    invoke-static/range {v12 .. v18}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->newInitializationChunk(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)Lcom/google/android/exoplayer2/source/chunk/Chunk;

    move-result-object v5

    move-object/from16 v0, p6

    iput-object v5, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    goto :goto_0

    .line 210
    .end local v17    # "pendingInitializationUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v18    # "pendingIndexUri":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v31    # "selectedRepresentation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :cond_4
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentCount()I

    move-result v4

    .line 211
    .local v4, "availableSegmentCount":I
    if-nez v4, :cond_7

    .line 213
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_6

    :cond_5
    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p6

    iput-boolean v5, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 217
    :cond_7
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstSegmentNum()I

    move-result v27

    .line 219
    .local v27, "firstAvailableSegmentNum":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_c

    .line 222
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->getNowUnixTimeUs()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v14, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTime:J

    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v14

    sub-long v34, v6, v14

    .line 223
    .local v34, "liveEdgeTimeUs":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v5

    iget-wide v6, v5, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v36

    .line 224
    .local v36, "periodStartUs":J
    sub-long v32, v34, v36

    .line 225
    .local v32, "liveEdgeTimeInPeriodUs":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v6, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepth:J

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v6, v14

    if-eqz v5, :cond_8

    .line 226
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v6, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepth:J

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v28

    .line 227
    .local v28, "bufferDepthUs":J
    sub-long v6, v32, v28

    .line 228
    invoke-virtual {v12, v6, v7}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentNum(J)I

    move-result v5

    .line 227
    move/from16 v0, v27

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 232
    .end local v28    # "bufferDepthUs":J
    :cond_8
    move-wide/from16 v0, v32

    invoke-virtual {v12, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentNum(J)I

    move-result v5

    add-int/lit8 v30, v5, -0x1

    .line 237
    .end local v32    # "liveEdgeTimeInPeriodUs":J
    .end local v34    # "liveEdgeTimeUs":J
    .end local v36    # "periodStartUs":J
    .local v30, "lastAvailableSegmentNum":I
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v12, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->updateLiveEdgeTimeUs(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;I)V

    .line 240
    if-nez p1, :cond_d

    .line 241
    move-wide/from16 v0, p4

    invoke-virtual {v12, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentNum(J)I

    move-result v5

    move/from16 v0, v27

    move/from16 v1, v30

    invoke-static {v5, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v25

    .line 252
    .local v25, "segmentNum":I
    :cond_9
    move/from16 v0, v25

    move/from16 v1, v30

    if-gt v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->missingLastSegment:Z

    if-eqz v5, :cond_f

    move/from16 v0, v25

    move/from16 v1, v30

    if-lt v0, v1, :cond_f

    .line 255
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v5, v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_e

    :cond_b
    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p6

    iput-boolean v5, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    goto/16 :goto_0

    .line 234
    .end local v25    # "segmentNum":I
    .end local v30    # "lastAvailableSegmentNum":I
    :cond_c
    add-int v5, v27, v4

    add-int/lit8 v30, v5, -0x1

    .restart local v30    # "lastAvailableSegmentNum":I
    goto :goto_2

    .line 244
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->getNextChunkIndex()I

    move-result v25

    .line 245
    .restart local v25    # "segmentNum":I
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    .line 247
    new-instance v5, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    goto/16 :goto_0

    .line 255
    :cond_e
    const/4 v5, 0x0

    goto :goto_3

    .line 259
    :cond_f
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->maxSegmentsPerLoad:I

    sub-int v6, v30, v25

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v26

    .line 260
    .local v26, "maxSegmentCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackType:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 261
    invoke-interface {v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 262
    invoke-interface {v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v19, v12

    .line 260
    invoke-static/range {v19 .. v26}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->newMediaChunk(Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer2/upstream/DataSource;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;II)Lcom/google/android/exoplayer2/source/chunk/Chunk;

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
    .line 171
    .local p3, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer2/source/chunk/MediaChunk;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 172
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 174
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

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
    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    throw v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    .line 167
    return-void
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V
    .locals 6
    .param p1, "chunk"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .prologue
    .line 267
    instance-of v3, p1, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 268
    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    .line 269
    .local v0, "initializationChunk":Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 270
    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v4

    aget-object v1, v3, v4

    .line 274
    .local v1, "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    if-nez v3, :cond_0

    .line 275
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->getSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object v2

    .line 276
    .local v2, "seekMap":Lcom/google/android/exoplayer2/extractor/SeekMap;
    if-eqz v2, :cond_0

    .line 277
    new-instance v3, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;

    check-cast v2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    .end local v2    # "seekMap":Lcom/google/android/exoplayer2/extractor/SeekMap;
    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/source/dash/DashWrappingSegmentIndex;-><init>(Lcom/google/android/exoplayer2/extractor/ChunkIndex;)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    .line 281
    .end local v0    # "initializationChunk":Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;
    .end local v1    # "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    :cond_0
    return-void
.end method

.method public onChunkLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;ZLjava/lang/Exception;)Z
    .locals 7
    .param p1, "chunk"    # Lcom/google/android/exoplayer2/source/chunk/Chunk;
    .param p2, "cancelable"    # Z
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v4, 0x1

    .line 285
    if-nez p2, :cond_0

    .line 286
    const/4 v3, 0x0

    .line 304
    :goto_0
    return v3

    .line 289
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-nez v3, :cond_1

    instance-of v3, p1, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    if-eqz v3, :cond_1

    instance-of v3, p3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v3, :cond_1

    move-object v3, p3

    check-cast v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v3, v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v5, 0x194

    if-ne v3, v5, :cond_1

    .line 292
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v6, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 293
    invoke-interface {v5, v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v5

    aget-object v1, v3, v5

    .line 294
    .local v1, "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentCount()I

    move-result v2

    .line 295
    .local v2, "segmentCount":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-eqz v2, :cond_1

    .line 296
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstSegmentNum()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, "lastAvailableSegmentNum":I
    move-object v3, p1

    .line 297
    check-cast v3, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/chunk/MediaChunk;->getNextChunkIndex()I

    move-result v3

    if-le v3, v0, :cond_1

    .line 298
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->missingLastSegment:Z

    move v3, v4

    .line 299
    goto :goto_0

    .line 304
    .end local v0    # "lastAvailableSegmentNum":I
    .end local v1    # "representationHolder":Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .end local v2    # "segmentCount":I
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    iget-object v5, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 305
    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v4

    .line 304
    invoke-static {v3, v4, p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkedTrackBlacklistUtil;->maybeBlacklistTrack(Lcom/google/android/exoplayer2/trackselection/TrackSelection;ILjava/lang/Exception;)Z

    move-result v3

    goto :goto_0
.end method

.method public updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V
    .locals 8
    .param p1, "newManifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p2, "newPeriodIndex"    # I

    .prologue
    .line 147
    :try_start_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 148
    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    .line 149
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v7, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v2

    .line 150
    .local v2, "periodDurationUs":J
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->getRepresentations()Ljava/util/ArrayList;

    move-result-object v5

    .line 151
    .local v5, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v6, v6

    if-ge v1, v6, :cond_0

    .line 152
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v6, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 153
    .local v4, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object v6, v6, v1

    invoke-virtual {v6, v2, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->updateRepresentation(JLcom/google/android/exoplayer2/source/dash/manifest/Representation;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/source/BehindLiveWindowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "i":I
    .end local v2    # "periodDurationUs":J
    .end local v4    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .end local v5    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Lcom/google/android/exoplayer2/source/BehindLiveWindowException;
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    .line 158
    .end local v0    # "e":Lcom/google/android/exoplayer2/source/BehindLiveWindowException;
    :cond_0
    return-void
.end method
