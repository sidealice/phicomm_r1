.class public Lcom/google/android/exoplayer2/SimpleExoPlayer;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ExoPlayer;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;,
        Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleExoPlayer"


# instance fields
.field private audioDebugListener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

.field private audioDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private audioFormat:Lcom/google/android/exoplayer2/Format;

.field private final audioRendererCount:I

.field private audioSessionId:I

.field private audioStreamType:I

.field private audioVolume:F

.field private final componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

.field private metadataOutput:Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;

.field private ownsSurface:Z

.field private final player:Lcom/google/android/exoplayer2/ExoPlayer;

.field protected final renderers:[Lcom/google/android/exoplayer2/Renderer;

.field private surface:Landroid/view/Surface;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private textOutput:Lcom/google/android/exoplayer2/text/TextRenderer$Output;

.field private textureView:Landroid/view/TextureView;

.field private videoDebugListener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

.field private videoDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private videoFormat:Lcom/google/android/exoplayer2/Format;

.field private videoListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;

.field private final videoRendererCount:I

.field private videoScalingMode:I


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)V
    .locals 10
    .param p1, "renderersFactory"    # Lcom/google/android/exoplayer2/RenderersFactory;
    .param p2, "trackSelector"    # Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .param p3, "loadControl"    # Lcom/google/android/exoplayer2/LoadControl;

    .prologue
    const/4 v9, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;-><init>(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/SimpleExoPlayer$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    .line 114
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    iget-object v5, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/RenderersFactory;->createRenderers(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/text/TextRenderer$Output;Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;)[Lcom/google/android/exoplayer2/Renderer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 118
    const/4 v8, 0x0

    .line 119
    .local v8, "videoRendererCount":I
    const/4 v6, 0x0

    .line 120
    .local v6, "audioRendererCount":I
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v1

    move v0, v9

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v7, v1, v0

    .line 121
    .local v7, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v7}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 120
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :pswitch_0
    add-int/lit8 v8, v8, 0x1

    .line 124
    goto :goto_1

    .line 126
    :pswitch_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 130
    .end local v7    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_0
    iput v8, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoRendererCount:I

    .line 131
    iput v6, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioRendererCount:I

    .line 134
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioVolume:F

    .line 135
    iput v9, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    .line 136
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioStreamType:I

    .line 137
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoScalingMode:I

    .line 140
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    invoke-direct {v0, v1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;-><init>([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 141
    return-void

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/text/TextRenderer$Output;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textOutput:Lcom/google/android/exoplayer2/text/TextRenderer$Output;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->metadataOutput:Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .param p1, "x1"    # Landroid/view/Surface;
    .param p2, "x2"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoFormat:Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/exoplayer2/SimpleExoPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    return p1
.end method

.method static synthetic access$902(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFormat:Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method private removeSurfaceCallbacks()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 649
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    if-eq v0, v1, :cond_2

    .line 651
    const-string v0, "SimpleExoPlayer"

    const-string v1, "SurfaceTextureListener already unset or replaced."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :goto_0
    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 659
    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 661
    :cond_1
    return-void

    .line 653
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0
.end method

.method private setVideoSurfaceInternal(Landroid/view/Surface;Z)V
    .locals 9
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "ownsSurface"    # Z

    .prologue
    .line 666
    iget v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoRendererCount:I

    new-array v2, v4, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .line 667
    .local v2, "messages":[Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;
    const/4 v0, 0x0

    .line 668
    .local v0, "count":I
    iget-object v5, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v6, v5

    const/4 v4, 0x0

    move v1, v0

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, v5, v4

    .line 669
    .local v3, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 670
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    new-instance v7, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v8, 0x1

    invoke-direct {v7, v3, v8, p1}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v7, v2, v1

    .line 668
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .line 673
    .end local v3    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    if-eq v4, p1, :cond_2

    .line 675
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->ownsSurface:Z

    if-eqz v4, :cond_1

    .line 676
    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->release()V

    .line 679
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v4, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->blockingSendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 683
    :goto_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    .line 684
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->ownsSurface:Z

    .line 685
    return-void

    .line 681
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v4, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    goto :goto_2

    .restart local v3    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_3
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1
.end method


# virtual methods
.method public addListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ExoPlayer$EventListener;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->addListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    .line 482
    return-void
.end method

.method public varargs blockingSendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 1
    .param p1, "messages"    # [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->blockingSendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 574
    return-void
.end method

.method public clearMetadataOutput(Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;)V
    .locals 1
    .param p1, "output"    # Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->metadataOutput:Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;

    if-ne v0, p1, :cond_0

    .line 455
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->metadataOutput:Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;

    .line 457
    :cond_0
    return-void
.end method

.method public clearTextOutput(Lcom/google/android/exoplayer2/text/TextRenderer$Output;)V
    .locals 1
    .param p1, "output"    # Lcom/google/android/exoplayer2/text/TextRenderer$Output;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textOutput:Lcom/google/android/exoplayer2/text/TextRenderer$Output;

    if-ne v0, p1, :cond_0

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textOutput:Lcom/google/android/exoplayer2/text/TextRenderer$Output;

    .line 437
    :cond_0
    return-void
.end method

.method public clearVideoListener(Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;

    if-ne v0, p1, :cond_0

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;

    .line 417
    :cond_0
    return-void
.end method

.method public clearVideoSurface()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 177
    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 204
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    if-ne p1, v0, :cond_0

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 207
    :cond_0
    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 233
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    .line 234
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 236
    :cond_0
    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .prologue
    .line 255
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 256
    return-void

    .line 255
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    goto :goto_0
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 1
    .param p1, "textureView"    # Landroid/view/TextureView;

    .prologue
    .line 286
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    if-ne p1, v0, :cond_0

    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoTextureView(Landroid/view/TextureView;)V

    .line 289
    :cond_0
    return-void
.end method

.method public getAudioDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-object v0
.end method

.method public getAudioFormat()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFormat:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    return v0
.end method

.method public getAudioStreamType()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioStreamType:I

    return v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentManifest()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentManifest()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPeriodIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentWindowIndex()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getRendererCount()I
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getRendererCount()I

    move-result v0

    return v0
.end method

.method public getRendererType(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->getRendererType(I)I

    move-result v0

    return v0
.end method

.method public getVideoDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-object v0
.end method

.method public getVideoFormat()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoFormat:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method public getVideoScalingMode()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoScalingMode:I

    return v0
.end method

.method public getVolume()F
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioVolume:F

    return v0
.end method

.method public isCurrentWindowDynamic()Z
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->isCurrentWindowDynamic()Z

    move-result v0

    return v0
.end method

.method public isCurrentWindowSeekable()Z
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->isCurrentWindowSeekable()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->isLoading()Z

    move-result v0

    return v0
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 497
    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V
    .locals 1
    .param p1, "mediaSource"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "resetPosition"    # Z
    .param p3, "resetState"    # Z

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    .line 502
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->release()V

    .line 557
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 558
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 559
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->ownsSurface:Z

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 562
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    .line 564
    :cond_1
    return-void
.end method

.method public removeListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ExoPlayer$EventListener;

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->removeListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    .line 487
    return-void
.end method

.method public seekTo(IJ)V
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "positionMs"    # J

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(IJ)V

    .line 537
    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "positionMs"    # J

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(J)V

    .line 532
    return-void
.end method

.method public seekToDefaultPosition()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->seekToDefaultPosition()V

    .line 522
    return-void
.end method

.method public seekToDefaultPosition(I)V
    .locals 1
    .param p1, "windowIndex"    # I

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->seekToDefaultPosition(I)V

    .line 527
    return-void
.end method

.method public varargs sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 1
    .param p1, "messages"    # [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .prologue
    .line 568
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 569
    return-void
.end method

.method public setAudioDebugListener(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    .line 475
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 10
    .param p1, "audioStreamType"    # I

    .prologue
    .line 303
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioStreamType:I

    .line 304
    iget v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioRendererCount:I

    new-array v2, v4, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .line 305
    .local v2, "messages":[Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;
    const/4 v0, 0x0

    .line 306
    .local v0, "count":I
    iget-object v5, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v6, v5

    const/4 v4, 0x0

    move v1, v0

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, v5, v4

    .line 307
    .local v3, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 308
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    new-instance v7, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v8, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v3, v8, v9}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v7, v2, v1

    .line 306
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .line 311
    .end local v3    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v4, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 312
    return-void

    .restart local v3    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_1
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1
.end method

.method public setMetadataOutput(Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;)V
    .locals 0
    .param p1, "output"    # Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->metadataOutput:Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;

    .line 446
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1
    .param p1, "playWhenReady"    # Z

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    .line 507
    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 1
    .param p1, "playbackParameters"    # Lcom/google/android/exoplayer2/PlaybackParameters;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 542
    return-void
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 3
    .param p1, "params"    # Landroid/media/PlaybackParams;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 355
    if-eqz p1, :cond_0

    .line 356
    invoke-virtual {p1}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    .line 357
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {p1}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v1

    invoke-virtual {p1}, Landroid/media/PlaybackParams;->getPitch()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    .line 361
    .local v0, "playbackParameters":Lcom/google/android/exoplayer2/PlaybackParameters;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 362
    return-void

    .line 359
    .end local v0    # "playbackParameters":Lcom/google/android/exoplayer2/PlaybackParameters;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "playbackParameters":Lcom/google/android/exoplayer2/PlaybackParameters;
    goto :goto_0
.end method

.method public setTextOutput(Lcom/google/android/exoplayer2/text/TextRenderer$Output;)V
    .locals 0
    .param p1, "output"    # Lcom/google/android/exoplayer2/text/TextRenderer$Output;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textOutput:Lcom/google/android/exoplayer2/text/TextRenderer$Output;

    .line 426
    return-void
.end method

.method public setVideoDebugListener(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    .line 466
    return-void
.end method

.method public setVideoListener(Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;

    .line 406
    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 10
    .param p1, "videoScalingMode"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoScalingMode:I

    .line 153
    iget v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoRendererCount:I

    new-array v2, v4, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .line 154
    .local v2, "messages":[Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;
    const/4 v0, 0x0

    .line 155
    .local v0, "count":I
    iget-object v5, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v6, v5

    const/4 v4, 0x0

    move v1, v0

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, v5, v4

    .line 156
    .local v3, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 157
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    new-instance v7, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v8, 0x4

    .line 158
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v3, v8, v9}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v7, v2, v1

    .line 155
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .line 161
    .end local v3    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v4, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 162
    return-void

    .restart local v3    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_1
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 195
    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 217
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 218
    if-nez p1, :cond_0

    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 224
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .prologue
    .line 245
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 246
    return-void

    .line 245
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    goto :goto_0
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 5
    .param p1, "textureView"    # Landroid/view/TextureView;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 265
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 266
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    .line 267
    if-nez p1, :cond_0

    .line 268
    invoke-direct {p0, v1, v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 277
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 271
    const-string v2, "SimpleExoPlayer"

    const-string v3, "Replacing existing SurfaceTextureListener."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_1
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 274
    .local v0, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-nez v0, :cond_2

    :goto_1
    invoke-direct {p0, v1, v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 275
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0

    .line 274
    :cond_2
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto :goto_1
.end method

.method public setVolume(F)V
    .locals 10
    .param p1, "audioVolume"    # F

    .prologue
    .line 327
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioVolume:F

    .line 328
    iget v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioRendererCount:I

    new-array v2, v4, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    .line 329
    .local v2, "messages":[Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;
    const/4 v0, 0x0

    .line 330
    .local v0, "count":I
    iget-object v5, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v6, v5

    const/4 v4, 0x0

    move v1, v0

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, v5, v4

    .line 331
    .local v3, "renderer":Lcom/google/android/exoplayer2/Renderer;
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 332
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    new-instance v7, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v8, 0x2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v7, v3, v8, v9}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v7, v2, v1

    .line 330
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .line 335
    .end local v3    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v4, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 336
    return-void

    .restart local v3    # "renderer":Lcom/google/android/exoplayer2/Renderer;
    :cond_1
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->stop()V

    .line 552
    return-void
.end method
