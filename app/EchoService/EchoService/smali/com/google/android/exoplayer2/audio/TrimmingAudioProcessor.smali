.class final Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;
.super Ljava/lang/Object;
.source "TrimmingAudioProcessor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioProcessor;


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private channelCount:I

.field private endBuffer:[B

.field private endBufferSize:I

.field private inputEnded:Z

.field private isActive:Z

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private pendingTrimStartBytes:I

.field private sampleRateHz:I

.field private trimEndSamples:I

.field private trimStartSamples:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 48
    sget-object v0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->channelCount:I

    .line 50
    return-void
.end method


# virtual methods
.method public configure(III)Z
    .locals 4
    .param p1, "sampleRateHz"    # I
    .param p2, "channelCount"    # I
    .param p3, "encoding"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    .line 70
    new-instance v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v1

    .line 72
    :cond_0
    iput p2, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->channelCount:I

    .line 73
    iput p1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->sampleRateHz:I

    .line 74
    iget v1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->trimEndSamples:I

    mul-int/2addr v1, p2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBuffer:[B

    .line 75
    iput v2, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    .line 76
    iget v1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->trimStartSamples:I

    mul-int/2addr v1, p2

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    .line 77
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->isActive:Z

    .line 78
    .local v0, "wasActive":Z
    iget v1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->trimStartSamples:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->trimEndSamples:I

    if-eqz v1, :cond_2

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->isActive:Z

    .line 79
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->isActive:Z

    if-eq v0, v1, :cond_3

    :goto_1
    return v3

    :cond_2
    move v1, v2

    .line 78
    goto :goto_0

    :cond_3
    move v3, v2

    .line 79
    goto :goto_1
.end method

.method public flush()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    sget-object v0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 172
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->inputEnded:Z

    .line 175
    iput v1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    .line 176
    iput v1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    .line 177
    return-void
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 159
    .local v0, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v1, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 160
    return-object v0
.end method

.method public getOutputChannelCount()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->channelCount:I

    return v0
.end method

.method public getOutputEncoding()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x2

    return v0
.end method

.method public getOutputSampleRateHz()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->sampleRateHz:I

    return v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->isActive:Z

    return v0
.end method

.method public isEnded()Z
    .locals 2

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->inputEnded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queueEndOfStream()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->inputEnded:Z

    .line 154
    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 11
    .param p1, "inputBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v10, 0x0

    .line 104
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 105
    .local v3, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 106
    .local v2, "limit":I
    sub-int v4, v2, v3

    .line 109
    .local v4, "remaining":I
    iget v7, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 110
    .local v6, "trimBytes":I
    iget v7, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    sub-int/2addr v7, v6

    iput v7, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    .line 111
    add-int v7, v3, v6

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 112
    iget v7, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    if-lez v7, :cond_0

    .line 149
    :goto_0
    return-void

    .line 116
    :cond_0
    sub-int/2addr v4, v6

    .line 122
    iget v7, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    add-int/2addr v7, v4

    iget-object v8, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBuffer:[B

    array-length v8, v8

    sub-int v5, v7, v8

    .line 123
    .local v5, "remainingBytesToOutput":I
    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-ge v7, v5, :cond_1

    .line 124
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 130
    :goto_1
    iget v7, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    invoke-static {v5, v10, v7}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v0

    .line 131
    .local v0, "endBufferBytesToOutput":I
    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBuffer:[B

    invoke-virtual {v7, v8, v10, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 132
    sub-int/2addr v5, v0

    .line 135
    invoke-static {v5, v10, v4}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v1

    .line 136
    .local v1, "inputBufferBytesToOutput":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 137
    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 138
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 139
    sub-int/2addr v4, v1

    .line 142
    iget v7, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    sub-int/2addr v7, v0

    iput v7, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    .line 143
    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBuffer:[B

    iget-object v8, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBuffer:[B

    iget v9, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    invoke-static {v7, v0, v8, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBuffer:[B

    iget v8, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    invoke-virtual {p1, v7, v8, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 145
    iget v7, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBufferSize:I

    .line 147
    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 148
    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object v7, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 126
    .end local v0    # "endBufferBytesToOutput":I
    .end local v1    # "inputBufferBytesToOutput":I
    :cond_1
    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 181
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->flush()V

    .line 182
    sget-object v0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 183
    iput v1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->channelCount:I

    .line 184
    iput v1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->sampleRateHz:I

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->endBuffer:[B

    .line 186
    return-void
.end method

.method public setTrimSampleCount(II)V
    .locals 0
    .param p1, "trimStartSamples"    # I
    .param p2, "trimEndSamples"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->trimStartSamples:I

    .line 63
    iput p2, p0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->trimEndSamples:I

    .line 64
    return-void
.end method
