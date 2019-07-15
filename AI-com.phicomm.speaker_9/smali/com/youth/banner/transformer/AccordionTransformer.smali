.class public Lcom/youth/banner/transformer/AccordionTransformer;
.super Lcom/youth/banner/transformer/ABaseTransformer;
.source "AccordionTransformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/youth/banner/transformer/ABaseTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransform(Landroid/view/View;F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    move v1, v0

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    cmpg-float v0, p2, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez v0, :cond_1

    add-float/2addr v1, p2

    goto :goto_1

    :cond_1
    sub-float/2addr v1, p2

    .line 26
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method
