.class public final Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;
.super Ljava/lang/Object;
.source "ShuffleOrder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ShuffleOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ShuffleOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnshuffledShuffleOrder"
.end annotation


# instance fields
.field private final length:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput p1, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    .line 165
    return-void
.end method


# virtual methods
.method public cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .locals 2
    .param p1, "insertionIndex"    # I
    .param p2, "insertionCount"    # I

    .prologue
    .line 194
    new-instance v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;

    iget v1, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    add-int/2addr v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;-><init>(I)V

    return-object v0
.end method

.method public cloneAndRemove(I)Lcom/google/android/exoplayer2/source/ShuffleOrder;
    .locals 2
    .param p1, "removalIndex"    # I

    .prologue
    .line 199
    new-instance v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;

    iget v1, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;-><init>(I)V

    return-object v0
.end method

.method public getFirstIndex()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getLastIndex()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    return v0
.end method

.method public getNextIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 174
    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;->length:I

    if-ge p1, v0, :cond_0

    .end local p1    # "index":I
    :goto_0
    return p1

    .restart local p1    # "index":I
    :cond_0
    const/4 p1, -0x1

    goto :goto_0
.end method

.method public getPreviousIndex(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 179
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .end local p1    # "index":I
    :goto_0
    return p1

    .restart local p1    # "index":I
    :cond_0
    const/4 p1, -0x1

    goto :goto_0
.end method
