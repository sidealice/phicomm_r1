.class public final Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtilV19;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;
    }
.end annotation


# static fields
.field private static final BUFFER_MULTIPLICATION_FACTOR:I = 0x4

.field private static final ERROR_BAD_VALUE:I = -0x2

.field private static final MAX_AUDIO_TIMESTAMP_OFFSET_US:J = 0x4c4b40L

.field private static final MAX_BUFFER_DURATION_US:J = 0xb71b0L

.field private static final MAX_LATENCY_US:J = 0x4c4b40L

.field private static final MAX_PLAYHEAD_OFFSET_COUNT:I = 0xa

.field private static final MIN_BUFFER_DURATION_US:J = 0x3d090L

.field private static final MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US:I = 0x7530

.field private static final MIN_TIMESTAMP_SAMPLE_INTERVAL_US:I = 0x7a120

.field private static final MODE_STATIC:I = 0x0

.field private static final MODE_STREAM:I = 0x1

.field private static final PASSTHROUGH_BUFFER_DURATION_US:J = 0x3d090L

.field private static final PLAYSTATE_PAUSED:I = 0x2

.field private static final PLAYSTATE_PLAYING:I = 0x3

.field private static final PLAYSTATE_STOPPED:I = 0x1

.field private static final START_IN_SYNC:I = 0x1

.field private static final START_NEED_SYNC:I = 0x2

.field private static final START_NOT_SET:I = 0x0

.field private static final STATE_INITIALIZED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioTrack"

.field private static final WRITE_NON_BLOCKING:I = 0x1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static enablePreV21AudioSessionWorkaround:Z

.field public static failOnSpuriousAudioTimestamp:Z


# instance fields
.field private audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

.field private final audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field private audioSessionId:I

.field private audioTimestampSet:Z

.field private audioTrack:Landroid/media/AudioTrack;

.field private final audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

.field private avSyncHeader:Ljava/nio/ByteBuffer;

.field private final availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field private bufferSize:I

.field private bufferSizeUs:J

.field private bytesUntilNextAvSync:I

.field private channelConfig:I

.field private final channelMappingAudioProcessor:Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

.field private drainingAudioProcessorIndex:I

.field private drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

.field private encoding:I

.field private framesPerEncodedSample:I

.field private getLatencyMethod:Ljava/lang/reflect/Method;

.field private handledEndOfStream:Z

.field private hasData:Z

.field private inputBuffer:Ljava/nio/ByteBuffer;

.field private inputSampleRate:I

.field private keepSessionIdAudioTrack:Landroid/media/AudioTrack;

.field private lastFeedElapsedRealtimeMs:J

.field private lastPlayheadSampleTimeUs:J

.field private lastTimestampSampleTimeUs:J

.field private latencyUs:J

.field private listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private nextPlayheadOffsetIndex:I

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private outputEncoding:I

.field private outputPcmFrameSize:I

.field private passthrough:Z

.field private pcmFrameSize:I

.field private playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

.field private final playbackParametersCheckpoints:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;",
            ">;"
        }
    .end annotation
.end field

.field private playbackParametersOffsetUs:J

.field private playbackParametersPositionUs:J

.field private playheadOffsetCount:I

