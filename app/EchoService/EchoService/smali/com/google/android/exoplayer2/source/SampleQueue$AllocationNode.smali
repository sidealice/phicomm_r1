.class final Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;
.super Ljava/lang/Object;
.source "SampleQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/SampleQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AllocationNode"
.end annotation


# instance fields
.field public allocation:Lcom/google/android/exoplayer2/upstream/Allocation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final endPosition:J

.field public next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final startPosition:J

.field public wasInitialized:Z


# direct methods
.method public constructor <init>(JI)V
    .locals 3
    .param p1, "startPosition"    # J
    .param p3, "allocationLength"    # I

    .prologue
    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->startPosition:J

    .line 667
    int-to-long v0, p3

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    .line 668
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 699
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 700
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 701
    .local v0, "temp":Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 702
    return-object v0
.end method

.method public initialize(Lcom/google/android/exoplayer2/upstream/Allocation;Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;)V
    .locals 1
    .param p1, "allocation"    # Lcom/google/android/exoplayer2/upstream/Allocation;
    .param p2, "next"    # Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .prologue
    .line 677
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 678
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    .line 679
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->wasInitialized:Z

    .line 680
    return-void
.end method

.method public translateOffset(J)I
    .locals 3
    .param p1, "absolutePosition"    # J

    .prologue
    .line 690
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->startPosition:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v1, v1, Lcom/google/android/exoplayer2/upstream/Allocation;->offset:I

    add-int/2addr v0, v1

    return v0
.end method
