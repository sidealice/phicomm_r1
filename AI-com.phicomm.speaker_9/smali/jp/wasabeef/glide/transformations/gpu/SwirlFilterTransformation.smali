.class public Ljp/wasabeef/glide/transformations/gpu/SwirlFilterTransformation;
.super Ljp/wasabeef/glide/transformations/gpu/a;
.source "SwirlFilterTransformation.java"


# instance fields
.field private a:F

.field private b:F

.field private c:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-static {p1}, Lcom/bumptech/glide/g;->a(Landroid/content/Context;)Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/g;->a()Lcom/bumptech/glide/load/engine/a/c;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljp/wasabeef/glide/transformations/gpu/SwirlFilterTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/c;)V
    .locals 6

    .line 39
    new-instance v5, Landroid/graphics/PointF;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {v5, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Ljp/wasabeef/glide/transformations/gpu/SwirlFilterTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/c;FFLandroid/graphics/PointF;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/c;FFLandroid/graphics/PointF;)V
    .locals 1

    .line 53
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageSwirlFilter;

    invoke-direct {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageSwirlFilter;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Ljp/wasabeef/glide/transformations/gpu/a;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/c;Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 54
    iput p3, p0, Ljp/wasabeef/glide/transformations/gpu/SwirlFilterTransformation;->a:F

    .line 55
    iput p4, p0, Ljp/wasabeef/glide/transformations/gpu/SwirlFilterTransformation;->b:F

    .line 56
    iput-object p5, p0, Ljp/wasabeef/glide/transformations/gpu/SwirlFilterTransformation;->c:Landroid/graphics/PointF;

    .line 57
    invoke-virtual {p0}, Ljp/wasabeef/glide/transformations/gpu/SwirlFilterTransformation;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljp/co/cyberagent/android/gpuimage/GPUImageSwirlFilter;

    .line 58
    iget p2, p0, Ljp/wasabeef/glide/transformations/gpu/SwirlFilterTransformation;->a:F

    invoke-virtual {p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageSwirlFilter;->setRadius(F)V

    .line 59
    iget p2, p0, Ljp/wasabeef/glide/transformations/gpu/SwirlFilterTransformation;->b:F

    invoke-virtual {p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageSwirlFilter;->setAngle(F)V

    .line 60
    iget-object p2, p0, Ljp/wasabeef/glide/transformations/gpu/SwirlFilterTransformation;->c:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageSwirlFilter;->setCenter(Landroid/graphics/PointF;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SwirlFilterTransformation(radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljp/wasabeef/glide/transformations/gpu/SwirlFilterTransformation;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",angle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljp/wasabeef/glide/transformations/gpu/SwirlFilterTransformation;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",center="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljp/wasabeef/glide/transformations/gpu/SwirlFilterTransformation;->c:Landroid/graphics/PointF;

    .line 65
    invoke-virtual {v1}, Landroid/graphics/PointF;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
