.class public final Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
.super Landroid/widget/FrameLayout;
.source "SimpleExoPlayerView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;
    }
.end annotation


# static fields
.field private static final SURFACE_TYPE_NONE:I = 0x0

.field private static final SURFACE_TYPE_SURFACE_VIEW:I = 0x1

.field private static final SURFACE_TYPE_TEXTURE_VIEW:I = 0x2


# instance fields
.field private final artworkView:Landroid/widget/ImageView;

.field private final componentListener:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;

.field private final contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field private final controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

.field private controllerHideOnTouch:Z

.field private controllerShowTimeoutMs:I

.field private defaultArtwork:Landroid/graphics/Bitmap;

.field private final overlayFrameLayout:Landroid/widget/FrameLayout;

.field private player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private final shutterView:Landroid/view/View;

.field private final subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

.field private final surfaceView:Landroid/view/View;

.field private useArtwork:Z

.field private useController:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 212
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->isInEditMode()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 215
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 216
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->shutterView:Landroid/view/View;

    .line 217
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    .line 218
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->artworkView:Landroid/widget/ImageView;

    .line 219
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 220
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .line 221
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;

    .line 222
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    .line 223
    new-instance v11, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v11, v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 224
    .local v11, "logo":Landroid/widget/ImageView;
    sget v19, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v20, 0x17

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v11}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->configureEditModeLogoV23(Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    .line 229
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->addView(Landroid/view/View;)V

    .line 322
    .end local v11    # "logo":Landroid/widget/ImageView;
    :goto_1
    return-void

    .line 227
    .restart local v11    # "logo":Landroid/widget/ImageView;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v11}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->configureEditModeLogo(Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 233
    .end local v11    # "logo":Landroid/widget/ImageView;
    :cond_1
    sget v14, Lcom/google/android/exoplayer2/ui/R$layout;->exo_simple_player_view:I

    .line 234
    .local v14, "playerLayoutId":I
    const/16 v17, 0x1

    .line 235
    .local v17, "useArtwork":Z
    const/4 v10, 0x0

    .line 236
    .local v10, "defaultArtworkId":I
    const/16 v18, 0x1

    .line 237
    .local v18, "useController":Z
    const/16 v16, 0x1

    .line 238
    .local v16, "surfaceType":I
    const/4 v15, 0x0

    .line 239
    .local v15, "resizeMode":I
    const/16 v9, 0x1388

    .line 240
    .local v9, "controllerShowTimeoutMs":I
    const/4 v6, 0x1

    .line 241
    .local v6, "controllerHideOnTouch":Z
    if-eqz p2, :cond_2

    .line 242
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v19

    sget-object v20, Lcom/google/android/exoplayer2/ui/R$styleable;->SimpleExoPlayerView:[I

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 245
    .local v5, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v19, Lcom/google/android/exoplayer2/ui/R$styleable;->SimpleExoPlayerView_player_layout_id:I

    move/from16 v0, v19

    invoke-virtual {v5, v0, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 247
    sget v19, Lcom/google/android/exoplayer2/ui/R$styleable;->SimpleExoPlayerView_use_artwork:I

    move/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    .line 248
    sget v19, Lcom/google/android/exoplayer2/ui/R$styleable;->SimpleExoPlayerView_default_artwork:I

    move/from16 v0, v19

    invoke-virtual {v5, v0, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 250
    sget v19, Lcom/google/android/exoplayer2/ui/R$styleable;->SimpleExoPlayerView_use_controller:I

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    .line 251
    sget v19, Lcom/google/android/exoplayer2/ui/R$styleable;->SimpleExoPlayerView_surface_type:I

    move/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .line 252
    sget v19, Lcom/google/android/exoplayer2/ui/R$styleable;->SimpleExoPlayerView_resize_mode:I

    move/from16 v0, v19

    invoke-virtual {v5, v0, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 253
    sget v19, Lcom/google/android/exoplayer2/ui/R$styleable;->SimpleExoPlayerView_show_timeout:I

    move/from16 v0, v19

    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 255
    sget v19, Lcom/google/android/exoplayer2/ui/R$styleable;->SimpleExoPlayerView_hide_on_touch:I

    move/from16 v0, v19

    invoke-virtual {v5, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 258
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 262
    .end local v5    # "a":Landroid/content/res/TypedArray;
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v14, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 263
    new-instance v19, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$1;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;

    .line 264
    const/high16 v19, 0x40000

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setDescendantFocusability(I)V

    .line 267
    sget v19, Lcom/google/android/exoplayer2/ui/R$id;->exo_content_frame:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v15}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setResizeModeRaw(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;I)V

    .line 273
    :cond_3
    sget v19, Lcom/google/android/exoplayer2/ui/R$id;->exo_shutter:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->shutterView:Landroid/view/View;

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    if-eqz v16, :cond_7

    .line 277
    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 279
    .local v12, "params":Landroid/view/ViewGroup$LayoutParams;
    const/16 v19, 0x2

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    new-instance v19, Landroid/view/TextureView;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    :goto_2
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;I)V

    .line 288
    .end local v12    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_3
    sget v19, Lcom/google/android/exoplayer2/ui/R$id;->exo_overlay:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/FrameLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    .line 291
    sget v19, Lcom/google/android/exoplayer2/ui/R$id;->exo_artwork:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->artworkView:Landroid/widget/ImageView;

    .line 292
    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->artworkView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    const/16 v19, 0x1

    :goto_4
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useArtwork:Z

    .line 293
    if-eqz v10, :cond_4

    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->defaultArtwork:Landroid/graphics/Bitmap;

    .line 298
    :cond_4
    sget v19, Lcom/google/android/exoplayer2/ui/R$id;->exo_subtitles:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultStyle()V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setUserDefaultTextSize()V

    .line 305
    :cond_5
    sget v19, Lcom/google/android/exoplayer2/ui/R$id;->exo_controller_placeholder:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 306
    .local v8, "controllerPlaceholder":Landroid/view/View;
    if-eqz v8, :cond_9

    .line 309
    new-instance v19, Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    move-object/from16 v19, v0

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 312
    .local v13, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v13, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 313
    .local v7, "controllerIndex":I
    invoke-virtual {v13, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 318
    .end local v7    # "controllerIndex":I
    .end local v13    # "parent":Landroid/view/ViewGroup;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    .end local v9    # "controllerShowTimeoutMs":I
    :goto_6
    move-object/from16 v0, p0

    iput v9, v0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controllerShowTimeoutMs:I

    .line 319
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controllerHideOnTouch:Z

    .line 320
    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    const/16 v19, 0x1

    :goto_7
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->hideController()V

    goto/16 :goto_1

    .line 258
    .end local v8    # "controllerPlaceholder":Landroid/view/View;
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    .restart local v9    # "controllerShowTimeoutMs":I
    :catchall_0
    move-exception v19

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    throw v19

    .line 279
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .restart local v12    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    new-instance v19, Landroid/view/SurfaceView;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 284
    .end local v12    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    goto/16 :goto_3

    .line 292
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 316
    .restart local v8    # "controllerPlaceholder":Landroid/view/View;
    :cond_9
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    goto :goto_5

    .line 318
    :cond_a
    const/4 v9, 0x0

    goto :goto_6

    .line 320
    .end local v9    # "controllerShowTimeoutMs":I
    :cond_b
    const/16 v19, 0x0

    goto :goto_7
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->shutterView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->updateForCurrentTrackSelections()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
    .param p1, "x1"    # Z

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->maybeShowController(Z)V

    return-void
.end method

.method private static configureEditModeLogo(Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "logo"    # Landroid/widget/ImageView;

    .prologue
    .line 752
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_edit_mode_logo:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 753
    sget v0, Lcom/google/android/exoplayer2/ui/R$color;->exo_edit_mode_background_color:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 754
    return-void
.end method

.method private static configureEditModeLogoV23(Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "logo"    # Landroid/widget/ImageView;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 746
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_edit_mode_logo:I

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 747
    sget v0, Lcom/google/android/exoplayer2/ui/R$color;->exo_edit_mode_background_color:I

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 748
    return-void
.end method

.method private hideArtwork()V
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->artworkView:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 740
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->artworkView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 742
    :cond_0
    return-void
.end method

.method private maybeShowController(Z)V
    .locals 6
    .param p1, "isForced"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 658
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v5, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    .line 662
    .local v0, "playbackState":I
    if-eq v0, v4, :cond_2

    const/4 v5, 0x4

    if-eq v0, v5, :cond_2

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 663
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_2
    move v1, v4

    .line 664
    .local v1, "showIndefinitely":Z
    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->getShowTimeoutMs()I

    move-result v5

    if-gtz v5, :cond_5

    move v2, v4

    .line 665
    .local v2, "wasShowingIndefinitely":Z
    :goto_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v1, :cond_6

    :goto_3
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setShowTimeoutMs(I)V

    .line 666
    if-nez p1, :cond_3

    if-nez v1, :cond_3

    if-eqz v2, :cond_0

    .line 667
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->show()V

    goto :goto_0

    .end local v1    # "showIndefinitely":Z
    .end local v2    # "wasShowingIndefinitely":Z
    :cond_4
    move v1, v3

    .line 663
    goto :goto_1

    .restart local v1    # "showIndefinitely":Z
    :cond_5
    move v2, v3

    .line 664
    goto :goto_2

    .line 665
    .restart local v2    # "wasShowingIndefinitely":Z
    :cond_6
    iget v3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controllerShowTimeoutMs:I

    goto :goto_3
.end method

.method private setArtworkFromBitmap(Landroid/graphics/Bitmap;)Z
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 722
    if-eqz p1, :cond_1

    .line 723
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 724
    .local v1, "bitmapWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 725
    .local v0, "bitmapHeight":I
    if-lez v1, :cond_1

    if-lez v0, :cond_1

    .line 726
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v3, :cond_0

    .line 727
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    int-to-float v4, v1

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 729
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 730
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 731
    const/4 v2, 0x1

    .line 734
    .end local v0    # "bitmapHeight":I
    .end local v1    # "bitmapWidth":I
    :cond_1
    return v2
.end method

.method private setArtworkFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Z
    .locals 6
    .param p1, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .prologue
    const/4 v4, 0x0

    .line 710
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 711
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v3

    .line 712
    .local v3, "metadataEntry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    instance-of v5, v3, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    if-eqz v5, :cond_1

    .line 713
    check-cast v3, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    .end local v3    # "metadataEntry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    iget-object v1, v3, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

    .line 714
    .local v1, "bitmapData":[B
    array-length v5, v1

    invoke-static {v1, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 715
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setArtworkFromBitmap(Landroid/graphics/Bitmap;)Z

    move-result v4

    .line 718
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapData":[B
    :cond_0
    return v4

    .line 710
    .restart local v3    # "metadataEntry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static setResizeModeRaw(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;I)V
    .locals 0
    .param p0, "aspectRatioFrame"    # Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .param p1, "resizeMode"    # I

    .prologue
    .line 759
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 760
    return-void
.end method

.method public static switchTargetView(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)V
    .locals 1
    .param p0, "player"    # Lcom/google/android/exoplayer2/SimpleExoPlayer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "oldPlayerView"    # Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "newPlayerView"    # Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 333
    if-ne p1, p2, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    if-eqz p2, :cond_2

    .line 341
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setPlayer(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V

    .line 343
    :cond_2
    if-eqz p1, :cond_0

    .line 344
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setPlayer(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V

    goto :goto_0
.end method

.method private updateForCurrentTrackSelections()V
    .locals 7

    .prologue
    .line 672
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v5, :cond_1

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 675
    :cond_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object v4

    .line 676
    .local v4, "selections":Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v5, v4, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->length:I

    if-ge v0, v5, :cond_3

    .line 677
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererType(I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 680
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->hideArtwork()V

    goto :goto_0

    .line 676
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 685
    :cond_3
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->shutterView:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 686
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->shutterView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 689
    :cond_4
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useArtwork:Z

    if-eqz v5, :cond_8

    .line 690
    const/4 v0, 0x0

    :goto_2
    iget v5, v4, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->length:I

    if-ge v0, v5, :cond_7

    .line 691
    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v3

    .line 692
    .local v3, "selection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    if-eqz v3, :cond_6

    .line 693
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 694
    invoke-interface {v3, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    iget-object v2, v5, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 695
    .local v2, "metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    if-eqz v2, :cond_5

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setArtworkFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 693
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 690
    .end local v1    # "j":I
    .end local v2    # "metadata":Lcom/google/android/exoplayer2/metadata/Metadata;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 701
    .end local v3    # "selection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    :cond_7
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->defaultArtwork:Landroid/graphics/Bitmap;

    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->setArtworkFromBitmap(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 706
    :cond_8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->hideArtwork()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getControllerHideOnTouch()Z
    .locals 1

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controllerHideOnTouch:Z

    return v0
.end method

.method public getControllerShowTimeoutMs()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controllerShowTimeoutMs:I

    return v0
.end method

.method public getDefaultArtwork()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->defaultArtwork:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOverlayFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object v0
.end method

.method public getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object v0
.end method

.method public getUseArtwork()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useArtwork:Z

    return v0
.end method

.method public getUseController()Z
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    return v0
.end method

.method public getVideoSurfaceView()Landroid/view/View;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    return-object v0
.end method

.method public hideController()V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hide()V

    .line 510
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 637
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_2

    .line 638
    :cond_0
    const/4 v0, 0x0

    .line 645
    :cond_1
    :goto_0
    return v0

    .line 640
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v1

    if-nez v1, :cond_3

    .line 641
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->maybeShowController(Z)V

    goto :goto_0

    .line 642
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controllerHideOnTouch:Z

    if-eqz v1, :cond_1

    .line 643
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hide()V

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 650
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v1, :cond_1

    .line 651
    :cond_0
    const/4 v0, 0x0

    .line 654
    :goto_0
    return v0

    .line 653
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->maybeShowController(Z)V

    goto :goto_0
.end method

.method public setControlDispatcher(Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;)V
    .locals 1
    .param p1, "controlDispatcher"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 571
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setControlDispatcher(Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;)V

    .line 572
    return-void

    .line 570
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setControllerHideOnTouch(Z)V
    .locals 1
    .param p1, "controllerHideOnTouch"    # Z

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 550
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controllerHideOnTouch:Z

    .line 551
    return-void

    .line 549
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setControllerShowTimeoutMs(I)V
    .locals 1
    .param p1, "controllerShowTimeoutMs"    # I

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 533
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controllerShowTimeoutMs:I

    .line 534
    return-void

    .line 532
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 560
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setVisibilityListener(Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;)V

    .line 561
    return-void

    .line 559
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDefaultArtwork(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "defaultArtwork"    # Landroid/graphics/Bitmap;

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->defaultArtwork:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 451
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->defaultArtwork:Landroid/graphics/Bitmap;

    .line 452
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->updateForCurrentTrackSelections()V

    .line 454
    :cond_0
    return-void
.end method

.method public setFastForwardIncrementMs(I)V
    .locals 1
    .param p1, "fastForwardMs"    # I

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 591
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setFastForwardIncrementMs(I)V

    .line 592
    return-void

    .line 590
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V
    .locals 3
    .param p1, "player"    # Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .prologue
    const/4 v2, 0x0

    .line 369
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-ne v0, p1, :cond_0

    .line 404
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    .line 374
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearTextOutput(Lcom/google/android/exoplayer2/text/TextRenderer$Output;)V

    .line 375
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoListener(Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;)V

    .line 376
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/TextureView;

    if-eqz v0, :cond_5

    .line 377
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoTextureView(Landroid/view/TextureView;)V

    .line 382
    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 383
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setPlayer(Lcom/google/android/exoplayer2/ExoPlayer;)V

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->shutterView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 387
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->shutterView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 389
    :cond_3
    if-eqz p1, :cond_7

    .line 390
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/TextureView;

    if-eqz v0, :cond_6

    .line 391
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoTextureView(Landroid/view/TextureView;)V

    .line 395
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoListener(Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;)V

    .line 396
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setTextOutput(Lcom/google/android/exoplayer2/text/TextRenderer$Output;)V

    .line 397
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->componentListener:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$ComponentListener;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    .line 398
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->maybeShowController(Z)V

    .line 399
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->updateForCurrentTrackSelections()V

    goto :goto_0

    .line 378
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 379
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    goto :goto_1

    .line 392
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_4

    .line 393
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->surfaceView:Landroid/view/View;

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    goto :goto_2

    .line 401
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->hideController()V

    .line 402
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->hideArtwork()V

    goto/16 :goto_0
.end method

.method public setResizeMode(I)V
    .locals 1
    .param p1, "resizeMode"    # I

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 413
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->contentFrame:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 414
    return-void

    .line 412
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRewindIncrementMs(I)V
    .locals 1
    .param p1, "rewindMs"    # I

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 581
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setRewindIncrementMs(I)V

    .line 582
    return-void

    .line 580
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 1
    .param p1, "showMultiWindowTimeBar"    # Z

    .prologue
    .line 600
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 601
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setShowMultiWindowTimeBar(Z)V

    .line 602
    return-void

    .line 600
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUseArtwork(Z)V
    .locals 1
    .param p1, "useArtwork"    # Z

    .prologue
    .line 429
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 430
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useArtwork:Z

    if-eq v0, p1, :cond_1

    .line 431
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useArtwork:Z

    .line 432
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->updateForCurrentTrackSelections()V

    .line 434
    :cond_1
    return-void

    .line 429
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUseController(Z)V
    .locals 2
    .param p1, "useController"    # Z

    .prologue
    .line 470
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 471
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    if-ne v0, p1, :cond_3

    .line 481
    :cond_1
    :goto_1
    return-void

    .line 470
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 474
    :cond_3
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    .line 475
    if-eqz p1, :cond_4

    .line 476
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setPlayer(Lcom/google/android/exoplayer2/ExoPlayer;)V

    goto :goto_1

    .line 477
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hide()V

    .line 479
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->controller:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setPlayer(Lcom/google/android/exoplayer2/ExoPlayer;)V

    goto :goto_1
.end method

.method public showController()V
    .locals 1

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->useController:Z

    if-eqz v0, :cond_0

    .line 499
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->maybeShowController(Z)V

    .line 501
    :cond_0
    return-void
.end method
