.class public abstract Lcom/google/android/exoplayer2/Timeline;
.super Ljava/lang/Object;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/Timeline$Period;,
        Lcom/google/android/exoplayer2/Timeline$Window;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/android/exoplayer2/Timeline;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    return-void
.end method


# virtual methods
.method public abstract getIndexOfPeriod(Ljava/lang/Object;)I
.end method

.method public final getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 1
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
.end method

.method public abstract getPeriodCount()I
.end method

.method public final getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;Z)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    return-object v0
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;Z)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 6
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p3, "setIds"    # Z

    .prologue
    .line 161
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    return-object v0
.end method

.method public abstract getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;
.end method

.method public abstract getWindowCount()I
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
