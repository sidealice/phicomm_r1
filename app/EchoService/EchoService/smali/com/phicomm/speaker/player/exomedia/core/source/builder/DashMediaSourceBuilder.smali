.class public Lcom/phicomm/speaker/player/exomedia/core/source/builder/DashMediaSourceBuilder;
.super Lcom/phicomm/speaker/player/exomedia/core/source/builder/MediaSourceBuilder;
.source "DashMediaSourceBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/phicomm/speaker/player/exomedia/core/source/builder/MediaSourceBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener",
            "<-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/MediaSource;"
        }
    .end annotation

    .prologue
    .local p5, "transferListener":Lcom/google/android/exoplayer2/upstream/TransferListener;, "Lcom/google/android/exoplayer2/upstream/TransferListener<-Lcom/google/android/exoplayer2/upstream/DataSource;>;"
    const/4 v5, 0x0

    .line 16
    invoke-virtual {p0, p1, p3, v5}, Lcom/phicomm/speaker/player/exomedia/core/source/builder/DashMediaSourceBuilder;->buildDataSourceFactory(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v2

    .line 17
    .local v2, "dataSourceFactory":Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    invoke-virtual {p0, p1, p3, p5}, Lcom/phicomm/speaker/player/exomedia/core/source/builder/DashMediaSourceBuilder;->buildDataSourceFactory(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v6

    .line 19
    .local v6, "meteredDataSourceFactory":Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    new-instance v3, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    invoke-direct {v3, v6}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    move-object v1, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    return-object v0
.end method
