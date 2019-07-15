.class public Lcom/phicomm/speaker/manager/imageloader/BlurTransformation;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "BlurTransformation.java"


# static fields
.field private static a:I = 0x19

.field private static b:I = 0x1


# instance fields
.field private c:Landroid/content/Context;

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 42
    sget v0, Lcom/phicomm/speaker/manager/imageloader/BlurTransformation;->a:I

    sget v1, Lcom/phicomm/speaker/manager/imageloader/BlurTransformation;->b:I

    invoke-direct {p0, p1, v0, v1}, Lcom/phicomm/speaker/manager/imageloader/BlurTransformation;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/manager/imageloader/BlurTransformation;->c:Landroid/content/Context;

    .line 48
    iput p2, p0, Lcom/phicomm/speaker/manager/imageloader/BlurTransformation;->d:I

    .line 49
    iput p3, p0, Lcom/phicomm/speaker/manager/imageloader/BlurTransformation;->e:I

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/a/c;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8

    .line 54
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 55
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 56
    iget v2, p0, Lcom/phicomm/speaker/manager/imageloader/BlurTransformation;->e:I

    div-int v2, p3, v2

    .line 57
    iget v3, p0, Lcom/phicomm/speaker/manager/imageloader/BlurTransformation;->e:I

    div-int v3, p4, v3

    mul-int v4, v0, p4

    mul-int v5, p3, v1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ge v4, v5, :cond_0

    mul-int/2addr v2, p4

    .line 62
    div-int/2addr v2, p3

    .line 63
    div-int/2addr v4, p3

    sub-int v2, v1, v4

    div-int/2addr v2, v7

    .line 64
    new-instance v3, Landroid/graphics/Rect;

    sub-int/2addr v1, v2

    invoke-direct {v3, v6, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_0
    mul-int/2addr v3, p3

    .line 66
    div-int/2addr v3, p4

    .line 67
    div-int/2addr v5, p4

    sub-int v2, v0, v5

    div-int/2addr v2, v7

    .line 68
    new-instance v3, Landroid/graphics/Rect;

    sub-int/2addr v0, v2

    invoke-direct {v3, v2, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 70
    :goto_0
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p3

    int-to-float v2, p4

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 71
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-interface {p1, p3, p4, v1}, Lcom/bumptech/glide/load/engine/a/c;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    .line 73
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 76
    :cond_1
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 77
    iget p4, p0, Lcom/phicomm/speaker/manager/imageloader/BlurTransformation;->e:I

    int-to-float p4, p4

    const/high16 v1, 0x3f800000    # 1.0f

    div-float p4, v1, p4

    iget v2, p0, Lcom/phicomm/speaker/manager/imageloader/BlurTransformation;->e:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p3, p4, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 78
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    .line 79
    invoke-virtual {p4, v7}, Landroid/graphics/Paint;->setFlags(I)V

    .line 81
    invoke-virtual {p3, p2, v3, v0, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 83
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x12

    const/4 p4, 0x1

    if-lt p2, p3, :cond_2

    .line 85
    :try_start_0
    iget-object p2, p0, Lcom/phicomm/speaker/manager/imageloader/BlurTransformation;->c:Landroid/content/Context;

    const/16 p3, 0x19

    invoke-static {p2, p1, p3}, Ljp/wasabeef/glide/transformations/a/b;->a(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 87
    :catch_0
    iget p2, p0, Lcom/phicomm/speaker/manager/imageloader/BlurTransformation;->d:I

    invoke-static {p1, p2, p4}, Ljp/wasabeef/glide/transformations/a/a;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_1

    .line 90
    :cond_2
    iget p2, p0, Lcom/phicomm/speaker/manager/imageloader/BlurTransformation;->d:I

    invoke-static {p1, p2, p4}, Ljp/wasabeef/glide/transformations/a/a;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p2

    :goto_1
    return-object p2
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
