.class public Lorg/xutils/image/ImageOptions;
.super Ljava/lang/Object;
.source "ImageOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/image/ImageOptions$Builder;,
        Lorg/xutils/image/ImageOptions$ParamsBuilder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lorg/xutils/image/ImageOptions;


# instance fields
.field private animation:Landroid/view/animation/Animation;

.field private autoRotate:Z

.field private circular:Z

.field private compress:Z

.field private config:Landroid/graphics/Bitmap$Config;

.field private crop:Z

.field private fadeIn:Z

.field private failureDrawable:Landroid/graphics/drawable/Drawable;

.field private failureDrawableId:I

.field private forceLoadingDrawable:Z

.field private height:I

.field private ignoreGif:Z

.field private imageScaleType:Landroid/widget/ImageView$ScaleType;

.field private loadingDrawable:Landroid/graphics/drawable/Drawable;

.field private loadingDrawableId:I

.field private maxHeight:I

.field private maxWidth:I

.field private paramsBuilder:Lorg/xutils/image/ImageOptions$ParamsBuilder;

.field private placeholderScaleType:Landroid/widget/ImageView$ScaleType;

.field private radius:I

.field private square:Z

.field private useMemCache:Z

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lorg/xutils/image/ImageOptions;

    invoke-direct {v0}, Lorg/xutils/image/ImageOptions;-><init>()V

    sput-object v0, Lorg/xutils/image/ImageOptions;->DEFAULT:Lorg/xutils/image/ImageOptions;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v1, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    .line 25
    iput v1, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    .line 26
    iput v1, p0, Lorg/xutils/image/ImageOptions;->width:I

    .line 27
    iput v1, p0, Lorg/xutils/image/ImageOptions;->height:I

    .line 28
    iput-boolean v1, p0, Lorg/xutils/image/ImageOptions;->crop:Z

    .line 30
    iput v1, p0, Lorg/xutils/image/ImageOptions;->radius:I

    .line 31
    iput-boolean v1, p0, Lorg/xutils/image/ImageOptions;->square:Z

    .line 32
    iput-boolean v1, p0, Lorg/xutils/image/ImageOptions;->circular:Z

    .line 33
    iput-boolean v1, p0, Lorg/xutils/image/ImageOptions;->autoRotate:Z

    .line 34
    iput-boolean v2, p0, Lorg/xutils/image/ImageOptions;->compress:Z

    .line 35
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lorg/xutils/image/ImageOptions;->config:Landroid/graphics/Bitmap$Config;

    .line 38
    iput-boolean v2, p0, Lorg/xutils/image/ImageOptions;->ignoreGif:Z

    .line 42
    iput v1, p0, Lorg/xutils/image/ImageOptions;->loadingDrawableId:I

    .line 43
    iput v1, p0, Lorg/xutils/image/ImageOptions;->failureDrawableId:I

    .line 44
    iput-object v3, p0, Lorg/xutils/image/ImageOptions;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    iput-object v3, p0, Lorg/xutils/image/ImageOptions;->failureDrawable:Landroid/graphics/drawable/Drawable;

    .line 46
    iput-boolean v2, p0, Lorg/xutils/image/ImageOptions;->forceLoadingDrawable:Z

    .line 48
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lorg/xutils/image/ImageOptions;->placeholderScaleType:Landroid/widget/ImageView$ScaleType;

    .line 49
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lorg/xutils/image/ImageOptions;->imageScaleType:Landroid/widget/ImageView$ScaleType;

    .line 51
    iput-boolean v1, p0, Lorg/xutils/image/ImageOptions;->fadeIn:Z

    .line 52
    iput-object v3, p0, Lorg/xutils/image/ImageOptions;->animation:Landroid/view/animation/Animation;

    .line 56
    iput-boolean v2, p0, Lorg/xutils/image/ImageOptions;->useMemCache:Z

    .line 60
    return-void
.end method

