.class public Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;
.super Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SegmentList"
.end annotation


# instance fields
.field final mediaSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJIJLjava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "initialization"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .param p2, "timescale"    # J
    .param p4, "presentationTimeOffset"    # J
    .param p6, "startNumber"    # I
    .param p7, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            "JJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p9, "segmentTimeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    .local p10, "mediaSegments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;>;"
    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJIJLjava/util/List;)V

    .line 250
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->mediaSegments:Ljava/util/List;

    .line 251
    return-void
.end method


# virtual methods
.method public getSegmentCount(J)I
    .locals 1
    .param p1, "periodDurationUs"    # J

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->mediaSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSegmentUrl(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;I)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 2
    .param p1, "representation"    # Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .param p2, "sequenceNumber"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->mediaSegments:Ljava/util/List;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->startNumber:I

    sub-int v1, p2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    return-object v0
.end method

.method public isExplicit()Z
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x1

    return v0
.end method
