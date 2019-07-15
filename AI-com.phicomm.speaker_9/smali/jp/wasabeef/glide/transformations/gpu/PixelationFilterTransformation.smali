.class public Ljp/wasabeef/glide/transformations/gpu/PixelationFilterTransformation;
.super Ljp/wasabeef/glide/transformations/gpu/a;
.source "PixelationFilterTransformation.java"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-static {p1}, Lcom/bumptech/glide/g;->a(Landroid/content/Context;)Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/g;->a()Lcom/bumptech/glide/load/engine/a/c;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljp/wasabeef/glide/transformations/gpu/PixelationFilterTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/c;)V
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    .line 38
    invoke-direct {p0, p1, p2, v0}, Ljp/wasabeef/glide/transformations/gpu/PixelationFilterTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/c;F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/c;F)V
    .locals 1

    .line 46
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImagePixelationFilter;

    invoke-direct {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImagePixelationFilter;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Ljp/wasabeef/glide/transformations/gpu/a;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/c;Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 47
    iput p3, p0, Ljp/wasabeef/glide/transformations/gpu/PixelationFilterTransformation;->a:F

    .line 48
    invoke-virtual {p0}, Ljp/wasabeef/glide/transformations/gpu/PixelationFilterTransformation;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljp/co/cyberagent/android/gpuimage/GPUImagePixelationFilter;

    .line 49
    iget p2, p0, Ljp/wasabeef/glide/transformations/gpu/PixelationFilterTransformation;->a:F

    invoke-virtual {p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImagePixelationFilter;->setPixel(F)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PixelationFilterTransformation(pixel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljp/wasabeef/glide/transformations/gpu/PixelationFilterTransformation;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