.field private final playheadOffsets:[J

.field private playing:Z

.field private preV21OutputBuffer:[B

.field private preV21OutputBufferOffset:I

.field private final releasingConditionVariable:Landroid/os/ConditionVariable;

.field private resumeSystemTimeUs:J

.field private sampleRate:I

.field private smoothedPlayheadOffsetUs:J

.field private final sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

.field private startMediaTimeState:I

.field private startMediaTimeUs:J

.field private submittedEncodedFrames:J

.field private submittedPcmBytes:J

.field private final trimmingAudioProcessor:Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;

.field private tunneling:Z

.field private volume:F

.field private writtenEncodedFrames:J

.field private writtenPcmBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 158
    sput-boolean v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->enablePreV21AudioSessionWorkaround:Z

    .line 167
    sput-boolean v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->failOnSpuriousAudioTimestamp:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 6
    .param p1, "audioCapabilities"    # Lcom/google/android/exoplayer2/audio/AudioCapabilities;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "audioProcessors"    # [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 248
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v4}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releasingConditionVariable:Landroid/os/ConditionVariable;

    .line 249
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 251
    :try_start_0
    const-class v1, Landroid/media/AudioTrack;

    const-string v2, "getLatency"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    .line 252
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    :goto_0
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 258
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtilV19;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtilV19;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    .line 262
    :goto_1
    new-instance v0, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->channelMappingAudioProcessor:Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

    .line 263
    new-instance v0, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->trimmingAudioProcessor:Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;

    .line 264
    new-instance v0, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    .line 265
    array-length v0, p2

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 266
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    new-instance v1, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/audio/ResamplingAudioProcessor;-><init>()V

    aput-object v1, v0, v3

    .line 267
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->channelMappingAudioProcessor:Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

    aput-object v1, v0, v4

    .line 268
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->trimmingAudioProcessor:Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;

    aput-object v2, v0, v1

    .line 269
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/4 v1, 0x3

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v1, p2

    add-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    aput-object v2, v0, v1

    .line 271
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playheadOffsets:[J

    .line 272
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->volume:F

    .line 273
    iput v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeState:I

    .line 274
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 275
    iput v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    .line 276
    sget-object v0, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 277
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    .line 278
    new-array v0, v3, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 279
    new-array v0, v3, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 280
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    .line 281
    return-void

    .line 260
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    goto :goto_1

    .line 253
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releasingConditionVariable:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private applySpeedup(J)J
    .locals 9
    .param p1, "positionUs"    # J

    .prologue
    .line 995
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    .line 996
    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->access$400(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    .line 998
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;

    .line 999
    .local v0, "checkpoint":Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->access$200(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 1000
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->access$400(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersPositionUs:J

    .line 1001
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->access$500(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUs:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersOffsetUs:J

    goto :goto_0

    .line 1004
    .end local v0    # "checkpoint":Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 1005
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersOffsetUs:J

    add-long/2addr v2, p1

    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersPositionUs:J

    sub-long/2addr v2, v4

    .line 1013
    :goto_1
    return-wide v2

    .line 1008
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1009
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersOffsetUs:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersPositionUs:J

    sub-long v4, p1, v4

    .line 1010
    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->scaleDurationForSpeedup(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_1

    .line 1013
    :cond_2
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersOffsetUs:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    float-to-double v4, v1

    iget-wide v6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersPositionUs:J

    sub-long v6, p1, v6

    long-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_1
.end method

.method private createAudioTrackV21()Landroid/media/AudioTrack;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1187
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v0, :cond_0

    .line 1188
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x3

    .line 1189
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v3, 0x10

    .line 1190
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1191
    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1192
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 1196
    .local v1, "attributes":Landroid/media/AudioAttributes;
    :goto_0
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->channelConfig:I

    .line 1197
    invoke-virtual {v0, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputEncoding:I

    .line 1198
    invoke-virtual {v0, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->sampleRate:I

    .line 1199
    invoke-virtual {v0, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1200
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    .line 1201
    .local v2, "format":Landroid/media/AudioFormat;
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    if-eqz v0, :cond_1

    iget v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    .line 1203
    .local v5, "audioSessionId":I
    :goto_1
    new-instance v0, Landroid/media/AudioTrack;

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-object v0

    .line 1194
    .end local v1    # "attributes":Landroid/media/AudioAttributes;
    .end local v2    # "format":Landroid/media/AudioFormat;
    .end local v5    # "audioSessionId":I
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->getAudioAttributesV21()Landroid/media/AudioAttributes;

    move-result-object v1

    .restart local v1    # "attributes":Landroid/media/AudioAttributes;
    goto :goto_0

    .line 1201
    .restart local v2    # "format":Landroid/media/AudioFormat;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private drainAudioProcessorsToEndOfStream()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .prologue
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 759
    const/4 v1, 0x0

    .line 760
    .local v1, "audioProcessorNeedsEndOfStream":Z
    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    if-ne v2, v5, :cond_0

    .line 761
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->passthrough:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v2, v2

    :goto_0
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    .line 762
    const/4 v1, 0x1

    .line 764
    :cond_0
    :goto_1
    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v4, v4

    if-ge v2, v4, :cond_5

    .line 765
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    aget-object v0, v2, v4

    .line 766
    .local v0, "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    if-eqz v1, :cond_1

    .line 767
    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->queueEndOfStream()V

    .line 769
    :cond_1
    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->processBuffers(J)V

    .line 770
    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->isEnded()Z

    move-result v2

    if-nez v2, :cond_4

    .line 785
    .end local v0    # "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    :cond_2
    :goto_2
    return v3

    :cond_3
    move v2, v3

    .line 761
    goto :goto_0

    .line 773
    .restart local v0    # "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    :cond_4
    const/4 v1, 0x1

    .line 774
    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    goto :goto_1

    .line 778
    .end local v0    # "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    :cond_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_6

    .line 779
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2, v6, v7}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeBuffer(Ljava/nio/ByteBuffer;J)Z

    .line 780
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_2

    .line 784
    :cond_6
    iput v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    .line 785
    const/4 v3, 0x1

    goto :goto_2
.end method

.method private durationUsToFrames(J)J
    .locals 5
    .param p1, "durationUs"    # J

    .prologue
    .line 1114
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->sampleRate:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private framesToDurationUs(J)J
    .locals 5
    .param p1, "frameCount"    # J

    .prologue
    .line 1110
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static getEncodingForMimeType(Ljava/lang/String;)I
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1217
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1227
    :goto_1
    return v0

    .line 1217
    :sswitch_0
    const-string v2, "audio/ac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_1
    const-string v2, "audio/eac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "audio/vnd.dts"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "audio/vnd.dts.hd"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 1219
    :pswitch_0
    const/4 v0, 0x5

    goto :goto_1

    .line 1221
    :pswitch_1
    const/4 v0, 0x6

    goto :goto_1

    .line 1223
    :pswitch_2
    const/4 v0, 0x7

    goto :goto_1

    .line 1225
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_1

    .line 1217
    :sswitch_data_0
    .sparse-switch
        -0x41455b98 -> :sswitch_2
        0xb269698 -> :sswitch_0
        0x59ae0c65 -> :sswitch_1
        0x59c2dc42 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "encoding"    # I
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1232
    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    .line 1233
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DtsUtil;->parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1237
    :goto_0
    return v0

    .line 1234
    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    .line 1235
    invoke-static {}, Lcom/google/android/exoplayer2/audio/Ac3Util;->getAc3SyncframeAudioSampleCount()I

    move-result v0

    goto :goto_0

    .line 1236
    :cond_2
    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    .line 1237
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseEAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0

    .line 1239
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected audio encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSubmittedFrames()J
    .locals 4

    .prologue
    .line 1118
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->passthrough:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedEncodedFrames:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedPcmBytes:J

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->pcmFrameSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method private getWrittenFrames()J
    .locals 4

    .prologue
    .line 1122
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->passthrough:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenEncodedFrames:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenPcmBytes:J

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputPcmFrameSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method private hasCurrentPositionUs()Z
    .locals 1

    .prologue
    .line 988
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initialize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;
        }
    .end annotation

    .prologue
    .line 487
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 489
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->initializeAudioTrack()Landroid/media/AudioTrack;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 490
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    .line 491
    .local v0, "audioSessionId":I
    sget-boolean v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->enablePreV21AudioSessionWorkaround:Z

    if-eqz v1, :cond_1

    .line 492
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    .line 495
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 496
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 497
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releaseKeepSessionIdAudioTrack()V

    .line 499
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_1

    .line 500
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->initializeKeepSessionIdAudioTrack(I)Landroid/media/AudioTrack;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 504
    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    if-eq v1, v0, :cond_2

    .line 505
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    .line 506
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    if-eqz v1, :cond_2

    .line 507
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/audio/AudioSink$Listener;->onAudioSessionId(I)V

    .line 511
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->needsPassthroughWorkarounds()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    .line 512
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setVolumeInternal()V

    .line 513
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->hasData:Z

    .line 514
    return-void
.end method

.method private initializeAudioTrack()Landroid/media/AudioTrack;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1157
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 1158
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->createAudioTrackV21()Landroid/media/AudioTrack;

    move-result-object v0

    .line 1171
    .local v0, "audioTrack":Landroid/media/AudioTrack;
    :goto_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v8

    .line 1172
    .local v8, "state":I
    if-eq v8, v6, :cond_2

    .line 1174
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1179
    :goto_1
    new-instance v2, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->sampleRate:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->channelConfig:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSize:I

    invoke-direct {v2, v8, v3, v4, v5}, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;-><init>(IIII)V

    throw v2

    .line 1160
    .end local v0    # "audioTrack":Landroid/media/AudioTrack;
    .end local v8    # "state":I
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v1

    .line 1161
    .local v1, "streamType":I
    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    if-nez v2, :cond_1

    .line 1162
    new-instance v0, Landroid/media/AudioTrack;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->sampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->channelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputEncoding:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSize:I

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .restart local v0    # "audioTrack":Landroid/media/AudioTrack;
    goto :goto_0

    .line 1166
    .end local v0    # "audioTrack":Landroid/media/AudioTrack;
    :cond_1
    new-instance v0, Landroid/media/AudioTrack;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->sampleRate:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->channelConfig:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputEncoding:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSize:I

    iget v7, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .restart local v0    # "audioTrack":Landroid/media/AudioTrack;
    goto :goto_0

    .line 1175
    .end local v1    # "streamType":I
    .restart local v8    # "state":I
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1181
    :cond_2
    return-object v0
.end method

.method private initializeKeepSessionIdAudioTrack(I)Landroid/media/AudioTrack;
    .locals 8
    .param p1, "audioSessionId"    # I

    .prologue
    .line 1207
    const/16 v2, 0xfa0

    .line 1208
    .local v2, "sampleRate":I
    const/4 v3, 0x4

    .line 1209
    .local v3, "channelConfig":I
    const/4 v4, 0x2

    .line 1210
    .local v4, "encoding":I
    const/4 v5, 0x2

    .line 1211
    .local v5, "bufferSize":I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/4 v6, 0x0

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    return-object v0
.end method

.method private inputFramesToDurationUs(J)J
    .locals 5
    .param p1, "frameCount"    # J

    .prologue
    .line 1106
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputSampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private isInitialized()Z
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeSampleSyncParams()V
    .locals 20

    .prologue
    .line 1021
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->getPositionUs()J

    move-result-wide v10

    .line 1022
    .local v10, "playbackPositionUs":J
    const-wide/16 v14, 0x0

    cmp-long v9, v10, v14

    if-nez v9, :cond_1

    .line 1099
    :cond_0
    :goto_0
    return-void

    .line 1026
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v12, v14, v16

    .line 1027
    .local v12, "systemClockUs":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->lastPlayheadSampleTimeUs:J

    sub-long v14, v12, v14

    const-wide/16 v16, 0x7530

    cmp-long v9, v14, v16

    if-ltz v9, :cond_3

    .line 1029
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playheadOffsets:[J

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->nextPlayheadOffsetIndex:I

    sub-long v16, v10, v12

    aput-wide v16, v9, v14

    .line 1030
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->nextPlayheadOffsetIndex:I

    add-int/lit8 v9, v9, 0x1

    rem-int/lit8 v9, v9, 0xa

    move-object/from16 v0, p0

    iput v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->nextPlayheadOffsetIndex:I

    .line 1031
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playheadOffsetCount:I

    const/16 v14, 0xa

    if-ge v9, v14, :cond_2

    .line 1032
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playheadOffsetCount:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playheadOffsetCount:I

    .line 1034
    :cond_2
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->lastPlayheadSampleTimeUs:J

    .line 1035
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->smoothedPlayheadOffsetUs:J

    .line 1036
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playheadOffsetCount:I

    if-ge v7, v9, :cond_3

    .line 1037
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->smoothedPlayheadOffsetUs:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playheadOffsets:[J

    aget-wide v16, v9, v7

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playheadOffsetCount:I

    int-to-long v0, v9

    move-wide/from16 v18, v0

    div-long v16, v16, v18

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->smoothedPlayheadOffsetUs:J

    .line 1036
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1041
    .end local v7    # "i":I
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->needsPassthroughWorkarounds()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1047
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->lastTimestampSampleTimeUs:J

    sub-long v14, v12, v14

    const-wide/32 v16, 0x7a120

    cmp-long v9, v14, v16

    if-ltz v9, :cond_0

    .line 1048
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->updateTimestamp()Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTimestampSet:Z

    .line 1049
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTimestampSet:Z

    if-eqz v9, :cond_4

    .line 1051
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v4, v14, v16

    .line 1052
    .local v4, "audioTimestampUs":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v2

    .line 1053
    .local v2, "audioTimestampFramePosition":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->resumeSystemTimeUs:J

    cmp-long v9, v4, v14

    if-gez v9, :cond_6

    .line 1055
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTimestampSet:Z

    .line 1079
    .end local v2    # "audioTimestampFramePosition":J
    .end local v4    # "audioTimestampUs":J
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getLatencyMethod:Ljava/lang/reflect/Method;

    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->passthrough:Z

    if-nez v9, :cond_5

    .line 1083
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getLatencyMethod:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    const/4 v9, 0x0

    check-cast v9, [Ljava/lang/Object;

    invoke-virtual {v14, v15, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v14, v9

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSizeUs:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->latencyUs:J

    .line 1086
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->latencyUs:J

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->latencyUs:J

    .line 1088
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->latencyUs:J

    const-wide/32 v16, 0x4c4b40

    cmp-long v9, v14, v16

    if-lez v9, :cond_5

    .line 1089
    const-string v9, "AudioTrack"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring impossibly large audio latency: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->latencyUs:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->latencyUs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->lastTimestampSampleTimeUs:J

    goto/16 :goto_0

    .line 1056
    .restart local v2    # "audioTimestampFramePosition":J
    .restart local v4    # "audioTimestampUs":J
    :cond_6
    sub-long v14, v4, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/32 v16, 0x4c4b40

    cmp-long v9, v14, v16

    if-lez v9, :cond_8

    .line 1058
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1060
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getSubmittedFrames()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1061
    .local v8, "message":Ljava/lang/String;
    sget-boolean v9, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->failOnSpuriousAudioTimestamp:Z

    if-eqz v9, :cond_7

    .line 1062
    new-instance v9, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;

    invoke-direct {v9, v8}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1064
    :cond_7
    const-string v9, "AudioTrack"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTimestampSet:Z

    goto/16 :goto_2

    .line 1066
    .end local v8    # "message":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesToDurationUs(J)J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/32 v16, 0x4c4b40

    cmp-long v9, v14, v16

    if-lez v9, :cond_4

    .line 1069
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1071
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getSubmittedFrames()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1072
    .restart local v8    # "message":Ljava/lang/String;
    sget-boolean v9, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->failOnSpuriousAudioTimestamp:Z

    if-eqz v9, :cond_9

    .line 1073
    new-instance v9, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;

    invoke-direct {v9, v8}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1075
    :cond_9
    const-string v9, "AudioTrack"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTimestampSet:Z

    goto/16 :goto_2

    .line 1092
    .end local v2    # "audioTimestampFramePosition":J
    .end local v4    # "audioTimestampUs":J
    .end local v8    # "message":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1094
    .local v6, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getLatencyMethod:Ljava/lang/reflect/Method;

    goto/16 :goto_3
.end method

.method private needsPassthroughWorkarounds()Z
    .locals 2

    .prologue
    .line 1139
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputEncoding:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputEncoding:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overrideHasPendingData()Z
    .locals 2

    .prologue
    .line 1150
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->needsPassthroughWorkarounds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 1151
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 1152
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processBuffers(J)V
    .locals 7
    .param p1, "avSyncPresentationTimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .prologue
    .line 652
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v1, v5

    .line 653
    .local v1, "count":I
    move v2, v1

    .line 654
    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_1

    .line 655
    if-lez v2, :cond_2

    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v2, -0x1

    aget-object v3, v5, v6

    .line 657
    .local v3, "input":Ljava/nio/ByteBuffer;
    :goto_1
    if-ne v2, v1, :cond_4

    .line 658
    invoke-direct {p0, v3, p1, p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeBuffer(Ljava/nio/ByteBuffer;J)Z

    .line 671
    :cond_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 679
    .end local v3    # "input":Ljava/nio/ByteBuffer;
    :cond_1
    return-void

    .line 655
    :cond_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_3

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 660
    .restart local v3    # "input":Ljava/nio/ByteBuffer;
    :cond_4
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aget-object v0, v5, v2

    .line 661
    .local v0, "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->queueInput(Ljava/nio/ByteBuffer;)V

    .line 662
    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 663
    .local v4, "output":Ljava/nio/ByteBuffer;
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    aput-object v4, v5, v2

    .line 664
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 666
    add-int/lit8 v2, v2, 0x1

    .line 667
    goto :goto_0

    .line 677
    .end local v0    # "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    .end local v4    # "output":Ljava/nio/ByteBuffer;
    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 678
    goto :goto_0
.end method

.method private releaseKeepSessionIdAudioTrack()V
    .locals 2

    .prologue
    .line 969
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_0

    .line 982
    :goto_0
    return-void

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 975
    .local v0, "toRelease":Landroid/media/AudioTrack;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 976
    new-instance v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$2;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;Landroid/media/AudioTrack;)V

    .line 981
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$2;->start()V

    goto :goto_0
.end method

.method private resetAudioProcessors()V
    .locals 8

    .prologue
    .line 463
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v3, "newAudioProcessors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/audio/AudioProcessor;>;"
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    .line 465
    .local v0, "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->isActive()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 466
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 468
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->flush()V

    goto :goto_1

    .line 471
    .end local v0    # "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 472
    .local v1, "count":I
    new-array v4, v1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 473
    new-array v4, v1, [Ljava/nio/ByteBuffer;

    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 474
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_2

    .line 475
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aget-object v0, v4, v2

    .line 476
    .restart local v0    # "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->flush()V

    .line 477
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 474
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 479
    .end local v0    # "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    :cond_2
    return-void
.end method

.method private resetSyncParams()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 1126
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->smoothedPlayheadOffsetUs:J

    .line 1127
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playheadOffsetCount:I

    .line 1128
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->nextPlayheadOffsetIndex:I

    .line 1129
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->lastPlayheadSampleTimeUs:J

    .line 1130
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTimestampSet:Z

    .line 1131
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->lastTimestampSampleTimeUs:J

    .line 1132
    return-void
.end method

.method private setVolumeInternal()V
    .locals 2

    .prologue
    .line 882
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    :goto_0
    return-void

    .line 884
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 885
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->volume:F

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setVolumeInternalV21(Landroid/media/AudioTrack;F)V

    goto :goto_0

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->volume:F

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setVolumeInternalV3(Landroid/media/AudioTrack;F)V

    goto :goto_0
.end method

.method private static setVolumeInternalV21(Landroid/media/AudioTrack;F)V
    .locals 0
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "volume"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1289
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 1290
    return-void
.end method

.method private static setVolumeInternalV3(Landroid/media/AudioTrack;F)V
    .locals 0
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "volume"    # F

    .prologue
    .line 1294
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 1295
    return-void
.end method

.method private writeBuffer(Ljava/nio/ByteBuffer;J)Z
    .locals 12
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "avSyncPresentationTimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .prologue
    .line 684
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 685
    const/4 v0, 0x1

    .line 741
    :goto_0
    return v0

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 688
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-ne v0, p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 702
    :cond_1
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 703
    .local v3, "bytesRemaining":I
    const/4 v8, 0x0

    .line 704
    .local v8, "bytesWritten":I
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_7

    .line 706
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenPcmBytes:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    .line 707
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v4

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputPcmFrameSize:I

    int-to-long v10, v2

    mul-long/2addr v4, v10

    sub-long/2addr v0, v4

    long-to-int v6, v0

    .line 708
    .local v6, "bytesPending":I
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSize:I

    sub-int v7, v0, v6

    .line 709
    .local v7, "bytesToWrite":I
    if-lez v7, :cond_2

    .line 710
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 711
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/media/AudioTrack;->write([BII)I

    move-result v8

    .line 712
    if-lez v8, :cond_2

    .line 713
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    .line 714
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 725
    .end local v6    # "bytesPending":I
    .end local v7    # "bytesToWrite":I
    :cond_2
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->lastFeedElapsedRealtimeMs:J

    .line 727
    if-gez v8, :cond_a

    .line 728
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;

    invoke-direct {v0, v8}, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;-><init>(I)V

    throw v0

    .line 688
    .end local v3    # "bytesRemaining":I
    .end local v8    # "bytesWritten":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 690
    :cond_4
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 691
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 692
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 693
    .restart local v3    # "bytesRemaining":I
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    array-length v0, v0

    if-ge v0, v3, :cond_6

    .line 694
    :cond_5
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    .line 696
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 697
    .local v9, "originalPosition":I
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 698
    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 699
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    goto :goto_2

    .line 717
    .end local v9    # "originalPosition":I
    .restart local v8    # "bytesWritten":I
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v0, :cond_9

    .line 718
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 719
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeNonBlockingWithAvSyncV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result v8

    goto :goto_3

    .line 718
    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    .line 722
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0, p1, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v8

    goto :goto_3

    .line 731
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->passthrough:Z

    if-nez v0, :cond_b

    .line 732
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenPcmBytes:J

    int-to-long v4, v8

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenPcmBytes:J

    .line 734
    :cond_b
    if-ne v8, v3, :cond_d

    .line 735
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->passthrough:Z

    if-eqz v0, :cond_c

    .line 736
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenEncodedFrames:J

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesPerEncodedSample:I

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenEncodedFrames:J

    .line 738
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 739
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 741
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1245
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method private writeNonBlockingWithAvSyncV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .locals 8
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "size"    # I
    .param p4, "presentationTimeUs"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1256
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_0

    .line 1257
    const/16 v3, 0x10

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 1258
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1259
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const v4, 0x55550001

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1261
    :cond_0
    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    if-nez v3, :cond_1

    .line 1262
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 1263
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/16 v4, 0x8

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, p4

    invoke-virtual {v3, v4, v6, v7}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 1264
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1265
    iput p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    .line 1267
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1268
    .local v0, "avSyncHeaderBytesRemaining":I
    if-lez v0, :cond_4

    .line 1269
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v0, v4}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v1

    .line 1270
    .local v1, "result":I
    if-gez v1, :cond_3

    .line 1271
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    move v2, v1

    .line 1284
    :cond_2
    :goto_0
    return v2

    .line 1274
    :cond_3
    if-lt v1, v0, :cond_2

    .line 1278
    .end local v1    # "result":I
    :cond_4
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v1

    .line 1279
    .restart local v1    # "result":I
    if-gez v1, :cond_5

    .line 1280
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    move v2, v1

    .line 1281
    goto :goto_0

    .line 1283
    :cond_5
    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    move v2, v1

    .line 1284
    goto :goto_0
.end method


# virtual methods
.method public configure(Ljava/lang/String;IIII[III)V
    .locals 22
    .param p1, "inputMimeType"    # Ljava/lang/String;
    .param p2, "inputChannelCount"    # I
    .param p3, "inputSampleRate"    # I
    .param p4, "inputPcmEncoding"    # I
    .param p5, "specifiedBufferSize"    # I
    .param p6, "outputChannels"    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "trimStartSamples"    # I
    .param p8, "trimEndSamples"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;
        }
    .end annotation

    .prologue
    .line 337
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputSampleRate:I

    .line 338
    move/from16 v6, p2

    .line 339
    .local v6, "channelCount":I
    move/from16 v15, p3

    .line 341
    .local v15, "sampleRate":I
    const-string v16, "audio/raw"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    const/4 v14, 0x1

    .line 342
    .local v14, "passthrough":Z
    :goto_0
    const/4 v9, 0x0

    .line 343
    .local v9, "flush":Z
    if-nez v14, :cond_4

    .line 344
    move/from16 v8, p4

    .line 345
    .local v8, "encoding":I
    move/from16 v0, p4

    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->pcmFrameSize:I

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->trimmingAudioProcessor:Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p7

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/TrimmingAudioProcessor;->setTrimSampleCount(II)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->channelMappingAudioProcessor:Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/ChannelMappingAudioProcessor;->setChannelMap([I)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    aget-object v4, v17, v16

    .line 350
    .local v4, "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    :try_start_0
    invoke-interface {v4, v15, v6, v8}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->configure(III)Z
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    or-int v9, v9, v19

    .line 354
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->isActive()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 355
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutputChannelCount()I

    move-result v6

    .line 356
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutputSampleRateHz()I

    move-result v15

    .line 357
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutputEncoding()I

    move-result v8

    .line 348
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 341
    .end local v4    # "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    .end local v8    # "encoding":I
    .end local v9    # "flush":Z
    .end local v14    # "passthrough":Z
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 351
    .restart local v4    # "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    .restart local v8    # "encoding":I
    .restart local v9    # "flush":Z
    .restart local v14    # "passthrough":Z
    :catch_0
    move-exception v7

    .line 352
    .local v7, "e":Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;
    new-instance v16, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v16

    .line 360
    .end local v4    # "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    .end local v7    # "e":Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException;
    :cond_2
    if-eqz v9, :cond_3

    .line 361
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->resetAudioProcessors()V

    .line 368
    :cond_3
    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 394
    new-instance v16, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unsupported channel count: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 364
    .end local v8    # "encoding":I
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getEncodingForMimeType(Ljava/lang/String;)I

    move-result v8

    .restart local v8    # "encoding":I
    goto :goto_2

    .line 370
    :pswitch_0
    const/4 v5, 0x4

    .line 398
    .local v5, "channelConfig":I
    :goto_3
    sget v16, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v17, 0x17

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_5

    const-string v16, "foster"

    sget-object v17, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    const-string v16, "NVIDIA"

    sget-object v17, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 399
    packed-switch v6, :pswitch_data_1

    .line 414
    :cond_5
    :goto_4
    :pswitch_1
    sget v16, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v17, 0x19

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_6

    const-string v16, "fugu"

    sget-object v17, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    if-eqz v14, :cond_6

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v6, v0, :cond_6

    .line 415
    const/16 v5, 0xc

    .line 418
    :cond_6
    if-nez v9, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInitialized()Z

    move-result v16

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->encoding:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v0, v8, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->sampleRate:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v0, v15, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->channelConfig:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v0, v5, :cond_7

    .line 460
    .end local v8    # "encoding":I
    :goto_5
    return-void

    .line 373
    .end local v5    # "channelConfig":I
    .restart local v8    # "encoding":I
    :pswitch_2
    const/16 v5, 0xc

    .line 374
    .restart local v5    # "channelConfig":I
    goto :goto_3

    .line 376
    .end local v5    # "channelConfig":I
    :pswitch_3
    const/16 v5, 0x1c

    .line 377
    .restart local v5    # "channelConfig":I
    goto :goto_3

    .line 379
    .end local v5    # "channelConfig":I
    :pswitch_4
    const/16 v5, 0xcc

    .line 380
    .restart local v5    # "channelConfig":I
    goto :goto_3

    .line 382
    .end local v5    # "channelConfig":I
    :pswitch_5
    const/16 v5, 0xdc

    .line 383
    .restart local v5    # "channelConfig":I
    goto :goto_3

    .line 385
    .end local v5    # "channelConfig":I
    :pswitch_6
    const/16 v5, 0xfc

    .line 386
    .restart local v5    # "channelConfig":I
    goto :goto_3

    .line 388
    .end local v5    # "channelConfig":I
    :pswitch_7
    const/16 v5, 0x4fc

    .line 389
    .restart local v5    # "channelConfig":I
    goto :goto_3

    .line 391
    .end local v5    # "channelConfig":I
    :pswitch_8
    sget v5, Lcom/google/android/exoplayer2/C;->CHANNEL_OUT_7POINT1_SURROUND:I

    .line 392
    .restart local v5    # "channelConfig":I
    goto :goto_3

    .line 401
    :pswitch_9
    sget v5, Lcom/google/android/exoplayer2/C;->CHANNEL_OUT_7POINT1_SURROUND:I

    .line 402
    goto :goto_4

    .line 405
    :pswitch_a
    const/16 v5, 0xfc

    .line 406
    goto :goto_4

    .line 424
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->reset()V

    .line 426
    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->encoding:I

    .line 427
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->passthrough:Z

    .line 428
    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->sampleRate:I

    .line 429
    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->channelConfig:I

    .line 430
    if-eqz v14, :cond_8

    .end local v8    # "encoding":I
    :goto_6
    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputEncoding:I

    .line 431
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputPcmFrameSize:I

    .line 433
    if-eqz p5, :cond_9

    .line 434
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSize:I

    .line 456
    :goto_7
    if-eqz v14, :cond_10

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    :goto_8
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSizeUs:J

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;

    goto :goto_5

    .line 430
    .restart local v8    # "encoding":I
    :cond_8
    const/4 v8, 0x2

    goto :goto_6

    .line 435
    .end local v8    # "encoding":I
    :cond_9
    if-eqz v14, :cond_c

    .line 438
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputEncoding:I

    move/from16 v16, v0

    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputEncoding:I

    move/from16 v16, v0

    const/16 v17, 0x6

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 440
    :cond_a
    const/16 v16, 0x5000

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSize:I

    goto :goto_7

    .line 443
    :cond_b
    const v16, 0xc000

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSize:I

    goto :goto_7

    .line 446
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputEncoding:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v15, v5, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v12

    .line 447
    .local v12, "minBufferSize":I
    const/16 v16, -0x2

    move/from16 v0, v16

    if-eq v12, v0, :cond_d

    const/16 v16, 0x1

    :goto_9
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 448
    mul-int/lit8 v13, v12, 0x4

    .line 449
    .local v13, "multipliedBufferSize":I
    const-wide/32 v16, 0x3d090

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->durationUsToFrames(J)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputPcmFrameSize:I

    move/from16 v17, v0

    mul-int v11, v16, v17

    .line 450
    .local v11, "minAppBufferSize":I
    int-to-long v0, v12

    move-wide/from16 v16, v0

    const-wide/32 v18, 0xb71b0

    .line 451
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->durationUsToFrames(J)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputPcmFrameSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    .line 450
    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v10, v0

    .line 452
    .local v10, "maxAppBufferSize":I
    if-ge v13, v11, :cond_e

    .end local v11    # "minAppBufferSize":I
    :goto_a
    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSize:I

    goto/16 :goto_7

    .line 447
    .end local v10    # "maxAppBufferSize":I
    .end local v13    # "multipliedBufferSize":I
    :cond_d
    const/16 v16, 0x0

    goto :goto_9

    .line 452
    .restart local v10    # "maxAppBufferSize":I
    .restart local v11    # "minAppBufferSize":I
    .restart local v13    # "multipliedBufferSize":I
    :cond_e
    if-le v13, v10, :cond_f

    move v11, v10

    goto :goto_a

    :cond_f
    move v11, v13

    goto :goto_a

    .line 456
    .end local v10    # "maxAppBufferSize":I
    .end local v11    # "minAppBufferSize":I
    .end local v12    # "minBufferSize":I
    .end local v13    # "multipliedBufferSize":I
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSize:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputPcmFrameSize:I

    move/from16 v17, v0

    div-int v16, v16, v17

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesToDurationUs(J)J

    move-result-wide v16

    goto/16 :goto_8

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 399
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_a
        :pswitch_1
        :pswitch_a
        :pswitch_1
        :pswitch_9
    .end packed-switch
.end method

.method public disableTunneling()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 866
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v0, :cond_0

    .line 867
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    .line 868
    iput v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    .line 869
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->reset()V

    .line 871
    :cond_0
    return-void
.end method

.method public enableTunnelingV21(I)V
    .locals 3
    .param p1, "tunnelingAudioSessionId"    # I

    .prologue
    const/4 v1, 0x1

    .line 856
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 857
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    if-eq v0, p1, :cond_1

    .line 858
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    .line 859
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    .line 860
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->reset()V

    .line 862
    :cond_1
    return-void

    .line 856
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPositionUs(Z)J
    .locals 14
    .param p1, "sourceEnded"    # Z

    .prologue
    const-wide/16 v12, 0x3e8

    .line 296
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->hasCurrentPositionUs()Z

    move-result v10

    if-nez v10, :cond_0

    .line 297
    const-wide/high16 v10, -0x8000000000000000L

    .line 330
    :goto_0
    return-wide v10

    .line 300
    :cond_0
    iget-object v10, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v10}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1

    .line 301
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->maybeSampleSyncParams()V

    .line 306
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    div-long v8, v10, v12

    .line 308
    .local v8, "systemClockUs":J
    iget-boolean v10, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTimestampSet:Z

    if-eqz v10, :cond_3

    .line 310
    iget-object v10, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v10

    div-long/2addr v10, v12

    sub-long v4, v8, v10

    .line 311
    .local v4, "elapsedSinceTimestampUs":J
    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->durationUsToFrames(J)J

    move-result-wide v2

    .line 312
    .local v2, "elapsedSinceTimestampFrames":J
    iget-object v10, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v10

    add-long v0, v10, v2

    .line 313
    .local v0, "elapsedFrames":J
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesToDurationUs(J)J

    move-result-wide v6

    .line 329
    .end local v0    # "elapsedFrames":J
    .end local v2    # "elapsedSinceTimestampFrames":J
    .end local v4    # "elapsedSinceTimestampUs":J
    .local v6, "positionUs":J
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesToDurationUs(J)J

    move-result-wide v10

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 330
    iget-wide v10, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUs:J

    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->applySpeedup(J)J

    move-result-wide v12

    add-long/2addr v10, v12

    goto :goto_0

    .line 315
    .end local v6    # "positionUs":J
    :cond_3
    iget v10, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playheadOffsetCount:I

    if-nez v10, :cond_4

    .line 317
    iget-object v10, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->getPositionUs()J

    move-result-wide v6

    .line 324
    .restart local v6    # "positionUs":J
    :goto_2
    if-nez p1, :cond_2

    .line 325
    iget-wide v10, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->latencyUs:J

    sub-long/2addr v6, v10

    goto :goto_1

    .line 322
    .end local v6    # "positionUs":J
    :cond_4
    iget-wide v10, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->smoothedPlayheadOffsetUs:J

    add-long v6, v8, v10

    .restart local v6    # "positionUs":J
    goto :goto_2
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-object v0
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;J)Z
    .locals 20
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "presentationTimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;,
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .prologue
    .line 537
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_2

    :cond_0
    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 538
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_1

    .line 539
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->initialize()V

    .line 540
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playing:Z

    if-eqz v4, :cond_1

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->play()V

    .line 545
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->needsPassthroughWorkarounds()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 548
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 550
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->hasData:Z

    .line 551
    const/4 v4, 0x0

    .line 648
    :goto_1
    return v4

    .line 537
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 557
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    .line 558
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 559
    const/4 v4, 0x0

    goto :goto_1

    .line 563
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->hasData:Z

    move/from16 v17, v0

    .line 564
    .local v17, "hadData":Z
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->hasPendingData()Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->hasData:Z

    .line 565
    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->hasData:Z

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    if-eqz v4, :cond_5

    .line 566
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->lastFeedElapsedRealtimeMs:J

    sub-long v8, v4, v6

    .line 567
    .local v8, "elapsedSinceLastFeedMs":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSize:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bufferSizeUs:J

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v6

    invoke-interface/range {v4 .. v9}, Lcom/google/android/exoplayer2/audio/AudioSink$Listener;->onUnderrun(IJJ)V

    .line 570
    .end local v8    # "elapsedSinceLastFeedMs":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_b

    .line 572
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_6

    .line 574
    const/4 v4, 0x1

    goto :goto_1

    .line 577
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->passthrough:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesPerEncodedSample:I

    if-nez v4, :cond_7

    .line 579
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputEncoding:I

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesPerEncodedSample:I

    .line 582
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    if-eqz v4, :cond_9

    .line 583
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainAudioProcessorsToEndOfStream()Z

    move-result v4

    if-nez v4, :cond_8

    .line 585
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 588
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    new-instance v10, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    const-wide/16 v6, 0x0

    .line 589
    move-wide/from16 v0, p2

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 590
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesToDurationUs(J)J

    move-result-wide v14

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v16}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;-><init>(Lcom/google/android/exoplayer2/PlaybackParameters;JJLcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V

    .line 588
    invoke-virtual {v4, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 591
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 594
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->resetAudioProcessors()V

    .line 597
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeState:I

    if-nez v4, :cond_c

    .line 598
    const-wide/16 v4, 0x0

    move-wide/from16 v0, p2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUs:J

    .line 599
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeState:I

    .line 621
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->passthrough:Z

    if-eqz v4, :cond_e

    .line 622
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedEncodedFrames:J

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesPerEncodedSample:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedEncodedFrames:J

    .line 627
    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 630
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->passthrough:Z

    if-eqz v4, :cond_f

    .line 632
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writeBuffer(Ljava/nio/ByteBuffer;J)Z

    .line 637
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_10

    .line 638
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 639
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 602
    :cond_c
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUs:J

    .line 603
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getSubmittedFrames()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputFramesToDurationUs(J)J

    move-result-wide v6

    add-long v18, v4, v6

    .line 604
    .local v18, "expectedPresentationTimeUs":J
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    sub-long v4, v18, p2

    .line 605
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x30d40

    cmp-long v4, v4, v6

    if-lez v4, :cond_d

    .line 606
    const-string v4, "AudioTrack"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discontinuity detected [expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeState:I

    .line 610
    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    .line 613
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUs:J

    sub-long v6, p2, v18

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeUs:J

    .line 614
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeState:I

    .line 615
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    if-eqz v4, :cond_a

    .line 616
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioSink$Listener;->onPositionDiscontinuity()V

    goto/16 :goto_2

    .line 624
    .end local v18    # "expectedPresentationTimeUs":J
    :cond_e
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedPcmBytes:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedPcmBytes:J

    goto/16 :goto_3

    .line 634
    :cond_f
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->processBuffers(J)V

    goto/16 :goto_4

    .line 642
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->needsReset(J)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 643
    const-string v4, "AudioTrack"

    const-string v5, "Resetting stalled audio track"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->reset()V

    .line 645
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 648
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method public handleDiscontinuity()V
    .locals 2

    .prologue
    .line 528
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 529
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeState:I

    .line 531
    :cond_0
    return-void
.end method

.method public hasPendingData()Z
    .locals 4

    .prologue
    .line 795
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 796
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 797
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->overrideHasPendingData()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnded()Z
    .locals 1

    .prologue
    .line 790
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->handledEndOfStream:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPassthroughSupported(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioCapabilities:Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 291
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getEncodingForMimeType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 893
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playing:Z

    .line 894
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->resetSyncParams()V

    .line 896
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->pause()V

    .line 898
    :cond_0
    return-void
.end method

.method public play()V
    .locals 4

    .prologue
    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playing:Z

    .line 519
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->resumeSystemTimeUs:J

    .line 521
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 523
    :cond_0
    return-void
.end method

.method public playToEndOfStream()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .prologue
    .line 746
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->handledEndOfStream:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainAudioProcessorsToEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->handleEndOfStream(J)V

    .line 753
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    .line 754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->handledEndOfStream:Z

    goto :goto_0
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 956
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->reset()V

    .line 957
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releaseKeepSessionIdAudioTrack()V

    .line 958
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->availableAudioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 959
    .local v0, "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->reset()V

    .line 958
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 961
    .end local v0    # "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    :cond_0
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    .line 962
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playing:Z

    .line 963
    return-void
.end method

.method public reset()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 902
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 903
    iput-wide v6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedPcmBytes:J

    .line 904
    iput-wide v6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->submittedEncodedFrames:J

    .line 905
    iput-wide v6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenPcmBytes:J

    .line 906
    iput-wide v6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->writtenEncodedFrames:J

    .line 907
    iput v9, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->framesPerEncodedSample:I

    .line 908
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    if-eqz v4, :cond_1

    .line 909
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 910
    iput-object v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 914
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 915
    iput-wide v6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersOffsetUs:J

    .line 916
    iput-wide v6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersPositionUs:J

    .line 917
    iput-object v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 918
    iput-object v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 919
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 920
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aget-object v0, v4, v1

    .line 921
    .local v0, "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->flush()V

    .line 922
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 919
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 911
    .end local v0    # "audioProcessor":Lcom/google/android/exoplayer2/audio/AudioProcessor;
    .end local v1    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 912
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;

    invoke-static {v4}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->access$200(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    goto :goto_0

    .line 924
    .restart local v1    # "i":I
    :cond_2
    iput-boolean v9, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->handledEndOfStream:Z

    .line 925
    const/4 v4, -0x1

    iput v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    .line 926
    iput-object v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 927
    iput v9, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    .line 928
    iput v9, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->startMediaTimeState:I

    .line 929
    iput-wide v6, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->latencyUs:J

    .line 930
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->resetSyncParams()V

    .line 931
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    .line 932
    .local v2, "playState":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 933
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->pause()V

    .line 936
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 937
    .local v3, "toRelease":Landroid/media/AudioTrack;
    iput-object v8, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 938
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioTrackUtil:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;

    invoke-virtual {v4, v8, v9}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    .line 939
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->close()V

    .line 940
    new-instance v4, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;

    invoke-direct {v4, p0, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;Landroid/media/AudioTrack;)V

    .line 950
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;->start()V

    .line 952
    .end local v1    # "i":I
    .end local v2    # "playState":I
    .end local v3    # "toRelease":Landroid/media/AudioTrack;
    :cond_4
    return-void
.end method

.method public setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 1
    .param p1, "audioAttributes"    # Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .prologue
    .line 834
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 838
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->tunneling:Z

    if-nez v0, :cond_0

    .line 842
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->reset()V

    .line 843
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    goto :goto_0
.end method

.method public setAudioSessionId(I)V
    .locals 1
    .param p1, "audioSessionId"    # I

    .prologue
    .line 848
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    if-eq v0, p1, :cond_0

    .line 849
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->audioSessionId:I

    .line 850
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->reset()V

    .line 852
    :cond_0
    return-void
.end method

.method public setListener(Lcom/google/android/exoplayer2/audio/AudioSink$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->listener:Lcom/google/android/exoplayer2/audio/AudioSink$Listener;

    .line 286
    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 5
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .prologue
    .line 802
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->passthrough:Z

    if-eqz v2, :cond_0

    .line 804
    sget-object v2, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 805
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 824
    :goto_0
    return-object v2

    .line 807
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/PlaybackParameters;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    iget v3, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 808
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->setSpeed(F)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    iget v4, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    .line 809
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->setPitch(F)F

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    .line 810
    .end local p1    # "playbackParameters":Lcom/google/android/exoplayer2/PlaybackParameters;
    .local v1, "playbackParameters":Lcom/google/android/exoplayer2/PlaybackParameters;
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 815
    .local v0, "lastSetPlaybackParameters":Lcom/google/android/exoplayer2/PlaybackParameters;
    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 816
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 819
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->drainingPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 824
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    move-object p1, v1

    .end local v1    # "playbackParameters":Lcom/google/android/exoplayer2/PlaybackParameters;
    .restart local p1    # "playbackParameters":Lcom/google/android/exoplayer2/PlaybackParameters;
    goto :goto_0

    .line 810
    .end local v0    # "lastSetPlaybackParameters":Lcom/google/android/exoplayer2/PlaybackParameters;
    .end local p1    # "playbackParameters":Lcom/google/android/exoplayer2/PlaybackParameters;
    .restart local v1    # "playbackParameters":Lcom/google/android/exoplayer2/PlaybackParameters;
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    .line 812
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/LinkedList;

    .line 813
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;

    invoke-static {v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->access$200(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    goto :goto_1

    .line 821
    .restart local v0    # "lastSetPlaybackParameters":Lcom/google/android/exoplayer2/PlaybackParameters;
    :cond_4
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    goto :goto_2
.end method

.method public setVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .prologue
    .line 875
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->volume:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 876
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->volume:F

    .line 877
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->setVolumeInternal()V

    .line 879
    :cond_0
    return-void
.end method
