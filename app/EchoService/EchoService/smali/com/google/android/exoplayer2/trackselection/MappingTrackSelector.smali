.class public abstract Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;
.super Lcom/google/android/exoplayer2/trackselection/TrackSelector;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;,
        Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    }
.end annotation


# instance fields
.field private currentMappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

.field private final rendererDisabledFlags:Landroid/util/SparseBooleanArray;

.field private final selectionOverrides:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation
.end field

.field private tunnelingAudioSessionId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;-><init>()V

    .line 345
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    .line 346
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 347
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->tunnelingAudioSessionId:I

    .line 348
    return-void
.end method

.method private determineEnabledRenderers([Lcom/google/android/exoplayer2/RendererCapabilities;[Lcom/google/android/exoplayer2/trackselection/TrackSelection;)[Z
    .locals 5
    .param p1, "rendererCapabilities"    # [Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p2, "trackSelections"    # [Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .prologue
    .line 600
    array-length v3, p2

    new-array v2, v3, [Z

    .line 601
    .local v2, "rendererEnabled":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 602
    iget-object v3, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 603
    .local v0, "forceRendererDisabled":Z
    if-nez v0, :cond_1

    aget-object v3, p1, v1

    .line 604
    invoke-interface {v3}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    aget-object v3, p2, v1

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    aput-boolean v3, v2, v1

    .line 601
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 604
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 607
    .end local v0    # "forceRendererDisabled":Z
    :cond_2
    return-object v2
.end method

.method private static findRenderer([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;)I
    .locals 8
    .param p0, "rendererCapabilities"    # [Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p1, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 653
    array-length v1, p0

    .line 654
    .local v1, "bestRendererIndex":I
    const/4 v0, 0x0

    .line 655
    .local v0, "bestFormatSupportLevel":I
    const/4 v5, 0x0

    .local v5, "rendererIndex":I
    :goto_0
    array-length v7, p0

    if-ge v5, v7, :cond_2

    .line 656
    aget-object v4, p0, v5

    .line 657
    .local v4, "rendererCapability":Lcom/google/android/exoplayer2/RendererCapabilities;
    const/4 v6, 0x0

    .local v6, "trackIndex":I
    :goto_1
    iget v7, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v6, v7, :cond_1

    .line 658
    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    invoke-interface {v4, v7}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsFormat(Lcom/google/android/exoplayer2/Format;)I

    move-result v7

    and-int/lit8 v3, v7, 0x7

    .line 660
    .local v3, "formatSupportLevel":I
    if-le v3, v0, :cond_0

    .line 661
    move v1, v5

    .line 662
    move v0, v3

    .line 663
    const/4 v7, 0x4

    if-ne v0, v7, :cond_0

    move v2, v1

    .line 670
    .end local v1    # "bestRendererIndex":I
    .end local v3    # "formatSupportLevel":I
    .end local v4    # "rendererCapability":Lcom/google/android/exoplayer2/RendererCapabilities;
    .end local v6    # "trackIndex":I
    .local v2, "bestRendererIndex":I
    :goto_2
    return v2

    .line 657
    .end local v2    # "bestRendererIndex":I
    .restart local v1    # "bestRendererIndex":I
    .restart local v3    # "formatSupportLevel":I
    .restart local v4    # "rendererCapability":Lcom/google/android/exoplayer2/RendererCapabilities;
    .restart local v6    # "trackIndex":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 655
    .end local v3    # "formatSupportLevel":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v4    # "rendererCapability":Lcom/google/android/exoplayer2/RendererCapabilities;
    .end local v6    # "trackIndex":I
    :cond_2
    move v2, v1

    .line 670
    .end local v1    # "bestRendererIndex":I
    .restart local v2    # "bestRendererIndex":I
    goto :goto_2
.end method

.method private static getFormatSupport(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;)[I
    .locals 3
    .param p0, "rendererCapabilities"    # Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p1, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 685
    iget v2, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v0, v2, [I

    .line 686
    .local v0, "formatSupport":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v2, :cond_0

    .line 687
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsFormat(Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    aput v2, v0, v1

    .line 686
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 689
    :cond_0
    return-object v0
.end method

.method private static getMixedMimeTypeAdaptationSupport([Lcom/google/android/exoplayer2/RendererCapabilities;)[I
    .locals 3
    .param p0, "rendererCapabilities"    # [Lcom/google/android/exoplayer2/RendererCapabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 703
    array-length v2, p0

    new-array v1, v2, [I

    .line 704
    .local v1, "mixedMimeTypeAdaptationSupport":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 705
    aget-object v2, p0, v0

    invoke-interface {v2}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsMixedMimeTypeAdaptation()I

    move-result v2

    aput v2, v1, v0

    .line 704
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 707
    :cond_0
    return-object v1
.end method

.method private static maybeConfigureRenderersForTunneling([Lcom/google/android/exoplayer2/RendererCapabilities;[Lcom/google/android/exoplayer2/source/TrackGroupArray;[[[I[Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/TrackSelection;I)V
    .locals 9
    .param p0, "rendererCapabilities"    # [Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p1, "rendererTrackGroupArrays"    # [Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "rendererFormatSupports"    # [[[I
    .param p3, "rendererConfigurations"    # [Lcom/google/android/exoplayer2/RendererConfiguration;
    .param p4, "trackSelections"    # [Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .param p5, "tunnelingAudioSessionId"    # I

    .prologue
    .line 731
    if-nez p5, :cond_1

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    const/4 v4, -0x1

    .line 737
    .local v4, "tunnelingAudioRendererIndex":I
    const/4 v6, -0x1

    .line 738
    .local v6, "tunnelingVideoRendererIndex":I
    const/4 v0, 0x1

    .line 739
    .local v0, "enableTunneling":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, p0

    if-ge v1, v7, :cond_3

    .line 740
    aget-object v7, p0, v1

    invoke-interface {v7}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v2

    .line 741
    .local v2, "rendererType":I
    aget-object v3, p4, v1

    .line 742
    .local v3, "trackSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    const/4 v7, 0x1

    if-eq v2, v7, :cond_2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_5

    :cond_2
    if-eqz v3, :cond_5

    .line 744
    aget-object v7, p2, v1

    aget-object v8, p1, v1

    invoke-static {v7, v8, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererSupportsTunneling([[ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelection;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 746
    const/4 v7, 0x1

    if-ne v2, v7, :cond_6

    .line 747
    const/4 v7, -0x1

    if-eq v4, v7, :cond_4

    .line 748
    const/4 v0, 0x0

    .line 764
    .end local v2    # "rendererType":I
    .end local v3    # "trackSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    :cond_3
    :goto_2
    const/4 v7, -0x1

    if-eq v4, v7, :cond_8

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    const/4 v7, 0x1

    :goto_3
    and-int/2addr v0, v7

    .line 765
    if-eqz v0, :cond_0

    .line 766
    new-instance v5, Lcom/google/android/exoplayer2/RendererConfiguration;

    invoke-direct {v5, p5}, Lcom/google/android/exoplayer2/RendererConfiguration;-><init>(I)V

    .line 768
    .local v5, "tunnelingRendererConfiguration":Lcom/google/android/exoplayer2/RendererConfiguration;
    aput-object v5, p3, v4

    .line 769
    aput-object v5, p3, v6

    goto :goto_0

    .line 751
    .end local v5    # "tunnelingRendererConfiguration":Lcom/google/android/exoplayer2/RendererConfiguration;
    .restart local v2    # "rendererType":I
    .restart local v3    # "trackSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    :cond_4
    move v4, v1

    .line 739
    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 754
    :cond_6
    const/4 v7, -0x1

    if-eq v6, v7, :cond_7

    .line 755
    const/4 v0, 0x0

    .line 756
    goto :goto_2

    .line 758
    :cond_7
    move v6, v1

    goto :goto_4

    .line 764
    .end local v2    # "rendererType":I
    .end local v3    # "trackSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    :cond_8
    const/4 v7, 0x0

    goto :goto_3
.end method

.method private static rendererSupportsTunneling([[ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelection;)Z
    .locals 6
    .param p0, "formatSupport"    # [[I
    .param p1, "trackGroups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "selection"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .prologue
    const/4 v3, 0x0

    .line 784
    if-nez p2, :cond_1

    .line 795
    :cond_0
    :goto_0
    return v3

    .line 787
    :cond_1
    invoke-interface {p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v2

    .line 788
    .local v2, "trackGroupIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 789
    aget-object v4, p0, v2

    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v5

    aget v1, v4, v5

    .line 790
    .local v1, "trackFormatSupport":I
    and-int/lit8 v4, v1, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    .line 788
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 795
    .end local v1    # "trackFormatSupport":I
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final clearSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)V
    .locals 2
    .param p1, "rendererIndex"    # I
    .param p2, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .prologue
    .line 452
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 453
    .local v0, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 459
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 461
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    goto :goto_0
.end method

.method public final clearSelectionOverrides()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 489
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 488
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    goto :goto_0
.end method

.method public final clearSelectionOverrides(I)V
    .locals 2
    .param p1, "rendererIndex"    # I

    .prologue
    .line 470
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 471
    .local v0, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/exoplayer2/source/TrackGroupArray;*>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 476
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    goto :goto_0
.end method

.method public final getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    return-object v0
.end method

.method public final getRendererDisabled(I)Z
    .locals 1
    .param p1, "rendererIndex"    # I

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public final getSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
    .locals 2
    .param p1, "rendererIndex"    # I
    .param p2, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .prologue
    .line 441
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 442
    .local v0, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final hasSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Z
    .locals 2
    .param p1, "rendererIndex"    # I
    .param p2, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .prologue
    .line 429
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 430
    .local v0, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final onSelectionActivated(Ljava/lang/Object;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 612
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    .end local p1    # "info":Ljava/lang/Object;
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    .line 613
    return-void
.end method

.method public final selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    .locals 31
    .param p1, "rendererCapabilities"    # [Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p2, "trackGroups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 516
    move-object/from16 v0, p1

    array-length v9, v0

    add-int/lit8 v9, v9, 0x1

    new-array v0, v9, [I

    move-object/from16 v28, v0

    .line 517
    .local v28, "rendererTrackGroupCounts":[I
    move-object/from16 v0, p1

    array-length v9, v0

    add-int/lit8 v9, v9, 0x1

    new-array v0, v9, [[Lcom/google/android/exoplayer2/source/TrackGroup;

    move-object/from16 v29, v0

    .line 518
    .local v29, "rendererTrackGroups":[[Lcom/google/android/exoplayer2/source/TrackGroup;
    move-object/from16 v0, p1

    array-length v9, v0

    add-int/lit8 v9, v9, 0x1

    new-array v7, v9, [[[I

    .line 519
    .local v7, "rendererFormatSupports":[[[I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    move-object/from16 v0, v29

    array-length v9, v0

    move/from16 v0, v22

    if-ge v0, v9, :cond_0

    .line 520
    move-object/from16 v0, p2

    iget v9, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    new-array v9, v9, [Lcom/google/android/exoplayer2/source/TrackGroup;

    aput-object v9, v29, v22

    .line 521
    move-object/from16 v0, p2

    iget v9, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    new-array v9, v9, [[I

    aput-object v9, v7, v22

    .line 519
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 525
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getMixedMimeTypeAdaptationSupport([Lcom/google/android/exoplayer2/RendererCapabilities;)[I

    move-result-object v6

    .line 529
    .local v6, "mixedMimeTypeAdaptationSupport":[I
    const/16 v21, 0x0

    .local v21, "groupIndex":I
    :goto_1
    move-object/from16 v0, p2

    iget v9, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    move/from16 v0, v21

    if-ge v0, v9, :cond_2

    .line 530
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v20

    .line 532
    .local v20, "group":Lcom/google/android/exoplayer2/source/TrackGroup;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->findRenderer([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v25

    .line 534
    .local v25, "rendererIndex":I
    move-object/from16 v0, p1

    array-length v9, v0

    move/from16 v0, v25

    if-ne v0, v9, :cond_1

    move-object/from16 v0, v20

    iget v9, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v0, v9, [I

    move-object/from16 v24, v0

    .line 537
    .local v24, "rendererFormatSupport":[I
    :goto_2
    aget v27, v28, v25

    .line 538
    .local v27, "rendererTrackGroupCount":I
    aget-object v9, v29, v25

    aput-object v20, v9, v27

    .line 539
    aget-object v9, v7, v25

    aput-object v24, v9, v27

    .line 540
    aget v9, v28, v25

    add-int/lit8 v9, v9, 0x1

    aput v9, v28, v25

    .line 529
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 534
    .end local v24    # "rendererFormatSupport":[I
    .end local v27    # "rendererTrackGroupCount":I
    :cond_1
    aget-object v9, p1, v25

    .line 535
    move-object/from16 v0, v20

    invoke-static {v9, v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getFormatSupport(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;)[I

    move-result-object v24

    goto :goto_2

    .line 544
    .end local v20    # "group":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v25    # "rendererIndex":I
    :cond_2
    move-object/from16 v0, p1

    array-length v9, v0

    new-array v5, v9, [Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 545
    .local v5, "rendererTrackGroupArrays":[Lcom/google/android/exoplayer2/source/TrackGroupArray;
    move-object/from16 v0, p1

    array-length v9, v0

    new-array v4, v9, [I

    .line 546
    .local v4, "rendererTrackTypes":[I
    const/16 v22, 0x0

    :goto_3
    move-object/from16 v0, p1

    array-length v9, v0

    move/from16 v0, v22

    if-ge v0, v9, :cond_3

    .line 547
    aget v27, v28, v22

    .line 548
    .restart local v27    # "rendererTrackGroupCount":I
    new-instance v10, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v9, v29, v22

    .line 549
    move/from16 v0, v27

    invoke-static {v9, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v10, v9}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    aput-object v10, v5, v22

    .line 550
    aget-object v9, v7, v22

    move/from16 v0, v27

    invoke-static {v9, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[I

    aput-object v9, v7, v22

    .line 551
    aget-object v9, p1, v22

    invoke-interface {v9}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v9

    aput v9, v4, v22

    .line 546
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 555
    .end local v27    # "rendererTrackGroupCount":I
    :cond_3
    move-object/from16 v0, p1

    array-length v9, v0

    aget v30, v28, v9

    .line 556
    .local v30, "unassociatedTrackGroupCount":I
    new-instance v8, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-object/from16 v0, p1

    array-length v9, v0

    aget-object v9, v29, v9

    move/from16 v0, v30

    invoke-static {v9, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    .line 559
    .local v8, "unassociatedTrackGroupArray":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5, v7}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;[Lcom/google/android/exoplayer2/source/TrackGroupArray;[[[I)[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v13

    .line 563
    .local v13, "trackSelections":[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    const/16 v22, 0x0

    :goto_4
    move-object/from16 v0, p1

    array-length v9, v0

    move/from16 v0, v22

    if-ge v0, v9, :cond_7

    .line 564
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 565
    const/4 v9, 0x0

    aput-object v9, v13, v22

    .line 563
    :cond_4
    :goto_5
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 567
    :cond_5
    aget-object v26, v5, v22

    .line 568
    .local v26, "rendererTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->hasSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 569
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    move-object/from16 v0, v26

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    .line 570
    .local v23, "override":Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
    if-nez v23, :cond_6

    const/4 v9, 0x0

    .line 571
    :goto_6
    aput-object v9, v13, v22

    goto :goto_5

    :cond_6
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v9

    goto :goto_6

    .line 576
    .end local v23    # "override":Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
    .end local v26    # "rendererTrackGroup":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->determineEnabledRenderers([Lcom/google/android/exoplayer2/RendererCapabilities;[Lcom/google/android/exoplayer2/trackselection/TrackSelection;)[Z

    move-result-object v16

    .line 579
    .local v16, "rendererEnabled":[Z
    new-instance v3, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;-><init>([I[Lcom/google/android/exoplayer2/source/TrackGroupArray;[I[[[ILcom/google/android/exoplayer2/source/TrackGroupArray;)V

    .line 585
    .local v3, "mappedTrackInfo":Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    move-object/from16 v0, p1

    array-length v9, v0

    new-array v12, v9, [Lcom/google/android/exoplayer2/RendererConfiguration;

    .line 587
    .local v12, "rendererConfigurations":[Lcom/google/android/exoplayer2/RendererConfiguration;
    const/16 v22, 0x0

    :goto_7
    move-object/from16 v0, p1

    array-length v9, v0

    move/from16 v0, v22

    if-ge v0, v9, :cond_9

    .line 588
    aget-boolean v9, v16, v22

    if-eqz v9, :cond_8

    sget-object v9, Lcom/google/android/exoplayer2/RendererConfiguration;->DEFAULT:Lcom/google/android/exoplayer2/RendererConfiguration;

    :goto_8
    aput-object v9, v12, v22

    .line 587
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 588
    :cond_8
    const/4 v9, 0x0

    goto :goto_8

    .line 591
    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->tunnelingAudioSessionId:I

    move-object/from16 v9, p1

    move-object v10, v5

    move-object v11, v7

    invoke-static/range {v9 .. v14}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->maybeConfigureRenderersForTunneling([Lcom/google/android/exoplayer2/RendererCapabilities;[Lcom/google/android/exoplayer2/source/TrackGroupArray;[[[I[Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/TrackSelection;I)V

    .line 594
    new-instance v14, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    new-instance v17, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;-><init>([Lcom/google/android/exoplayer2/trackselection/TrackSelection;)V

    move-object/from16 v15, p2

    move-object/from16 v18, v3

    move-object/from16 v19, v12

    invoke-direct/range {v14 .. v19}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;-><init>(Lcom/google/android/exoplayer2/source/TrackGroupArray;[ZLcom/google/android/exoplayer2/trackselection/TrackSelectionArray;Ljava/lang/Object;[Lcom/google/android/exoplayer2/RendererConfiguration;)V

    return-object v14
.end method

.method protected abstract selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;[Lcom/google/android/exoplayer2/source/TrackGroupArray;[[[I)[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public final setRendererDisabled(IZ)V
    .locals 1
    .param p1, "rendererIndex"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    .line 372
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 371
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    goto :goto_0
.end method

.method public final setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;)V
    .locals 2
    .param p1, "rendererIndex"    # I
    .param p2, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p3, "override"    # Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    .prologue
    .line 408
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 409
    .local v0, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    if-nez v0, :cond_0

    .line 410
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "overrides":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 411
    .restart local v0    # "overrides":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 413
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 419
    :goto_0
    return-void

    .line 417
    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    goto :goto_0
.end method

.method public setTunnelingAudioSessionId(I)V
    .locals 1
    .param p1, "tunnelingAudioSessionId"    # I

    .prologue
    .line 502
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->tunnelingAudioSessionId:I

    if-eq v0, p1, :cond_0

    .line 503
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->tunnelingAudioSessionId:I

    .line 504
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    .line 506
    :cond_0
    return-void
.end method
