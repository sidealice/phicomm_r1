.class public Lcom/phicomm/speaker/activity/BannerCommonActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "BannerCommonActivity.java"


# instance fields
.field imageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900de
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/phicomm/speaker/activity/BannerCommonActivity;->imageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    .line 55
    iget-object v0, p0, Lcom/phicomm/speaker/activity/BannerCommonActivity;->imageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setMinScale(F)V

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/activity/BannerCommonActivity;->imageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setZoomEnabled(Z)V

    .line 69
    invoke-static {p0}, Lcom/bumptech/glide/g;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/h;

    move-result-object v0

    .line 70
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/d;->h()Lcom/bumptech/glide/b;

    move-result-object p1

    new-instance v0, Lcom/phicomm/speaker/activity/BannerCommonActivity$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/activity/BannerCommonActivity$1;-><init>(Lcom/phicomm/speaker/activity/BannerCommonActivity;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/b;->a(Lcom/bumptech/glide/f/b/j;)Lcom/bumptech/glide/f/b/j;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/BannerCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/BannerCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imageurl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/BannerCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/BannerCommonActivity;->b(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/BannerCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imageurl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/BannerCommonActivity;->a(Ljava/lang/String;)V

    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/BannerCommonActivity;->finish()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0021

    .line 39
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/BannerCommonActivity;->setContentView(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 83
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/activity/BannerCommonActivity;->imageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/phicomm/speaker/activity/BannerCommonActivity;->imageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->recycle()V

    :cond_0
    return-void
.end method