.method static synthetic access$002(Lorg/xutils/image/ImageOptions;I)I
    .locals 0
    .param p0, "x0"    # Lorg/xutils/image/ImageOptions;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lorg/xutils/image/ImageOptions;->width:I

    return p1
.end method

.method static synthetic access$1002(Lorg/xutils/image/ImageOptions;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lorg/xutils/image/ImageOptions;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 19
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$102(Lorg/xutils/image/ImageOptions;I)I
    .locals 0
    .param p0, "x0"    # Lorg/xutils/image/ImageOptions;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lorg/xutils/image/ImageOptions;->height:I

    return p1
.end method

.method static synthetic access$1102(Lorg/xutils/image/ImageOptions;I)I
    .locals 0
    .param p0, "x0"    # Lorg/xutils/image/ImageOptions;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lorg/xutils/image/ImageOptions;->failureDrawableId:I

    return p1
.end method

.method static synthetic access$1202(Lorg/xutils/image/ImageOptions;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lorg/xutils/image/ImageOptions;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 19
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->failureDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$1302(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/xutils/image/ImageOptions;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->fadeIn:Z

    return p1
.end method

.method static synthetic access$1402(Lorg/xutils/image/ImageOptions;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .param p0, "x0"    # Lorg/xutils/image/ImageOptions;
    .param p1, "x1"    # Landroid/view/animation/Animation;

    .prologue
    .line 19
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->animation:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic access$1502(Lorg/xutils/image/ImageOptions;Landroid/widget/ImageView$ScaleType;)Landroid/widget/ImageView$ScaleType;
    .locals 0
    .param p0, "x0"    # Lorg/xutils/image/ImageOptions;
    .param p1, "x1"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 19
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->placeholderScaleType:Landroid/widget/ImageView$ScaleType;

    return-object p1
.end method

.method static synthetic access$1602(Lorg/xutils/image/ImageOptions;Landroid/widget/ImageView$ScaleType;)Landroid/widget/ImageView$ScaleType;
    .locals 0
    .param p0, "x0"    # Lorg/xutils/image/ImageOptions;
    .param p1, "x1"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 19
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->imageScaleType:Landroid/widget/ImageView$ScaleType;

    return-object p1
.end method

.method static synthetic access$1702(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/xutils/image/ImageOptions;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->forceLoadingDrawable:Z

    return p1
.end method

.method static synthetic access$1802(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/xutils/image/ImageOptions;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->useMemCache:Z

    return p1
.end method

.method static synthetic access$1902(Lorg/xutils/image/ImageOptions;Lorg/xutils/image/ImageOptions$ParamsBuilder;)Lorg/xutils/image/ImageOptions$ParamsBuilder;
    .locals 0
    .param p0, "x0"    # Lorg/xutils/image/ImageOptions;
    .param p1, "x1"    # Lorg/xutils/image/ImageOptions$ParamsBuilder;

    .prologue
    .line 19
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->paramsBuilder:Lorg/xutils/image/ImageOptions$ParamsBuilder;

    return-object p1
.end method

.method static synthetic access$202(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/xutils/image/ImageOptions;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->crop:Z

    return p1
.end method

.method static synthetic access$302(Lorg/xutils/image/ImageOptions;I)I
    .locals 0
    .param p0, "x0"    # Lorg/xutils/image/ImageOptions;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lorg/xutils/image/ImageOptions;->radius:I

    return p1
.end method

.method static synthetic access$402(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/xutils/image/ImageOptions;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->square:Z

    return p1
.end method

.method static synthetic access$502(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/xutils/image/ImageOptions;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->circular:Z

    return p1
.end method

.method static synthetic access$602(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/xutils/image/ImageOptions;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->autoRotate:Z

    return p1
.end method

.method static synthetic access$702(Lorg/xutils/image/ImageOptions;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap$Config;
    .locals 0
    .param p0, "x0"    # Lorg/xutils/image/ImageOptions;
    .param p1, "x1"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 19
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->config:Landroid/graphics/Bitmap$Config;

    return-object p1
.end method

.method static synthetic access$802(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/xutils/image/ImageOptions;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->ignoreGif:Z

    return p1
.end method

.method static synthetic access$902(Lorg/xutils/image/ImageOptions;I)I
    .locals 0
    .param p0, "x0"    # Lorg/xutils/image/ImageOptions;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lorg/xutils/image/ImageOptions;->loadingDrawableId:I

    return p1
.end method

.method private static getImageViewFieldValue(Landroid/widget/ImageView;Ljava/lang/String;)I
    .locals 4
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 278
    const/4 v2, 0x0

    .line 280
    .local v2, "value":I
    :try_start_0
    const-class v3, Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 281
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 282
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 283
    .local v1, "fieldValue":I
    if-lez v1, :cond_0

    const v3, 0x7fffffff

    if-ge v1, v3, :cond_0

    .line 284
    move v2, v1

    .line 288
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "fieldValue":I
    :cond_0
    :goto_0
    return v2

    .line 286
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 228
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 243
    :cond_0
    :goto_0
    return v2

    .line 229
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 231
    check-cast v0, Lorg/xutils/image/ImageOptions;

    .line 233
    .local v0, "options":Lorg/xutils/image/ImageOptions;
    iget v3, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    iget v4, v0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    if-ne v3, v4, :cond_0

    .line 234
    iget v3, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    iget v4, v0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    if-ne v3, v4, :cond_0

    .line 235
    iget v3, p0, Lorg/xutils/image/ImageOptions;->width:I

    iget v4, v0, Lorg/xutils/image/ImageOptions;->width:I

    if-ne v3, v4, :cond_0

    .line 236
    iget v3, p0, Lorg/xutils/image/ImageOptions;->height:I

    iget v4, v0, Lorg/xutils/image/ImageOptions;->height:I

    if-ne v3, v4, :cond_0

    .line 237
    iget-boolean v3, p0, Lorg/xutils/image/ImageOptions;->crop:Z

    iget-boolean v4, v0, Lorg/xutils/image/ImageOptions;->crop:Z

    if-ne v3, v4, :cond_0

    .line 238
    iget v3, p0, Lorg/xutils/image/ImageOptions;->radius:I

    iget v4, v0, Lorg/xutils/image/ImageOptions;->radius:I

    if-ne v3, v4, :cond_0

    .line 239
    iget-boolean v3, p0, Lorg/xutils/image/ImageOptions;->square:Z

    iget-boolean v4, v0, Lorg/xutils/image/ImageOptions;->square:Z

    if-ne v3, v4, :cond_0

    .line 240
    iget-boolean v3, p0, Lorg/xutils/image/ImageOptions;->circular:Z

    iget-boolean v4, v0, Lorg/xutils/image/ImageOptions;->circular:Z

    if-ne v3, v4, :cond_0

    .line 241
    iget-boolean v3, p0, Lorg/xutils/image/ImageOptions;->autoRotate:Z

    iget-boolean v4, v0, Lorg/xutils/image/ImageOptions;->autoRotate:Z

    if-ne v3, v4, :cond_0

    .line 242
    iget-boolean v3, p0, Lorg/xutils/image/ImageOptions;->compress:Z

    iget-boolean v4, v0, Lorg/xutils/image/ImageOptions;->compress:Z

    if-ne v3, v4, :cond_0

    .line 243
    iget-object v3, p0, Lorg/xutils/image/ImageOptions;->config:Landroid/graphics/Bitmap$Config;

    iget-object v4, v0, Lorg/xutils/image/ImageOptions;->config:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->animation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->config:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public getFailureDrawable(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 188
    iget-object v1, p0, Lorg/xutils/image/ImageOptions;->failureDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    iget v1, p0, Lorg/xutils/image/ImageOptions;->failureDrawableId:I

    if-lez v1, :cond_0

    if-eqz p1, :cond_0

    .line 190
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lorg/xutils/image/ImageOptions;->failureDrawableId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/image/ImageOptions;->failureDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/xutils/image/ImageOptions;->failureDrawable:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lorg/xutils/image/ImageOptions;->height:I

    return v0
.end method

.method public getImageScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->imageScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getLoadingDrawable(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 177
    iget-object v1, p0, Lorg/xutils/image/ImageOptions;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    iget v1, p0, Lorg/xutils/image/ImageOptions;->loadingDrawableId:I

    if-lez v1, :cond_0

    if-eqz p1, :cond_0

    .line 179
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lorg/xutils/image/ImageOptions;->loadingDrawableId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/image/ImageOptions;->loadingDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/xutils/image/ImageOptions;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    return v0
.end method

.method public getParamsBuilder()Lorg/xutils/image/ImageOptions$ParamsBuilder;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->paramsBuilder:Lorg/xutils/image/ImageOptions$ParamsBuilder;

    return-object v0
.end method

.method public getPlaceholderScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->placeholderScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lorg/xutils/image/ImageOptions;->radius:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lorg/xutils/image/ImageOptions;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 249
    iget v0, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    .line 250
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    add-int v0, v1, v4

    .line 251
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lorg/xutils/image/ImageOptions;->width:I

    add-int v0, v1, v4

    .line 252
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lorg/xutils/image/ImageOptions;->height:I

    add-int v0, v1, v4

    .line 253
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->crop:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    add-int v0, v4, v1

    .line 254
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lorg/xutils/image/ImageOptions;->radius:I

    add-int v0, v1, v4

    .line 255
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->square:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    add-int v0, v4, v1

    .line 256
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->circular:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    add-int v0, v4, v1

    .line 257
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->autoRotate:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    add-int v0, v4, v1

    .line 258
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lorg/xutils/image/ImageOptions;->compress:Z

    if-eqz v4, :cond_5

    :goto_4
    add-int v0, v1, v2

    .line 259
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/xutils/image/ImageOptions;->config:Landroid/graphics/Bitmap$Config;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/xutils/image/ImageOptions;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v3

    :cond_0
    add-int v0, v1, v3

    .line 260
    return v0

    :cond_1
    move v1, v3

    .line 253
    goto :goto_0

    :cond_2
    move v1, v3

    .line 255
    goto :goto_1

    :cond_3
    move v1, v3

    .line 256
    goto :goto_2

    :cond_4
    move v1, v3

    .line 257
    goto :goto_3

    :cond_5
    move v2, v3

    .line 258
    goto :goto_4
.end method

.method public isAutoRotate()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->autoRotate:Z

    return v0
.end method

.method public isCircular()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->circular:Z

    return v0
.end method

.method public isCompress()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->compress:Z

    return v0
.end method

.method public isCrop()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->crop:Z

    return v0
.end method

.method public isFadeIn()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->fadeIn:Z

    return v0
.end method

.method public isForceLoadingDrawable()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->forceLoadingDrawable:Z

    return v0
.end method

.method public isIgnoreGif()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->ignoreGif:Z

    return v0
.end method

.method public isSquare()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->square:Z

    return v0
.end method

.method public isUseMemCache()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->useMemCache:Z

    return v0
.end method

.method final optimizeMaxSize(Landroid/widget/ImageView;)V
    .locals 8
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 64
    iget v5, p0, Lorg/xutils/image/ImageOptions;->width:I

    if-lez v5, :cond_0

    iget v5, p0, Lorg/xutils/image/ImageOptions;->height:I

    if-lez v5, :cond_0

    .line 65
    iget v5, p0, Lorg/xutils/image/ImageOptions;->width:I

    iput v5, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    .line 66
    iget v5, p0, Lorg/xutils/image/ImageOptions;->height:I

    iput v5, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    .line 126
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-static {}, Lorg/xutils/common/util/DensityUtil;->getScreenWidth()I

    move-result v2

    .line 71
    .local v2, "screenWidth":I
    invoke-static {}, Lorg/xutils/common/util/DensityUtil;->getScreenHeight()I

    move-result v1

    .line 73
    .local v1, "screenHeight":I
    iget v5, p0, Lorg/xutils/image/ImageOptions;->width:I

    if-gez v5, :cond_1

    .line 74
    mul-int/lit8 v5, v2, 0x3

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    .line 75
    iput-boolean v7, p0, Lorg/xutils/image/ImageOptions;->compress:Z

    .line 77
    :cond_1
    iget v5, p0, Lorg/xutils/image/ImageOptions;->height:I

    if-gez v5, :cond_2

    .line 78
    mul-int/lit8 v5, v1, 0x3

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    .line 79
    iput-boolean v7, p0, Lorg/xutils/image/ImageOptions;->compress:Z

    .line 82
    :cond_2
    if-nez p1, :cond_3

    iget v5, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    if-gtz v5, :cond_3

    iget v5, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    if-gtz v5, :cond_3

    .line 83
    iput v2, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    .line 84
    iput v1, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    goto :goto_0

    .line 86
    :cond_3
    iget v4, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    .line 87
    .local v4, "tempWidth":I
    iget v3, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    .line 89
    .local v3, "tempHeight":I
    if-eqz p1, :cond_7

    .line 90
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 91
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_5

    .line 93
    if-gtz v4, :cond_4

    .line 94
    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v5, :cond_a

    .line 95
    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 96
    iget v5, p0, Lorg/xutils/image/ImageOptions;->width:I

    if-gtz v5, :cond_4

    .line 97
    iput v4, p0, Lorg/xutils/image/ImageOptions;->width:I

    .line 104
    :cond_4
    :goto_1
    if-gtz v3, :cond_5

    .line 105
    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_b

    .line 106
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 107
    iget v5, p0, Lorg/xutils/image/ImageOptions;->height:I

    if-gtz v5, :cond_5

    .line 108
    iput v3, p0, Lorg/xutils/image/ImageOptions;->height:I

    .line 116
    :cond_5
    :goto_2
    if-gtz v4, :cond_6

    const-string v5, "mMaxWidth"

    invoke-static {p1, v5}, Lorg/xutils/image/ImageOptions;->getImageViewFieldValue(Landroid/widget/ImageView;Ljava/lang/String;)I

    move-result v4

    .line 117
    :cond_6
    if-gtz v3, :cond_7

    const-string v5, "mMaxHeight"

    invoke-static {p1, v5}, Lorg/xutils/image/ImageOptions;->getImageViewFieldValue(Landroid/widget/ImageView;Ljava/lang/String;)I

    move-result v3

    .line 120
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    if-gtz v4, :cond_8

    move v4, v2

    .line 121
    :cond_8
    if-gtz v3, :cond_9

    move v3, v1

    .line 123
    :cond_9
    iput v4, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    .line 124
    iput v3, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    goto :goto_0

    .line 99
    .restart local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_a
    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v5, v6, :cond_4

    .line 100
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    goto :goto_1

    .line 110
    :cond_b
    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v5, v6, :cond_5

    .line 111
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lorg/xutils/image/ImageOptions;->maxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget v1, p0, Lorg/xutils/image/ImageOptions;->maxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget v1, p0, Lorg/xutils/image/ImageOptions;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget v1, p0, Lorg/xutils/image/ImageOptions;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget v1, p0, Lorg/xutils/image/ImageOptions;->radius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget-object v1, p0, Lorg/xutils/image/ImageOptions;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->crop:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->square:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->circular:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->autoRotate:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lorg/xutils/image/ImageOptions;->compress:Z

    if-eqz v4, :cond_4

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    move v1, v3

    .line 272
    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v3

    .line 273
    goto :goto_3

    :cond_4
    move v2, v3

    goto :goto_4
.end method
