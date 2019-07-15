.class public Lcom/youth/banner/transformer/FlipVerticalTransformer;
.super Lcom/youth/banner/transformer/ABaseTransformer;
.source "FlipVerticalTransformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/youth/banner/transformer/ABaseTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPostTransform(Landroid/view/View;F)V
    .locals 1

    .line 35
    invoke-super {p0, p1, p2}, Lcom/youth/banner/transformer/ABaseTransformer;->onPostTransform(Landroid/view/View;F)V

    const/high16 v0, -0x41000000    # -0.5f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onTransform(Landroid/view/View;F)V
    .locals 2

    const/high16 v0, -0x3ccc0000    # -180.0f

    mul-float/2addr v0, p2

    const/high16 p2, 0x42b40000    # 90.0f

    cmpl-float p2, v0, p2

    if-gtz p2, :cond_1

    const/high16 p2, -0x3d4c0000    # -90.0f

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 27
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    return-void
.end method
