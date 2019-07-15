.class public Lcom/phicomm/speaker/views/mine/MineTabView;
.super Landroid/widget/LinearLayout;
.source "MineTabView.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/views/mine/MineTabView;->a(Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0}, Lcom/phicomm/speaker/views/mine/MineTabView;->a()V

    return-void
.end method

.method private a()V
    .locals 5

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/mine/MineTabView;->setOrientation(I)V

    const/16 v0, 0x11

    .line 36
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/mine/MineTabView;->setGravity(I)V

    .line 37
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/mine/MineTabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/views/mine/MineTabView;->a:Landroid/widget/ImageView;

    .line 38
    iget-object v0, p0, Lcom/phicomm/speaker/views/mine/MineTabView;->a:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/mine/MineTabView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42340000    # 45.0f

    invoke-static {v2, v3}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/mine/MineTabView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/mine/MineTabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/views/mine/MineTabView;->b:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/phicomm/speaker/views/mine/MineTabView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/mine/MineTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    iget-object v0, p0, Lcom/phicomm/speaker/views/mine/MineTabView;->b:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 42
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/mine/MineTabView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 44
    iget-object v1, p0, Lcom/phicomm/speaker/views/mine/MineTabView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v0, p0, Lcom/phicomm/speaker/views/mine/MineTabView;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/mine/MineTabView;->addView(Landroid/view/View;)V

    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/views/mine/MineTabView;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/mine/MineTabView;->addView(Landroid/view/View;)V

    .line 47
    iget-object v0, p0, Lcom/phicomm/speaker/views/mine/MineTabView;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/phicomm/speaker/views/mine/MineTabView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    iget-object v0, p0, Lcom/phicomm/speaker/views/mine/MineTabView;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/views/mine/MineTabView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/mine/MineTabView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/phicomm/speaker/R$styleable;->phi:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/views/mine/MineTabView;->c:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/views/mine/MineTabView;->d:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
