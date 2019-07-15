.class public Lcom/youth/banner/transformer/ZoomOutTranformer;
.super Lcom/youth/banner/transformer/ABaseTransformer;
.source "ZoomOutTranformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/youth/banner/transformer/ABaseTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransform(Landroid/view/View;F)V
    .locals 4

    .line 25
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v3, p2, v2

    if-ltz v3, :cond_1

    cmpl-float v3, p2, v1

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr v0, v1

    sub-float/2addr v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 30
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    cmpl-float p2, p2, v2

    if-nez p2, :cond_2

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    mul-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    return-void
.end method
