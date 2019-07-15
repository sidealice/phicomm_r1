.class public interface abstract Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;,
        Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;,
        Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;,
        Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;
    }
.end annotation


# virtual methods
.method public abstract consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)V
.end method

.method public abstract init(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
.end method

.method public abstract seek()V
.end method
