.class public Lcom/youth/banner/transformer/RotateUpTransformer;
.super Lcom/youth/banner/transformer/ABaseTransformer;
.source "RotateUpTransformer.java"


# static fields
.field private static final ROT_MOD:F = -15.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/youth/banner/transformer/ABaseTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method protected isPagingEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onTransform(Landroid/view/View;F)V
    .locals 2

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, -0x3e900000    # -15.0f

    mul-float/2addr v1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr v0, p2

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    const/4 p2, 0x0

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 33
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
