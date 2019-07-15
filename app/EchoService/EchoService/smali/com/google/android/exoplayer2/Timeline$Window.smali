.class public final Lcom/google/android/exoplayer2/Timeline$Window;
.super Ljava/lang/Object;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Window"
.end annotation


# instance fields
.field public defaultPositionUs:J

.field public durationUs:J

.field public firstPeriodIndex:I

.field public id:Ljava/lang/Object;

.field public isDynamic:Z

.field public isSeekable:Z

.field public lastPeriodIndex:I

.field public positionInFirstPeriodUs:J

.field public presentationStartTimeMs:J

.field public windowStartTimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultPositionMs()J
    .locals 2

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultPositionUs()J
    .locals 2

    .prologue
    .line 212
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    return-wide v0
.end method

.method public getDurationMs()J
    .locals 2

    .prologue
    .line 219
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    .prologue
    .line 226
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    return-wide v0
.end method

.method public getPositionInFirstPeriodMs()J
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPositionInFirstPeriodUs()J
    .locals 2

    .prologue
    .line 242
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    return-wide v0
.end method

.method public set(Ljava/lang/Object;JJZZJJIIJ)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "presentationStartTimeMs"    # J
    .param p4, "windowStartTimeMs"    # J
    .param p6, "isSeekable"    # Z
    .param p7, "isDynamic"    # Z
    .param p8, "defaultPositionUs"    # J
    .param p10, "durationUs"    # J
    .param p12, "firstPeriodIndex"    # I
    .param p13, "lastPeriodIndex"    # I
    .param p14, "positionInFirstPeriodUs"    # J

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/android/exoplayer2/Timeline$Window;->id:Ljava/lang/Object;

    .line 183
    iput-wide p2, p0, Lcom/google/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    .line 184
    iput-wide p4, p0, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    .line 185
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    .line 186
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    .line 187
    iput-wide p8, p0, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    .line 188
    iput-wide p10, p0, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    .line 189
    iput p12, p0, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .line 190
    iput p13, p0, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    .line 191
    iput-wide p14, p0, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    .line 192
    return-object p0
.end method
