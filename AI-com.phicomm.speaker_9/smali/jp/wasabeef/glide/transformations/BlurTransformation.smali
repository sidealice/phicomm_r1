.class public Ljp/wasabeef/glide/transformations/BlurTransformation;
.super Ljava/lang/Object;
.source "BlurTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/f<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static a:I = 0x19

.field private static b:I = 0x1


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/bumptech/glide/load/engine/a/c;

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 45
    invoke-static {p1}, Lcom/bumptech/glide/g;->a(Landroid/content/Context;)Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/g;->a()Lcom/bumptech/glide/load/engine/a/c;

    move-result-object v0

    sget v1, Ljp/wasabeef/glide/transformations/BlurTransformation;->a:I

    sget v2, Ljp/wasabeef/glide/transformations/BlurTransformation;->b:I

    invoke-direct {p0, p1, v0, v1, v2}, Ljp/wasabeef/glide/transformations/BlurTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/c;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/c;II)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->c:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->d:Lcom/bumptech/glide/load/engine/a/c;

    .line 67
    iput p3, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->e:I

    .line 68
    iput p4, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->f:I

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/j;II)Lcom/bumptech/glide/load/engine/j;
    .locals 3
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

    .line 73
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/j;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    .line 77
    iget v0, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->f:I

    div-int/2addr p2, v0

    .line 78
    iget v0, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->f:I

    div-int/2addr p3, v0

    .line 80
    iget-object v0, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->d:Lcom/bumptech/glide/load/engine/a/c;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, p2, p3, v1}, Lcom/bumptech/glide/load/engine/a/c;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 85
    :cond_0
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 86
    iget p3, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->f:I

    int-to-float p3, p3

    const/high16 v1, 0x3f800000    # 1.0f

    div-float p3, v1, p3

    iget v2, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->f:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p2, p3, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 87
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x2

    .line 88
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setFlags(I)V

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p2, p1, v1, v1, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 91
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x12

    const/4 p3, 0x1

    if-lt p1, p2, :cond_1

    .line 93
    :try_start_0
    iget-object p1, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->c:Landroid/content/Context;

    iget p2, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->e:I

    invoke-static {p1, v0, p2}, Ljp/wasabeef/glide/transformations/a/b;->a(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    iget p1, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->e:I

    invoke-static {v0, p1, p3}, Ljp/wasabeef/glide/transformations/a/a;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 98
    :cond_1
    iget p1, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->e:I

    invoke-static {v0, p1, p3}, Ljp/wasabeef/glide/transformations/a/a;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 101
    :goto_0
    iget-object p2, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->d:Lcom/bumptech/glide/load/engine/a/c;

    invoke-static {p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/c;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/a/c;)Lcom/bumptech/glide/load/resource/bitmap/c;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlurTransformation(radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sampling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
