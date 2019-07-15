.class public abstract Lcom/phicomm/speaker/player/exomedia/core/source/builder/MediaSourceBuilder;
.super Ljava/lang/Object;
.source "MediaSourceBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/source/MediaSource;
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
.end method

.method protected buildDataSourceFactory(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener",
            "<-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;)",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;"
        }
    .end annotation

    .prologue
    .local p3, "listener":Lcom/google/android/exoplayer2/upstream/TransferListener;, "Lcom/google/android/exoplayer2/upstream/TransferListener<-Lcom/google/android/exoplayer2/upstream/DataSource;>;"
    const/4 v3, 0x0

    .line 19
    sget-object v2, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->dataSourceFactoryProvider:Lcom/phicomm/speaker/player/exomedia/ExoMedia$DataSourceFactoryProvider;

    .line 20
    .local v2, "provider":Lcom/phicomm/speaker/player/exomedia/ExoMedia$DataSourceFactoryProvider;
    if-eqz v2, :cond_2

    invoke-interface {v2, p2, p3}, Lcom/phicomm/speaker/player/exomedia/ExoMedia$DataSourceFactoryProvider;->provide(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v0

    .line 23
    .local v0, "dataSourceFactory":Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    :goto_0
    if-nez v0, :cond_0

    .line 24
    sget-object v1, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->httpDataSourceFactoryProvider:Lcom/phicomm/speaker/player/exomedia/ExoMedia$HttpDataSourceFactoryProvider;

    .line 25
    .local v1, "httpProvider":Lcom/phicomm/speaker/player/exomedia/ExoMedia$HttpDataSourceFactoryProvider;
    if-eqz v1, :cond_3

    invoke-interface {v1, p2, p3}, Lcom/phicomm/speaker/player/exomedia/ExoMedia$HttpDataSourceFactoryProvider;->provide(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;

    move-result-object v0

    .line 29
    .end local v1    # "httpProvider":Lcom/phicomm/speaker/player/exomedia/ExoMedia$HttpDataSourceFactoryProvider;
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 30
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    .end local v0    # "dataSourceFactory":Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    invoke-direct {v0, p2, p3}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 33
    .restart local v0    # "dataSourceFactory":Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    :cond_1
    new-instance v3, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    invoke-direct {v3, p1, p3, v0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object v3

    .end local v0    # "dataSourceFactory":Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    :cond_2
    move-object v0, v3

    .line 20
    goto :goto_0

    .restart local v0    # "dataSourceFactory":Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .restart local v1    # "httpProvider":Lcom/phicomm/speaker/player/exomedia/ExoMedia$HttpDataSourceFactoryProvider;
    :cond_3
    move-object v0, v3

    .line 25
    goto :goto_1
.end method
