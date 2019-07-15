.class final Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;
.super Ljava/lang/Object;
.source "DashMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/MediaPeriod;",
        "Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback",
        "<",
        "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream",
        "<",
        "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private final chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

.field private final elapsedRealtimeOffset:J

.field private final eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field final id:I

.field private manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private final manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private final minLoadableRetryCount:I

.field private periodIndex:I

.field private sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation
.end field

.field private sequenceableLoader:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

.field private final trackGroupInfos:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

.field private final trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/source/dash/manifest/DashManifest;ILcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;ILcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;JLcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/upstream/Allocator;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "manifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p3, "periodIndex"    # I
    .param p4, "chunkSourceFactory"    # Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;
    .param p5, "minLoadableRetryCount"    # I
    .param p6, "eventDispatcher"    # Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;
    .param p7, "elapsedRealtimeOffset"    # J
    .param p9, "manifestLoaderErrorThrower"    # Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;
    .param p10, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->id:I

    .line 73
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 74
    iput p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->periodIndex:I

    .line 75
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    .line 76
    iput p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->minLoadableRetryCount:I

    .line 77
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .line 78
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->elapsedRealtimeOffset:J

    .line 79
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 80
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 81
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->newSampleStreamArray(I)[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 82
    new-instance v1, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;-><init>([Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sequenceableLoader:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    .line 84
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->buildTrackGroups(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    .line 85
    .local v0, "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/source/TrackGroupArray;[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 86
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroupInfos:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    .line 87
    return-void
.end method

.method private buildSampleStream(Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;Lcom/google/android/exoplayer2/trackselection/TrackSelection;J)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .locals 17
    .param p1, "trackGroupInfo"    # Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    .param p2, "selection"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .param p3, "positionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelection;",
            "J)",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    const/4 v14, 0x0

    .line 332
    .local v14, "embeddedTrackCount":I
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 333
    .local v16, "embeddedTrackTypes":[I
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->hasEmbeddedEventMessageTrack:Z

    .line 334
    .local v12, "enableEventMessageTrack":Z
    if-eqz v12, :cond_0

    .line 335
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "embeddedTrackCount":I
    .local v15, "embeddedTrackCount":I
    const/4 v3, 0x4

    aput v3, v16, v14

    move v14, v15

    .line 337
    .end local v15    # "embeddedTrackCount":I
    .restart local v14    # "embeddedTrackCount":I
    :cond_0
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->hasEmbeddedCea608Track:Z

    .line 338
    .local v13, "enableCea608Track":Z
    if-eqz v13, :cond_1

    .line 339
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "embeddedTrackCount":I
    .restart local v15    # "embeddedTrackCount":I
    const/4 v3, 0x3

    aput v3, v16, v14

    move v14, v15

    .line 341
    .end local v15    # "embeddedTrackCount":I
    .restart local v14    # "embeddedTrackCount":I
    :cond_1
    move-object/from16 v0, v16

    array-length v3, v0

    if-ge v14, v3, :cond_2

    .line 342
    move-object/from16 v0, v16

    invoke-static {v0, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v16

    .line 344
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->periodIndex:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->adaptationSetIndices:[I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->elapsedRealtimeOffset:J

    move-object/from16 v8, p2

    invoke-interface/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;->createDashChunkSource(Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I[ILcom/google/android/exoplayer2/trackselection/TrackSelection;IJZZ)Lcom/google/android/exoplayer2/source/dash/DashChunkSource;

    move-result-object v5

    .line 348
    .local v5, "chunkSource":Lcom/google/android/exoplayer2/source/dash/DashChunkSource;
    new-instance v2, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->minLoadableRetryCount:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v4, v16

    move-object/from16 v6, p0

    move-wide/from16 v8, p3

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;-><init>(I[ILcom/google/android/exoplayer2/source/chunk/ChunkSource;Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;Lcom/google/android/exoplayer2/upstream/Allocator;JILcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;)V

    .line 351
    .local v2, "stream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    return-object v2
.end method

.method private static buildTrackGroups(Ljava/util/List;)Landroid/util/Pair;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "[",
            "Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->getGroupedAdaptationSetIndices(Ljava/util/List;)[[I

    move-result-object v20

    .line 234
    .local v20, "groupedAdaptationSetIndices":[[I
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    .line 235
    .local v23, "primaryGroupCount":I
    move/from16 v0, v23

    new-array v0, v0, [Z

    move-object/from16 v25, v0

    .line 236
    .local v25, "primaryGroupHasEventMessageTrackFlags":[Z
    move/from16 v0, v23

    new-array v0, v0, [Z

    move-object/from16 v24, v0

    .line 237
    .local v24, "primaryGroupHasCea608TrackFlags":[Z
    move/from16 v27, v23

    .line 238
    .local v27, "totalGroupCount":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 239
    aget-object v2, v20, v21

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->hasEventMessageTrack(Ljava/util/List;[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    const/4 v2, 0x1

    aput-boolean v2, v25, v21

    .line 241
    add-int/lit8 v27, v27, 0x1

    .line 243
    :cond_0
    aget-object v2, v20, v21

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->hasCea608Track(Ljava/util/List;[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    const/4 v2, 0x1

    aput-boolean v2, v24, v21

    .line 245
    add-int/lit8 v27, v27, 0x1

    .line 238
    :cond_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 249
    :cond_2
    move/from16 v0, v27

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    move-object/from16 v31, v0

    .line 250
    .local v31, "trackGroups":[Lcom/google/android/exoplayer2/source/TrackGroup;
    move/from16 v0, v27

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    move-object/from16 v30, v0

    .line 252
    .local v30, "trackGroupInfos":[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    const/16 v28, 0x0

    .line 253
    .local v28, "trackGroupCount":I
    const/16 v21, 0x0

    move/from16 v29, v28

    .end local v28    # "trackGroupCount":I
    .local v29, "trackGroupCount":I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 254
    aget-object v4, v20, v21

    .line 255
    .local v4, "adaptationSetIndices":[I
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v26, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    array-length v6, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v6, :cond_3

    aget v16, v4, v3

    .line 257
    .local v16, "adaptationSetIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 256
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 259
    .end local v16    # "adaptationSetIndex":I
    :cond_3
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Lcom/google/android/exoplayer2/Format;

    move-object/from16 v19, v0

    .line 260
    .local v19, "formats":[Lcom/google/android/exoplayer2/Format;
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_3
    move-object/from16 v0, v19

    array-length v2, v0

    move/from16 v0, v22

    if-ge v0, v2, :cond_4

    .line 261
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    aput-object v2, v19, v22

    .line 260
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 264
    :cond_4
    const/4 v2, 0x0

    aget v2, v4, v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 265
    .local v17, "firstAdaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    move/from16 v5, v29

    .line 266
    .local v5, "primaryTrackGroupIndex":I
    aget-boolean v7, v25, v21

    .line 267
    .local v7, "hasEventMessageTrack":Z
    aget-boolean v8, v24, v21

    .line 269
    .local v8, "hasCea608Track":Z
    new-instance v2, Lcom/google/android/exoplayer2/source/TrackGroup;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v2, v31, v29

    .line 270
    add-int/lit8 v28, v29, 0x1

    .end local v29    # "trackGroupCount":I
    .restart local v28    # "trackGroupCount":I
    new-instance v2, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    move-object/from16 v0, v17

    iget v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    const/4 v6, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;-><init>(I[IIZZZ)V

    aput-object v2, v30, v29

    .line 272
    if-eqz v7, :cond_7

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":emsg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/x-emsg"

    const/4 v6, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-static {v2, v3, v6, v9, v10}, Lcom/google/android/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v18

    .line 275
    .local v18, "format":Lcom/google/android/exoplayer2/Format;
    new-instance v2, Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/exoplayer2/Format;

    const/4 v6, 0x0

    aput-object v18, v3, v6

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v2, v31, v28

    .line 276
    add-int/lit8 v29, v28, 0x1

    .end local v28    # "trackGroupCount":I
    .restart local v29    # "trackGroupCount":I
    new-instance v9, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    const/4 v10, 0x4

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v4

    move v12, v5

    invoke-direct/range {v9 .. v15}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;-><init>(I[IIZZZ)V

    aput-object v9, v30, v28

    .line 279
    .end local v18    # "format":Lcom/google/android/exoplayer2/Format;
    :goto_4
    if-eqz v8, :cond_6

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":cea608"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/cea-608"

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v6, v9}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v18

    .line 282
    .restart local v18    # "format":Lcom/google/android/exoplayer2/Format;
    new-instance v2, Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/exoplayer2/Format;

    const/4 v6, 0x0

    aput-object v18, v3, v6

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v2, v31, v29

    .line 283
    add-int/lit8 v28, v29, 0x1

    .end local v29    # "trackGroupCount":I
    .restart local v28    # "trackGroupCount":I
    new-instance v9, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    const/4 v10, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v4

    move v12, v5

    invoke-direct/range {v9 .. v15}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;-><init>(I[IIZZZ)V

    aput-object v9, v30, v29

    .line 253
    .end local v18    # "format":Lcom/google/android/exoplayer2/Format;
    :goto_5
    add-int/lit8 v21, v21, 0x1

    move/from16 v29, v28

    .end local v28    # "trackGroupCount":I
    .restart local v29    # "trackGroupCount":I
    goto/16 :goto_1

    .line 288
    .end local v4    # "adaptationSetIndices":[I
    .end local v5    # "primaryTrackGroupIndex":I
    .end local v7    # "hasEventMessageTrack":Z
    .end local v8    # "hasCea608Track":Z
    .end local v17    # "firstAdaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .end local v19    # "formats":[Lcom/google/android/exoplayer2/Format;
    .end local v22    # "j":I
    .end local v26    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    :cond_5
    new-instance v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-object/from16 v0, v31

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    move-object/from16 v0, v30

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .restart local v4    # "adaptationSetIndices":[I
    .restart local v5    # "primaryTrackGroupIndex":I
    .restart local v7    # "hasEventMessageTrack":Z
    .restart local v8    # "hasCea608Track":Z
    .restart local v17    # "firstAdaptationSet":Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .restart local v19    # "formats":[Lcom/google/android/exoplayer2/Format;
    .restart local v22    # "j":I
    .restart local v26    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    :cond_6
    move/from16 v28, v29

    .end local v29    # "trackGroupCount":I
    .restart local v28    # "trackGroupCount":I
    goto :goto_5

    :cond_7
    move/from16 v29, v28

    .end local v28    # "trackGroupCount":I
    .restart local v29    # "trackGroupCount":I
    goto :goto_4
.end method

.method private static findAdaptationSetSwitchingProperty(Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 356
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 357
    .local v0, "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    const-string v2, "urn:mpeg:dash:adaptation-set-switching:2016"

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    .end local v0    # "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    :goto_1
    return-object v0

    .line 355
    .restart local v0    # "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    .end local v0    # "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static getGroupedAdaptationSetIndices(Ljava/util/List;)[[I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;)[[I"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 293
    .local v0, "adaptationSetCount":I
    new-instance v10, Landroid/util/SparseIntArray;

    invoke-direct {v10, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 294
    .local v10, "idToIndexMap":Landroid/util/SparseIntArray;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v0, :cond_0

    .line 295
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget v12, v12, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->id:I

    invoke-virtual {v10, v12, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 294
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 298
    :cond_0
    new-array v8, v0, [[I

    .line 299
    .local v8, "groupedAdaptationSetIndices":[[I
    new-array v3, v0, [Z

    .line 301
    .local v3, "adaptationSetUsedFlags":[Z
    const/4 v6, 0x0

    .line 302
    .local v6, "groupCount":I
    const/4 v9, 0x0

    move v7, v6

    .end local v6    # "groupCount":I
    .local v7, "groupCount":I
    :goto_1
    if-ge v9, v0, :cond_4

    .line 303
    aget-boolean v12, v3, v9

    if-eqz v12, :cond_1

    move v6, v7

    .line 302
    .end local v7    # "groupCount":I
    .restart local v6    # "groupCount":I
    :goto_2
    add-int/lit8 v9, v9, 0x1

    move v7, v6

    .end local v6    # "groupCount":I
    .restart local v7    # "groupCount":I
    goto :goto_1

    .line 307
    :cond_1
    const/4 v12, 0x1

    aput-boolean v12, v3, v9

    .line 309
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v12, v12, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->supplementalProperties:Ljava/util/List;

    .line 308
    invoke-static {v12}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->findAdaptationSetSwitchingProperty(Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    move-result-object v2

    .line 310
    .local v2, "adaptationSetSwitchingProperty":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    if-nez v2, :cond_2

    .line 311
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "groupCount":I
    .restart local v6    # "groupCount":I
    const/4 v12, 0x1

    new-array v12, v12, [I

    const/4 v13, 0x0

    aput v9, v12, v13

    aput-object v12, v8, v7

    goto :goto_2

    .line 313
    .end local v6    # "groupCount":I
    .restart local v7    # "groupCount":I
    :cond_2
    iget-object v12, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "extraAdaptationSetIds":[Ljava/lang/String;
    array-length v12, v4

    add-int/lit8 v12, v12, 0x1

    new-array v1, v12, [I

    .line 315
    .local v1, "adaptationSetIndices":[I
    const/4 v12, 0x0

    aput v9, v1, v12

    .line 316
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3
    array-length v12, v4

    if-ge v11, v12, :cond_3

    .line 317
    aget-object v12, v4, v11

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 318
    .local v5, "extraIndex":I
    const/4 v12, 0x1

    aput-boolean v12, v3, v5

    .line 319
    add-int/lit8 v12, v11, 0x1

    aput v5, v1, v12

    .line 316
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 321
    .end local v5    # "extraIndex":I
    :cond_3
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "groupCount":I
    .restart local v6    # "groupCount":I
    aput-object v1, v8, v7

    goto :goto_2

    .line 325
    .end local v1    # "adaptationSetIndices":[I
    .end local v2    # "adaptationSetSwitchingProperty":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .end local v4    # "extraAdaptationSetIds":[Ljava/lang/String;
    .end local v6    # "groupCount":I
    .end local v11    # "j":I
    .restart local v7    # "groupCount":I
    :cond_4
    if-ge v7, v0, :cond_5

    .line 326
    invoke-static {v8, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[I

    :goto_4
    return-object v12

    :cond_5
    move-object v12, v8

    goto :goto_4
.end method

.method private static hasCea608Track(Ljava/util/List;[I)Z
    .locals 9
    .param p1, "adaptationSetIndices"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;[I)Z"
        }
    .end annotation

    .prologue
    .local p0, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    const/4 v5, 0x0

    .line 380
    array-length v7, p1

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_2

    aget v2, p1, v6

    .line 381
    .local v2, "i":I
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v1, v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->accessibilityDescriptors:Ljava/util/List;

    .line 382
    .local v1, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 383
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 384
    .local v0, "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    const-string v4, "urn:scte:dash:cc:cea-608:2015"

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 385
    const/4 v4, 0x1

    .line 389
    .end local v0    # "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .end local v1    # "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v2    # "i":I
    .end local v3    # "j":I
    :goto_2
    return v4

    .line 382
    .restart local v0    # "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    .restart local v1    # "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 380
    .end local v0    # "descriptor":Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
    :cond_1
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .end local v1    # "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;>;"
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_2
    move v4, v5

    .line 389
    goto :goto_2
.end method

.method private static hasEventMessageTrack(Ljava/util/List;[I)Z
    .locals 8
    .param p1, "adaptationSetIndices"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;[I)Z"
        }
    .end annotation

    .prologue
    .local p0, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    const/4 v5, 0x0

    .line 366
    array-length v7, p1

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_2

    aget v0, p1, v6

    .line 367
    .local v0, "i":I
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v3, v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 368
    .local v3, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 369
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 370
    .local v2, "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    iget-object v4, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->inbandEventStreams:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 371
    const/4 v4, 0x1

    .line 375
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .end local v3    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    :goto_2
    return v4

    .line 368
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v2    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .restart local v3    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 366
    .end local v2    # "representation":Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    :cond_1
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v3    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    :cond_2
    move v4, v5

    .line 375
    goto :goto_2
.end method

.method private static newSampleStreamArray(I)[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .locals 1
    .param p0, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    new-array v0, p0, [Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    return-object v0
.end method

.method private static releaseIfEmbeddedSampleStream(Lcom/google/android/exoplayer2/source/SampleStream;)V
    .locals 1
    .param p0, "sampleStream"    # Lcom/google/android/exoplayer2/source/SampleStream;

    .prologue
    .line 398
    instance-of v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-eqz v0, :cond_0

    .line 399
    check-cast p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    .end local p0    # "sampleStream":Lcom/google/android/exoplayer2/source/SampleStream;
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->release()V

    .line 401
    :cond_0
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 1
    .param p1, "positionUs"    # J

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sequenceableLoader:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->continueLoading(J)Z

    move-result v0

    return v0
.end method

.method public discardBuffer(J)V
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    .line 188
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 189
    .local v0, "sampleStream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->discardEmbeddedTracksTo(J)V

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "sampleStream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    :cond_0
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sequenceableLoader:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sequenceableLoader:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    .line 115
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .prologue
    .line 49
    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)V

    return-void
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "sampleStream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 226
    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 0
    .param p1, "callback"    # Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
    .param p2, "positionUs"    # J

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 109
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 110
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .prologue
    .line 205
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 101
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 102
    .local v0, "sampleStream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->release()V

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "sampleStream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    :cond_0
    return-void
.end method

.method public seekToUs(J)J
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    .line 215
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 216
    .local v0, "sampleStream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->seekToUs(J)V

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v0    # "sampleStream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    :cond_0
    return-wide p1
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 13
    .param p1, "selections"    # [Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lcom/google/android/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .prologue
    .line 125
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 127
    .local v4, "primarySampleStreams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v10, p1

    if-ge v2, v10, :cond_4

    .line 128
    aget-object v10, p3, v2

    instance-of v10, v10, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    if-eqz v10, :cond_1

    .line 130
    aget-object v7, p3, v2

    check-cast v7, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 131
    .local v7, "stream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    aget-object v10, p1, v2

    if-eqz v10, :cond_0

    aget-boolean v10, p2, v2

    if-nez v10, :cond_3

    .line 132
    :cond_0
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->release()V

    .line 133
    const/4 v10, 0x0

    aput-object v10, p3, v2

    .line 139
    .end local v7    # "stream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    :cond_1
    :goto_1
    aget-object v10, p3, v2

    if-nez v10, :cond_2

    aget-object v10, p1, v2

    if-eqz v10, :cond_2

    .line 140
    iget-object v10, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v11, p1, v2

    invoke-interface {v11}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v8

    .line 141
    .local v8, "trackGroupIndex":I
    iget-object v10, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroupInfos:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    aget-object v9, v10, v8

    .line 142
    .local v9, "trackGroupInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    iget-boolean v10, v9, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->isPrimary:Z

    if-eqz v10, :cond_2

    .line 143
    aget-object v10, p1, v2

    move-wide/from16 v0, p5

    invoke-direct {p0, v9, v10, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->buildSampleStream(Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;Lcom/google/android/exoplayer2/trackselection/TrackSelection;J)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v7

    .line 145
    .restart local v7    # "stream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    aput-object v7, p3, v2

    .line 147
    const/4 v10, 0x1

    aput-boolean v10, p4, v2

    .line 127
    .end local v7    # "stream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    .end local v8    # "trackGroupIndex":I
    .end local v9    # "trackGroupInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .restart local v7    # "stream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    :cond_3
    iget-object v10, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v11, p1, v2

    invoke-interface {v11}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v8

    .line 136
    .restart local v8    # "trackGroupIndex":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 152
    .end local v7    # "stream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    .end local v8    # "trackGroupIndex":I
    :cond_4
    const/4 v2, 0x0

    :goto_2
    array-length v10, p1

    if-ge v2, v10, :cond_c

    .line 153
    aget-object v10, p3, v2

    instance-of v10, v10, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-nez v10, :cond_5

    aget-object v10, p3, v2

    instance-of v10, v10, Lcom/google/android/exoplayer2/source/EmptySampleStream;

    if-eqz v10, :cond_7

    :cond_5
    aget-object v10, p1, v2

    if-eqz v10, :cond_6

    aget-boolean v10, p2, v2

    if-nez v10, :cond_7

    .line 156
    :cond_6
    aget-object v10, p3, v2

    invoke-static {v10}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->releaseIfEmbeddedSampleStream(Lcom/google/android/exoplayer2/source/SampleStream;)V

    .line 157
    const/4 v10, 0x0

    aput-object v10, p3, v2

    .line 161
    :cond_7
    aget-object v10, p1, v2

    if-eqz v10, :cond_8

    .line 162
    iget-object v10, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v11, p1, v2

    invoke-interface {v11}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v8

    .line 163
    .restart local v8    # "trackGroupIndex":I
    iget-object v10, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroupInfos:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    aget-object v9, v10, v8

    .line 164
    .restart local v9    # "trackGroupInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    iget-boolean v10, v9, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->isPrimary:Z

    if-nez v10, :cond_8

    .line 165
    iget v10, v9, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->primaryTrackGroupIndex:I

    .line 166
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 165
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 167
    .local v5, "primaryStream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<*>;"
    aget-object v6, p3, v2

    .line 168
    .local v6, "stream":Lcom/google/android/exoplayer2/source/SampleStream;
    if-nez v5, :cond_9

    instance-of v3, v6, Lcom/google/android/exoplayer2/source/EmptySampleStream;

    .line 171
    .local v3, "mayRetainStream":Z
    :goto_3
    if-nez v3, :cond_8

    .line 172
    invoke-static {v6}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->releaseIfEmbeddedSampleStream(Lcom/google/android/exoplayer2/source/SampleStream;)V

    .line 173
    if-nez v5, :cond_b

    new-instance v10, Lcom/google/android/exoplayer2/source/EmptySampleStream;

    invoke-direct {v10}, Lcom/google/android/exoplayer2/source/EmptySampleStream;-><init>()V

    .line 174
    :goto_4
    aput-object v10, p3, v2

    .line 175
    const/4 v10, 0x1

    aput-boolean v10, p4, v2

    .line 152
    .end local v3    # "mayRetainStream":Z
    .end local v5    # "primaryStream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<*>;"
    .end local v6    # "stream":Lcom/google/android/exoplayer2/source/SampleStream;
    .end local v8    # "trackGroupIndex":I
    .end local v9    # "trackGroupInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 168
    .restart local v5    # "primaryStream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<*>;"
    .restart local v6    # "stream":Lcom/google/android/exoplayer2/source/SampleStream;
    .restart local v8    # "trackGroupIndex":I
    .restart local v9    # "trackGroupInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    :cond_9
    instance-of v10, v6, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-eqz v10, :cond_a

    move-object v10, v6

    check-cast v10, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    iget-object v10, v10, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->parent:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    if-ne v10, v5, :cond_a

    const/4 v3, 0x1

    goto :goto_3

    :cond_a
    const/4 v3, 0x0

    goto :goto_3

    .line 173
    .restart local v3    # "mayRetainStream":Z
    :cond_b
    iget v10, v9, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    .line 174
    move-wide/from16 v0, p5

    invoke-virtual {v5, v0, v1, v10}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->selectEmbeddedTrack(JI)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    move-result-object v10

    goto :goto_4

    .line 180
    .end local v3    # "mayRetainStream":Z
    .end local v5    # "primaryStream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<*>;"
    .end local v6    # "stream":Lcom/google/android/exoplayer2/source/SampleStream;
    .end local v8    # "trackGroupIndex":I
    .end local v9    # "trackGroupInfo":Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    :cond_c
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-static {v10}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->newSampleStreamArray(I)[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 181
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-interface {v10, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 182
    new-instance v10, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    iget-object v11, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-direct {v10, v11}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;-><init>([Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    iput-object v10, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sequenceableLoader:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    .line 183
    return-wide p5
.end method

.method public updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V
    .locals 5
    .param p1, "manifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p2, "periodIndex"    # I

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 91
    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->periodIndex:I

    .line 92
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    if-eqz v1, :cond_1

    .line 93
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 94
    .local v0, "sampleStream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getChunkSource()Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/DashChunkSource;

    invoke-interface {v1, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashChunkSource;->updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V

    .line 93
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 96
    .end local v0    # "sampleStream":Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;, "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<Lcom/google/android/exoplayer2/source/dash/DashChunkSource;>;"
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 98
    :cond_1
    return-void
.end method
