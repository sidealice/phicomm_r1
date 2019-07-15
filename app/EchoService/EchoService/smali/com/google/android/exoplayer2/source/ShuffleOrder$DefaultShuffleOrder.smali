.class public Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;
.super Ljava/lang/Object;
.source "ShuffleOrder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ShuffleOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ShuffleOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultShuffleOrder"
.end annotation


# instance fields
.field private final indexInShuffled:[I

.field private final random:Ljava/util/Random;

.field private final shuffled:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 42
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>(ILjava/util/Random;)V

    .line 43
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2
    .param p1, "length"    # I
    .param p2, "randomSeed"    # J

    .prologue
    .line 53
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p2, p3}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>(ILjava/util/Random;)V

    .line 54
    return-void
.end method

.method private constructor <init>(ILjava/util/Random;)V
    .locals 1
    .param p1, "length"    # I
    .param p2, "random"    # Ljava/util/Random;

    .prologue
    .line 57
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->createShuffledList(ILjava/util/Random;)[I

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>([ILjava/util/Random;)V

    .line 58
    return-void
.end method

.method private constructor <init>([ILjava/util/Random;)V
    .locals 3
    .param p1, "shuffled"    # [I
    .param p2, "random"    # Ljava/util/Random;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    .line 62
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    .line 63
    array-length v1, p1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    aget v2, p1, v0

    aput v0, v1, v2

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method private static createShuffledList(ILjava/util/Random;)[I
    .locals 4
    .param p0, "length"    # I
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    .line 140
    new-array v1, p0, [I

    .line 141
    .local v1, "shuffled":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 142
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 143
    .local v2, "swapIndex":I
    aget v3, v1, v2

    aput v3, v1, v0

    .line 144
    aput v0, v1, v2

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    .end local v2    # "swapIndex":I
    :cond_0
    return-object v1
.end method


# virtual methods
.method public cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .locals 16
    .param p1, "insertionIndex"    # I
    .param p2, "insertionCount"    # I

    .prologue
    .line 98
    move/from16 v0, p2

    new-array v7, v0, [I

    .line 99
    .local v7, "insertionPoints":[I
    move/from16 v0, p2

    new-array v8, v0, [I

    .line 100
    .local v8, "insertionValues":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v2, v0, :cond_0

    .line 101
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v12, v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    aput v11, v7, v2

    .line 102
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v11, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    .line 103
    .local v10, "swapIndex":I
    aget v11, v8, v10

    aput v11, v8, v2

    .line 104
    add-int v11, v2, p1

    aput v11, v8, v10

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    .end local v10    # "swapIndex":I
    :cond_0
    invoke-static {v7}, Ljava/util/Arrays;->sort([I)V

    .line 107
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v11, v11

    add-int v11, v11, p2

    new-array v9, v11, [I

    .line 108
    .local v9, "newShuffled":[I
    const/4 v5, 0x0

    .line 109
    .local v5, "indexInOldShuffled":I
    const/4 v3, 0x0

    .line 110
    .local v3, "indexInInsertionList":I
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v11, v11

    add-int v11, v11, p2

    if-ge v2, v11, :cond_3

    .line 111
    move/from16 v0, p2

    if-ge v3, v0, :cond_1

    aget v11, v7, v3

    if-ne v5, v11, :cond_1

    .line 113
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "indexInInsertionList":I
    .local v4, "indexInInsertionList":I
    aget v11, v8, v3

    aput v11, v9, v2

    move v3, v4

    .line 110
    .end local v4    # "indexInInsertionList":I
    .restart local v3    # "indexInInsertionList":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 115
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "indexInOldShuffled":I
    .local v6, "indexInOldShuffled":I
    aget v11, v11, v5

    aput v11, v9, v2

    .line 116
    aget v11, v9, v2

    move/from16 v0, p1

    if-lt v11, v0, :cond_2

    .line 117
    aget v11, v9, v2

    add-int v11, v11, p2

    aput v11, v9, v2

    :cond_2
    move v5, v6

    .end local v6    # "indexInOldShuffled":I
    .restart local v5    # "indexInOldShuffled":I
    goto :goto_2

    .line 121
    :cond_3
    new-instance v11, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance v12, Ljava/util/Random;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    invoke-virtual {v13}, Ljava/util/Random;->nextLong()J

    move-result-wide v14

    invoke-direct {v12, v14, v15}, Ljava/util/Random;-><init>(J)V

    invoke-direct {v11, v9, v12}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>([ILjava/util/Random;)V

    return-object v11
.end method

.method public cloneAndRemove(I)Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .locals 8
    .param p1, "removalIndex"    # I

    .prologue
    .line 126
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    new-array v2, v3, [I

    .line 127
    .local v2, "newShuffled":[I
    const/4 v0, 0x0

    .line 128
    .local v0, "foundRemovedElement":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 129
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    aget v3, v3, v1

    if-ne v3, p1, :cond_0

    .line 130
    const/4 v0, 0x1

    .line 128
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_0
    if-eqz v0, :cond_1

    add-int/lit8 v3, v1, -0x1

    :goto_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    aget v4, v4, v1

    if-le v4, p1, :cond_2

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    aget v4, v4, v1

    add-int/lit8 v4, v4, -0x1

    :goto_3
    aput v4, v2, v3

    goto :goto_1

    :cond_1
    move v3, v1

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    aget v4, v4, v1

    goto :goto_3

    .line 136
    :cond_3
    new-instance v3, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance v4, Ljava/util/Random;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Random;-><init>(J)V

    invoke-direct {v3, v2, v4}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>([ILjava/util/Random;)V

    return-object v3
.end method

.method public getFirstIndex()I
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getLastIndex()I
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v0, v0

    return v0
.end method

.method public getNextIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 76
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    aget v0, v1, p1

    .line 77
    .local v0, "shuffledIndex":I
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    aget v1, v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPreviousIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 82
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    aget v0, v1, p1

    .line 83
    .local v0, "shuffledIndex":I
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    aget v1, v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method
