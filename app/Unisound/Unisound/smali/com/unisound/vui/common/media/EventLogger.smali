.class public final Lcom/unisound/vui/common/media/EventLogger;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
.implements Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
.implements Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;
.implements Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;
.implements Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;
.implements Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;
.implements Lcom/google/android/exoplayer2/video/VideoRendererEventListener;


# static fields
.field private static final MAX_TIMELINE_ITEM_LINES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EventLogger"

.field private static final TIME_FORMAT:Ljava/text/NumberFormat;


# instance fields
.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private final startTimeMs:J

.field private final trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/common/media/EventLogger;->TIME_FORMAT:Ljava/text/NumberFormat;

    sget-object v0, Lcom/unisound/vui/common/media/EventLogger;->TIME_FORMAT:Ljava/text/NumberFormat;

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    sget-object v0, Lcom/unisound/vui/common/media/EventLogger;->TIME_FORMAT:Ljava/text/NumberFormat;

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    sget-object v0, Lcom/unisound/vui/common/media/EventLogger;->TIME_FORMAT:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;)V
    .locals 2
    .param p1, "trackSelector"    # Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisound/vui/common/media/EventLogger;->trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/common/media/EventLogger;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/common/media/EventLogger;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unisound/vui/common/media/EventLogger;->startTimeMs:J

    return-void
.end method

