.class public Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;
.super Ljava/lang/Object;
.source "ExoMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/exomedia/ExoMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# static fields
.field public static volatile dataSourceFactoryProvider:Lcom/phicomm/speaker/player/exomedia/ExoMedia$DataSourceFactoryProvider;

.field public static volatile httpDataSourceFactoryProvider:Lcom/phicomm/speaker/player/exomedia/ExoMedia$HttpDataSourceFactoryProvider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static volatile loadControl:Lcom/google/android/exoplayer2/LoadControl;

.field public static final registeredRendererClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final sourceTypeBuilders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->registeredRendererClasses:Ljava/util/Map;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->sourceTypeBuilders:Ljava/util/List;

    .line 121
    invoke-static {}, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->instantiateRendererClasses()V

    .line 122
    invoke-static {}, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->instantiateSourceProviders()V

    .line 123
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static instantiateRendererClasses()V
    .locals 5

    .prologue
    .line 127
    sget-object v2, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->registeredRendererClasses:Ljava/util/Map;

    sget-object v3, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->AUDIO:Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v2, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->registeredRendererClasses:Ljava/util/Map;

    sget-object v3, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->VIDEO:Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v2, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->registeredRendererClasses:Ljava/util/Map;

    sget-object v3, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->CLOSED_CAPTION:Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v2, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->registeredRendererClasses:Ljava/util/Map;

    sget-object v3, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->METADATA:Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v2, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->registeredRendererClasses:Ljava/util/Map;

    sget-object v3, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->AUDIO:Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 134
    .local v0, "audioClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    const-string v2, "com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    const-string v2, "com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v2, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->registeredRendererClasses:Ljava/util/Map;

    sget-object v3, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->VIDEO:Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 139
    .local v1, "videoClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method private static instantiateSourceProviders()V
    .locals 5

    .prologue
    .line 144
    sget-object v0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->sourceTypeBuilders:Ljava/util/List;

    new-instance v1, Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;

    new-instance v2, Lcom/phicomm/speaker/player/exomedia/core/source/builder/HlsMediaSourceBuilder;

    invoke-direct {v2}, Lcom/phicomm/speaker/player/exomedia/core/source/builder/HlsMediaSourceBuilder;-><init>()V

    const-string v3, ".m3u8"

    const-string v4, ".*m3u8.*"

    invoke-direct {v1, v2, v3, v4}, Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;-><init>(Lcom/phicomm/speaker/player/exomedia/core/source/builder/MediaSourceBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->sourceTypeBuilders:Ljava/util/List;

    new-instance v1, Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;

    new-instance v2, Lcom/phicomm/speaker/player/exomedia/core/source/builder/DashMediaSourceBuilder;

    invoke-direct {v2}, Lcom/phicomm/speaker/player/exomedia/core/source/builder/DashMediaSourceBuilder;-><init>()V

    const-string v3, ".mpd"

    const-string v4, ".*mpd.*"

    invoke-direct {v1, v2, v3, v4}, Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;-><init>(Lcom/phicomm/speaker/player/exomedia/core/source/builder/MediaSourceBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->sourceTypeBuilders:Ljava/util/List;

    new-instance v1, Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;

    new-instance v2, Lcom/phicomm/speaker/player/exomedia/core/source/builder/SsMediaSourceBuilder;

    invoke-direct {v2}, Lcom/phicomm/speaker/player/exomedia/core/source/builder/SsMediaSourceBuilder;-><init>()V

    const-string v3, ".ism"

    const-string v4, ".*ism.*"

    invoke-direct {v1, v2, v3, v4}, Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;-><init>(Lcom/phicomm/speaker/player/exomedia/core/source/builder/MediaSourceBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method
