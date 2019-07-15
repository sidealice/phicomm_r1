.class public final Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
.super Ljava/lang/Object;
.source "ConcatenatingMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;
    }
.end annotation


# instance fields
.field private final duplicateFlags:[Z

.field private final isAtomic:Z

.field private listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

.field private final manifests:[Ljava/lang/Object;

.field private final mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

.field private final shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

.field private final sourceIndexByMediaPeriod:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/exoplayer2/source/MediaPeriod;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private timeline:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

.field private final timelines:[Lcom/google/android/exoplayer2/Timeline;


# direct methods
.method public varargs constructor <init>(ZLcom/google/android/exoplayer2/source/ShuffleOrder;[Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 4
    .param p1, "isAtomic"    # Z
    .param p2, "shuffleOrder"    # Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .param p3, "mediaSources"    # [Lcom/google/android/exoplayer2/source/MediaSource;

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    array-length v3, p3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p3, v2

    .line 78
    .local v0, "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    :cond_0
    invoke-interface {p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getLength()I

    move-result v2

    array-length v3, p3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 81
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    .line 82
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->isAtomic:Z

    .line 83
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 84
    array-length v1, p3

    new-array v1, v1, [Lcom/google/android/exoplayer2/Timeline;

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    .line 85
    array-length v1, p3

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->manifests:[Ljava/lang/Object;

    .line 86
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->sourceIndexByMediaPeriod:Ljava/util/Map;

    .line 87
    invoke-static {p3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->buildDuplicateFlags([Lcom/google/android/exoplayer2/source/MediaSource;)[Z

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->duplicateFlags:[Z

    .line 88
    return-void
.end method

.method public varargs constructor <init>(Z[Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 2
    .param p1, "isAtomic"    # Z
    .param p2, "mediaSources"    # [Lcom/google/android/exoplayer2/source/MediaSource;

    .prologue
    .line 63
    new-instance v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    array-length v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>(I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;-><init>(ZLcom/google/android/exoplayer2/source/ShuffleOrder;[Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 64
    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1
    .param p1, "mediaSources"    # [Lcom/google/android/exoplayer2/source/MediaSource;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;-><init>(Z[Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;ILcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/android/exoplayer2/Timeline;
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->handleSourceInfoRefreshed(ILcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method private static buildDuplicateFlags([Lcom/google/android/exoplayer2/source/MediaSource;)[Z
    .locals 5
    .param p0, "mediaSources"    # [Lcom/google/android/exoplayer2/source/MediaSource;

    .prologue
    .line 169
    array-length v4, p0

    new-array v0, v4, [Z

    .line 170
    .local v0, "duplicateFlags":[Z
    new-instance v3, Ljava/util/IdentityHashMap;

    array-length v4, p0

    invoke-direct {v3, v4}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 171
    .local v3, "sources":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/google/android/exoplayer2/source/MediaSource;Ljava/lang/Void;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_1

    .line 172
    aget-object v2, p0, v1

    .line 173
    .local v2, "source":Lcom/google/android/exoplayer2/source/MediaSource;
    invoke-virtual {v3, v2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 174
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    :cond_0
    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    goto :goto_1

    .line 179
    .end local v2    # "source":Lcom/google/android/exoplayer2/source/MediaSource;
    :cond_1
    return-object v0
.end method

.method private handleSourceInfoRefreshed(ILcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 6
    .param p1, "sourceFirstIndex"    # I
    .param p2, "sourceTimeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p3, "sourceManifest"    # Ljava/lang/Object;

    .prologue
    .line 149
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aput-object p2, v2, p1

    .line 150
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->manifests:[Ljava/lang/Object;

    aput-object p3, v2, p1

    .line 152
    add-int/lit8 v0, p1, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 153
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v3, v3, p1

    if-ne v2, v3, :cond_0

    .line 154
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aput-object p2, v2, v0

    .line 155
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->manifests:[Ljava/lang/Object;

    aput-object p3, v2, v0

    .line 152
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v1, v3, v2

    .line 159
    .local v1, "timeline":Lcom/google/android/exoplayer2/Timeline;
    if-nez v1, :cond_2

    .line 166
    .end local v1    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    :goto_2
    return-void

    .line 158
    .restart local v1    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 164
    .end local v1    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    :cond_3
    new-instance v3, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v2}, [Lcom/google/android/exoplayer2/Timeline;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/exoplayer2/Timeline;

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->isAtomic:Z

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-direct {v3, v2, v4, v5}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;-><init>([Lcom/google/android/exoplayer2/Timeline;ZLcom/google/android/exoplayer2/source/ShuffleOrder;)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    .line 165
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->manifests:[Ljava/lang/Object;

    invoke-virtual {v4}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, p0, v3, v4}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 5
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;

    .prologue
    .line 122
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    iget v4, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getChildIndexByPeriodIndex(I)I

    move-result v2

    .line 123
    .local v2, "sourceIndex":I
    iget v3, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    .line 124
    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 123
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodIndex(I)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v1

    .line 125
    .local v1, "periodIdInSource":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v3, v3, v2

    invoke-interface {v3, v1, p2}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v0

    .line 126
    .local v0, "mediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->sourceIndexByMediaPeriod:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->duplicateFlags:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 113
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_1
    return-void
.end method

.method public prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .locals 5
    .param p1, "player"    # Lcom/google/android/exoplayer2/ExoPlayer;
    .param p2, "isTopLevelSource"    # Z
    .param p3, "listener"    # Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    .prologue
    .line 92
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    .line 93
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 94
    sget-object v2, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    const/4 v3, 0x0

    invoke-interface {p3, p0, v2, v3}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 109
    :cond_0
    return-void

    .line 96
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->duplicateFlags:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_2

    .line 98
    move v1, v0

    .line 99
    .local v1, "index":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$1;

    invoke-direct {v4, p0, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$1;-><init>(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;I)V

    invoke-interface {v2, p1, v3, v4}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    .line 96
    .end local v1    # "index":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .prologue
    .line 132
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->sourceIndexByMediaPeriod:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 133
    .local v0, "sourceIndex":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->sourceIndexByMediaPeriod:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 135
    return-void
.end method

.method public releaseSource()V
    .locals 2

    .prologue
    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->duplicateFlags:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource()V

    .line 139
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_1
    return-void
.end method
