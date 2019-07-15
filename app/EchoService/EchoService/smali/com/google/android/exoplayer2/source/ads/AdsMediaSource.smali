.class public final Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
.super Ljava/lang/Object;
.source "AdsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;,
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdsListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdsMediaSource"


# instance fields
.field private adDurationsUs:[[J

.field private adGroupMediaSources:[[Lcom/google/android/exoplayer2/source/MediaSource;

.field private final adMediaSourceByMediaPeriod:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/exoplayer2/source/MediaPeriod;",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;"
        }
    .end annotation
.end field

.field private adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

.field private final adUiViewGroup:Landroid/view/ViewGroup;

.field private final adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

.field private final componentListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

.field private contentManifest:Ljava/lang/Object;

.field private final contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private contentTimeline:Lcom/google/android/exoplayer2/Timeline;

.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final eventHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final eventListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdsListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

.field private final mainHandler:Landroid/os/Handler;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private player:Lcom/google/android/exoplayer2/ExoPlayer;

.field private playerHandler:Landroid/os/Handler;

.field private volatile released:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/ads/AdsLoader;Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "contentMediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p3, "adsLoader"    # Lcom/google/android/exoplayer2/source/ads/AdsLoader;
    .param p4, "adUiViewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 107
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/ads/AdsLoader;Landroid/view/ViewGroup;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdsListener;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/ads/AdsLoader;Landroid/view/ViewGroup;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdsListener;)V
    .locals 3
    .param p1, "contentMediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p3, "adsLoader"    # Lcom/google/android/exoplayer2/source/ads/AdsLoader;
    .param p4, "adUiViewGroup"    # Landroid/view/ViewGroup;
    .param p5, "eventHandler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "eventListener"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdsListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 125
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 126
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    .line 127
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adUiViewGroup:Landroid/view/ViewGroup;

    .line 128
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->eventHandler:Landroid/os/Handler;

    .line 129
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->eventListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdsListener;

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    .line 131
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->componentListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceByMediaPeriod:Ljava/util/Map;

    .line 133
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 134
    new-array v0, v2, [[Lcom/google/android/exoplayer2/source/MediaSource;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adGroupMediaSources:[[Lcom/google/android/exoplayer2/source/MediaSource;

    .line 135
    new-array v0, v2, [[J

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adDurationsUs:[[J

    .line 136
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onContentSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->eventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Ljava/io/IOException;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
    .param p1, "x1"    # Ljava/io/IOException;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onLoadError(Ljava/io/IOException;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->componentListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adUiViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/source/ads/AdsLoader;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;IILcom/google/android/exoplayer2/Timeline;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/google/android/exoplayer2/Timeline;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onAdSourceInfoRefreshed(IILcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->released:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdsListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->eventListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdsListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->playerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private maybeUpdateSourceInfo()V
    .locals 12

    .prologue
    .line 273
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentTimeline:Lcom/google/android/exoplayer2/Timeline;

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget v1, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentTimeline:Lcom/google/android/exoplayer2/Timeline;

    .line 279
    .local v0, "timeline":Lcom/google/android/exoplayer2/Timeline;
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentManifest:Ljava/lang/Object;

    invoke-interface {v1, p0, v0, v2}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 281
    .end local v0    # "timeline":Lcom/google/android/exoplayer2/Timeline;
    :cond_0
    return-void

    .line 274
    :cond_1
    new-instance v1, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentTimeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adCounts:[I

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsLoadedCounts:[I

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsPlayedCounts:[I

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adDurationsUs:[[J

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-wide v8, v8, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-object v10, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-wide v10, v10, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;[J[I[I[I[[JJJ)V

    move-object v0, v1

    goto :goto_0
.end method

.method private onAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .locals 3
    .param p1, "adPlaybackState"    # Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .prologue
    const/4 v2, 0x0

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    if-nez v0, :cond_0

    .line 237
    iget v0, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    new-array v0, v0, [[Lcom/google/android/exoplayer2/source/MediaSource;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adGroupMediaSources:[[Lcom/google/android/exoplayer2/source/MediaSource;

    .line 238
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adGroupMediaSources:[[Lcom/google/android/exoplayer2/source/MediaSource;

    new-array v1, v2, [Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    iget v0, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    new-array v0, v0, [[J

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adDurationsUs:[[J

    .line 240
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adDurationsUs:[[J

    new-array v1, v2, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 242
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 243
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->maybeUpdateSourceInfo()V

    .line 244
    return-void
.end method

.method private onAdSourceInfoRefreshed(IILcom/google/android/exoplayer2/Timeline;)V
    .locals 4
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I
    .param p3, "timeline"    # Lcom/google/android/exoplayer2/Timeline;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 267
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 268
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adDurationsUs:[[J

    aget-object v0, v0, p1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p3, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v2

    aput-wide v2, v0, p2

    .line 269
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->maybeUpdateSourceInfo()V

    .line 270
    return-void

    :cond_0
    move v0, v1

    .line 267
    goto :goto_0
.end method

.method private onContentSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentTimeline:Lcom/google/android/exoplayer2/Timeline;

    .line 262
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentManifest:Ljava/lang/Object;

    .line 263
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->maybeUpdateSourceInfo()V

    .line 264
    return-void
.end method

.method private onLoadError(Ljava/io/IOException;)V
    .locals 2
    .param p1, "error"    # Ljava/io/IOException;

    .prologue
    .line 247
    const-string v0, "AdsMediaSource"

    const-string v1, "Ad load error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->eventListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdsListener;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$5;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 258
    :cond_0
    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 13
    .param p1, "id"    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Lcom/google/android/exoplayer2/upstream/Allocator;

    .prologue
    const/4 v12, 0x0

    .line 172
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget v1, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-lez v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    iget v7, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 174
    .local v7, "adGroupIndex":I
    iget v8, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 175
    .local v8, "adIndexInAdGroup":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adGroupMediaSources:[[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v1, v1, v7

    array-length v1, v1

    if-gt v1, v8, :cond_1

    .line 176
    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adUris:[[Landroid/net/Uri;

    iget v2, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    aget-object v1, v1, v2

    iget v2, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    new-instance v3, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->componentListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V

    .line 179
    .local v0, "adMediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adGroupMediaSources:[[Lcom/google/android/exoplayer2/source/MediaSource;

    iget v2, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    aget-object v1, v1, v2

    array-length v11, v1

    .line 180
    .local v11, "oldAdCount":I
    if-lt v8, v11, :cond_0

    .line 181
    add-int/lit8 v6, v8, 0x1

    .line 182
    .local v6, "adCount":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adGroupMediaSources:[[Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adGroupMediaSources:[[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v1, v1, v7

    .line 183
    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/source/MediaSource;

    aput-object v1, v2, v7

    .line 184
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adDurationsUs:[[J

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adDurationsUs:[[J

    aget-object v2, v2, v7

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    aput-object v2, v1, v7

    .line 185
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adDurationsUs:[[J

    aget-object v1, v1, v7

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v1, v11, v6, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 187
    .end local v6    # "adCount":I
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adGroupMediaSources:[[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v1, v1, v7

    aput-object v0, v1, v8

    .line 188
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$3;

    invoke-direct {v2, p0, v7, v8}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$3;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;II)V

    invoke-interface {v0, v1, v12, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    .line 196
    .end local v0    # "adMediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    .end local v11    # "oldAdCount":I
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adGroupMediaSources:[[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v1, v1, v7

    aget-object v10, v1, v8

    .line 197
    .local v10, "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    new-instance v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {v1, v12}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(I)V

    invoke-interface {v10, v1, p2}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v9

    .line 198
    .local v9, "mediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceByMediaPeriod:Ljava/util/Map;

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .end local v7    # "adGroupIndex":I
    .end local v8    # "adIndexInAdGroup":I
    .end local v9    # "mediaPeriod":Lcom/google/android/exoplayer2/source/MediaPeriod;
    .end local v10    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    :goto_0
    return-object v9

    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v1, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v9

    goto :goto_0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 160
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 161
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adGroupMediaSources:[[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v5, v4

    .line 162
    .local v1, "mediaSources":[Lcom/google/android/exoplayer2/source/MediaSource;
    array-length v7, v1

    move v2, v3

    :goto_1
    if-ge v2, v7, :cond_1

    aget-object v0, v1, v2

    .line 163
    .local v0, "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 162
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 161
    .end local v0    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 168
    .end local v1    # "mediaSources":[Lcom/google/android/exoplayer2/source/MediaSource;
    :cond_2
    return-void
.end method

.method public prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .locals 3
    .param p1, "player"    # Lcom/google/android/exoplayer2/ExoPlayer;
    .param p2, "isTopLevelSource"    # Z
    .param p3, "listener"    # Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    .prologue
    .line 140
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 141
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    .line 142
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->playerHandler:Landroid/os/Handler;

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$1;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$1;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$2;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/ExoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1
    .param p1, "mediaPeriod"    # Lcom/google/android/exoplayer2/source/MediaPeriod;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceByMediaPeriod:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceByMediaPeriod:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    goto :goto_0
.end method

.method public releaseSource()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 216
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->released:Z

    .line 217
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource()V

    .line 218
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adGroupMediaSources:[[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v5, v4

    .line 219
    .local v1, "mediaSources":[Lcom/google/android/exoplayer2/source/MediaSource;
    array-length v7, v1

    move v2, v3

    :goto_1
    if-ge v2, v7, :cond_1

    aget-object v0, v1, v2

    .line 220
    .local v0, "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource()V

    .line 219
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 218
    .end local v0    # "mediaSource":Lcom/google/android/exoplayer2/source/MediaSource;
    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 225
    .end local v1    # "mediaSources":[Lcom/google/android/exoplayer2/source/MediaSource;
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$4;

    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$4;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    return-void
.end method
