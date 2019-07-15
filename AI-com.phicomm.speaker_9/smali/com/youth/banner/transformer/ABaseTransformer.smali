.class public abstract Lcom/youth/banner/transformer/ABaseTransformer;
.super Ljava/lang/Object;
.source "ABaseTransformer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final min(FF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method


# virtual methods
.method protected hideOffscreenPages()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isPagingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onPostTransform(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method protected onPreTransform(Landroid/view/View;F)V
    .locals 4

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    .line 89
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    .line 90
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 91
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 92
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 93
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 94
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 95
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 96
    invoke-virtual {p0}, Lcom/youth/banner/transformer/ABaseTransformer;->isPagingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    neg-float v0, v0

    mul-float/2addr v0, p2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 98
    invoke-virtual {p0}, Lcom/youth/banner/transformer/ABaseTransformer;->hideOffscreenPages()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p2, v0

    if-lez v0, :cond_2

    cmpl-float p2, p2, v2

    if-ltz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 99
    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 103
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_2
    return-void
.end method

.method protected abstract onTransform(Landroid/view/View;F)V
.end method

.method public transformPage(Landroid/view/View;F)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/youth/banner/transformer/ABaseTransformer;->onPreTransform(Landroid/view/View;F)V

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/youth/banner/transformer/ABaseTransformer;->onTransform(Landroid/view/View;F)V

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/youth/banner/transformer/ABaseTransformer;->onPostTransform(Landroid/view/View;F)V

    return-void
.end method
