.class public final Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;
.super Ljava/lang/Object;
.source "DynamicConcatenatingMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource;
.implements Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;,
        Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;,
        Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;,
        Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;,
        Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;,
        Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;
    }
.end annotation


# static fields
.field private static final MSG_ADD:I = 0x0

.field private static final MSG_ADD_MULTIPLE:I = 0x1

.field private static final MSG_MOVE:I = 0x3

.field private static final MSG_ON_COMPLETION:I = 0x4

.field private static final MSG_REMOVE:I = 0x2


# instance fields
.field private final deferredMediaPeriods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

.field private final mediaSourceByMediaPeriod:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/exoplayer2/source/MediaPeriod;",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourcesPublic:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;"
        }
    .end annotation
.end field

.field private periodCount:I

.field private player:Lcom/google/android/exoplayer2/ExoPlayer;

.field private preventListenerNotification:Z

.field private final query:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

.field private shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

.field private windowCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .locals 6
    .param p1, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 85
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->deferredMediaPeriods:Ljava/util/List;

    .line 89
    new-instance v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;IILjava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->query:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;
    .param p2, "x2"    # Lcom/google/android/exoplayer2/Timeline;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->updateMediaSourceInternal(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method private addMediaSourceInternal(ILcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 8
    .param p1, "newIndex"    # I
    .param p2, "newMediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .prologue
    const/4 v7, 0x0

    .line 439
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 440
    .local v5, "newUid":Ljava/lang/Integer;
    new-instance v2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;-><init>()V

    .line 441
    .local v2, "newTimeline":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;
    if-lez p1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    .line 443
    .local v6, "previousHolder":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;
    new-instance v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    iget v1, v6, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    iget-object v3, v6, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    .line 444
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->getWindowCount()I

    move-result v3

    add-int/2addr v3, v1

    iget v1, v6, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    iget-object v4, v6, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    .line 445
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->getPeriodCount()I

    move-result v4

    add-int/2addr v4, v1

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;IILjava/lang/Object;)V

    .line 450
    .end local v6    # "previousHolder":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;
    .local v0, "newMediaSourceHolder":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->getWindowCount()I

    move-result v1

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->getPeriodCount()I

    move-result v3

    invoke-direct {p0, p1, v1, v3}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->correctOffsets(III)V

    .line 451
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 452
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v4, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$1;

    invoke-direct {v4, p0, v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$1;-><init>(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;)V

    invoke-interface {v1, v3, v7, v4}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    .line 458
    return-void

    .line 448
    .end local v0    # "newMediaSourceHolder":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    move-object v1, p2

    move v3, v7

    move v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;IILjava/lang/Object;)V

    .restart local v0    # "newMediaSourceHolder":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;
    goto :goto_0
.end method

.method private addMediaSourcesInternal(ILjava/util/Collection;)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p2, "mediaSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource;

    .line 462
    .local v1, "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .local v0, "index":I
    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->addMediaSourceInternal(ILcom/google/android/exoplayer2/source/MediaSource;)V

    move p1, v0

    .line 463
    .end local v0    # "index":I
    .restart local p1    # "index":I
    goto :goto_0

    .line 464
    .end local v1    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    :cond_0
    return-void
.end method

.method private correctOffsets(III)V
    .locals 3
    .param p1, "startIndex"    # I
    .param p2, "windowOffsetUpdate"    # I
    .param p3, "periodOffsetUpdate"    # I

    .prologue
    .line 517
    iget v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->windowCount:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->windowCount:I

    .line 518
    iget v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->periodCount:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->periodCount:I

    .line 519
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    iget v2, v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/2addr v2, p2

    iput v2, v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 521
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    iget v2, v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    add-int/2addr v2, p3

    iput v2, v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    .line 519
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 523
    :cond_0
    return-void
.end method

