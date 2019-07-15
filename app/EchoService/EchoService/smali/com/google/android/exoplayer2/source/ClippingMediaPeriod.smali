.class public final Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;
.super Ljava/lang/Object;
.source "ClippingMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;
    }
.end annotation


# instance fields
.field private callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private endUs:J

.field public final mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

.field private pendingInitialDiscontinuity:Z

.field private sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

.field private startUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaPeriod;Z)V
    .locals 2
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;
    .param p2, "enableInitialDiscontinuity"    # Z

    .prologue
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 60
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    .line 61
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    .line 62
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    .line 63
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuity:Z

    .line 64
    return-void
.end method

.method private static shouldKeepInitialDiscontinuity([Lcom/google/android/exoplayer2/trackselection/TrackSelection;)Z
    .locals 6
    .param p0, "selections"    # [Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .prologue
    const/4 v2, 0x0

    .line 211
    array-length v4, p0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, p0, v3

    .line 212
    .local v1, "trackSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    if-eqz v1, :cond_1

    .line 213
    invoke-interface {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 214
    .local v0, "selectedFormat":Lcom/google/android/exoplayer2/Format;
    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 215
    const/4 v2, 0x1

    .line 219
    .end local v0    # "selectedFormat":Lcom/google/android/exoplayer2/Format;
    .end local v1    # "trackSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    :cond_0
    return v2

    .line 211
    .restart local v1    # "trackSelection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    add-long/2addr v2, p1

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    move-result v0

    return v0
.end method

.method public discardBuffer(J)V
    .locals 5
    .param p1, "positionUs"    # J

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    add-long/2addr v2, p1

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(J)V

    .line 126
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 6

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 152
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    .line 153
    .local v0, "bufferedPositionUs":J
    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    sub-long v4, v0, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getNextLoadPositionUs()J
    .locals 6

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 175
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    .line 176
    .local v0, "nextLoadPositionUs":J
    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    sub-long v2, v0, v2

    goto :goto_0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    .line 87
    return-void
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1
    .param p1, "source"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    .line 199
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 4
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .prologue
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 192
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 194
    return-void

    .line 192
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 4
    .param p1, "callback"    # Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
    .param p2, "positionUs"    # J

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    add-long/2addr v2, p2

    invoke-interface {v0, p0, v2, v3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    .line 82
    return-void
.end method

.method public readDiscontinuity()J
    .locals 10

    .prologue
    const/4 v4, 0x1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    .line 130
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuity:Z

    if-eqz v3, :cond_3

    .line 131
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    array-length v8, v4

    move v3, v5

    :goto_0
    if-ge v3, v8, :cond_1

    aget-object v2, v4, v3

    .line 132
    .local v2, "sampleStream":Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;
    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->clearPendingDiscontinuity()V

    .line 131
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    .end local v2    # "sampleStream":Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;
    :cond_1
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuity:Z

    .line 138
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->readDiscontinuity()J

    move-result-wide v0

    .line 139
    .local v0, "discontinuityUs":J
    cmp-long v3, v0, v6

    if-eqz v3, :cond_2

    move-wide v4, v0

    .line 147
    :goto_1
    return-wide v4

    .line 139
    :cond_2
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 141
    .end local v0    # "discontinuityUs":J
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v0

    .line 142
    .restart local v0    # "discontinuityUs":J
    cmp-long v3, v0, v6

    if-nez v3, :cond_4

    move-wide v4, v6

    .line 143
    goto :goto_1

    .line 145
    :cond_4
    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    cmp-long v3, v0, v6

    if-ltz v3, :cond_7

    move v3, v4

    :goto_2
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 146
    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v3, v6, v8

    if-eqz v3, :cond_5

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v3, v0, v6

    if-gtz v3, :cond_6

    :cond_5
    move v5, v4

    :cond_6
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 147
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    sub-long v4, v0, v4

    goto :goto_1

    :cond_7
    move v3, v5

    .line 145
    goto :goto_2
.end method

.method public seekToUs(J)J
    .locals 9
    .param p1, "positionUs"    # J

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    array-length v6, v5

    move v4, v1

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    .line 163
    .local v0, "sampleStream":Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->clearSentEos()V

    .line 162
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "sampleStream":Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    add-long/2addr v6, p1

    invoke-interface {v4, v6, v7}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v2

    .line 168
    .local v2, "seekUs":J
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    add-long/2addr v4, p1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_3

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v4, v2, v4

    if-gtz v4, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 170
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    sub-long v4, v2, v4

    return-wide v4
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 19
    .param p1, "selections"    # [Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lcom/google/android/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .prologue
    .line 97
    move-object/from16 v0, p3

    array-length v3, v0

    new-array v3, v3, [Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    .line 98
    move-object/from16 v0, p3

    array-length v3, v0

    new-array v6, v3, [Lcom/google/android/exoplayer2/source/SampleStream;

    .line 99
    .local v6, "internalStreams":[Lcom/google/android/exoplayer2/source/SampleStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 100
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v3, p3, v2

    check-cast v3, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aput-object v3, v4, v2

    .line 101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->access$000(Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;)Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v3

    :goto_1
    aput-object v3, v6, v2

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 103
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    add-long v8, p5, v4

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/source/MediaPeriod;->selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide v16

    .line 105
    .local v16, "enablePositionUs":J
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuity:Z

    if-eqz v3, :cond_2

    .line 106
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->shouldKeepInitialDiscontinuity([Lcom/google/android/exoplayer2/trackselection/TrackSelection;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuity:Z

    .line 108
    :cond_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    add-long v4, v4, p5

    cmp-long v3, v16, v4

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    cmp-long v3, v16, v4

    if-ltz v3, :cond_6

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v3, v4, v8

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v3, v16, v4

    if-gtz v3, :cond_6

    :cond_3
    const/4 v3, 0x1

    :goto_3
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 111
    const/4 v2, 0x0

    :goto_4
    move-object/from16 v0, p3

    array-length v3, v0

    if-ge v2, v3, :cond_9

    .line 112
    aget-object v3, v6, v2

    if-nez v3, :cond_7

    .line 113
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 118
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v3, v3, v2

    aput-object v3, p3, v2

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 106
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 108
    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    .line 114
    :cond_7
    aget-object v3, p3, v2

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->access$000(Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;)Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v3

    aget-object v4, v6, v2

    if-eq v3, v4, :cond_4

    .line 115
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    new-instance v7, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v9, v6, v2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuity:Z

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v14}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;-><init>(Lcom/google/android/exoplayer2/source/MediaPeriod;Lcom/google/android/exoplayer2/source/SampleStream;JJZ)V

    aput-object v7, v3, v2

    goto :goto_5

    .line 120
    :cond_9
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    sub-long v4, v16, v4

    return-wide v4
.end method

.method public setClipping(JJ)V
    .locals 1
    .param p1, "startUs"    # J
    .param p3, "endUs"    # J

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    .line 75
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    .line 76
    return-void
.end method
