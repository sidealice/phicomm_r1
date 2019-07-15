.class public Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;
.super Ljava/lang/Object;
.source "RendererProvider.java"


# instance fields
.field protected audioRendererEventListener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

.field protected captionListener:Lcom/google/android/exoplayer2/text/TextOutput;

.field protected context:Landroid/content/Context;

.field protected drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field protected droppedFrameNotificationAmount:I

.field protected handler:Landroid/os/Handler;

.field protected metadataListener:Lcom/google/android/exoplayer2/metadata/MetadataOutput;

.field protected videoJoiningTimeMs:I

.field protected videoRendererEventListener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/text/TextOutput;Lcom/google/android/exoplayer2/metadata/MetadataOutput;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "captionListener"    # Lcom/google/android/exoplayer2/text/TextOutput;
    .param p4, "metadataListener"    # Lcom/google/android/exoplayer2/metadata/MetadataOutput;
    .param p5, "audioRendererEventListener"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p6, "videoRendererEventListener"    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x32

    iput v0, p0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->droppedFrameNotificationAmount:I

    .line 41
    const/16 v0, 0x1388

    iput v0, p0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->videoJoiningTimeMs:I

    .line 45
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->handler:Landroid/os/Handler;

    .line 47
    iput-object p3, p0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->captionListener:Lcom/google/android/exoplayer2/text/TextOutput;

    .line 48
    iput-object p4, p0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->metadataListener:Lcom/google/android/exoplayer2/metadata/MetadataOutput;

    .line 49
    iput-object p5, p0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->audioRendererEventListener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    .line 50
    iput-object p6, p0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->videoRendererEventListener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    .line 51
    return-void
.end method


# virtual methods
.method protected buildAudioRenderers()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 77
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v14, "renderers":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Renderer;>;"
    new-instance v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    sget-object v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v4, p0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->audioRendererEventListener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    iget-object v6, p0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    move-result-object v6

    new-array v7, v7, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->registeredRendererClasses:Ljava/util/Map;

    sget-object v1, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->AUDIO:Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 83
    .local v9, "classNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v9, :cond_0

    .line 84
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 86
    .local v8, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 87
    .local v10, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/os/Handler;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    aput-object v2, v0, v1

    invoke-virtual {v10, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    .line 88
    .local v11, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->handler:Landroid/os/Handler;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->audioRendererEventListener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    aput-object v2, v0, v1

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/Renderer;

    .line 89
    .local v13, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v10    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v13    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 96
    .end local v8    # "className":Ljava/lang/String;
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v14
.end method

.method protected buildCaptionRenderers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, "renderers":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Renderer;>;"
    new-instance v1, Lcom/google/android/exoplayer2/text/TextRenderer;

    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->captionListener:Lcom/google/android/exoplayer2/text/TextOutput;

    iget-object v3, p0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/text/TextRenderer;-><init>(Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    return-object v0
.end method

.method protected buildMetadataRenderers()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, "renderers":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Renderer;>;"
    new-instance v1, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;

    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->metadataListener:Lcom/google/android/exoplayer2/metadata/MetadataOutput;

    iget-object v3, p0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    sget-object v4, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;->DEFAULT:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;-><init>(Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    return-object v0
.end method

.method protected buildVideoRenderers()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v18, "renderers":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Renderer;>;"
    new-instance v3, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->context:Landroid/content/Context;

    sget-object v5, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->videoJoiningTimeMs:I

    int-to-long v6, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->videoRendererEventListener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->droppedFrameNotificationAmount:I

    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v3, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->registeredRendererClasses:Ljava/util/Map;

    sget-object v4, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->VIDEO:Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 106
    .local v13, "classNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v13, :cond_0

    .line 107
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 109
    .local v2, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    .line 110
    .local v14, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/os/Handler;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v14, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v15

    .line 111
    .local v15, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->videoJoiningTimeMs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->handler:Landroid/os/Handler;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->videoRendererEventListener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->droppedFrameNotificationAmount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v15, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/exoplayer2/Renderer;

    .line 112
    .local v17, "renderer":Lcom/google/android/exoplayer2/Renderer;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    .end local v14    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v17    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 119
    .end local v2    # "className":Ljava/lang/String;
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v18
.end method

.method public generate()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, "renderers":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Renderer;>;"
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->buildAudioRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->buildVideoRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 70
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->buildCaptionRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->buildMetadataRenderers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    return-object v0
.end method

.method public setDrmSessionManager(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "drmSessionManager":Lcom/google/android/exoplayer2/drm/DrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DrmSessionManager<Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;>;"
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 55
    return-void
.end method

.method public setDroppedFrameNotificationAmount(I)V
    .locals 0
    .param p1, "droppedFrameNotificationAmount"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->droppedFrameNotificationAmount:I

    .line 59
    return-void
.end method

.method public setVideoJoiningTimeMs(I)V
    .locals 0
    .param p1, "videoJoiningTimeMs"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/phicomm/speaker/player/exomedia/core/renderer/RendererProvider;->videoJoiningTimeMs:I

    .line 63
    return-void
.end method
