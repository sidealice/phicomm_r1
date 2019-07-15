.class public final Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;
.super Ljava/lang/Object;
.source "HlsMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;
.implements Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private final continueLoadingHandler:Landroid/os/Handler;

.field private final dataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

.field private enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

.field private final eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field private final extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

.field private final minLoadableRetryCount:I

.field private pendingPrepareCount:I

.field private final playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

.field private sequenceableLoader:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

.field private final streamWrapperIndices:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Lcom/google/android/exoplayer2/source/SampleStream;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

.field private trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;ILcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/Allocator;)V
    .locals 2
    .param p1, "extractorFactory"    # Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;
    .param p2, "playlistTracker"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
    .param p3, "dataSourceFactory"    # Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;
    .param p4, "minLoadableRetryCount"    # I
    .param p5, "eventDispatcher"    # Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;
    .param p6, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    .line 68
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 69
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->dataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    .line 70
    iput p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->minLoadableRetryCount:I

    .line 71
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .line 72
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 73
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    .line 74
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->continueLoadingHandler:Landroid/os/Handler;

    .line 76
    new-array v0, v1, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 77
    new-array v0, v1, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 78
    return-void
.end method

.method private buildAndPrepareSampleStreamWrappers(J)V
    .locals 25
    .param p1, "positionUs"    # J

    .prologue
    .line 284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getMasterPlaylist()Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v19

    .line 286
    .local v19, "masterPlaylist":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 287
    .local v21, "selectedVariants":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v17, "definiteVideoVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v16, "definiteAudioOnlyVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_3

    .line 290
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 291
    .local v24, "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->height:I

    if-gtz v3, :cond_0

    const-string v3, "avc"

    move-object/from16 v0, v24

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->variantHasExplicitCodecWithPrefix(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 292
    :cond_0
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_1
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 293
    :cond_2
    const-string v3, "mp4a"

    move-object/from16 v0, v24

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->variantHasExplicitCodecWithPrefix(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 294
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 297
    .end local v24    # "variant":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 301
    move-object/from16 v21, v17

    .line 309
    :cond_4
    :goto_2
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->audios:Ljava/util/List;

    .line 310
    .local v2, "audioRenditions":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    move-object/from16 v22, v0

    .line 311
    .local v22, "subtitleRenditions":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 312
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    new-array v3, v3, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 313
    const/4 v14, 0x0

    .line 314
    .local v14, "currentWrapperIndex":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    .line 316
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    :goto_3
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 317
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    new-array v5, v3, [Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 318
    .local v5, "variants":[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 319
    const/4 v4, 0x0

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->muxedCaptionFormats:Ljava/util/List;

    move-object/from16 v3, p0

    move-wide/from16 v8, p1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(I[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/Format;Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v20

    .line 321
    .local v20, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "currentWrapperIndex":I
    .local v15, "currentWrapperIndex":I
    aput-object v20, v3, v14

    .line 322
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->setIsTimestampMaster(Z)V

    .line 323
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->continuePreparing()V

    .line 328
    const/16 v18, 0x0

    move v14, v15

    .end local v15    # "currentWrapperIndex":I
    .restart local v14    # "currentWrapperIndex":I
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_7

    .line 329
    const/4 v8, 0x1

    const/4 v3, 0x1

    new-array v9, v3, [Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    const/4 v4, 0x0

    .line 330
    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aput-object v3, v9, v4

    const/4 v10, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object/from16 v7, p0

    move-wide/from16 v12, p1

    .line 329
    invoke-direct/range {v7 .. v13}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(I[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/Format;Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v20

    .line 331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "currentWrapperIndex":I
    .restart local v15    # "currentWrapperIndex":I
    aput-object v20, v3, v14

    .line 332
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->continuePreparing()V

    .line 328
    add-int/lit8 v18, v18, 0x1

    move v14, v15

    .end local v15    # "currentWrapperIndex":I
    .restart local v14    # "currentWrapperIndex":I
    goto :goto_4

    .line 302
    .end local v2    # "audioRenditions":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    .end local v5    # "variants":[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .end local v14    # "currentWrapperIndex":I
    .end local v20    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .end local v22    # "subtitleRenditions":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 305
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 316
    .restart local v2    # "audioRenditions":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    .restart local v14    # "currentWrapperIndex":I
    .restart local v22    # "subtitleRenditions":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    .line 336
    .restart local v5    # "variants":[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .restart local v20    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    :cond_7
    const/16 v18, 0x0

    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_8

    .line 337
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 338
    .local v23, "url":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    const/4 v8, 0x3

    const/4 v3, 0x1

    new-array v9, v3, [Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    const/4 v3, 0x0

    aput-object v23, v9, v3

    const/4 v10, 0x0

    .line 339
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object/from16 v7, p0

    move-wide/from16 v12, p1

    .line 338
    invoke-direct/range {v7 .. v13}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(I[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/Format;Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v20

    .line 340
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepareSingleTrack(Lcom/google/android/exoplayer2/Format;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "currentWrapperIndex":I
    .restart local v15    # "currentWrapperIndex":I
    aput-object v20, v3, v14

    .line 336
    add-int/lit8 v18, v18, 0x1

    move v14, v15

    .end local v15    # "currentWrapperIndex":I
    .restart local v14    # "currentWrapperIndex":I
    goto :goto_5

    .line 345
    .end local v23    # "url":Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 346
    return-void
.end method

.method private buildSampleStreamWrapper(I[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/Format;Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .locals 11
    .param p1, "trackType"    # I
    .param p2, "variants"    # [Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p3, "muxedAudioFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p5, "positionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;J)",
            "Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;"
        }
    .end annotation

    .prologue
    .line 350
    .local p4, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->dataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    move-object v3, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;[Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;Ljava/util/List;)V

    .line 352
    .local v0, "defaultChunkSource":Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;
    new-instance v1, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->minLoadableRetryCount:I

    iget-object v10, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move v2, p1

    move-object v3, p0

    move-object v4, v0

    move-wide/from16 v6, p5

    move-object v8, p3

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;-><init>(ILcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;Lcom/google/android/exoplayer2/upstream/Allocator;JLcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;)V

    return-object v1
.end method

.method private continuePreparingOrLoading()V
    .locals 4

    .prologue
    .line 357
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    if-eqz v1, :cond_1

    .line 358
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 365
    :cond_0
    return-void

    .line 361
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 362
    .local v0, "wrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->continuePreparing()V

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static variantHasExplicitCodecWithPrefix(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/lang/String;)Z
    .locals 7
    .param p0, "variant"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 368
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v4, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 369
    .local v2, "codecs":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 378
    :cond_0
    :goto_0
    return v3

    .line 372
    :cond_1
    const-string v4, "(\\s*,\\s*)|(\\s*$)"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "codecArray":[Ljava/lang/String;
    array-length v5, v1

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 374
    .local v0, "codec":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 375
    const/4 v3, 0x1

    goto :goto_0

    .line 373
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 1
    .param p1, "positionUs"    # J

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sequenceableLoader:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->continueLoading(J)Z

    move-result v0

    return v0
.end method

.method public discardBuffer(J)V
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    .line 187
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 188
    .local v0, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->discardBuffer(J)V

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v0    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    :cond_0
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sequenceableLoader:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sequenceableLoader:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 98
    .local v0, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeThrowPrepareError()V

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    :cond_0
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .prologue
    .line 44
    check-cast p1, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    return-void
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .locals 1
    .param p1, "sampleStreamWrapper"    # Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    if-nez v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    goto :goto_0
.end method

.method public onPlaylistBlacklisted(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)V
    .locals 4
    .param p1, "url"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p2, "blacklistMs"    # J

    .prologue
    .line 275
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 276
    .local v0, "streamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onPlaylistBlacklisted(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)V

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "streamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->continuePreparingOrLoading()V

    .line 279
    return-void
.end method

.method public onPlaylistChanged()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->continuePreparingOrLoading()V

    .line 271
    return-void
.end method

.method public onPlaylistRefreshRequired(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V
    .locals 1
    .param p1, "url"    # Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->refreshPlaylist(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V

    .line 255
    return-void
.end method

.method public onPrepared()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 232
    iget v8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    if-lez v8, :cond_0

    .line 250
    :goto_0
    return-void

    .line 236
    :cond_0
    const/4 v2, 0x0

    .line 237
    .local v2, "totalTrackGroupCount":I
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v10, v9

    move v8, v7

    :goto_1
    if-ge v8, v10, :cond_1

    aget-object v1, v9, v8

    .line 238
    .local v1, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v11

    iget v11, v11, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    add-int/2addr v2, v11

    .line 237
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 240
    .end local v1    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    :cond_1
    new-array v3, v2, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 241
    .local v3, "trackGroupArray":[Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v4, 0x0

    .line 242
    .local v4, "trackGroupIndex":I
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v9, v8

    :goto_2
    if-ge v7, v9, :cond_3

    aget-object v1, v8, v7

    .line 243
    .restart local v1    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v10

    iget v6, v10, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    .line 244
    .local v6, "wrapperTrackGroupCount":I
    const/4 v0, 0x0

    .local v0, "j":I
    move v5, v4

    .end local v4    # "trackGroupIndex":I
    .local v5, "trackGroupIndex":I
    :goto_3
    if-ge v0, v6, :cond_2

    .line 245
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "trackGroupIndex":I
    .restart local v4    # "trackGroupIndex":I
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v10

    aput-object v10, v3, v5

    .line 244
    add-int/lit8 v0, v0, 0x1

    move v5, v4

    .end local v4    # "trackGroupIndex":I
    .restart local v5    # "trackGroupIndex":I
    goto :goto_3

    .line 242
    :cond_2
    add-int/lit8 v7, v7, 0x1

    move v4, v5

    .end local v5    # "trackGroupIndex":I
    .restart local v4    # "trackGroupIndex":I
    goto :goto_2

    .line 248
    .end local v0    # "j":I
    .end local v1    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .end local v6    # "wrapperTrackGroupCount":I
    :cond_3
    new-instance v7, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v7, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    iput-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 249
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v7, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    goto :goto_0
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 2
    .param p1, "callback"    # Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
    .param p2, "positionUs"    # J

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->addListener(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V

    .line 92
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->buildAndPrepareSampleStreamWrappers(J)V

    .line 93
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .prologue
    .line 204
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 81
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->removeListener(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V

    .line 82
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->continueLoadingHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 83
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 84
    .local v0, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->release()V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    :cond_0
    return-void
.end method

.method public seekToUs(J)J
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    const/4 v3, 0x0

    .line 214
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 217
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aget-object v2, v2, v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seekToUs(JZ)Z

    move-result v0

    .line 218
    .local v0, "forceReset":Z
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seekToUs(JZ)Z

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    :cond_0
    if-eqz v0, :cond_1

    .line 222
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->reset()V

    .line 225
    .end local v0    # "forceReset":Z
    .end local v1    # "i":I
    :cond_1
    return-wide p1
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 21
    .param p1, "selections"    # [Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lcom/google/android/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .prologue
    .line 111
    move-object/from16 v0, p1

    array-length v5, v0

    new-array v0, v5, [I

    move-object/from16 v17, v0

    .line 112
    .local v17, "streamChildIndices":[I
    move-object/from16 v0, p1

    array-length v5, v0

    new-array v0, v5, [I

    move-object/from16 v16, v0

    .line 113
    .local v16, "selectionChildIndices":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v5, v0

    if-ge v2, v5, :cond_3

    .line 114
    aget-object v5, p3, v2

    if-nez v5, :cond_1

    const/4 v5, -0x1

    .line 115
    :goto_1
    aput v5, v17, v2

    .line 116
    const/4 v5, -0x1

    aput v5, v16, v2

    .line 117
    aget-object v5, p1, v2

    if-eqz v5, :cond_0

    .line 118
    aget-object v5, p1, v2

    invoke-interface {v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v18

    .line 119
    .local v18, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v5, v5

    if-ge v11, v5, :cond_0

    .line 120
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aget-object v5, v5, v11

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    .line 121
    aput v11, v16, v2

    .line 113
    .end local v11    # "j":I
    .end local v18    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    aget-object v7, p3, v2

    .line 115
    invoke-virtual {v5, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    .line 119
    .restart local v11    # "j":I
    .restart local v18    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 128
    .end local v11    # "j":I
    .end local v18    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    :cond_3
    const/4 v10, 0x0

    .line 129
    .local v10, "forceReset":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    invoke-virtual {v5}, Ljava/util/IdentityHashMap;->clear()V

    .line 131
    move-object/from16 v0, p1

    array-length v5, v0

    new-array v15, v5, [Lcom/google/android/exoplayer2/source/SampleStream;

    .line 132
    .local v15, "newStreams":[Lcom/google/android/exoplayer2/source/SampleStream;
    move-object/from16 v0, p1

    array-length v5, v0

    new-array v6, v5, [Lcom/google/android/exoplayer2/source/SampleStream;

    .line 133
    .local v6, "childStreams":[Lcom/google/android/exoplayer2/source/SampleStream;
    move-object/from16 v0, p1

    array-length v5, v0

    new-array v4, v5, [Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 134
    .local v4, "childSelections":[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    const/4 v12, 0x0

    .line 135
    .local v12, "newEnabledSampleStreamWrapperCount":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v5, v5

    new-array v14, v5, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 137
    .local v14, "newEnabledSampleStreamWrappers":[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v5, v5

    if-ge v2, v5, :cond_10

    .line 138
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_4
    move-object/from16 v0, p1

    array-length v5, v0

    if-ge v11, v5, :cond_6

    .line 139
    aget v5, v17, v11

    if-ne v5, v2, :cond_4

    aget-object v5, p3, v11

    :goto_5
    aput-object v5, v6, v11

    .line 140
    aget v5, v16, v11

    if-ne v5, v2, :cond_5

    aget-object v5, p1, v11

    :goto_6
    aput-object v5, v4, v11

    .line 138
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 139
    :cond_4
    const/4 v5, 0x0

    goto :goto_5

    .line 140
    :cond_5
    const/4 v5, 0x0

    goto :goto_6

    .line 142
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aget-object v3, v5, v2

    .local v3, "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    .line 143
    invoke-virtual/range {v3 .. v10}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJZ)Z

    move-result v19

    .line 145
    .local v19, "wasReset":Z
    const/16 v20, 0x0

    .line 146
    .local v20, "wrapperEnabled":Z
    const/4 v11, 0x0

    :goto_7
    move-object/from16 v0, p1

    array-length v5, v0

    if-ge v11, v5, :cond_b

    .line 147
    aget v5, v16, v11

    if-ne v5, v2, :cond_9

    .line 149
    aget-object v5, v6, v11

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    :goto_8
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 150
    aget-object v5, v6, v11

    aput-object v5, v15, v11

    .line 151
    const/16 v20, 0x1

    .line 152
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    aget-object v7, v6, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_7
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 149
    :cond_8
    const/4 v5, 0x0

    goto :goto_8

    .line 153
    :cond_9
    aget v5, v17, v11

    if-ne v5, v2, :cond_7

    .line 155
    aget-object v5, v6, v11

    if-nez v5, :cond_a

    const/4 v5, 0x1

    :goto_a
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    goto :goto_9

    :cond_a
    const/4 v5, 0x0

    goto :goto_a

    .line 158
    :cond_b
    if-eqz v20, :cond_d

    .line 159
    aput-object v3, v14, v12

    .line 160
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "newEnabledSampleStreamWrapperCount":I
    .local v13, "newEnabledSampleStreamWrapperCount":I
    if-nez v12, :cond_e

    .line 163
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->setIsTimestampMaster(Z)V

    .line 164
    if-nez v19, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v5, v5

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    if-eq v3, v5, :cond_f

    .line 168
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/hls/TimestampAdjusterProvider;->reset()V

    .line 169
    const/4 v10, 0x1

    move v12, v13

    .line 137
    .end local v13    # "newEnabledSampleStreamWrapperCount":I
    .restart local v12    # "newEnabledSampleStreamWrapperCount":I
    :cond_d
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 172
    .end local v12    # "newEnabledSampleStreamWrapperCount":I
    .restart local v13    # "newEnabledSampleStreamWrapperCount":I
    :cond_e
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->setIsTimestampMaster(Z)V

    :cond_f
    move v12, v13

    .end local v13    # "newEnabledSampleStreamWrapperCount":I
    .restart local v12    # "newEnabledSampleStreamWrapperCount":I
    goto :goto_b

    .line 177
    .end local v3    # "sampleStreamWrapper":Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .end local v11    # "j":I
    .end local v19    # "wasReset":Z
    .end local v20    # "wrapperEnabled":Z
    :cond_10
    const/4 v5, 0x0

    const/4 v7, 0x0

    array-length v8, v15

    move-object/from16 v0, p3

    invoke-static {v15, v5, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    invoke-static {v14, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 181
    new-instance v5, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-direct {v5, v7}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;-><init>([Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->sequenceableLoader:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    .line 182
    return-wide p5
.end method
