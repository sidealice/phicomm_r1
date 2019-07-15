.class public final Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;
.super Ljava/lang/Object;
.source "CompositeSequenceableLoader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SequenceableLoader;


# instance fields
.field private final loaders:[Lcom/google/android/exoplayer2/source/SequenceableLoader;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0
    .param p1, "loaders"    # [Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->loaders:[Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .line 29
    return-void
.end method


# virtual methods
.method public final continueLoading(J)Z
    .locals 17
    .param p1, "positionUs"    # J

    .prologue
    .line 57
    const/4 v6, 0x0

    .line 60
    .local v6, "madeProgress":Z
    :cond_0
    const/4 v7, 0x0

    .line 61
    .local v7, "madeProgressThisIteration":Z
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v8

    .line 62
    .local v8, "nextLoadPositionUs":J
    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v10, v8, v10

    if-nez v10, :cond_1

    .line 76
    :goto_0
    return v6

    .line 65
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->loaders:[Lcom/google/android/exoplayer2/source/SequenceableLoader;

    array-length v12, v11

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v12, :cond_5

    aget-object v3, v11, v10

    .line 66
    .local v3, "loader":Lcom/google/android/exoplayer2/source/SequenceableLoader;
    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v4

    .line 67
    .local v4, "loaderNextLoadPositionUs":J
    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v13, v4, v14

    if-eqz v13, :cond_4

    cmp-long v13, v4, p1

    if-gtz v13, :cond_4

    const/4 v2, 0x1

    .line 70
    .local v2, "isLoaderBehind":Z
    :goto_2
    cmp-long v13, v4, v8

    if-eqz v13, :cond_2

    if-eqz v2, :cond_3

    .line 71
    :cond_2
    move-wide/from16 v0, p1

    invoke-interface {v3, v0, v1}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->continueLoading(J)Z

    move-result v13

    or-int/2addr v7, v13

    .line 65
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 67
    .end local v2    # "isLoaderBehind":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 74
    .end local v3    # "loader":Lcom/google/android/exoplayer2/source/SequenceableLoader;
    .end local v4    # "loaderNextLoadPositionUs":J
    :cond_5
    or-int/2addr v6, v7

    .line 75
    if-nez v7, :cond_0

    goto :goto_0
.end method

.method public final getBufferedPositionUs()J
    .locals 11

    .prologue
    const-wide/high16 v6, -0x8000000000000000L

    .line 33
    const-wide v0, 0x7fffffffffffffffL

    .line 34
    .local v0, "bufferedPositionUs":J
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->loaders:[Lcom/google/android/exoplayer2/source/SequenceableLoader;

    array-length v9, v8

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v9, :cond_1

    aget-object v2, v8, v3

    .line 35
    .local v2, "loader":Lcom/google/android/exoplayer2/source/SequenceableLoader;
    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v4

    .line 36
    .local v4, "loaderBufferedPositionUs":J
    cmp-long v10, v4, v6

    if-eqz v10, :cond_0

    .line 37
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 34
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 40
    .end local v2    # "loader":Lcom/google/android/exoplayer2/source/SequenceableLoader;
    .end local v4    # "loaderBufferedPositionUs":J
    :cond_1
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v3, v0, v8

    if-nez v3, :cond_2

    move-wide v0, v6

    .end local v0    # "bufferedPositionUs":J
    :cond_2
    return-wide v0
.end method

.method public final getNextLoadPositionUs()J
    .locals 11

    .prologue
    const-wide/high16 v6, -0x8000000000000000L

    .line 45
    const-wide v4, 0x7fffffffffffffffL

    .line 46
    .local v4, "nextLoadPositionUs":J
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->loaders:[Lcom/google/android/exoplayer2/source/SequenceableLoader;

    array-length v9, v8

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v9, :cond_1

    aget-object v0, v8, v1

    .line 47
    .local v0, "loader":Lcom/google/android/exoplayer2/source/SequenceableLoader;
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v2

    .line 48
    .local v2, "loaderNextLoadPositionUs":J
    cmp-long v10, v2, v6

    if-eqz v10, :cond_0

    .line 49
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 46
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "loader":Lcom/google/android/exoplayer2/source/SequenceableLoader;
    .end local v2    # "loaderNextLoadPositionUs":J
    :cond_1
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v1, v4, v8

    if-nez v1, :cond_2

    move-wide v4, v6

    .end local v4    # "nextLoadPositionUs":J
    :cond_2
    return-wide v4
.end method
