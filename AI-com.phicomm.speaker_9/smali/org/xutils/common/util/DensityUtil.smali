.class public final Lorg/xutils/common/util/DensityUtil;
.super Ljava/lang/Object;
.source "DensityUtil.java"


# static fields
.field private static a:F = -1.0f

.field private static b:I = -0x1

.field private static c:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(F)I
    .locals 1

    .line 23
    invoke-static {}, Lorg/xutils/common/util/DensityUtil;->getDensity()F

    move-result v0

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getDensity()F
    .locals 2

    .line 16
    sget v0, Lorg/xutils/common/util/DensityUtil;->a:F

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

    sput v0, Lorg/xutils/common/util/DensityUtil;->a:F

    .line 19
    :cond_0
    sget v0, Lorg/xutils/common/util/DensityUtil;->a:F

    return v0
.end method

.method public static getScreenHeight()I
    .locals 1

    .line 39
    sget v0, Lorg/xutils/common/util/DensityUtil;->c:I

    if-gtz v0, :cond_0

    .line 40
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lorg/xutils/common/util/DensityUtil;->c:I

    .line 42
    :cond_0
    sget v0, Lorg/xutils/common/util/DensityUtil;->c:I

    return v0
.end method

.method public static getScreenWidth()I
    .locals 1

    .line 31
    sget v0, Lorg/xutils/common/util/DensityUtil;->b:I

    if-gtz v0, :cond_0

    .line 32
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lorg/xutils/common/util/DensityUtil;->b:I

    .line 34
    :cond_0
    sget v0, Lorg/xutils/common/util/DensityUtil;->b:I

    return v0
.end method

.method public static px2dip(F)I
    .locals 1

    .line 27
    invoke-static {}, Lorg/xutils/common/util/DensityUtil;->getDensity()F

    move-result v0

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method
