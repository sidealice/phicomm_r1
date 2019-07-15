.class public Lcom/youth/banner/transformer/ZoomInTransformer;
.super Lcom/youth/banner/transformer/ABaseTransformer;
.source "ZoomInTransformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/youth/banner/transformer/ABaseTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransform(Landroid/view/View;F)V
    .locals 5

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    add-float v1, p2, v2

    goto :goto_0

    :cond_0
    sub-float v1, v2, p2

    .line 25
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 26
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 27
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v3, p2, v3

    if-ltz v3, :cond_2

    cmpl-float p2, p2, v2

    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    sub-float/2addr v1, v2

    sub-float v0, v2, v1

    .line 30
    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
