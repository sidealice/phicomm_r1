.class public Lcom/phicomm/speaker/views/LoadingView;
.super Landroid/widget/FrameLayout;
.source "LoadingView.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/graphics/drawable/AnimationDrawable;

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

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/views/LoadingView;->a(Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcom/phicomm/speaker/views/LoadingView;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00e8

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090107

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/phicomm/speaker/views/LoadingView;->a:Landroid/widget/ImageView;

    const v1, 0x7f09029d

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/phicomm/speaker/views/LoadingView;->b:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcom/phicomm/speaker/views/LoadingView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/phicomm/speaker/views/LoadingView;->c:Landroid/graphics/drawable/AnimationDrawable;

    .line 42
    iget-object v0, p0, Lcom/phicomm/speaker/views/LoadingView;->c:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/views/LoadingView;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/phicomm/speaker/views/LoadingView;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/LoadingView;->setLoadingHint(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/phicomm/speaker/R$styleable;->phi:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/views/LoadingView;->d:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/phicomm/speaker/views/LoadingView;->a:Landroid/widget/ImageView;

    invoke-static {v0, p1, p2}, Lcom/phicomm/speaker/f/ad;->a(Landroid/view/View;II)V

    return-void
.end method

.method public setLoadingHint(Ljava/lang/String;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/views/LoadingView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLoadingHintVisibility(I)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/phicomm/speaker/views/LoadingView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
