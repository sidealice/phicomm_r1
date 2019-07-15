.class public Lcom/phicomm/speaker/views/clipview/ClipImageLayout;
.super Landroid/widget/RelativeLayout;
.source "ClipImageLayout.java"


# instance fields
.field private a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

.field private b:Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;

.field private c:I

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x14

    .line 21
    iput p2, p0, Lcom/phicomm/speaker/views/clipview/ClipImageLayout;->c:I

    .line 27
    iput-object p1, p0, Lcom/phicomm/speaker/views/clipview/ClipImageLayout;->d:Landroid/content/Context;

    .line 29
    new-instance p2, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    invoke-direct {p2, p1}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/phicomm/speaker/views/clipview/ClipImageLayout;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    .line 30
    new-instance p2, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;

    invoke-direct {p2, p1}, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/phicomm/speaker/views/clipview/ClipImageLayout;->b:Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;

    .line 32
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 36
    iget-object p2, p0, Lcom/phicomm/speaker/views/clipview/ClipImageLayout;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    invoke-virtual {p0, p2, p1}, Lcom/phicomm/speaker/views/clipview/ClipImageLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object p2, p0, Lcom/phicomm/speaker/views/clipview/ClipImageLayout;->b:Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;

    invoke-virtual {p0, p2, p1}, Lcom/phicomm/speaker/views/clipview/ClipImageLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    iget p1, p0, Lcom/phicomm/speaker/views/clipview/ClipImageLayout;->c:I

    int-to-float p1, p1

    .line 42
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/clipview/ClipImageLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 43
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 v0, 0x1

    .line 41
    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/phicomm/speaker/views/clipview/ClipImageLayout;->c:I

    .line 44
    iget-object p1, p0, Lcom/phicomm/speaker/views/clipview/ClipImageLayout;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    iget p2, p0, Lcom/phicomm/speaker/views/clipview/ClipImageLayout;->c:I

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->setHorizontalPadding(I)V

    .line 45
    iget-object p1, p0, Lcom/phicomm/speaker/views/clipview/ClipImageLayout;->b:Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;

    iget p2, p0, Lcom/phicomm/speaker/views/clipview/ClipImageLayout;->c:I

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->setHorizontalPadding(I)V

    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/views/clipview/ClipImageLayout;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->b()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public setHorizontalPadding(I)V
    .locals 1

    .line 54
    iput p1, p0, Lcom/phicomm/speaker/views/clipview/ClipImageLayout;->c:I

    .line 55
    iget-object v0, p0, Lcom/phicomm/speaker/views/clipview/ClipImageLayout;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->setHorizontalPadding(I)V

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/views/clipview/ClipImageLayout;->b:Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/clipview/ClipImageBorderView;->setHorizontalPadding(I)V

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 1

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/views/clipview/ClipImageLayout;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/manager/imageloader/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/views/clipview/ClipImageLayout;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/d;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    :cond_0
    return-void
.end method
