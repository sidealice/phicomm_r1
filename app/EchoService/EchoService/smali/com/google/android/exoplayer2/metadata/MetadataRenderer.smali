.class public final Lcom/google/android/exoplayer2/metadata/MetadataRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "MetadataRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;
    }
.end annotation


# static fields
.field private static final MAX_PENDING_METADATA_COUNT:I = 0x5

.field private static final MSG_INVOKE_RENDERER:I


# instance fields
.field private final buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

.field private decoder:Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

.field private final decoderFactory:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

.field private final formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

.field private inputStreamEnded:Z

.field private final output:Lcom/google/android/exoplayer2/metadata/MetadataOutput;

.field private final outputHandler:Landroid/os/Handler;

.field private final pendingMetadata:[Lcom/google/android/exoplayer2/metadata/Metadata;

.field private pendingMetadataCount:I

.field private pendingMetadataIndex:I

.field private final pendingMetadataTimestamps:[J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;)V
    .locals 1
    .param p1, "output"    # Lcom/google/android/exoplayer2/metadata/MetadataOutput;
    .param p2, "outputLooper"    # Landroid/os/Looper;

    .prologue
    .line 69
    sget-object v0, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;->DEFAULT:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;-><init>(Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;)V
    .locals 2
    .param p1, "output"    # Lcom/google/android/exoplayer2/metadata/MetadataOutput;
    .param p2, "outputLooper"    # Landroid/os/Looper;
    .param p3, "decoderFactory"    # Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    .prologue
    const/4 v1, 0x5

    .line 83
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 84
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/metadata/MetadataOutput;

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->output:Lcom/google/android/exoplayer2/metadata/MetadataOutput;

    .line 85
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    .line 86
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->decoderFactory:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    .line 87
    new-instance v0, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/FormatHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    .line 88
    new-instance v0, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    .line 89
    new-array v0, v1, [Lcom/google/android/exoplayer2/metadata/Metadata;

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:[Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 90
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataTimestamps:[J

    .line 91
    return-void

    .line 85
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_0
.end method

.method private flushPendingMetadata()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:[Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    iput v2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataIndex:I

    .line 175
    iput v2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    .line 176
    return-void
.end method

.method private invokeRenderer(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 2
    .param p1, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->invokeRendererInternal(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    goto :goto_0
.end method

.method private invokeRendererInternal(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 1
    .param p1, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->output:Lcom/google/android/exoplayer2/metadata/MetadataOutput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/metadata/MetadataOutput;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 193
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 181
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 183
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->invokeRendererInternal(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 184
    const/4 v0, 0x1

    return v0

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public isEnded()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->flushPendingMetadata()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->decoder:Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

    .line 152
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 1
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->flushPendingMetadata()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    .line 111
    return-void
.end method

.method protected onStreamChanged([Lcom/google/android/exoplayer2/Format;J)V
    .locals 2
    .param p1, "formats"    # [Lcom/google/android/exoplayer2/Format;
    .param p2, "offsetUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->decoderFactory:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;->createDecoder(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->decoder:Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

    .line 105
    return-void
.end method

.method public render(JJ)V
    .locals 7
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 115
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    .line 116
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->clear()V

    .line 117
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v4, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v2

    .line 118
    .local v2, "result":I
    const/4 v3, -0x4

    if-ne v2, v3, :cond_0

    .line 119
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->isEndOfStream()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 120
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    .line 140
    .end local v2    # "result":I
    :cond_0
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataTimestamps:[J

    iget v4, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataIndex:I

    aget-wide v4, v3, v4

    cmp-long v3, v4, p1

    if-gtz v3, :cond_1

    .line 141
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:[Lcom/google/android/exoplayer2/metadata/Metadata;

    iget v4, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataIndex:I

    aget-object v3, v3, v4

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->invokeRenderer(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 142
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:[Lcom/google/android/exoplayer2/metadata/Metadata;

    iget v4, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataIndex:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 143
    iget v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataIndex:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x5

    iput v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataIndex:I

    .line 144
    iget v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    .line 146
    :cond_1
    return-void

    .line 121
    .restart local v2    # "result":I
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->isDecodeOnly()Z

    move-result v3

    if-nez v3, :cond_0

    .line 126
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    iget-object v4, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v4, v4, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iput-wide v4, v3, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    .line 127
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->flip()V

    .line 129
    :try_start_0
    iget v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataIndex:I

    iget v4, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    add-int/2addr v3, v4

    rem-int/lit8 v1, v3, 0x5

    .line 130
    .local v1, "index":I
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:[Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v4, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->decoder:Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/metadata/MetadataDecoder;->decode(Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v4

    aput-object v4, v3, v1

    .line 131
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataTimestamps:[J

    iget-object v4, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->timeUs:J

    aput-wide v4, v3, v1

    .line 132
    iget v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->pendingMetadataCount:I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/metadata/MetadataDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    .end local v1    # "index":I
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Lcom/google/android/exoplayer2/metadata/MetadataDecoderException;
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->getIndex()I

    move-result v3

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v3

    throw v3
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .locals 2
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->decoderFactory:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;->supportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    const/4 v0, 0x0

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->supportsFormatDrm(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmInitData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 98
    :goto_0
    return v0

    .line 96
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 98
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