.method private findMediaSourceHolderByPeriodIndex(I)I
    .locals 3
    .param p1, "periodIndex"    # I

    .prologue
    .line 526
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->query:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    iput p1, v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    .line 527
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->query:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    invoke-static {v1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 528
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 529
    neg-int v1, v0

    add-int/lit8 v1, v1, -0x2

    .line 535
    :goto_0
    return v1

    .line 531
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    .line 532
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    iget v1, v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    if-ne v1, p1, :cond_1

    .line 533
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 535
    goto :goto_0
.end method

.method private maybeNotifyListener(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;)V
    .locals 6
    .param p1, "actionOnCompletion"    # Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->preventListenerNotification:Z

    if-nez v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    new-instance v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    iget v3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->windowCount:I

    iget v4, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->periodCount:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$ConcatenatedTimeline;-><init>(Ljava/util/Collection;IILcom/google/android/exoplayer2/source/ShuffleOrder;)V

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 430
    if-eqz p1, :cond_0

    .line 431
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4, p1}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 435
    :cond_0
    return-void
.end method

.method private moveMediaSourceInternal(II)V
    .locals 8
    .param p1, "currentIndex"    # I
    .param p2, "newIndex"    # I

    .prologue
    .line 502
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 503
    .local v4, "startIndex":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 504
    .local v0, "endIndex":I
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    iget v5, v6, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 505
    .local v5, "windowOffset":I
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    iget v3, v6, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    .line 506
    .local v3, "periodOffset":I
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, p2, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 507
    move v2, v4

    .local v2, "i":I
    :goto_0
    if-gt v2, v0, :cond_0

    .line 508
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    .line 509
    .local v1, "holder":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;
    iput v5, v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 510
    iput v3, v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    .line 511
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->getWindowCount()I

    move-result v6

    add-int/2addr v5, v6

    .line 512
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->getPeriodCount()I

    move-result v6

    add-int/2addr v3, v6

    .line 507
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 514
    .end local v1    # "holder":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;
    :cond_0
    return-void
.end method

