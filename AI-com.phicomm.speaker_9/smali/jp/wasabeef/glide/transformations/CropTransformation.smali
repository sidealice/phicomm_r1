.class public Ljp/wasabeef/glide/transformations/CropTransformation;
.super Ljava/lang/Object;
.source "CropTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/wasabeef/glide/transformations/CropTransformation$CropType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/f<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/bumptech/glide/load/engine/a/c;

.field private b:I

.field private c:I

.field private d:Ljp/wasabeef/glide/transformations/CropTransformation$CropType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-static {p1}, Lcom/bumptech/glide/g;->a(Landroid/content/Context;)Lcom/bumptech/glide/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/g;->a()Lcom/bumptech/glide/load/engine/a/c;

    move-result-object p1

    invoke-direct {p0, p1}, Ljp/wasabeef/glide/transformations/CropTransformation;-><init>(Lcom/bumptech/glide/load/engine/a/c;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0, v0}, Ljp/wasabeef/glide/transformations/CropTransformation;-><init>(Lcom/bumptech/glide/load/engine/a/c;II)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/c;II)V
    .locals 1

    .line 56
    sget-object v0, Ljp/wasabeef/glide/transformations/CropTransformation$CropType;->CENTER:Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    invoke-direct {p0, p1, p2, p3, v0}, Ljp/wasabeef/glide/transformations/CropTransformation;-><init>(Lcom/bumptech/glide/load/engine/a/c;IILjp/wasabeef/glide/transformations/CropTransformation$CropType;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/c;IILjp/wasabeef/glide/transformations/CropTransformation$CropType;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Ljp/wasabeef/glide/transformations/CropTransformation$CropType;->CENTER:Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    iput-object v0, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->d:Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    .line 64
    iput-object p1, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->a:Lcom/bumptech/glide/load/engine/a/c;

    .line 65
    iput p2, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->b:I

    .line 66
    iput p3, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->c:I

    .line 67
    iput-object p4, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->d:Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    return-void
.end method

.method private a(F)F
    .locals 2

    .line 105
    sget-object v0, Ljp/wasabeef/glide/transformations/CropTransformation$1;->a:[I

    iget-object v1, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->d:Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    invoke-virtual {v1}, Ljp/wasabeef/glide/transformations/CropTransformation$CropType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return v1

    .line 111
    :pswitch_0
    iget v0, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->c:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    return v0

    .line 109
    :pswitch_1
    iget v0, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->c:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    return v0

    :pswitch_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/j;II)Lcom/bumptech/glide/load/engine/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/j<",
            "Landroid/graphics/Bitmap;",
            ">;II)",
            "Lcom/bumptech/glide/load/engine/j<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/j;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 73
    iget p2, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->b:I

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    goto :goto_0

    :cond_0
    iget p2, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->b:I

    :goto_0
    iput p2, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->b:I

    .line 74
    iget p2, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->c:I

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    goto :goto_1

    :cond_1
    iget p2, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->c:I

    :goto_1
    iput p2, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->c:I

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    goto :goto_2

    :cond_2
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 78
    :goto_2
    iget-object p3, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->a:Lcom/bumptech/glide/load/engine/a/c;

    iget v0, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->b:I

    iget v1, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->c:I

    invoke-interface {p3, v0, v1, p2}, Lcom/bumptech/glide/load/engine/a/c;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-nez p3, :cond_3

    .line 80
    iget p3, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->b:I

    iget v0, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->c:I

    invoke-static {p3, v0, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 83
    :cond_3
    iget p2, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->b:I

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 84
    iget v0, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->c:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 85
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p2, v1

    .line 89
    iget v1, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->b:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 90
    invoke-direct {p0, p2}, Ljp/wasabeef/glide/transformations/CropTransformation;->a(F)F

    move-result v2

    .line 91
    new-instance v3, Landroid/graphics/RectF;

    add-float/2addr v0, v1

    add-float/2addr p2, v2

    invoke-direct {v3, v1, v2, v0, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 93
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p2, p1, v0, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 96
    iget-object p1, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->a:Lcom/bumptech/glide/load/engine/a/c;

    invoke-static {p3, p1}, Lcom/bumptech/glide/load/resource/bitmap/c;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/a/c;)Lcom/bumptech/glide/load/resource/bitmap/c;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CropTransformation(width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cropType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljp/wasabeef/glide/transformations/CropTransformation;->d:Ljp/wasabeef/glide/transformations/CropTransformation$CropType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
