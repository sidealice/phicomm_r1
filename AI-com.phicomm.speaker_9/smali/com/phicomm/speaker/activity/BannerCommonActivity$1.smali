.class Lcom/phicomm/speaker/activity/BannerCommonActivity$1;
.super Lcom/bumptech/glide/f/b/g;
.source "BannerCommonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/BannerCommonActivity;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/f/b/g<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/BannerCommonActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/BannerCommonActivity;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/phicomm/speaker/activity/BannerCommonActivity$1;->a:Lcom/phicomm/speaker/activity/BannerCommonActivity;

    invoke-direct {p0}, Lcom/bumptech/glide/f/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/f/a/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/f/a/c<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 74
    iget-object p2, p0, Lcom/phicomm/speaker/activity/BannerCommonActivity$1;->a:Lcom/phicomm/speaker/activity/BannerCommonActivity;

    invoke-static {p2}, Lcom/phicomm/speaker/f/ad;->a(Landroid/app/Activity;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/e;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 75
    invoke-static {p1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->bitmap(Landroid/graphics/Bitmap;)Lcom/davemorrissey/labs/subscaleview/ImageSource;

    move-result-object p1

    .line 76
    iget-object p2, p0, Lcom/phicomm/speaker/activity/BannerCommonActivity$1;->a:Lcom/phicomm/speaker/activity/BannerCommonActivity;

    iget-object p2, p2, Lcom/phicomm/speaker/activity/BannerCommonActivity;->imageView:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    new-instance v0, Lcom/davemorrissey/labs/subscaleview/ImageViewState;

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/davemorrissey/labs/subscaleview/ImageViewState;-><init>(FLandroid/graphics/PointF;I)V

    invoke-virtual {p2, p1, v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/davemorrissey/labs/subscaleview/ImageSource;Lcom/davemorrissey/labs/subscaleview/ImageViewState;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/f/a/c;)V
    .locals 0

    .line 70
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/activity/BannerCommonActivity$1;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/f/a/c;)V

    return-void
.end method
