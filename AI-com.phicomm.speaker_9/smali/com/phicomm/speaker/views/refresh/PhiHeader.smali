.class public Lcom/phicomm/speaker/views/refresh/PhiHeader;
.super Landroid/widget/RelativeLayout;
.source "PhiHeader.java"

# interfaces
.implements Lin/srain/cube/views/ptr/e;


# instance fields
.field private a:Landroid/animation/ObjectAnimator;

.field private b:J

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/phicomm/speaker/views/refresh/PhiHeader;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 42
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/refresh/PhiHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/views/refresh/PhiHeader;->c:Landroid/widget/ImageView;

    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/views/refresh/PhiHeader;->c:Landroid/widget/ImageView;

    const v1, 0x7f080088

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    const/4 v2, -0x1

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 46
    iget-object v1, p0, Lcom/phicomm/speaker/views/refresh/PhiHeader;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/phicomm/speaker/views/refresh/PhiHeader;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    invoke-direct {p0}, Lcom/phicomm/speaker/views/refresh/PhiHeader;->b()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/views/refresh/PhiHeader;->a:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private b()Landroid/animation/ObjectAnimator;
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/views/refresh/PhiHeader;->c:Landroid/widget/ImageView;

    const-string v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 58
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, -0x1

    .line 59
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private c()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/views/refresh/PhiHeader;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/phicomm/speaker/views/refresh/PhiHeader;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/phicomm/speaker/views/refresh/PhiHeader;->b:J

    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/views/refresh/PhiHeader;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    return-void
.end method

.method private e()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 91
    iput-wide v0, p0, Lcom/phicomm/speaker/views/refresh/PhiHeader;->b:J

    .line 92
    iget-object v0, p0, Lcom/phicomm/speaker/views/refresh/PhiHeader;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    return-void
.end method


# virtual methods
.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/phicomm/speaker/views/refresh/PhiHeader;->e()V

    return-void
.end method

.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;Z)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/phicomm/speaker/views/refresh/PhiHeader;->d()V

    return-void
.end method

.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;ZBLin/srain/cube/views/ptr/a/a;)V
    .locals 0

    return-void
.end method

.method public b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0

    return-void
.end method

.method public c(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/phicomm/speaker/views/refresh/PhiHeader;->c()V

    return-void
.end method
