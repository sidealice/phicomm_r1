.class public final Lorg/xutils/common/util/DensityUtil;
.super Ljava/lang/Object;
.source "DensityUtil.java"


# static fields
.field private static density:F

.field private static heightPixels:I

.field private static widthPixels:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 8
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lorg/xutils/common/util/DensityUtil;->density:F

    .line 9
    sput v1, Lorg/xutils/common/util/DensityUtil;->widthPixels:I

    .line 10
    sput v1, Lorg/xutils/common/util/DensityUtil;->heightPixels:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static dip2px(F)I
    .locals 2
    .param p0, "dpValue"    # F

    .prologue
    .line 23
    invoke-static {}, Lorg/xutils/common/util/DensityUtil;->getDensity()F

    move-result v0

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getDensity()F
    .locals 2

    .prologue
    .line 16
    sget v0, Lorg/xutils/common/util/DensityUtil;->density:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 17
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lorg/xutils/common/util/DensityUtil;->density:F

    .line 19
    :cond_0
    sget v0, Lorg/xutils/common/util/DensityUtil;->density:F

    return v0
.end method

.method public static getScreenHeight()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lorg/xutils/common/util/DensityUtil;->heightPixels:I

    if-gtz v0, :cond_0

    .line 40
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lorg/xutils/common/util/DensityUtil;->heightPixels:I

    .line 42
    :cond_0
    sget v0, Lorg/xutils/common/util/DensityUtil;->heightPixels:I

    return v0
.end method

.method public static getScreenWidth()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lorg/xutils/common/util/DensityUtil;->widthPixels:I

    if-gtz v0, :cond_0

    .line 32
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lorg/xutils/common/util/DensityUtil;->widthPixels:I

    .line 34
    :cond_0
    sget v0, Lorg/xutils/common/util/DensityUtil;->widthPixels:I

    return v0
.end method

.method public static px2dip(F)I
    .locals 2
    .param p0, "pxValue"    # F

    .prologue
    .line 27
    invoke-static {}, Lorg/xutils/common/util/DensityUtil;->getDensity()F

    move-result v0

    div-float v0, p0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
