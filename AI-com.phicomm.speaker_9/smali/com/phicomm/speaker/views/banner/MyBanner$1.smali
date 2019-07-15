.class Lcom/phicomm/speaker/views/banner/MyBanner$1;
.super Lcom/phicomm/speaker/presenter/b/b;
.source "MyBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/views/banner/MyBanner;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/views/banner/MyBanner;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/banner/MyBanner;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/phicomm/speaker/views/banner/MyBanner$1;->a:Lcom/phicomm/speaker/views/banner/MyBanner;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2}, Lcom/phicomm/speaker/presenter/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/phicomm/speaker/views/banner/MyBanner$1;->a:Lcom/phicomm/speaker/views/banner/MyBanner;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/banner/MyBanner;->setImages(Ljava/util/List;)Lcom/youth/banner/Banner;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setDelayTime(I)Lcom/youth/banner/Banner;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/views/banner/BannerGlideImageLoader;

    invoke-direct {v1}, Lcom/phicomm/speaker/views/banner/BannerGlideImageLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setImageLoader(Lcom/youth/banner/loader/ImageLoaderInterface;)Lcom/youth/banner/Banner;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/presenter/a/a;

    iget-object v2, p0, Lcom/phicomm/speaker/views/banner/MyBanner$1;->a:Lcom/phicomm/speaker/views/banner/MyBanner;

    invoke-static {v2}, Lcom/phicomm/speaker/views/banner/MyBanner;->a(Lcom/phicomm/speaker/views/banner/MyBanner;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/phicomm/speaker/presenter/a/a;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setOnBannerListener(Lcom/youth/banner/listener/OnBannerListener;)Lcom/youth/banner/Banner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/youth/banner/Banner;->start()Lcom/youth/banner/Banner;

    return-void
.end method
