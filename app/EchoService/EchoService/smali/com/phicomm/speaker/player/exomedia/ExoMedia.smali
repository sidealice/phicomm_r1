.class public Lcom/phicomm/speaker/player/exomedia/ExoMedia;
.super Ljava/lang/Object;
.source "ExoMedia.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;,
        Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;,
        Lcom/phicomm/speaker/player/exomedia/ExoMedia$DataSourceFactoryProvider;,
        Lcom/phicomm/speaker/player/exomedia/ExoMedia$HttpDataSourceFactoryProvider;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method

.method public static registerMediaSourceBuilder(Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;)V
    .locals 2
    .param p0, "builder"    # Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;

    .prologue
    .line 67
    sget-object v0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->sourceTypeBuilders:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 68
    return-void
.end method

.method public static registerRenderer(Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;Ljava/lang/Class;)V
    .locals 2
    .param p0, "type"    # Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/exoplayer2/Renderer;>;"
    sget-object v0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->registeredRendererClasses:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public static setDataSourceFactoryProvider(Lcom/phicomm/speaker/player/exomedia/ExoMedia$DataSourceFactoryProvider;)V
    .locals 0
    .param p0, "provider"    # Lcom/phicomm/speaker/player/exomedia/ExoMedia$DataSourceFactoryProvider;

    .prologue
    .line 93
    sput-object p0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->dataSourceFactoryProvider:Lcom/phicomm/speaker/player/exomedia/ExoMedia$DataSourceFactoryProvider;

    .line 94
    return-void
.end method

.method public static setHttpDataSourceFactoryProvider(Lcom/phicomm/speaker/player/exomedia/ExoMedia$HttpDataSourceFactoryProvider;)V
    .locals 0
    .param p0, "provider"    # Lcom/phicomm/speaker/player/exomedia/ExoMedia$HttpDataSourceFactoryProvider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 81
    sput-object p0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->httpDataSourceFactoryProvider:Lcom/phicomm/speaker/player/exomedia/ExoMedia$HttpDataSourceFactoryProvider;

    .line 82
    return-void
.end method

.method public static setLoadControl(Lcom/google/android/exoplayer2/LoadControl;)V
    .locals 0
    .param p0, "loadControl"    # Lcom/google/android/exoplayer2/LoadControl;

    .prologue
    .line 107
    sput-object p0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    .line 108
    return-void
.end method
