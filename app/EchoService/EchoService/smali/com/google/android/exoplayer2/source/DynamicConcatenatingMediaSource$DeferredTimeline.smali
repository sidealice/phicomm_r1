.class final Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;
.super Lcom/google/android/exoplayer2/Timeline;
.source "DynamicConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeferredTimeline"
.end annotation


# static fields
.field private static final DUMMY_ID:Ljava/lang/Object;

.field private static final period:Lcom/google/android/exoplayer2/Timeline$Period;


# instance fields
.field private final replacedID:Ljava/lang/Object;

.field private final timeline:Lcom/google/android/exoplayer2/Timeline;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 695
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->DUMMY_ID:Ljava/lang/Object;

    .line 696
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 701
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    .line 702
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 703
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->replacedID:Ljava/lang/Object;

    .line 704
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "replacedID"    # Ljava/lang/Object;

    .prologue
    .line 706
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    .line 707
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 708
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->replacedID:Ljava/lang/Object;

    .line 709
    return-void
.end method


# virtual methods
.method public cloneWithNewTimeline(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;
    .locals 4
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;

    .prologue
    .line 712
    new-instance v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->replacedID:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    sget-object v2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v3, 0x1

    .line 713
    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    :goto_0
    invoke-direct {v1, p1, v0}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->replacedID:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 2
    .param p1, "uid"    # Ljava/lang/Object;

    .prologue
    .line 755
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->DUMMY_ID:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 756
    .end local p1    # "uid":Ljava/lang/Object;
    :goto_0
    return v0

    .line 755
    .restart local p1    # "uid":Ljava/lang/Object;
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    sget-object v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->DUMMY_ID:Ljava/lang/Object;

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->replacedID:Ljava/lang/Object;

    .line 756
    .end local p1    # "uid":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 8
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .param p3, "setIds"    # Z

    .prologue
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x0

    .line 742
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-nez v0, :cond_3

    .line 743
    if-eqz p3, :cond_2

    sget-object v1, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->DUMMY_ID:Ljava/lang/Object;

    :goto_0
    if-eqz p3, :cond_0

    sget-object v2, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->DUMMY_ID:Ljava/lang/Object;

    :cond_0
    const/4 v3, 0x0

    move-object v0, p2

    move-wide v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p2

    .line 750
    .end local p2    # "period":Lcom/google/android/exoplayer2/Timeline$Period;
    :cond_1
    :goto_1
    return-object p2

    .restart local p2    # "period":Lcom/google/android/exoplayer2/Timeline$Period;
    :cond_2
    move-object v1, v2

    .line 743
    goto :goto_0

    .line 746
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 747
    iget-object v0, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->replacedID:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 748
    sget-object v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->DUMMY_ID:Ljava/lang/Object;

    iput-object v0, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    goto :goto_1
.end method

.method public getPeriodCount()I
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    goto :goto_0
.end method

.method public getTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-object v0
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 18
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p3, "setIds"    # Z
    .param p4, "defaultPositionProjectionUs"    # J

    .prologue
    .line 728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-nez v2, :cond_1

    if-eqz p3, :cond_0

    sget-object v3, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->DUMMY_ID:Ljava/lang/Object;

    :goto_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v2, p2

    .line 730
    invoke-virtual/range {v2 .. v17}, Lcom/google/android/exoplayer2/Timeline$Window;->set(Ljava/lang/Object;JJZZJJIIJ)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v2

    .line 732
    :goto_1
    return-object v2

    .line 728
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 730
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    .line 732
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v2

    goto :goto_1
.end method

.method public getWindowCount()I
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$DeferredTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    goto :goto_0
.end method
