.class final Lcom/google/android/exoplayer2/audio/Sonic;
.super Ljava/lang/Object;
.source "Sonic.java"


# static fields
.field private static final AMDF_FREQUENCY:I = 0xfa0

.field private static final MAXIMUM_PITCH:I = 0x190

.field private static final MINIMUM_PITCH:I = 0x41


# instance fields
.field private final downSampleBuffer:[S

.field private inputBuffer:[S

.field private inputBufferSize:I

.field private final inputSampleRateHz:I

.field private maxDiff:I

.field private final maxPeriod:I

.field private final maxRequired:I

.field private minDiff:I

.field private final minPeriod:I

.field private newRatePosition:I

.field private final numChannels:I

.field private numInputSamples:I

.field private numOutputSamples:I

.field private numPitchSamples:I

.field private oldRatePosition:I

.field private outputBuffer:[S

.field private outputBufferSize:I

.field private final pitch:F

.field private pitchBuffer:[S

.field private pitchBufferSize:I

.field private prevMinDiff:I

.field private prevPeriod:I

.field private final rate:F

.field private remainingInputToCopy:I

.field private final speed:F


# direct methods
.method public constructor <init>(IIFFI)V
    .locals 2
    .param p1, "inputSampleRateHz"    # I
    .param p2, "numChannels"    # I
    .param p3, "speed"    # F
    .param p4, "pitch"    # F
    .param p5, "outputSampleRateHz"    # I

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputSampleRateHz:I

    .line 73
    iput p2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    .line 74
    div-int/lit16 v0, p1, 0x190

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minPeriod:I

    .line 75
    div-int/lit8 v0, p1, 0x41

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    .line 76
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    .line 77
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleBuffer:[S

    .line 78
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBufferSize:I

    .line 79
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    mul-int/2addr v0, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    .line 80
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBufferSize:I

    .line 81
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    mul-int/2addr v0, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    .line 82
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBufferSize:I

    .line 83
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    mul-int/2addr v0, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    .line 84
    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    .line 85
    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    .line 86
    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevPeriod:I

    .line 87
    iput p3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->speed:F

    .line 88
    iput p4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    .line 89
    int-to-float v0, p1

    int-to-float v1, p5

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->rate:F

    .line 90
    return-void
.end method

.method private adjustRate(FI)V
    .locals 10
    .param p1, "rate"    # F
    .param p2, "originalNumOutputSamples"    # I

    .prologue
    const/16 v7, 0x4000

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 340
    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    if-ne v4, p2, :cond_0

    .line 370
    :goto_0
    return-void

    .line 343
    :cond_0
    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputSampleRateHz:I

    int-to-float v4, v4

    div-float/2addr v4, p1

    float-to-int v1, v4

    .line 344
    .local v1, "newSampleRate":I
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputSampleRateHz:I

    .line 346
    .local v2, "oldSampleRate":I
    :goto_1
    if-gt v1, v7, :cond_1

    if-le v2, v7, :cond_2

    .line 347
    :cond_1
    div-int/lit8 v1, v1, 0x2

    .line 348
    div-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 350
    :cond_2
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/audio/Sonic;->moveNewSamplesToPitchBuffer(I)V

    .line 352
    const/4 v3, 0x0

    .local v3, "position":I
    :goto_2
    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_7

    .line 353
    :goto_3
    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v4, v1

    iget v7, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    mul-int/2addr v7, v2

    if-le v4, v7, :cond_4

    .line 354
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/audio/Sonic;->enlargeOutputBufferIfNeeded(I)V

    .line 355
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    if-ge v0, v4, :cond_3

    .line 356
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v7, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    iget v8, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v0

    iget-object v8, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    iget v9, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v9, v3

    add-int/2addr v9, v0

    .line 357
    invoke-direct {p0, v8, v9, v2, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->interpolate([SIII)S

    move-result v8

    aput-short v8, v4, v7

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 359
    :cond_3
    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    .line 360
    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    goto :goto_3

    .line 362
    .end local v0    # "i":I
    :cond_4
    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    .line 363
    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    if-ne v4, v2, :cond_5

    .line 364
    iput v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    .line 365
    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    if-ne v4, v1, :cond_6

    move v4, v5

    :goto_5
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 366
    iput v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    .line 352
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    move v4, v6

    .line 365
    goto :goto_5

    .line 369
    :cond_7
    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/audio/Sonic;->removePitchSamples(I)V

    goto :goto_0
.end method

.method private changeSpeed(F)V
    .locals 8
    .param p1, "speed"    # F

    .prologue
    .line 407
    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    if-ge v3, v4, :cond_0

    .line 425
    :goto_0
    return-void

    .line 410
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    .line 411
    .local v0, "numSamples":I
    const/4 v2, 0x0

    .line 413
    .local v2, "position":I
    :cond_1
    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    if-lez v3, :cond_2

    .line 414
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/audio/Sonic;->copyInputToOutput(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 423
    :goto_1
    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    add-int/2addr v3, v2

    if-le v3, v0, :cond_1

    .line 424
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/audio/Sonic;->removeProcessedInputSamples(I)V

    goto :goto_0

    .line 416
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    const/4 v4, 0x1

    invoke-direct {p0, v3, v2, v4}, Lcom/google/android/exoplayer2/audio/Sonic;->findPitchPeriod([SIZ)I

    move-result v1

    .line 417
    .local v1, "period":I
    float-to-double v4, p1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_3

    .line 418
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v3, v2, p1, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->skipPitchPeriod([SIFI)I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v2, v3

    goto :goto_1

    .line 420
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v3, v2, p1, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->insertPitchPeriod([SIFI)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1
.end method

.method private copyInputToOutput(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 187
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 188
    .local v0, "numSamples":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->copyToOutput([SII)V

    .line 189
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    .line 190
    return v0
.end method

.method private copyToOutput([SII)V
    .locals 4
    .param p1, "samples"    # [S
    .param p2, "position"    # I
    .param p3, "numSamples"    # I

    .prologue
    .line 180
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/audio/Sonic;->enlargeOutputBufferIfNeeded(I)V

    .line 181
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v0, p2

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v3, p3

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    .line 184
    return-void
.end method

.method private downSampleInput([SII)V
    .locals 7
    .param p1, "samples"    # [S
    .param p2, "position"    # I
    .param p3, "skip"    # I

    .prologue
    .line 196
    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    div-int v2, v5, p3

    .line 197
    .local v2, "numSamples":I
    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int v3, v5, p3

    .line 198
    .local v3, "samplesPerValue":I
    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr p2, v5

    .line 199
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 200
    const/4 v4, 0x0

    .line 201
    .local v4, "value":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 202
    mul-int v5, v0, v3

    add-int/2addr v5, p2

    add-int/2addr v5, v1

    aget-short v5, p1, v5

    add-int/2addr v4, v5

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 204
    :cond_0
    div-int/2addr v4, v3

    .line 205
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleBuffer:[S

    int-to-short v6, v4

    aput-short v6, v5, v0

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    .end local v1    # "j":I
    .end local v4    # "value":I
    :cond_1
    return-void
.end method

.method private enlargeInputBufferIfNeeded(I)V
    .locals 3
    .param p1, "numSamples"    # I

    .prologue
    .line 166
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBufferSize:I

    if-le v0, v1, :cond_0

    .line 167
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBufferSize:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBufferSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBufferSize:I

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBufferSize:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    .line 170
    :cond_0
    return-void
.end method

.method private enlargeOutputBufferIfNeeded(I)V
    .locals 3
    .param p1, "numSamples"    # I

    .prologue
    .line 159
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBufferSize:I

    if-le v0, v1, :cond_0

    .line 160
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBufferSize:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBufferSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBufferSize:I

    .line 161
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBufferSize:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    .line 163
    :cond_0
    return-void
.end method

.method private findPitchPeriod([SIZ)I
    .locals 10
    .param p1, "samples"    # [S
    .param p2, "position"    # I
    .param p3, "preferNewPeriod"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 273
    iget v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputSampleRateHz:I

    const/16 v7, 0xfa0

    if-le v6, v7, :cond_1

    iget v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputSampleRateHz:I

    div-int/lit16 v4, v6, 0xfa0

    .line 274
    .local v4, "skip":I
    :goto_0
    iget v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    if-ne v6, v5, :cond_2

    if-ne v4, v5, :cond_2

    .line 275
    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minPeriod:I

    iget v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    invoke-direct {p0, p1, p2, v5, v6}, Lcom/google/android/exoplayer2/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v2

    .line 297
    .local v2, "period":I
    :cond_0
    :goto_1
    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minDiff:I

    iget v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxDiff:I

    invoke-direct {p0, v5, v6, p3}, Lcom/google/android/exoplayer2/audio/Sonic;->previousPeriodBetter(IIZ)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 298
    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevPeriod:I

    .line 302
    .local v3, "retPeriod":I
    :goto_2
    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minDiff:I

    iput v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevMinDiff:I

    .line 303
    iput v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevPeriod:I

    .line 304
    return v3

    .end local v2    # "period":I
    .end local v3    # "retPeriod":I
    .end local v4    # "skip":I
    :cond_1
    move v4, v5

    .line 273
    goto :goto_0

    .line 277
    .restart local v4    # "skip":I
    :cond_2
    invoke-direct {p0, p1, p2, v4}, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleInput([SII)V

    .line 278
    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleBuffer:[S

    iget v7, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minPeriod:I

    div-int/2addr v7, v4

    iget v8, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    div-int/2addr v8, v4

    invoke-direct {p0, v6, v9, v7, v8}, Lcom/google/android/exoplayer2/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v2

    .line 279
    .restart local v2    # "period":I
    if-eq v4, v5, :cond_0

    .line 280
    mul-int/2addr v2, v4

    .line 281
    mul-int/lit8 v6, v4, 0x4

    sub-int v1, v2, v6

    .line 282
    .local v1, "minP":I
    mul-int/lit8 v6, v4, 0x4

    add-int v0, v2, v6

    .line 283
    .local v0, "maxP":I
    iget v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minPeriod:I

    if-ge v1, v6, :cond_3

    .line 284
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minPeriod:I

    .line 286
    :cond_3
    iget v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    if-le v0, v6, :cond_4

    .line 287
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    .line 289
    :cond_4
    iget v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    if-ne v6, v5, :cond_5

    .line 290
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v2

    goto :goto_1

    .line 292
    :cond_5
    invoke-direct {p0, p1, p2, v5}, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleInput([SII)V

    .line 293
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleBuffer:[S

    invoke-direct {p0, v5, v9, v1, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v2

    goto :goto_1

    .line 300
    .end local v0    # "maxP":I
    .end local v1    # "minP":I
    :cond_6
    move v3, v2

    .restart local v3    # "retPeriod":I
    goto :goto_2
.end method

.method private findPitchPeriodInRange([SIII)I
    .locals 11
    .param p1, "samples"    # [S
    .param p2, "position"    # I
    .param p3, "minPeriod"    # I
    .param p4, "maxPeriod"    # I

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "bestPeriod":I
    const/16 v8, 0xff

    .line 214
    .local v8, "worstPeriod":I
    const/4 v4, 0x1

    .line 215
    .local v4, "minDiff":I
    const/4 v3, 0x0

    .line 216
    .local v3, "maxDiff":I
    iget v9, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr p2, v9

    .line 217
    move v6, p3

    .local v6, "period":I
    :goto_0
    if-gt v6, p4, :cond_3

    .line 218
    const/4 v1, 0x0

    .line 219
    .local v1, "diff":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_0

    .line 220
    add-int v9, p2, v2

    aget-short v7, p1, v9

    .line 221
    .local v7, "sVal":S
    add-int v9, p2, v6

    add-int/2addr v9, v2

    aget-short v5, p1, v9

    .line 222
    .local v5, "pVal":S
    sub-int v9, v7, v5

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v1, v9

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 227
    .end local v5    # "pVal":S
    .end local v7    # "sVal":S
    :cond_0
    mul-int v9, v1, v0

    mul-int v10, v4, v6

    if-ge v9, v10, :cond_1

    .line 228
    move v4, v1

    .line 229
    move v0, v6

    .line 231
    :cond_1
    mul-int v9, v1, v8

    mul-int v10, v3, v6

    if-le v9, v10, :cond_2

    .line 232
    move v3, v1

    .line 233
    move v8, v6

    .line 217
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 236
    .end local v1    # "diff":I
    .end local v2    # "i":I
    :cond_3
    div-int v9, v4, v0

    iput v9, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minDiff:I

    .line 237
    div-int v9, v3, v8

    iput v9, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxDiff:I

    .line 238
    return v0
.end method

.method private insertPitchPeriod([SIFI)I
    .locals 8
    .param p1, "samples"    # [S
    .param p2, "position"    # I
    .param p3, "speed"    # F
    .param p4, "period"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 391
    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, p3, v1

    if-gez v1, :cond_0

    .line 392
    int-to-float v1, p4

    mul-float/2addr v1, p3

    sub-float v2, v3, p3

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 397
    .local v0, "newSamples":I
    :goto_0
    add-int v1, p4, v0

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->enlargeOutputBufferIfNeeded(I)V

    .line 398
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v1, p2

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v4, p4

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int/2addr v3, p4

    add-int v5, p2, p4

    move-object v4, p1

    move-object v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/Sonic;->overlapAdd(II[SI[SI[SI)V

    .line 402
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int v2, p4, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    .line 403
    return v0

    .line 394
    .end local v0    # "newSamples":I
    :cond_0
    move v0, p4

    .line 395
    .restart local v0    # "newSamples":I
    int-to-float v1, p4

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, p3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float v2, v3, p3

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    goto :goto_0
.end method

.method private interpolate([SIII)S
    .locals 9
    .param p1, "in"    # [S
    .param p2, "inPos"    # I
    .param p3, "oldSampleRate"    # I
    .param p4, "newSampleRate"    # I

    .prologue
    .line 329
    aget-short v0, p1, p2

    .line 330
    .local v0, "left":S
    iget v7, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    add-int/2addr v7, p2

    aget-short v4, p1, v7

    .line 331
    .local v4, "right":S
    iget v7, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    mul-int v2, v7, p3

    .line 332
    .local v2, "position":I
    iget v7, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    mul-int v1, v7, p4

    .line 333
    .local v1, "leftPosition":I
    iget v7, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    add-int/lit8 v7, v7, 0x1

    mul-int v5, v7, p4

    .line 334
    .local v5, "rightPosition":I
    sub-int v3, v5, v2

    .line 335
    .local v3, "ratio":I
    sub-int v6, v5, v1

    .line 336
    .local v6, "width":I
    mul-int v7, v3, v0

    sub-int v8, v6, v3

    mul-int/2addr v8, v4

    add-int/2addr v7, v8

    div-int/2addr v7, v6

    int-to-short v7, v7

    return v7
.end method

.method private moveNewSamplesToPitchBuffer(I)V
    .locals 6
    .param p1, "originalNumOutputSamples"    # I

    .prologue
    .line 308
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    sub-int v0, v1, p1

    .line 309
    .local v0, "numSamples":I
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBufferSize:I

    if-le v1, v2, :cond_0

    .line 310
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBufferSize:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBufferSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBufferSize:I

    .line 311
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBufferSize:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v2, p1

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v5, v0

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    .line 316
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    .line 317
    return-void
.end method

.method private static overlapAdd(II[SI[SI[SI)V
    .locals 7
    .param p0, "numSamples"    # I
    .param p1, "numChannels"    # I
    .param p2, "out"    # [S
    .param p3, "outPos"    # I
    .param p4, "rampDown"    # [S
    .param p5, "rampDownPos"    # I
    .param p6, "rampUp"    # [S
    .param p7, "rampUpPos"    # I

    .prologue
    .line 445
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 446
    mul-int v5, p3, p1

    add-int v2, v5, v1

    .line 447
    .local v2, "o":I
    mul-int v5, p7, p1

    add-int v4, v5, v1

    .line 448
    .local v4, "u":I
    mul-int v5, p5, p1

    add-int v0, v5, v1

    .line 449
    .local v0, "d":I
    const/4 v3, 0x0

    .local v3, "t":I
    :goto_1
    if-ge v3, p0, :cond_0

    .line 450
    aget-short v5, p4, v0

    sub-int v6, p0, v3

    mul-int/2addr v5, v6

    aget-short v6, p6, v4

    mul-int/2addr v6, v3

    add-int/2addr v5, v6

    div-int/2addr v5, p0

    int-to-short v5, v5

    aput-short v5, p2, v2

    .line 451
    add-int/2addr v2, p1

    .line 452
    add-int/2addr v0, p1

    .line 453
    add-int/2addr v4, p1

    .line 449
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 445
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 456
    .end local v0    # "d":I
    .end local v2    # "o":I
    .end local v3    # "t":I
    .end local v4    # "u":I
    :cond_1
    return-void
.end method

.method private previousPeriodBetter(IIZ)Z
    .locals 3
    .param p1, "minDiff"    # I
    .param p2, "maxDiff"    # I
    .param p3, "preferNewPeriod"    # Z

    .prologue
    const/4 v0, 0x0

    .line 246
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevPeriod:I

    if-nez v1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v0

    .line 249
    :cond_1
    if-eqz p3, :cond_3

    .line 250
    mul-int/lit8 v1, p1, 0x3

    if-gt p2, v1, :cond_0

    .line 254
    mul-int/lit8 v1, p1, 0x2

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevMinDiff:I

    mul-int/lit8 v2, v2, 0x3

    if-le v1, v2, :cond_0

    .line 263
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 259
    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevMinDiff:I

    if-gt p1, v1, :cond_2

    goto :goto_0
.end method

.method private processStreamInput()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 429
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    .line 430
    .local v0, "originalNumOutputSamples":I
    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->speed:F

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    div-float v2, v3, v4

    .line 431
    .local v2, "s":F
    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->rate:F

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    mul-float v1, v3, v4

    .line 432
    .local v1, "r":F
    float-to-double v4, v2

    const-wide v6, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v3, v4, v6

    if-gtz v3, :cond_0

    float-to-double v4, v2

    const-wide v6, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v3, v4, v6

    if-gez v3, :cond_2

    .line 433
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/audio/Sonic;->changeSpeed(F)V

    .line 438
    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_1

    .line 439
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->adjustRate(FI)V

    .line 441
    :cond_1
    return-void

    .line 435
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    invoke-direct {p0, v3, v8, v4}, Lcom/google/android/exoplayer2/audio/Sonic;->copyToOutput([SII)V

    .line 436
    iput v8, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    goto :goto_0
.end method

.method private removePitchSamples(I)V
    .locals 6
    .param p1, "numSamples"    # I

    .prologue
    .line 320
    if-nez p1, :cond_0

    .line 326
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v1, p1

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    sub-int/2addr v4, p1

    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    goto :goto_0
.end method

.method private removeProcessedInputSamples(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 173
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    sub-int v0, v1, p1

    .line 174
    .local v0, "remainingSamples":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v2, p1

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v5, v0

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    .line 177
    return-void
.end method

.method private skipPitchPeriod([SIFI)I
    .locals 8
    .param p1, "samples"    # [S
    .param p2, "position"    # I
    .param p3, "speed"    # F
    .param p4, "period"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 375
    cmpl-float v1, p3, v2

    if-ltz v1, :cond_0

    .line 376
    int-to-float v1, p4

    sub-float v2, p3, v3

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 381
    .local v0, "newSamples":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->enlargeOutputBufferIfNeeded(I)V

    .line 382
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int v7, p2, p4

    move-object v4, p1

    move v5, p2

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/Sonic;->overlapAdd(II[SI[SI[SI)V

    .line 384
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    .line 385
    return v0

    .line 378
    .end local v0    # "newSamples":I
    :cond_0
    move v0, p4

    .line 379
    .restart local v0    # "newSamples":I
    int-to-float v1, p4

    sub-float/2addr v2, p3

    mul-float/2addr v1, v2

    sub-float v2, p3, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    goto :goto_0
.end method


# virtual methods
.method public getOutput(Ljava/nio/ShortBuffer;)V
    .locals 7
    .param p1, "buffer"    # Ljava/nio/ShortBuffer;

    .prologue
    const/4 v6, 0x0

    .line 114
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 115
    .local v0, "samplesToRead":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v2, v0

    invoke-virtual {p1, v1, v6, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 116
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    .line 117
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v2, v0

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v4, v5

    invoke-static {v1, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    return-void
.end method

.method public getSamplesAvailable()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    return v0
.end method

.method public queueEndOfStream()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 126
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    .line 127
    .local v2, "remainingSamples":I
    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->speed:F

    iget v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    div-float v3, v5, v6

    .line 128
    .local v3, "s":F
    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->rate:F

    iget v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    mul-float v1, v5, v6

    .line 129
    .local v1, "r":F
    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    int-to-float v6, v2

    div-float/2addr v6, v3

    iget v7, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    div-float/2addr v6, v1

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int v0, v5, v6

    .line 133
    .local v0, "expectedOutputSamples":I
    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/audio/Sonic;->enlargeInputBufferIfNeeded(I)V

    .line 134
    const/4 v4, 0x0

    .local v4, "xSample":I
    :goto_0
    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v5, v6

    if-ge v4, v5, :cond_0

    .line 135
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v4

    aput-short v8, v5, v6

    .line 134
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 137
    :cond_0
    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    iget v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequired:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    .line 138
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/Sonic;->processStreamInput()V

    .line 140
    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    if-le v5, v0, :cond_1

    .line 141
    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numOutputSamples:I

    .line 144
    :cond_1
    iput v8, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    .line 145
    iput v8, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopy:I

    .line 146
    iput v8, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numPitchSamples:I

    .line 147
    return-void
.end method

.method public queueInput(Ljava/nio/ShortBuffer;)V
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 99
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v2

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    div-int v1, v2, v3

    .line 100
    .local v1, "samplesToWrite":I
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v2, v1

    mul-int/lit8 v0, v2, 0x2

    .line 101
    .local v0, "bytesToWrite":I
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->enlargeInputBufferIfNeeded(I)V

    .line 102
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numChannels:I

    mul-int/2addr v3, v4

    div-int/lit8 v4, v0, 0x2

    invoke-virtual {p1, v2, v3, v4}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 103
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->numInputSamples:I

    .line 104
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/Sonic;->processStreamInput()V

    .line 105
    return-void
.end method
