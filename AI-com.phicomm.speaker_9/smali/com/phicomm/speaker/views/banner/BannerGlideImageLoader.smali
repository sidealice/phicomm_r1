.class public Lcom/phicomm/speaker/views/banner/BannerGlideImageLoader;
.super Lcom/youth/banner/loader/ImageLoader;
.source "BannerGlideImageLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/youth/banner/loader/ImageLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic displayImage(Landroid/content/Context;Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 15
    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/phicomm/speaker/views/banner/BannerGlideImageLoader;->displayImage(Landroid/content/Context;Ljava/lang/Object;Landroid/widget/ImageView;)V

    return-void
.end method

.method public displayImage(Landroid/content/Context;Ljava/lang/Object;Landroid/widget/ImageView;)V
    .locals 1

    .line 27
    instance-of v0, p2, Lcom/phicomm/speaker/bean/BannerBean;

    if-eqz v0, :cond_0

    .line 28
    check-cast p2, Lcom/phicomm/speaker/bean/BannerBean;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p1

    .line 30
    invoke-virtual {p2}, Lcom/phicomm/speaker/bean/BannerBean;->getPic_url()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object p1

    .line 31
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/d;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p1

    .line 34
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Object;)Lcom/bumptech/glide/d;

    move-result-object p1

    .line 35
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/d;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    :goto_0
    return-void
.end method
