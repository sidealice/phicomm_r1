.class public final Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "AdaptiveMediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final listener:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;

.field private final mediaTimeOffsetMs:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;

    .prologue
    .line 178
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;J)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;J)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;
    .param p3, "mediaTimeOffsetMs"    # J

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    .line 184
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;

    .line 185
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->mediaTimeOffsetMs:J

    .line 186
    return-void

    .line 183
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;J)J
    .locals 3
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;
    .param p1, "x1"    # J

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;

    return-object v0
.end method

.method private adjustMediaTime(J)J
    .locals 5
    .param p1, "mediaTimeUs"    # J

    .prologue
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 309
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    .line 310
    .local v0, "mediaTimeMs":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    :goto_0
    return-wide v2

    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->mediaTimeOffsetMs:J

    add-long/2addr v2, v0

    goto :goto_0
.end method


# virtual methods
.method public copyWithMediaTimeOffsetMs(J)Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;
    .locals 3
    .param p1, "mediaTimeOffsetMs"    # J

    .prologue
    .line 189
    new-instance v0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;J)V

    return-object v0
.end method

.method public downstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V
    .locals 9
    .param p1, "trackType"    # I
    .param p2, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "trackSelectionReason"    # I
    .param p4, "trackSelectionData"    # Ljava/lang/Object;
    .param p5, "mediaTimeUs"    # J

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;

    if-eqz v0, :cond_0

    .line 298
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$6;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$6;-><init>(Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    :cond_0
    return-void
.end method

.method public loadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .locals 21
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p2, "dataType"    # I
    .param p3, "trackType"    # I
    .param p4, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p5, "trackSelectionReason"    # I
    .param p6, "trackSelectionData"    # Ljava/lang/Object;
    .param p7, "mediaStartTimeUs"    # J
    .param p9, "mediaEndTimeUs"    # J
    .param p11, "elapsedRealtimeMs"    # J
    .param p13, "loadDurationMs"    # J
    .param p15, "bytesLoaded"    # J

    .prologue
    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;

    if-eqz v2, :cond_0

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    move-object/from16 v20, v0

    new-instance v2, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$3;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move-wide/from16 v18, p15

    invoke-direct/range {v2 .. v19}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$3;-><init>(Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    :cond_0
    return-void
.end method

.method public loadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJ)V
    .locals 19
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p2, "dataType"    # I
    .param p3, "elapsedRealtimeMs"    # J
    .param p5, "loadDurationMs"    # J
    .param p7, "bytesLoaded"    # J

    .prologue
    .line 236
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    move-wide/from16 v16, p7

    invoke-virtual/range {v1 .. v17}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 238
    return-void
.end method

.method public loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .locals 21
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p2, "dataType"    # I
    .param p3, "trackType"    # I
    .param p4, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p5, "trackSelectionReason"    # I
    .param p6, "trackSelectionData"    # Ljava/lang/Object;
    .param p7, "mediaStartTimeUs"    # J
    .param p9, "mediaEndTimeUs"    # J
    .param p11, "elapsedRealtimeMs"    # J
    .param p13, "loadDurationMs"    # J
    .param p15, "bytesLoaded"    # J

    .prologue
    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;

    if-eqz v2, :cond_0

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    move-object/from16 v20, v0

    new-instance v2, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$2;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move-wide/from16 v18, p15

    invoke-direct/range {v2 .. v19}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$2;-><init>(Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    :cond_0
    return-void
.end method

.method public loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJ)V
    .locals 19
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p2, "dataType"    # I
    .param p3, "elapsedRealtimeMs"    # J
    .param p5, "loadDurationMs"    # J
    .param p7, "bytesLoaded"    # J

    .prologue
    .line 214
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    move-wide/from16 v16, p7

    invoke-virtual/range {v1 .. v17}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 216
    return-void
.end method

.method public loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
    .locals 23
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p2, "dataType"    # I
    .param p3, "trackType"    # I
    .param p4, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p5, "trackSelectionReason"    # I
    .param p6, "trackSelectionData"    # Ljava/lang/Object;
    .param p7, "mediaStartTimeUs"    # J
    .param p9, "mediaEndTimeUs"    # J
    .param p11, "elapsedRealtimeMs"    # J
    .param p13, "loadDurationMs"    # J
    .param p15, "bytesLoaded"    # J
    .param p17, "error"    # Ljava/io/IOException;
    .param p18, "wasCanceled"    # Z

    .prologue
    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;

    if-eqz v2, :cond_0

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    move-object/from16 v22, v0

    new-instance v2, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$4;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move-wide/from16 v18, p15

    move-object/from16 v20, p17

    move/from16 v21, p18

    invoke-direct/range {v2 .. v21}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$4;-><init>(Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    :cond_0
    return-void
.end method

.method public loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJLjava/io/IOException;Z)V
    .locals 21
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p2, "dataType"    # I
    .param p3, "elapsedRealtimeMs"    # J
    .param p5, "loadDurationMs"    # J
    .param p7, "bytesLoaded"    # J
    .param p9, "error"    # Ljava/io/IOException;
    .param p10, "wasCanceled"    # Z

    .prologue
    .line 258
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    move-wide/from16 v16, p7

    move-object/from16 v18, p9

    move/from16 v19, p10

    invoke-virtual/range {v1 .. v19}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    .line 261
    return-void
.end method

.method public loadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V
    .locals 15
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p2, "dataType"    # I
    .param p3, "trackType"    # I
    .param p4, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p5, "trackSelectionReason"    # I
    .param p6, "trackSelectionData"    # Ljava/lang/Object;
    .param p7, "mediaStartTimeUs"    # J
    .param p9, "mediaEndTimeUs"    # J
    .param p11, "elapsedRealtimeMs"    # J

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;

    if-eqz v0, :cond_0

    .line 201
    iget-object v14, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$1;

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$1;-><init>(Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    invoke-virtual {v14, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    :cond_0
    return-void
.end method

.method public loadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IJ)V
    .locals 15
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p2, "dataType"    # I
    .param p3, "elapsedRealtimeMs"    # J

    .prologue
    .line 193
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v12, p3

    invoke-virtual/range {v1 .. v13}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    .line 195
    return-void
.end method

.method public upstreamDiscarded(IJJ)V
    .locals 8
    .param p1, "trackType"    # I
    .param p2, "mediaStartTimeUs"    # J
    .param p4, "mediaEndTimeUs"    # J

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->listener:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$5;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$5;-><init>(Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 292
    :cond_0
    return-void
.end method