.method private removeMediaSourceInternal(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 494
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    .line 495
    .local v0, "holder":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 496
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    .line 497
    .local v1, "oldTimeline":Lcom/google/android/exoplayer2/Timeline;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v3

    neg-int v3, v3

    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->correctOffsets(III)V

    .line 498
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource()V

    .line 499
    return-void
.end method

.method private updateMediaSourceInternal(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 7
    .param p1, "mediaSourceHolder"    # Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;
    .param p2, "timeline"    # Lcom/google/android/exoplayer2/Timeline;

    .prologue
    .line 467
    if-nez p1, :cond_0

    .line 468
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 470
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    .line 471
    .local v0, "deferredTimeline":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v5

    if-ne v5, p2, :cond_1

    .line 491
    :goto_0
    return-void

    .line 474
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v5

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->getWindowCount()I

    move-result v6

    sub-int v4, v5, v6

    .line 475
    .local v4, "windowOffsetUpdate":I
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v5

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->getPeriodCount()I

    move-result v6

    sub-int v3, v5, v6

    .line 476
    .local v3, "periodOffsetUpdate":I
    if-nez v4, :cond_2

    if-eqz v3, :cond_3

    .line 477
    :cond_2
    iget v5, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->findMediaSourceHolderByPeriodIndex(I)I

    move-result v2

    .line 478
    .local v2, "index":I
    add-int/lit8 v5, v2, 0x1

    invoke-direct {p0, v5, v4, v3}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->correctOffsets(III)V

    .line 480
    .end local v2    # "index":I
    :cond_3
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->cloneWithNewTimeline(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    move-result-object v5

    iput-object v5, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    .line 481
    iget-boolean v5, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->isPrepared:Z

    if-nez v5, :cond_5

    .line 482
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->deferredMediaPeriods:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_5

    .line 483
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->deferredMediaPeriods:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v6, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-ne v5, v6, :cond_4

    .line 484
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->deferredMediaPeriods:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->createPeriod()V

    .line 485
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->deferredMediaPeriods:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 482
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 489
    .end local v1    # "i":I
    :cond_5
    const/4 v5, 0x1

    iput-boolean v5, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->isPrepared:Z

    .line 490
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->maybeNotifyListener(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .prologue
    .line 130
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p3, "actionOnCompletion"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 147
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;

    invoke-direct {v5, p1, p2, p3}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;-><init>(ILjava/lang/Object;Ljava/lang/Runnable;)V

    invoke-direct {v3, p0, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    move v0, v1

    .line 148
    goto :goto_0

    .line 153
    :cond_2
    if-eqz p3, :cond_0

    .line 154
    :try_start_1
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 2
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "actionOnCompletion"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addMediaSources(ILjava/util/Collection;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p2, "mediaSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->addMediaSources(ILjava/util/Collection;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addMediaSources(ILjava/util/Collection;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "index"    # I
    .param p3, "actionOnCompletion"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "mediaSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 218
    monitor-enter p0

    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource;

    .line 219
    .local v0, "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 218
    .end local v0    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .restart local v0    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    :cond_0
    move v1, v3

    .line 220
    goto :goto_1

    .line 222
    .end local v0    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 223
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 224
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v5, 0x1

    new-instance v6, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;

    invoke-direct {v6, p1, p2, p3}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;-><init>(ILjava/lang/Object;Ljava/lang/Runnable;)V

    invoke-direct {v4, p0, v5, v6}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    .line 226
    :cond_3
    if-eqz p3, :cond_2

    .line 227
    :try_start_2
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized addMediaSources(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "mediaSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->addMediaSources(ILjava/util/Collection;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addMediaSources(Ljava/util/Collection;Ljava/lang/Runnable;)V
    .locals 1
    .param p2, "actionOnCompletion"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "mediaSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->addMediaSources(ILjava/util/Collection;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 6
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;

    .prologue
    .line 342
    iget v4, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->findMediaSourceHolderByPeriodIndex(I)I

    move-result v3

    .line 343
    .local v3, "mediaSourceHolderIndex":I
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    .line 344
    .local v0, "holder":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;
    iget v4, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget v5, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->firstPeriodIndexInChild:I

    sub-int/2addr v4, v5

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodIndex(I)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v1

    .line 347
    .local v1, "idInSource":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->isPrepared:Z

    if-nez v4, :cond_0

    .line 348
    new-instance v2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-direct {v2, v4, v1, p2}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)V

    .line 349
    .local v2, "mediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->deferredMediaPeriods:Ljava/util/List;

    move-object v4, v2

    check-cast v4, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/Map;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    return-object v2

    .line 351
    .end local v2    # "mediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    :cond_0
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v4, v1, p2}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v2

    .restart local v2    # "mediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    goto :goto_0
.end method

.method public declared-synchronized getMediaSource(I)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSize()I
    .locals 1

    .prologue
    .line 308
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 8
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 379
    const/4 v5, 0x4

    if-ne p1, v5, :cond_0

    .line 380
    check-cast p2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;

    .end local p2    # "message":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;->dispatchEvent()V

    .line 423
    :goto_0
    return-void

    .line 383
    .restart local p2    # "message":Ljava/lang/Object;
    :cond_0
    iput-boolean v7, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->preventListenerNotification:Z

    .line 385
    packed-switch p1, :pswitch_data_0

    .line 418
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    :pswitch_0
    move-object v1, p2

    .line 387
    check-cast v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;

    .line 388
    .local v1, "messageData":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;, "Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    iget v6, v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->index:I

    invoke-interface {v5, v6, v7}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 389
    iget v6, v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->index:I

    iget-object v5, v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-direct {p0, v6, v5}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->addMediaSourceInternal(ILcom/google/android/exoplayer2/source/MediaSource;)V

    .line 390
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->actionOnCompletion:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;

    .line 421
    .end local v1    # "messageData":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;, "Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData<Lcom/google/android/exoplayer2/source/MediaSource;>;"
    .local v0, "actionOnCompletion":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;
    :goto_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->preventListenerNotification:Z

    .line 422
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->maybeNotifyListener(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;)V

    goto :goto_0

    .end local v0    # "actionOnCompletion":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;
    :pswitch_1
    move-object v4, p2

    .line 394
    check-cast v4, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;

    .line 396
    .local v4, "messageData":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;, "Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData<Ljava/util/Collection<Lcom/google/android/exoplayer2/source/MediaSource;>;>;"
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    iget v7, v4, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->index:I

    iget-object v5, v4, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v5, Ljava/util/Collection;

    .line 397
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    .line 396
    invoke-interface {v6, v7, v5}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 398
    iget v6, v4, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->index:I

    iget-object v5, v4, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v5, Ljava/util/Collection;

    invoke-direct {p0, v6, v5}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->addMediaSourcesInternal(ILjava/util/Collection;)V

    .line 399
    iget-object v0, v4, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->actionOnCompletion:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;

    .line 400
    .restart local v0    # "actionOnCompletion":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;
    goto :goto_1

    .end local v0    # "actionOnCompletion":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;
    .end local v4    # "messageData":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;, "Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData<Ljava/util/Collection<Lcom/google/android/exoplayer2/source/MediaSource;>;>;"
    :pswitch_2
    move-object v3, p2

    .line 403
    check-cast v3, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;

    .line 404
    .local v3, "messageData":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;, "Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData<Ljava/lang/Void;>;"
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    iget v6, v3, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->index:I

    invoke-interface {v5, v6}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndRemove(I)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 405
    iget v5, v3, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->index:I

    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->removeMediaSourceInternal(I)V

    .line 406
    iget-object v0, v3, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->actionOnCompletion:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;

    .line 407
    .restart local v0    # "actionOnCompletion":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;
    goto :goto_1

    .end local v0    # "actionOnCompletion":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;
    .end local v3    # "messageData":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;, "Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData<Ljava/lang/Void;>;"
    :pswitch_3
    move-object v2, p2

    .line 410
    check-cast v2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;

    .line 411
    .local v2, "messageData":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;, "Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    iget v6, v2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->index:I

    invoke-interface {v5, v6}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndRemove(I)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 412
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    iget-object v5, v2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v6, v5, v7}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 413
    iget v6, v2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->index:I

    iget-object v5, v2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v6, v5}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->moveMediaSourceInternal(II)V

    .line 414
    iget-object v0, v2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->actionOnCompletion:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;

    .line 415
    .restart local v0    # "actionOnCompletion":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;
    goto :goto_1

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_0
    return-void
.end method

.method public declared-synchronized moveMediaSource(II)V
    .locals 1
    .param p1, "currentIndex"    # I
    .param p2, "newIndex"    # I

    .prologue
    .line 276
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->moveMediaSource(IILjava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized moveMediaSource(IILjava/lang/Runnable;)V
    .locals 7
    .param p1, "currentIndex"    # I
    .param p2, "newIndex"    # I
    .param p3, "actionOnCompletion"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 292
    monitor-enter p0

    if-ne p1, p2, :cond_1

    .line 302
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 295
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v4, 0x3

    new-instance v5, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;

    .line 298
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, p1, v6, p3}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;-><init>(ILjava/lang/Object;Ljava/lang/Runnable;)V

    invoke-direct {v3, p0, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v3, v1, v2

    .line 297
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 299
    :cond_2
    if-eqz p3, :cond_0

    .line 300
    :try_start_1
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .locals 3
    .param p1, "player"    # Lcom/google/android/exoplayer2/ExoPlayer;
    .param p2, "isTopLevelSource"    # Z
    .param p3, "listener"    # Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 325
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->preventListenerNotification:Z

    .line 327
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 328
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->addMediaSourcesInternal(ILjava/util/Collection;)V

    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->preventListenerNotification:Z

    .line 330
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->maybeNotifyListener(Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    monitor-exit p0

    return-void

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .prologue
    .line 359
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource;

    .line 360
    .local v0, "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceByMediaPeriod:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    instance-of v1, p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->deferredMediaPeriods:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 363
    check-cast p1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;

    .end local p1    # "mediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredMediaPeriod;->releasePeriod()V

    .line 367
    :goto_0
    return-void

    .line 365
    .restart local p1    # "mediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    goto :goto_0
.end method

.method public releaseSource()V
    .locals 2

    .prologue
    .line 371
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource()V

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    :cond_0
    return-void
.end method

.method public declared-synchronized removeMediaSource(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 242
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->removeMediaSource(ILjava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit p0

    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeMediaSource(ILjava/lang/Runnable;)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "actionOnCompletion"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->mediaSourcesPublic:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 259
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v4, 0x2

    new-instance v5, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v6, p2}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;-><init>(ILjava/lang/Object;Ljava/lang/Runnable;)V

    invoke-direct {v3, p0, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 262
    :cond_1
    if-eqz p2, :cond_0

    .line 263
    :try_start_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
