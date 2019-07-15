.class public Lin/srain/cube/views/ptr/b/b;
.super Ljava/lang/Object;
.source "PtrLocalDisplay.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:F

.field public static d:I

.field public static e:I


# direct methods
.method public static a(F)I
    .locals 1

    .line 31
    sget v0, Lin/srain/cube/views/ptr/b/b;->c:F

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 20
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 21
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 22
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 23
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput p0, Lin/srain/cube/views/ptr/b/b;->a:I

    .line 24
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput p0, Lin/srain/cube/views/ptr/b/b;->b:I

    .line 25
    iget p0, v0, Landroid/util/DisplayMetrics;->density:F

    sput p0, Lin/srain/cube/views/ptr/b/b;->c:F

    .line 26
    sget p0, Lin/srain/cube/views/ptr/b/b;->a:I

    int-to-float p0, p0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, v1

    float-to-int p0, p0

    sput p0, Lin/srain/cube/views/ptr/b/b;->d:I

    .line 27
    sget p0, Lin/srain/cube/views/ptr/b/b;->b:I

    int-to-float p0, p0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, v0

    float-to-int p0, p0

    sput p0, Lin/srain/cube/views/ptr/b/b;->e:I

    return-void
.end method