.method private static getAdaptiveSupportString(II)Ljava/lang/String;
    .locals 1
    .param p0, "trackCount"    # I
    .param p1, "adaptiveSupport"    # I

    .prologue
    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    const-string v0, "N/A"

    :goto_0
    return-object v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const-string v0, "?"

    goto :goto_0

    :sswitch_0
    const-string v0, "YES"

    goto :goto_0

    :sswitch_1
    const-string v0, "YES_NOT_SEAMLESS"

    goto :goto_0

    :sswitch_2
    const-string v0, "NO"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getFormatSupportString(I)Ljava/lang/String;
    .locals 1
    .param p0, "formatSupport"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const-string v0, "?"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "YES"

    goto :goto_0

    :pswitch_1
    const-string v0, "NO_EXCEEDS_CAPABILITIES"

    goto :goto_0

    :pswitch_2
    const-string v0, "NO_UNSUPPORTED_TYPE"

    goto :goto_0

    :pswitch_3
    const-string v0, "NO"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSessionTimeString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/unisound/vui/common/media/EventLogger;->startTimeMs:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/unisound/vui/common/media/EventLogger;->getTimeString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getStateString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const-string v0, "?"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "B"

    goto :goto_0

    :pswitch_1
    const-string v0, "E"

    goto :goto_0

    :pswitch_2
    const-string v0, "I"

    goto :goto_0

    :pswitch_3
    const-string v0, "R"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private static getTimeString(J)Ljava/lang/String;
    .locals 4
    .param p0, "timeMs"    # J

    .prologue
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string v0, "?"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/unisound/vui/common/media/EventLogger;->TIME_FORMAT:Ljava/text/NumberFormat;

    long-to-float v1, p0

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getTrackStatusString(Lcom/google/android/exoplayer2/trackselection/TrackSelection;Lcom/google/android/exoplayer2/source/TrackGroup;I)Ljava/lang/String;
    .locals 2
    .param p0, "selection"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .param p1, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p2, "trackIndex"    # I

    .prologue
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-interface {p0, p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/unisound/vui/common/media/EventLogger;->getTrackStatusString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getTrackStatusString(Z)Ljava/lang/String;
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    if-eqz p0, :cond_0

    const-string v0, "[X]"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "[ ]"

    goto :goto_0
.end method

.method private printInternalError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    const-string v0, "EventLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalError ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/unisound/vui/common/media/EventLogger;->getSessionTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private printMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;)V
    .locals 13
    .param p1, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v0

    if-ge v1, v0, :cond_8

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    const-string v3, "EventLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%s: value=%s"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->id:Ljava/lang/String;

    aput-object v7, v6, v2

    iget-object v0, v0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    aput-object v0, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    instance-of v3, v0, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    const-string v3, "EventLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%s: url=%s"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;->id:Ljava/lang/String;

    aput-object v7, v6, v2

    iget-object v0, v0, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;->url:Ljava/lang/String;

    aput-object v0, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    instance-of v3, v0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    if-eqz v3, :cond_3

    check-cast v0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    const-string v3, "EventLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%s: owner=%s"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->id:Ljava/lang/String;

    aput-object v7, v6, v2

    iget-object v0, v0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    aput-object v0, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    instance-of v3, v0, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;

    if-eqz v3, :cond_4

    check-cast v0, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;

    const-string v3, "EventLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%s: mimeType=%s, filename=%s, description=%s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;->id:Ljava/lang/String;

    aput-object v7, v6, v2

    iget-object v7, v0, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;->mimeType:Ljava/lang/String;

    aput-object v7, v6, v10

    iget-object v7, v0, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;->filename:Ljava/lang/String;

    aput-object v7, v6, v11

    iget-object v0, v0, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;->description:Ljava/lang/String;

    aput-object v0, v6, v12

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    instance-of v3, v0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    if-eqz v3, :cond_5

    check-cast v0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    const-string v3, "EventLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%s: mimeType=%s, description=%s"

    new-array v6, v12, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->id:Ljava/lang/String;

    aput-object v7, v6, v2

    iget-object v7, v0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    aput-object v7, v6, v10

    iget-object v0, v0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    aput-object v0, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    instance-of v3, v0, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    if-eqz v3, :cond_6

    check-cast v0, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    const-string v3, "EventLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%s: language=%s, description=%s"

    new-array v6, v12, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;->id:Ljava/lang/String;

    aput-object v7, v6, v2

    iget-object v7, v0, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;->language:Ljava/lang/String;

    aput-object v7, v6, v10

    iget-object v0, v0, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;->description:Ljava/lang/String;

    aput-object v0, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    instance-of v3, v0, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    if-eqz v3, :cond_7

    check-cast v0, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    const-string v3, "EventLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%s"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    instance-of v3, v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    const-string v3, "EventLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "EMSG: scheme=%s, id=%d, value=%s"

    new-array v6, v12, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    aput-object v7, v6, v2

    iget-wide v8, v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    iget-object v0, v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    aput-object v0, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    return-void
.end method


# virtual methods
.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 3
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "initializationDurationMs"    # J

    .prologue
    const-string v0, "EventLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioDecoderInitialized ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/unisound/vui/common/media/EventLogger;->getSessionTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAudioDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 3
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .prologue
    const-string v0, "EventLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioDisabled ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/unisound/vui/common/media/EventLogger;->getSessionTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAudioEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 3
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .prologue
    const-string v0, "EventLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioEnabled ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/unisound/vui/common/media/EventLogger;->getSessionTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAudioInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 3
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    const-string v0, "EventLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioFormatChanged ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/unisound/vui/common/media/EventLogger;->getSessionTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/exoplayer2/Format;->toLogString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAudioSessionId(I)V
    .locals 3
    .param p1, "audioSessionId"    # I

    .prologue
    const-string v0, "EventLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioSessionId ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAudioTrackUnderrun(IJJ)V
    .locals 2
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioTrackUnderrun ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/unisound/vui/common/media/EventLogger;->printInternalError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onDownstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V
    .locals 0
    .param p1, "trackType"    # I
    .param p2, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p3, "trackSelectionReason"    # I
    .param p4, "trackSelectionData"    # Ljava/lang/Object;
    .param p5, "mediaTimeMs"    # J

    .prologue
    return-void
.end method

.method public onDrmKeysLoaded()V
    .locals 3

    const-string v0, "EventLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drmKeysLoaded ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/unisound/vui/common/media/EventLogger;->getSessionTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDrmKeysRemoved()V
    .locals 3

    const-string v0, "EventLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drmKeysRemoved ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/unisound/vui/common/media/EventLogger;->getSessionTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDrmKeysRestored()V
    .locals 3

    const-string v0, "EventLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drmKeysRestored ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/unisound/vui/common/media/EventLogger;->getSessionTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDrmSessionManagerError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const-string v0, "drmSessionManagerError"

    invoke-direct {p0, v0, p1}, Lcom/unisound/vui/common/media/EventLogger;->printInternalError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "elapsed"    # J

    .prologue
    const-string v0, "EventLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "droppedFrames ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/unisound/vui/common/media/EventLogger;->getSessionTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .locals 0
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p2, "dataType"    # I
    .param p3, "trackType"    # I
    .param p4, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p5, "trackSelectionReason"    # I
    .param p6, "trackSelectionData"    # Ljava/lang/Object;
    .param p7, "mediaStartTimeMs"    # J
    .param p9, "mediaEndTimeMs"    # J
    .param p11, "elapsedRealtimeMs"    # J
    .param p13, "loadDurationMs"    # J
    .param p15, "bytesLoaded"    # J

    .prologue
    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .locals 0
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p2, "dataType"    # I
    .param p3, "trackType"    # I
    .param p4, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p5, "trackSelectionReason"    # I
    .param p6, "trackSelectionData"    # Ljava/lang/Object;
    .param p7, "mediaStartTimeMs"    # J
    .param p9, "mediaEndTimeMs"    # J
    .param p11, "elapsedRealtimeMs"    # J
    .param p13, "loadDurationMs"    # J
    .param p15, "bytesLoaded"    # J

    .prologue
    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
    .locals 2
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p2, "dataType"    # I
    .param p3, "trackType"    # I
    .param p4, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p5, "trackSelectionReason"    # I
    .param p6, "trackSelectionData"    # Ljava/lang/Object;
    .param p7, "mediaStartTimeMs"    # J
    .param p9, "mediaEndTimeMs"    # J
    .param p11, "elapsedRealtimeMs"    # J
    .param p13, "loadDurationMs"    # J
    .param p15, "bytesLoaded"    # J
    .param p17, "error"    # Ljava/io/IOException;
    .param p18, "wasCanceled"    # Z

    .prologue
    const-string v1, "loadError"

    move-object/from16 v0, p17

    invoke-direct {p0, v1, v0}, Lcom/unisound/vui/common/media/EventLogger;->printInternalError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onLoadError(Ljava/io/IOException;)V
    .locals 1
    .param p1, "error"    # Ljava/io/IOException;

    .prologue
    const-string v0, "loadError"

    invoke-direct {p0, v0, p1}, Lcom/unisound/vui/common/media/EventLogger;->printInternalError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onLoadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V
    .locals 0
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer2/upstream/DataSpec;
    .param p2, "dataType"    # I
    .param p3, "trackType"    # I
    .param p4, "trackFormat"    # Lcom/google/android/exoplayer2/Format;
    .param p5, "trackSelectionReason"    # I
    .param p6, "trackSelectionData"    # Ljava/lang/Object;
    .param p7, "mediaStartTimeMs"    # J
    .param p9, "mediaEndTimeMs"    # J
    .param p11, "elapsedRealtimeMs"    # J

    .prologue
    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 3
    .param p1, "isLoading"    # Z

    .prologue
    const-string v0, "EventLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 2
    .param p1, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .prologue
    const-string v0, "EventLogger"

    const-string v1, "onMetadata ["

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "  "

    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/common/media/EventLogger;->printMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;)V

    const-string v0, "EventLogger"

    const-string v1, "]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 6
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .prologue
    const-string v0, "EventLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playbackParameters "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[speed=%.2f, pitch=%.2f]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 3
    .param p1, "e"    # Lcom/google/android/exoplayer2/ExoPlaybackException;

    .prologue
    const-string v0, "EventLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playerFailed ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/unisound/vui/common/media/EventLogger;->getSessionTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 3
    .param p1, "playWhenReady"    # Z
    .param p2, "state"    # I

    .prologue
    const-string v0, "EventLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/unisound/vui/common/media/EventLogger;->getSessionTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/unisound/vui/common/media/EventLogger;->getStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 2

    const-string v0, "EventLogger"

    const-string v1, "positionDiscontinuity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRenderedFirstFrame(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    const-string v0, "EventLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renderedFirstFrame ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 9
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x3

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v3

    const-string v0, "EventLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sourceInfo [periodCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", windowCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/unisound/vui/common/media/EventLogger;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    const-string v4, "EventLogger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  period ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/unisound/vui/common/media/EventLogger;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationMs()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/unisound/vui/common/media/EventLogger;->getTimeString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-le v2, v8, :cond_1

    const-string v0, "EventLogger"

    const-string v2, "  ..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/unisound/vui/common/media/EventLogger;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    const-string v0, "EventLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  window ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/unisound/vui/common/media/EventLogger;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline$Window;->getDurationMs()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/unisound/vui/common/media/EventLogger;->getTimeString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/unisound/vui/common/media/EventLogger;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/unisound/vui/common/media/EventLogger;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-le v3, v8, :cond_3

    const-string v0, "EventLogger"

    const-string v1, "  ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v0, "EventLogger"

    const-string v1, "]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 13
    .param p1, "ignored"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "trackSelections"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unisound/vui/common/media/EventLogger;->trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v0, "EventLogger"

    const-string v1, "Tracks []"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "EventLogger"

    const-string v2, "Tracks ["

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_1
    iget v2, v4, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->length:I

    if-ge v0, v2, :cond_6

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v5

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v6

    iget v2, v5, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-lez v2, :cond_4

    const-string v2, "EventLogger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Renderer:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " ["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :goto_2
    iget v3, v5, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v2, v3, :cond_2

    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    iget v3, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    invoke-virtual {v4, v0, v2, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getAdaptiveSupport(IIZ)I

    move-result v8

    invoke-static {v3, v8}, Lcom/unisound/vui/common/media/EventLogger;->getAdaptiveSupportString(II)Ljava/lang/String;

    move-result-object v3

    const-string v8, "EventLogger"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    Group:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", adaptive_supported="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " ["

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    :goto_3
    iget v8, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v3, v8, :cond_1

    invoke-static {v6, v7, v3}, Lcom/unisound/vui/common/media/EventLogger;->getTrackStatusString(Lcom/google/android/exoplayer2/trackselection/TrackSelection;Lcom/google/android/exoplayer2/source/TrackGroup;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v0, v2, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackFormatSupport(III)I

    move-result v9

    invoke-static {v9}, Lcom/unisound/vui/common/media/EventLogger;->getFormatSupportString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "EventLogger"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "      "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " Track:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/exoplayer2/Format;->toLogString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", supported="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_1
    const-string v3, "EventLogger"

    const-string v7, "    ]"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_2
    if-eqz v6, :cond_3

    move v2, v1

    :goto_4
    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {v6, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v3, :cond_5

    const-string v2, "EventLogger"

    const-string v5, "    Metadata ["

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "      "

    invoke-direct {p0, v3, v2}, Lcom/unisound/vui/common/media/EventLogger;->printMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;)V

    const-string v2, "EventLogger"

    const-string v3, "    ]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v2, "EventLogger"

    const-string v3, "  ]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getUnassociatedTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    iget v0, v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-lez v0, :cond_9

    const-string v0, "EventLogger"

    const-string v2, "  Renderer:None ["

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_5
    iget v2, v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v0, v2, :cond_8

    const-string v2, "EventLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Group:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    move v2, v1

    :goto_6
    iget v5, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v2, v5, :cond_7

    invoke-static {v1}, Lcom/unisound/vui/common/media/EventLogger;->getTrackStatusString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/unisound/vui/common/media/EventLogger;->getFormatSupportString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "EventLogger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "      "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " Track:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/exoplayer2/Format;->toLogString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", supported="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    const-string v2, "EventLogger"

    const-string v4, "    ]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    const-string v0, "EventLogger"

    const-string v1, "  ]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string v0, "EventLogger"

    const-string v1, "]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onUpstreamDiscarded(IJJ)V
    .locals 0
    .param p1, "trackType"    # I
    .param p2, "mediaStartTimeMs"    # J
    .param p4, "mediaEndTimeMs"    # J

    .prologue
    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 3
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "initializationDurationMs"    # J

    .prologue
    const-string v0, "EventLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoDecoderInitialized ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/unisound/vui/common/media/EventLogger;->getSessionTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onVideoDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 3
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .prologue
    const-string v0, "EventLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoDisabled ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/unisound/vui/common/media/EventLogger;->getSessionTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onVideoEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 3
    .param p1, "counters"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .prologue
    const-string v0, "EventLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoEnabled ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/unisound/vui/common/media/EventLogger;->getSessionTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 3
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    const-string v0, "EventLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFormatChanged ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/unisound/vui/common/media/EventLogger;->getSessionTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/exoplayer2/Format;->toLogString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    return-void
.end method
