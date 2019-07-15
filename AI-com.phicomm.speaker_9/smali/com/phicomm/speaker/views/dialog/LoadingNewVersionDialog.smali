.class public Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;
.super Landroid/app/Dialog;
.source "LoadingNewVersionDialog.java"


# instance fields
.field a:Landroid/os/Handler;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/animation/ObjectAnimator;

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;->a:Landroid/os/Handler;

    .line 28
    new-instance p1, Lcom/phicomm/speaker/views/dialog/a;

    invoke-direct {p1, p0}, Lcom/phicomm/speaker/views/dialog/a;-><init>(Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;)V

    iput-object p1, p0, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;->d:Ljava/lang/Runnable;

    .line 36
    invoke-direct {p0}, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    const/4 v0, 0x1

    .line 40
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;->requestWindowFeature(I)Z

    .line 41
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0b0083

    .line 42
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;->setContentView(I)V

    .line 43
    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;->setCanceledOnTouchOutside(Z)V

    .line 44
    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;->setCancelable(Z)V

    const v0, 0x7f090107

    .line 45
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;->b:Landroid/widget/ImageView;

    .line 46
    invoke-direct {p0}, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;->c()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;->c:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private c()Landroid/animation/ObjectAnimator;
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;->b:Landroid/widget/ImageView;

    const-string v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 57
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, -0x1

    .line 58
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private d()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private e()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    return-void
.end method


# virtual methods
.method final synthetic a()V
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 86
    invoke-direct {p0}, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;->e()V

    .line 87
    iget-object v0, p0, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public show()V
    .locals 4

    .line 79
    invoke-direct {p0}, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;->d()V

    .line 80
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 81
    iget-object v0, p0, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/views/dialog/LoadingNewVersionDialog;->d:Ljava/lang/Runnable;

    sget-wide v2, Lcom/phicomm/speaker/views/LoadingDialog;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
