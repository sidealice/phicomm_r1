.class public final Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;
.super Ljava/lang/Object;
.source "DefaultHlsExtractorFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;


# static fields
.field public static final AAC_FILE_EXTENSION:Ljava/lang/String; = ".aac"

.field public static final AC3_FILE_EXTENSION:Ljava/lang/String; = ".ac3"

.field public static final EC3_FILE_EXTENSION:Ljava/lang/String; = ".ec3"

.field public static final M4_FILE_EXTENSION_PREFIX:Ljava/lang/String; = ".m4"

.field public static final MP3_FILE_EXTENSION:Ljava/lang/String; = ".mp3"

.field public static final MP4_FILE_EXTENSION:Ljava/lang/String; = ".mp4"

.field public static final VTT_FILE_EXTENSION:Ljava/lang/String; = ".vtt"

.field public static final WEBVTT_FILE_EXTENSION:Ljava/lang/String; = ".webvtt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createExtractor(Lcom/google/android/exoplayer2/extractor/Extractor;Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Landroid/util/Pair;
    .locals 9
    .param p1, "previousExtractor"    # Lcom/google/android/exoplayer2/extractor/Extractor;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p5, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
    .param p6, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .local p4, "muxedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    const/4 v8, 0x0

    .line 53
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "lastPathSegment":Ljava/lang/String;
    const/4 v3, 0x0

    .line 56
    .local v3, "isPackedAudioExtractor":Z
    const-string v5, "text/vtt"

    iget-object v6, p3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, ".webvtt"

    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, ".vtt"

    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    :cond_0
    new-instance v2, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    iget-object v5, p3, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-direct {v2, v5, p6}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    .line 101
    .local v2, "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5

    .line 60
    .end local v2    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_1
    const-string v5, ".aac"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 61
    const/4 v3, 0x1

    .line 62
    new-instance v2, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>()V

    .restart local v2    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto :goto_0

    .line 63
    .end local v2    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_2
    const-string v5, ".ac3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ".ec3"

    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 65
    :cond_3
    const/4 v3, 0x1

    .line 66
    new-instance v2, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    .restart local v2    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto :goto_0

    .line 67
    .end local v2    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_4
    const-string v5, ".mp3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 68
    const/4 v3, 0x1

    .line 69
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    const-wide/16 v6, 0x0

    invoke-direct {v2, v8, v6, v7}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    .restart local v2    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto :goto_0

    .line 70
    .end local v2    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_5
    if-eqz p1, :cond_6

    .line 72
    move-object v2, p1

    .restart local v2    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto :goto_0

    .line 73
    .end local v2    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_6
    const-string v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, ".m4"

    .line 74
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 75
    :cond_7
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    const/4 v5, 0x0

    invoke-direct {v2, v8, p6, v5, p5}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    .restart local v2    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto :goto_0

    .line 79
    .end local v2    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_8
    const/16 v1, 0x10

    .line 80
    .local v1, "esReaderFactoryFlags":I
    if-eqz p4, :cond_b

    .line 82
    or-int/lit8 v1, v1, 0x20

    .line 86
    :goto_1
    iget-object v0, p3, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 87
    .local v0, "codecs":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 91
    const-string v5, "audio/mp4a-latm"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 92
    or-int/lit8 v1, v1, 0x2

    .line 94
    :cond_9
    const-string v5, "video/avc"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 95
    or-int/lit8 v1, v1, 0x4

    .line 98
    :cond_a
    new-instance v2, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    const/4 v5, 0x2

    new-instance v6, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {v6, v1, p4}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    invoke-direct {v2, v5, p6, v6}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;)V

    .restart local v2    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    goto/16 :goto_0

    .line 84
    .end local v0    # "codecs":Ljava/lang/String;
    .end local v2    # "extractor":Lcom/google/android/exoplayer2/extractor/Extractor;
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p4

    goto :goto_1
.end method
