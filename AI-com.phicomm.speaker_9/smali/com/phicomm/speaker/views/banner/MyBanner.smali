.class public Lcom/phicomm/speaker/views/banner/MyBanner;
.super Lcom/youth/banner/Banner;
.source "MyBanner.java"


# instance fields
.field private a:Lcom/phicomm/speaker/presenter/b;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/views/banner/MyBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/phicomm/speaker/views/banner/MyBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/youth/banner/Banner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0}, Lcom/phicomm/speaker/views/banner/MyBanner;->a()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/views/banner/MyBanner;)Landroid/app/Activity;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/phicomm/speaker/views/banner/MyBanner;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 59
    new-instance v0, Lcom/phicomm/speaker/presenter/b;

    new-instance v1, Lcom/phicomm/speaker/views/banner/MyBanner$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/views/banner/MyBanner$1;-><init>(Lcom/phicomm/speaker/views/banner/MyBanner;)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/phicomm/speaker/presenter/b;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/b;)V

    iput-object v0, p0, Lcom/phicomm/speaker/views/banner/MyBanner;->a:Lcom/phicomm/speaker/presenter/b;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)Lcom/phicomm/speaker/views/banner/MyBanner;
    .locals 2

    .line 46
    iput-object p1, p0, Lcom/phicomm/speaker/views/banner/MyBanner;->b:Landroid/app/Activity;

    .line 47
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/banner/MyBanner;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, p1

    const v1, 0x3f0f5c29    # 0.56f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 50
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/views/banner/MyBanner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/banner/MyBanner;->setImages(Ljava/util/List;)Lcom/youth/banner/Banner;

    move-result-object p1

    const/16 p2, 0x1388

    invoke-virtual {p1, p2}, Lcom/youth/banner/Banner;->setDelayTime(I)Lcom/youth/banner/Banner;

    move-result-object p1

    new-instance p2, Lcom/phicomm/speaker/views/banner/BannerGlideImageLoader;

    invoke-direct {p2}, Lcom/phicomm/speaker/views/banner/BannerGlideImageLoader;-><init>()V

    invoke-virtual {p1, p2}, Lcom/youth/banner/Banner;->setImageLoader(Lcom/youth/banner/loader/ImageLoaderInterface;)Lcom/youth/banner/Banner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/youth/banner/Banner;->start()Lcom/youth/banner/Banner;

    return-object p0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/views/banner/MyBanner;->a:Lcom/phicomm/speaker/presenter/b;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/b;->a(Ljava/lang/String;)V

    return-void
.end method
