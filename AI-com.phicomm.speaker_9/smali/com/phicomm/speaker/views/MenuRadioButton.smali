.class public Lcom/phicomm/speaker/views/MenuRadioButton;
.super Landroid/widget/FrameLayout;
.source "MenuRadioButton.java"


# instance fields
.field private a:Landroid/widget/RadioButton;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0}, Lcom/phicomm/speaker/views/MenuRadioButton;->a()V

    .line 36
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/views/MenuRadioButton;->a(Landroid/util/AttributeSet;)V

    .line 37
    iget-object p1, p0, Lcom/phicomm/speaker/views/MenuRadioButton;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/MenuRadioButton;->setRb_icon(Landroid/graphics/drawable/Drawable;)V

    .line 38
    iget-object p1, p0, Lcom/phicomm/speaker/views/MenuRadioButton;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/MenuRadioButton;->setRb_txt(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 42
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/MenuRadioButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00e9

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901bf

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/phicomm/speaker/views/MenuRadioButton;->a:Landroid/widget/RadioButton;

    .line 45
    iget-object v1, p0, Lcom/phicomm/speaker/views/MenuRadioButton;->a:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setSaveEnabled(Z)V

    const v1, 0x7f090100

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/phicomm/speaker/views/MenuRadioButton;->b:Landroid/widget/ImageView;

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/MenuRadioButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/phicomm/speaker/R$styleable;->MenuRadioButton:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/views/MenuRadioButton;->c:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/views/MenuRadioButton;->d:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 110
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 111
    iget-object p1, p0, Lcom/phicomm/speaker/views/MenuRadioButton;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 112
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/MenuRadioButton;->getMeasuredWidth()I

    move-result p2

    iget-object v0, p0, Lcom/phicomm/speaker/views/MenuRadioButton;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    add-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 113
    iget-object p2, p0, Lcom/phicomm/speaker/views/MenuRadioButton;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/MenuRadioButton;->invalidate()V

    return-void
.end method

.method public setHintDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/phicomm/speaker/views/MenuRadioButton;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 119
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/phicomm/speaker/views/MenuRadioButton;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRb_icon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 58
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/views/MenuRadioButton;->a:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRb_txt(Ljava/lang/CharSequence;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/views/MenuRadioButton;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 125
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 126
    iget-object v0, p0, Lcom/phicomm/speaker/views/MenuRadioButton;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setSelected(Z)V

    return-void
.end method
