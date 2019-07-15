.class public Lorg/xutils/image/ImageOptions$Builder;
.super Ljava/lang/Object;
.source "ImageOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/image/ImageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected options:Lorg/xutils/image/ImageOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    invoke-virtual {p0}, Lorg/xutils/image/ImageOptions$Builder;->newImageOptions()V

    .line 301
    return-void
.end method


# virtual methods
.method public build()Lorg/xutils/image/ImageOptions;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    return-object v0
.end method

.method protected newImageOptions()V
    .locals 1

    .prologue
    .line 304
    new-instance v0, Lorg/xutils/image/ImageOptions;

    invoke-direct {v0}, Lorg/xutils/image/ImageOptions;-><init>()V

    iput-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    .line 305
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 385
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1402(Lorg/xutils/image/ImageOptions;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 386
    return-object p0
.end method

.method public setAutoRotate(Z)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1
    .param p1, "autoRotate"    # Z

    .prologue
    .line 345
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$602(Lorg/xutils/image/ImageOptions;Z)Z

    .line 346
    return-object p0
.end method

.method public setCircular(Z)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1
    .param p1, "circular"    # Z

    .prologue
    .line 340
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$502(Lorg/xutils/image/ImageOptions;Z)Z

    .line 341
    return-object p0
.end method

.method public setConfig(Landroid/graphics/Bitmap$Config;)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 350
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$702(Lorg/xutils/image/ImageOptions;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap$Config;

    .line 351
    return-object p0
.end method

.method public setCrop(Z)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1
    .param p1, "crop"    # Z

    .prologue
    .line 325
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$202(Lorg/xutils/image/ImageOptions;Z)Z

    .line 326
    return-object p0
.end method

.method public setFadeIn(Z)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1
    .param p1, "fadeIn"    # Z

    .prologue
    .line 380
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1302(Lorg/xutils/image/ImageOptions;Z)Z

    .line 381
    return-object p0
.end method

.method public setFailureDrawable(Landroid/graphics/drawable/Drawable;)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1
    .param p1, "failureDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 375
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1202(Lorg/xutils/image/ImageOptions;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 376
    return-object p0
.end method

.method public setFailureDrawableId(I)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1
    .param p1, "failureDrawableId"    # I

    .prologue
    .line 370
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1102(Lorg/xutils/image/ImageOptions;I)I

    .line 371
    return-object p0
.end method

.method public setForceLoadingDrawable(Z)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1
    .param p1, "forceLoadingDrawable"    # Z

    .prologue
    .line 400
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1702(Lorg/xutils/image/ImageOptions;Z)Z

    .line 401
    return-object p0
.end method

.method public setIgnoreGif(Z)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1
    .param p1, "ignoreGif"    # Z

    .prologue
    .line 355
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$802(Lorg/xutils/image/ImageOptions;Z)Z

    .line 356
    return-object p0
.end method

.method public setImageScaleType(Landroid/widget/ImageView$ScaleType;)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1
    .param p1, "imageScaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 395
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1602(Lorg/xutils/image/ImageOptions;Landroid/widget/ImageView$ScaleType;)Landroid/widget/ImageView$ScaleType;

    .line 396
    return-object p0
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1
    .param p1, "loadingDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 365
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1002(Lorg/xutils/image/ImageOptions;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 366
    return-object p0
.end method

.method public setLoadingDrawableId(I)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1
    .param p1, "loadingDrawableId"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$902(Lorg/xutils/image/ImageOptions;I)I

    .line 361
    return-object p0
.end method

.method public setParamsBuilder(Lorg/xutils/image/ImageOptions$ParamsBuilder;)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1
    .param p1, "paramsBuilder"    # Lorg/xutils/image/ImageOptions$ParamsBuilder;

    .prologue
    .line 410
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1902(Lorg/xutils/image/ImageOptions;Lorg/xutils/image/ImageOptions$ParamsBuilder;)Lorg/xutils/image/ImageOptions$ParamsBuilder;

    .line 411
    return-object p0
.end method

.method public setPlaceholderScaleType(Landroid/widget/ImageView$ScaleType;)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1
    .param p1, "placeholderScaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 390
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1502(Lorg/xutils/image/ImageOptions;Landroid/widget/ImageView$ScaleType;)Landroid/widget/ImageView$ScaleType;

    .line 391
    return-object p0
.end method

.method public setRadius(I)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1
    .param p1, "radius"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$302(Lorg/xutils/image/ImageOptions;I)I

    .line 331
    return-object p0
.end method

.method public setSize(II)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 319
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$002(Lorg/xutils/image/ImageOptions;I)I

    .line 320
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p2}, Lorg/xutils/image/ImageOptions;->access$102(Lorg/xutils/image/ImageOptions;I)I

    .line 321
    return-object p0
.end method

.method public setSquare(Z)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1
    .param p1, "square"    # Z

    .prologue
    .line 335
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$402(Lorg/xutils/image/ImageOptions;Z)Z

    .line 336
    return-object p0
.end method

.method public setUseMemCache(Z)Lorg/xutils/image/ImageOptions$Builder;
    .locals 1
    .param p1, "useMemCache"    # Z

    .prologue
    .line 405
    iget-object v0, p0, Lorg/xutils/image/ImageOptions$Builder;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {v0, p1}, Lorg/xutils/image/ImageOptions;->access$1802(Lorg/xutils/image/ImageOptions;Z)Z

    .line 406
    return-object p0
.end method
