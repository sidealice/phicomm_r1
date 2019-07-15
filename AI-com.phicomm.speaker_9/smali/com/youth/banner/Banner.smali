.class public Lcom/youth/banner/Banner;
.super Landroid/widget/FrameLayout;
.source "Banner.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youth/banner/Banner$BannerPagerAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/youth/banner/Banner$BannerPagerAdapter;

.field private bannerBackgroundImage:I

.field private bannerDefaultImage:Landroid/widget/ImageView;

.field private bannerListener:Lcom/youth/banner/listener/OnBannerClickListener;

.field private bannerStyle:I

.field private bannerTitle:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private count:I

.field private currentItem:I

.field private delayTime:I

.field private dm:Landroid/util/DisplayMetrics;

.field private gravity:I

.field private handler:Lcom/youth/banner/WeakHandler;

.field private imageLoader:Lcom/youth/banner/loader/ImageLoaderInterface;

.field private imageUrls:Ljava/util/List;

.field private imageViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private indicator:Landroid/widget/LinearLayout;

.field private indicatorImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private indicatorInside:Landroid/widget/LinearLayout;

.field private indicatorSize:I

.field private isAutoPlay:Z

.field private isScroll:Z

.field private lastPosition:I

.field private listener:Lcom/youth/banner/listener/OnBannerListener;

.field private mIndicatorHeight:I

.field private mIndicatorMargin:I

.field private mIndicatorSelectedResId:I

.field private mIndicatorUnselectedResId:I

.field private mIndicatorWidth:I

.field private mLayoutResId:I

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mScroller:Lcom/youth/banner/BannerScroller;

.field private numIndicator:Landroid/widget/TextView;

.field private numIndicatorInside:Landroid/widget/TextView;

.field private scaleType:I

.field private scrollTime:I

.field public tag:Ljava/lang/String;

.field private final task:Ljava/lang/Runnable;

.field private titleBackground:I

.field private titleHeight:I

.field private titleTextColor:I

.field private titleTextSize:I

.field private titleView:Landroid/widget/LinearLayout;

.field private titles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private viewPager:Lcom/youth/banner/view/BannerViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/youth/banner/Banner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, v0}, Lcom/youth/banner/Banner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "banner"

    .line 37
    iput-object p3, p0, Lcom/youth/banner/Banner;->tag:Ljava/lang/String;

    const/4 p3, 0x5

    .line 38
    iput p3, p0, Lcom/youth/banner/Banner;->mIndicatorMargin:I

    const/4 p3, 0x1

    .line 43
    iput p3, p0, Lcom/youth/banner/Banner;->bannerStyle:I

    const/16 v0, 0x7d0

    .line 44
    iput v0, p0, Lcom/youth/banner/Banner;->delayTime:I

    const/16 v0, 0x320

    .line 45
    iput v0, p0, Lcom/youth/banner/Banner;->scrollTime:I

    .line 46
    iput-boolean p3, p0, Lcom/youth/banner/Banner;->isAutoPlay:Z

    .line 47
    iput-boolean p3, p0, Lcom/youth/banner/Banner;->isScroll:Z

    .line 48
    sget v0, Lcom/youth/banner/R$drawable;->gray_radius:I

    iput v0, p0, Lcom/youth/banner/Banner;->mIndicatorSelectedResId:I

    .line 49
    sget v0, Lcom/youth/banner/R$drawable;->white_radius:I

    iput v0, p0, Lcom/youth/banner/Banner;->mIndicatorUnselectedResId:I

    .line 50
    sget v0, Lcom/youth/banner/R$layout;->banner:I

    iput v0, p0, Lcom/youth/banner/Banner;->mLayoutResId:I

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/youth/banner/Banner;->count:I

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/youth/banner/Banner;->gravity:I

    .line 58
    iput p3, p0, Lcom/youth/banner/Banner;->lastPosition:I

    .line 59
    iput p3, p0, Lcom/youth/banner/Banner;->scaleType:I

    .line 77
    new-instance p3, Lcom/youth/banner/WeakHandler;

    invoke-direct {p3}, Lcom/youth/banner/WeakHandler;-><init>()V

    iput-object p3, p0, Lcom/youth/banner/Banner;->handler:Lcom/youth/banner/WeakHandler;

    .line 455
    new-instance p3, Lcom/youth/banner/Banner$1;

    invoke-direct {p3, p0}, Lcom/youth/banner/Banner$1;-><init>(Lcom/youth/banner/Banner;)V

    iput-object p3, p0, Lcom/youth/banner/Banner;->task:Ljava/lang/Runnable;

    .line 89
    iput-object p1, p0, Lcom/youth/banner/Banner;->context:Landroid/content/Context;

    .line 90
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/youth/banner/Banner;->titles:Ljava/util/List;

    .line 91
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/youth/banner/Banner;->imageUrls:Ljava/util/List;

    .line 92
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/youth/banner/Banner;->imageViews:Ljava/util/List;

    .line 93
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/youth/banner/Banner;->indicatorImages:Ljava/util/List;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iput-object p3, p0, Lcom/youth/banner/Banner;->dm:Landroid/util/DisplayMetrics;

    .line 95
    iget-object p3, p0, Lcom/youth/banner/Banner;->dm:Landroid/util/DisplayMetrics;

    iget p3, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p3, p3, 0x50

    iput p3, p0, Lcom/youth/banner/Banner;->indicatorSize:I

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/youth/banner/Banner;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/youth/banner/Banner;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/youth/banner/Banner;->count:I

    return p0
.end method

.method static synthetic access$100(Lcom/youth/banner/Banner;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/youth/banner/Banner;->isAutoPlay:Z

    return p0
.end method

.method static synthetic access$200(Lcom/youth/banner/Banner;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/youth/banner/Banner;->currentItem:I

    return p0
.end method

.method static synthetic access$202(Lcom/youth/banner/Banner;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/youth/banner/Banner;->currentItem:I

    return p1
.end method

.method static synthetic access$300(Lcom/youth/banner/Banner;)Lcom/youth/banner/view/BannerViewPager;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/youth/banner/Banner;->viewPager:Lcom/youth/banner/view/BannerViewPager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/youth/banner/Banner;)Ljava/lang/Runnable;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/youth/banner/Banner;->task:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/youth/banner/Banner;)Lcom/youth/banner/WeakHandler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/youth/banner/Banner;->handler:Lcom/youth/banner/WeakHandler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/youth/banner/Banner;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/youth/banner/Banner;->delayTime:I

    return p0
.end method

.method static synthetic access$700(Lcom/youth/banner/Banner;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/youth/banner/Banner;->imageViews:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/youth/banner/Banner;)Lcom/youth/banner/listener/OnBannerClickListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/youth/banner/Banner;->bannerListener:Lcom/youth/banner/listener/OnBannerClickListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/youth/banner/Banner;)Lcom/youth/banner/listener/OnBannerListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/youth/banner/Banner;->listener:Lcom/youth/banner/listener/OnBannerListener;

    return-object p0
.end method

.method private createIndicator()V
    .locals 5

    .line 401
    iget-object v0, p0, Lcom/youth/banner/Banner;->indicatorImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 402
    iget-object v0, p0, Lcom/youth/banner/Banner;->indicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 403
    iget-object v0, p0, Lcom/youth/banner/Banner;->indicatorInside:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 404
    :goto_0
    iget v1, p0, Lcom/youth/banner/Banner;->count:I

    if-ge v0, v1, :cond_4

    .line 405
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/youth/banner/Banner;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 406
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 407
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/youth/banner/Banner;->mIndicatorWidth:I

    iget v4, p0, Lcom/youth/banner/Banner;->mIndicatorHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 408
    iget v3, p0, Lcom/youth/banner/Banner;->mIndicatorMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 409
    iget v3, p0, Lcom/youth/banner/Banner;->mIndicatorMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    if-nez v0, :cond_0

    .line 411
    iget v3, p0, Lcom/youth/banner/Banner;->mIndicatorSelectedResId:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 413
    :cond_0
    iget v3, p0, Lcom/youth/banner/Banner;->mIndicatorUnselectedResId:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 415
    :goto_1
    iget-object v3, p0, Lcom/youth/banner/Banner;->indicatorImages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    iget v3, p0, Lcom/youth/banner/Banner;->bannerStyle:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/youth/banner/Banner;->bannerStyle:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    goto :goto_2

    .line 419
    :cond_1
    iget v3, p0, Lcom/youth/banner/Banner;->bannerStyle:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 420
    iget-object v3, p0, Lcom/youth/banner/Banner;->indicatorInside:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 418
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/youth/banner/Banner;->indicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private handleTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 119
    :cond_0
    sget-object v0, Lcom/youth/banner/R$styleable;->Banner:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 120
    sget p2, Lcom/youth/banner/R$styleable;->Banner_indicator_width:I

    iget v0, p0, Lcom/youth/banner/Banner;->indicatorSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/youth/banner/Banner;->mIndicatorWidth:I

    .line 121
    sget p2, Lcom/youth/banner/R$styleable;->Banner_indicator_height:I

    iget v0, p0, Lcom/youth/banner/Banner;->indicatorSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/youth/banner/Banner;->mIndicatorHeight:I

    .line 122
    sget p2, Lcom/youth/banner/R$styleable;->Banner_indicator_margin:I

    const/4 v0, 0x5

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/youth/banner/Banner;->mIndicatorMargin:I

    .line 123
    sget p2, Lcom/youth/banner/R$styleable;->Banner_indicator_drawable_selected:I

    sget v0, Lcom/youth/banner/R$drawable;->gray_radius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/youth/banner/Banner;->mIndicatorSelectedResId:I

    .line 124
    sget p2, Lcom/youth/banner/R$styleable;->Banner_indicator_drawable_unselected:I

    sget v0, Lcom/youth/banner/R$drawable;->white_radius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/youth/banner/Banner;->mIndicatorUnselectedResId:I

    .line 125
    sget p2, Lcom/youth/banner/R$styleable;->Banner_image_scale_type:I

    iget v0, p0, Lcom/youth/banner/Banner;->scaleType:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/youth/banner/Banner;->scaleType:I

    .line 126
    sget p2, Lcom/youth/banner/R$styleable;->Banner_delay_time:I

    const/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/youth/banner/Banner;->delayTime:I

    .line 127
    sget p2, Lcom/youth/banner/R$styleable;->Banner_scroll_time:I

    const/16 v0, 0x320

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/youth/banner/Banner;->scrollTime:I

    .line 128
    sget p2, Lcom/youth/banner/R$styleable;->Banner_is_auto_play:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/youth/banner/Banner;->isAutoPlay:Z

    .line 129
    sget p2, Lcom/youth/banner/R$styleable;->Banner_title_background:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/youth/banner/Banner;->titleBackground:I

    .line 130
    sget p2, Lcom/youth/banner/R$styleable;->Banner_title_height:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/youth/banner/Banner;->titleHeight:I

    .line 131
    sget p2, Lcom/youth/banner/R$styleable;->Banner_title_textcolor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/youth/banner/Banner;->titleTextColor:I

    .line 132
    sget p2, Lcom/youth/banner/R$styleable;->Banner_title_textsize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/youth/banner/Banner;->titleTextSize:I

    .line 133
    sget p2, Lcom/youth/banner/R$styleable;->Banner_banner_layout:I

    iget v0, p0, Lcom/youth/banner/Banner;->mLayoutResId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/youth/banner/Banner;->mLayoutResId:I

    .line 134
    sget p2, Lcom/youth/banner/R$styleable;->Banner_banner_default_image:I

    sget v0, Lcom/youth/banner/R$drawable;->no_banner:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/youth/banner/Banner;->bannerBackgroundImage:I

    .line 135
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initImages()V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/youth/banner/Banner;->imageViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 323
    iget v0, p0, Lcom/youth/banner/Banner;->bannerStyle:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/youth/banner/Banner;->bannerStyle:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/youth/banner/Banner;->bannerStyle:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    iget v0, p0, Lcom/youth/banner/Banner;->bannerStyle:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 328
    iget-object v0, p0, Lcom/youth/banner/Banner;->numIndicatorInside:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/youth/banner/Banner;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 329
    :cond_1
    iget v0, p0, Lcom/youth/banner/Banner;->bannerStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 330
    iget-object v0, p0, Lcom/youth/banner/Banner;->numIndicator:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/youth/banner/Banner;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 326
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/youth/banner/Banner;->createIndicator()V

    :cond_3
    :goto_1
    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/youth/banner/Banner;->imageViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/youth/banner/Banner;->handleTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget p2, p0, Lcom/youth/banner/Banner;->mLayoutResId:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 103
    sget p2, Lcom/youth/banner/R$id;->bannerDefaultImage:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/youth/banner/Banner;->bannerDefaultImage:Landroid/widget/ImageView;

    .line 104
    sget p2, Lcom/youth/banner/R$id;->bannerViewPager:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/youth/banner/view/BannerViewPager;

    iput-object p2, p0, Lcom/youth/banner/Banner;->viewPager:Lcom/youth/banner/view/BannerViewPager;

    .line 105
    sget p2, Lcom/youth/banner/R$id;->titleView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/youth/banner/Banner;->titleView:Landroid/widget/LinearLayout;

    .line 106
    sget p2, Lcom/youth/banner/R$id;->circleIndicator:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/youth/banner/Banner;->indicator:Landroid/widget/LinearLayout;

    .line 107
    sget p2, Lcom/youth/banner/R$id;->indicatorInside:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/youth/banner/Banner;->indicatorInside:Landroid/widget/LinearLayout;

    .line 108
    sget p2, Lcom/youth/banner/R$id;->bannerTitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/youth/banner/Banner;->bannerTitle:Landroid/widget/TextView;

    .line 109
    sget p2, Lcom/youth/banner/R$id;->numIndicator:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/youth/banner/Banner;->numIndicator:Landroid/widget/TextView;

    .line 110
    sget p2, Lcom/youth/banner/R$id;->numIndicatorInside:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/youth/banner/Banner;->numIndicatorInside:Landroid/widget/TextView;

    .line 111
    iget-object p1, p0, Lcom/youth/banner/Banner;->bannerDefaultImage:Landroid/widget/ImageView;

    iget p2, p0, Lcom/youth/banner/Banner;->bannerBackgroundImage:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    invoke-direct {p0}, Lcom/youth/banner/Banner;->initViewPagerScroll()V

    return-void
.end method

.method private initViewPagerScroll()V
    .locals 3

    .line 140
    :try_start_0
    const-class v0, Landroid/support/v4/view/ViewPager;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 142
    new-instance v1, Lcom/youth/banner/BannerScroller;

    iget-object v2, p0, Lcom/youth/banner/Banner;->viewPager:Lcom/youth/banner/view/BannerViewPager;

    invoke-virtual {v2}, Lcom/youth/banner/view/BannerViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/youth/banner/BannerScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/youth/banner/Banner;->mScroller:Lcom/youth/banner/BannerScroller;

    .line 143
    iget-object v1, p0, Lcom/youth/banner/Banner;->mScroller:Lcom/youth/banner/BannerScroller;

    iget v2, p0, Lcom/youth/banner/Banner;->scrollTime:I

    invoke-virtual {v1, v2}, Lcom/youth/banner/BannerScroller;->setDuration(I)V

    .line 144
    iget-object v1, p0, Lcom/youth/banner/Banner;->viewPager:Lcom/youth/banner/view/BannerViewPager;

    iget-object v2, p0, Lcom/youth/banner/Banner;->mScroller:Lcom/youth/banner/BannerScroller;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 146
    iget-object v1, p0, Lcom/youth/banner/Banner;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setBannerStyleUI()V
    .locals 2

    .line 298
    iget v0, p0, Lcom/youth/banner/Banner;->count:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 299
    :goto_0
    iget v1, p0, Lcom/youth/banner/Banner;->bannerStyle:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 315
    :pswitch_0
    iget-object v1, p0, Lcom/youth/banner/Banner;->indicatorInside:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 316
    invoke-direct {p0}, Lcom/youth/banner/Banner;->setTitleStyleUI()V

    goto :goto_1

    .line 311
    :pswitch_1
    iget-object v1, p0, Lcom/youth/banner/Banner;->indicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 312
    invoke-direct {p0}, Lcom/youth/banner/Banner;->setTitleStyleUI()V

    goto :goto_1

    .line 307
    :pswitch_2
    iget-object v1, p0, Lcom/youth/banner/Banner;->numIndicatorInside:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    invoke-direct {p0}, Lcom/youth/banner/Banner;->setTitleStyleUI()V

    goto :goto_1

    .line 304
    :pswitch_3
    iget-object v1, p0, Lcom/youth/banner/Banner;->numIndicator:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 301
    :pswitch_4
    iget-object v1, p0, Lcom/youth/banner/Banner;->indicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setData()V
    .locals 3

    const/4 v0, 0x1

    .line 426
    iput v0, p0, Lcom/youth/banner/Banner;->currentItem:I

    .line 427
    iget-object v1, p0, Lcom/youth/banner/Banner;->adapter:Lcom/youth/banner/Banner$BannerPagerAdapter;

    if-nez v1, :cond_0

    .line 428
    new-instance v1, Lcom/youth/banner/Banner$BannerPagerAdapter;

    invoke-direct {v1, p0}, Lcom/youth/banner/Banner$BannerPagerAdapter;-><init>(Lcom/youth/banner/Banner;)V

    iput-object v1, p0, Lcom/youth/banner/Banner;->adapter:Lcom/youth/banner/Banner$BannerPagerAdapter;

    .line 429
    iget-object v1, p0, Lcom/youth/banner/Banner;->viewPager:Lcom/youth/banner/view/BannerViewPager;

    invoke-virtual {v1, p0}, Lcom/youth/banner/view/BannerViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/youth/banner/Banner;->viewPager:Lcom/youth/banner/view/BannerViewPager;

    iget-object v2, p0, Lcom/youth/banner/Banner;->adapter:Lcom/youth/banner/Banner$BannerPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/youth/banner/view/BannerViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 432
    iget-object v1, p0, Lcom/youth/banner/Banner;->viewPager:Lcom/youth/banner/view/BannerViewPager;

    invoke-virtual {v1, v0}, Lcom/youth/banner/view/BannerViewPager;->setFocusable(Z)V

    .line 433
    iget-object v1, p0, Lcom/youth/banner/Banner;->viewPager:Lcom/youth/banner/view/BannerViewPager;

    invoke-virtual {v1, v0}, Lcom/youth/banner/view/BannerViewPager;->setCurrentItem(I)V

    .line 434
    iget v1, p0, Lcom/youth/banner/Banner;->gravity:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 435
    iget-object v1, p0, Lcom/youth/banner/Banner;->indicator:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/youth/banner/Banner;->gravity:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 436
    :cond_1
    iget-boolean v1, p0, Lcom/youth/banner/Banner;->isScroll:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/youth/banner/Banner;->count:I

    if-le v1, v0, :cond_2

    .line 437
    iget-object v1, p0, Lcom/youth/banner/Banner;->viewPager:Lcom/youth/banner/view/BannerViewPager;

    invoke-virtual {v1, v0}, Lcom/youth/banner/view/BannerViewPager;->setScrollable(Z)V

    goto :goto_0

    .line 439
    :cond_2
    iget-object v0, p0, Lcom/youth/banner/Banner;->viewPager:Lcom/youth/banner/view/BannerViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youth/banner/view/BannerViewPager;->setScrollable(Z)V

    .line 441
    :goto_0
    iget-boolean v0, p0, Lcom/youth/banner/Banner;->isAutoPlay:Z

    if-eqz v0, :cond_3

    .line 442
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->startAutoPlay()V

    :cond_3
    return-void
.end method

.method private setImageList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 335
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_3

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/youth/banner/Banner;->bannerDefaultImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    invoke-direct {p0}, Lcom/youth/banner/Banner;->initImages()V

    move v1, v0

    .line 342
    :goto_0
    iget v2, p0, Lcom/youth/banner/Banner;->count:I

    add-int/lit8 v2, v2, 0x1

    if-gt v1, v2, :cond_6

    const/4 v2, 0x0

    .line 344
    iget-object v3, p0, Lcom/youth/banner/Banner;->imageLoader:Lcom/youth/banner/loader/ImageLoaderInterface;

    if-eqz v3, :cond_1

    .line 345
    iget-object v2, p0, Lcom/youth/banner/Banner;->imageLoader:Lcom/youth/banner/loader/ImageLoaderInterface;

    iget-object v3, p0, Lcom/youth/banner/Banner;->context:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/youth/banner/loader/ImageLoaderInterface;->createImageView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    .line 348
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/youth/banner/Banner;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 350
    :cond_2
    invoke-direct {p0, v2}, Lcom/youth/banner/Banner;->setScaleType(Landroid/view/View;)V

    if-nez v1, :cond_3

    .line 353
    iget v3, p0, Lcom/youth/banner/Banner;->count:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 354
    :cond_3
    iget v3, p0, Lcom/youth/banner/Banner;->count:I

    add-int/lit8 v3, v3, 0x1

    if-ne v1, v3, :cond_4

    .line 355
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v1, -0x1

    .line 357
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 359
    :goto_1
    iget-object v4, p0, Lcom/youth/banner/Banner;->imageViews:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v4, p0, Lcom/youth/banner/Banner;->imageLoader:Lcom/youth/banner/loader/ImageLoaderInterface;

    if-eqz v4, :cond_5

    .line 361
    iget-object v4, p0, Lcom/youth/banner/Banner;->imageLoader:Lcom/youth/banner/loader/ImageLoaderInterface;

    iget-object v5, p0, Lcom/youth/banner/Banner;->context:Landroid/content/Context;

    invoke-interface {v4, v5, v3, v2}, Lcom/youth/banner/loader/ImageLoaderInterface;->displayImage(Landroid/content/Context;Ljava/lang/Object;Landroid/view/View;)V

    goto :goto_2

    .line 363
    :cond_5
    iget-object v2, p0, Lcom/youth/banner/Banner;->tag:Ljava/lang/String;

    const-string v3, "Please set images loader."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void

    .line 336
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/youth/banner/Banner;->bannerDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    iget-object p1, p0, Lcom/youth/banner/Banner;->tag:Ljava/lang/String;

    const-string v0, "The image data set is empty."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setScaleType(Landroid/view/View;)V
    .locals 1

    .line 368
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 369
    check-cast p1, Landroid/widget/ImageView;

    .line 370
    iget v0, p0, Lcom/youth/banner/Banner;->scaleType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 393
    :pswitch_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 390
    :pswitch_1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 387
    :pswitch_2
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 384
    :pswitch_3
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 381
    :pswitch_4
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 378
    :pswitch_5
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 375
    :pswitch_6
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 372
    :pswitch_7
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setTitleStyleUI()V
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/youth/banner/Banner;->titles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/youth/banner/Banner;->imageUrls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 276
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "[Banner] --> The number of titles and images is different"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    iget v0, p0, Lcom/youth/banner/Banner;->titleBackground:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 279
    iget-object v0, p0, Lcom/youth/banner/Banner;->titleView:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/youth/banner/Banner;->titleBackground:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 281
    :cond_1
    iget v0, p0, Lcom/youth/banner/Banner;->titleHeight:I

    if-eq v0, v1, :cond_2

    .line 282
    iget-object v0, p0, Lcom/youth/banner/Banner;->titleView:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/youth/banner/Banner;->titleHeight:I

    invoke-direct {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    :cond_2
    iget v0, p0, Lcom/youth/banner/Banner;->titleTextColor:I

    if-eq v0, v1, :cond_3

    .line 285
    iget-object v0, p0, Lcom/youth/banner/Banner;->bannerTitle:Landroid/widget/TextView;

    iget v2, p0, Lcom/youth/banner/Banner;->titleTextColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 287
    :cond_3
    iget v0, p0, Lcom/youth/banner/Banner;->titleTextSize:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    .line 288
    iget-object v0, p0, Lcom/youth/banner/Banner;->bannerTitle:Landroid/widget/TextView;

    iget v1, p0, Lcom/youth/banner/Banner;->titleTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 290
    :cond_4
    iget-object v0, p0, Lcom/youth/banner/Banner;->titles:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/youth/banner/Banner;->titles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 291
    iget-object v0, p0, Lcom/youth/banner/Banner;->bannerTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youth/banner/Banner;->titles:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lcom/youth/banner/Banner;->bannerTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/youth/banner/Banner;->titleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 475
    iget-boolean v0, p0, Lcom/youth/banner/Banner;->isAutoPlay:Z

    if-eqz v0, :cond_2

    .line 476
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    .line 481
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->stopAutoPlay()V

    goto :goto_1

    .line 479
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->startAutoPlay()V

    .line 484
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public isAutoPlay(Z)Lcom/youth/banner/Banner;
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/youth/banner/Banner;->isAutoPlay:Z

    return-object p0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 3

    .line 546
    iget-object v0, p0, Lcom/youth/banner/Banner;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/youth/banner/Banner;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 559
    :pswitch_0
    iget p1, p0, Lcom/youth/banner/Banner;->currentItem:I

    iget v2, p0, Lcom/youth/banner/Banner;->count:I

    add-int/2addr v2, v1

    if-ne p1, v2, :cond_1

    .line 560
    iget-object p1, p0, Lcom/youth/banner/Banner;->viewPager:Lcom/youth/banner/view/BannerViewPager;

    invoke-virtual {p1, v1, v0}, Lcom/youth/banner/view/BannerViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 561
    :cond_1
    iget p1, p0, Lcom/youth/banner/Banner;->currentItem:I

    if-nez p1, :cond_3

    .line 562
    iget-object p1, p0, Lcom/youth/banner/Banner;->viewPager:Lcom/youth/banner/view/BannerViewPager;

    iget v1, p0, Lcom/youth/banner/Banner;->count:I

    invoke-virtual {p1, v1, v0}, Lcom/youth/banner/view/BannerViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 552
    :pswitch_1
    iget p1, p0, Lcom/youth/banner/Banner;->currentItem:I

    if-nez p1, :cond_2

    .line 553
    iget-object p1, p0, Lcom/youth/banner/Banner;->viewPager:Lcom/youth/banner/view/BannerViewPager;

    iget v1, p0, Lcom/youth/banner/Banner;->count:I

    invoke-virtual {p1, v1, v0}, Lcom/youth/banner/view/BannerViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 554
    :cond_2
    iget p1, p0, Lcom/youth/banner/Banner;->currentItem:I

    iget v2, p0, Lcom/youth/banner/Banner;->count:I

    add-int/2addr v2, v1

    if-ne p1, v2, :cond_3

    .line 555
    iget-object p1, p0, Lcom/youth/banner/Banner;->viewPager:Lcom/youth/banner/view/BannerViewPager;

    invoke-virtual {p1, v1, v0}, Lcom/youth/banner/view/BannerViewPager;->setCurrentItem(IZ)V

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/youth/banner/Banner;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/youth/banner/Banner;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p0, p1}, Lcom/youth/banner/Banner;->toRealPosition(I)I

    move-result p1

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 579
    iput p1, p0, Lcom/youth/banner/Banner;->currentItem:I

    .line 580
    iget-object v0, p0, Lcom/youth/banner/Banner;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/youth/banner/Banner;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p0, p1}, Lcom/youth/banner/Banner;->toRealPosition(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 583
    :cond_0
    iget v0, p0, Lcom/youth/banner/Banner;->bannerStyle:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/youth/banner/Banner;->bannerStyle:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/youth/banner/Banner;->bannerStyle:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/youth/banner/Banner;->indicatorImages:Ljava/util/List;

    iget v2, p0, Lcom/youth/banner/Banner;->lastPosition:I

    sub-int/2addr v2, v1

    iget v3, p0, Lcom/youth/banner/Banner;->count:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/youth/banner/Banner;->count:I

    rem-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v2, p0, Lcom/youth/banner/Banner;->mIndicatorUnselectedResId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 587
    iget-object v0, p0, Lcom/youth/banner/Banner;->indicatorImages:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    iget v3, p0, Lcom/youth/banner/Banner;->count:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/youth/banner/Banner;->count:I

    rem-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v2, p0, Lcom/youth/banner/Banner;->mIndicatorSelectedResId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 588
    iput p1, p0, Lcom/youth/banner/Banner;->lastPosition:I

    :cond_2
    if-nez p1, :cond_3

    .line 590
    iget p1, p0, Lcom/youth/banner/Banner;->count:I

    .line 591
    :cond_3
    iget v0, p0, Lcom/youth/banner/Banner;->count:I

    if-le p1, v0, :cond_4

    move p1, v1

    .line 592
    :cond_4
    iget v0, p0, Lcom/youth/banner/Banner;->bannerStyle:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 606
    :pswitch_0
    iget-object v0, p0, Lcom/youth/banner/Banner;->bannerTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/youth/banner/Banner;->titles:Ljava/util/List;

    sub-int/2addr p1, v1

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 603
    :pswitch_1
    iget-object v0, p0, Lcom/youth/banner/Banner;->bannerTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/youth/banner/Banner;->titles:Ljava/util/List;

    sub-int/2addr p1, v1

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 599
    :pswitch_2
    iget-object v0, p0, Lcom/youth/banner/Banner;->numIndicatorInside:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/youth/banner/Banner;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    iget-object v0, p0, Lcom/youth/banner/Banner;->bannerTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/youth/banner/Banner;->titles:Ljava/util/List;

    sub-int/2addr p1, v1

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 596
    :pswitch_3
    iget-object v0, p0, Lcom/youth/banner/Banner;->numIndicator:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/youth/banner/Banner;->count:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    :pswitch_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public releaseBanner()V
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/youth/banner/Banner;->handler:Lcom/youth/banner/WeakHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youth/banner/WeakHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public setBannerAnimation(Ljava/lang/Class;)Lcom/youth/banner/Banner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/view/ViewPager$PageTransformer;",
            ">;)",
            "Lcom/youth/banner/Banner;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 183
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager$PageTransformer;

    invoke-virtual {p0, v0, p1}, Lcom/youth/banner/Banner;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)Lcom/youth/banner/Banner;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    iget-object p1, p0, Lcom/youth/banner/Banner;->tag:Ljava/lang/String;

    const-string v0, "Please set the PageTransformer class"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method public setBannerStyle(I)Lcom/youth/banner/Banner;
    .locals 0

    .line 226
    iput p1, p0, Lcom/youth/banner/Banner;->bannerStyle:I

    return-object p0
.end method

.method public setBannerTitles(Ljava/util/List;)Lcom/youth/banner/Banner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/youth/banner/Banner;"
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lcom/youth/banner/Banner;->titles:Ljava/util/List;

    return-object p0
.end method

.method public setDelayTime(I)Lcom/youth/banner/Banner;
    .locals 0

    .line 162
    iput p1, p0, Lcom/youth/banner/Banner;->delayTime:I

    return-object p0
.end method

.method public setImageLoader(Lcom/youth/banner/loader/ImageLoaderInterface;)Lcom/youth/banner/Banner;
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/youth/banner/Banner;->imageLoader:Lcom/youth/banner/loader/ImageLoaderInterface;

    return-object p0
.end method

.method public setImages(Ljava/util/List;)Lcom/youth/banner/Banner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Lcom/youth/banner/Banner;"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/youth/banner/Banner;->imageUrls:Ljava/util/List;

    .line 237
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/youth/banner/Banner;->count:I

    return-object p0
.end method

.method public setIndicatorGravity(I)Lcom/youth/banner/Banner;
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x15

    .line 175
    iput p1, p0, Lcom/youth/banner/Banner;->gravity:I

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x11

    .line 172
    iput p1, p0, Lcom/youth/banner/Banner;->gravity:I

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x13

    .line 169
    iput p1, p0, Lcom/youth/banner/Banner;->gravity:I

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOffscreenPageLimit(I)Lcom/youth/banner/Banner;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/youth/banner/Banner;->viewPager:Lcom/youth/banner/view/BannerViewPager;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/youth/banner/Banner;->viewPager:Lcom/youth/banner/view/BannerViewPager;

    invoke-virtual {v0, p1}, Lcom/youth/banner/view/BannerViewPager;->setOffscreenPageLimit(I)V

    :cond_0
    return-object p0
.end method

.method public setOnBannerClickListener(Lcom/youth/banner/listener/OnBannerClickListener;)Lcom/youth/banner/Banner;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 614
    iput-object p1, p0, Lcom/youth/banner/Banner;->bannerListener:Lcom/youth/banner/listener/OnBannerClickListener;

    return-object p0
.end method

.method public setOnBannerListener(Lcom/youth/banner/listener/OnBannerListener;)Lcom/youth/banner/Banner;
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/youth/banner/Banner;->listener:Lcom/youth/banner/listener/OnBannerListener;

    return-object p0
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/youth/banner/Banner;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)Lcom/youth/banner/Banner;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/youth/banner/Banner;->viewPager:Lcom/youth/banner/view/BannerViewPager;

    invoke-virtual {v0, p1, p2}, Lcom/youth/banner/view/BannerViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    return-object p0
.end method

.method public setViewPagerIsScroll(Z)Lcom/youth/banner/Banner;
    .locals 0

    .line 231
    iput-boolean p1, p0, Lcom/youth/banner/Banner;->isScroll:Z

    return-object p0
.end method

.method public start()Lcom/youth/banner/Banner;
    .locals 1

    .line 268
    invoke-direct {p0}, Lcom/youth/banner/Banner;->setBannerStyleUI()V

    .line 269
    iget-object v0, p0, Lcom/youth/banner/Banner;->imageUrls:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/youth/banner/Banner;->setImageList(Ljava/util/List;)V

    .line 270
    invoke-direct {p0}, Lcom/youth/banner/Banner;->setData()V

    return-object p0
.end method

.method public startAutoPlay()V
    .locals 4

    .line 447
    iget-object v0, p0, Lcom/youth/banner/Banner;->handler:Lcom/youth/banner/WeakHandler;

    iget-object v1, p0, Lcom/youth/banner/Banner;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/youth/banner/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 448
    iget-object v0, p0, Lcom/youth/banner/Banner;->handler:Lcom/youth/banner/WeakHandler;

    iget-object v1, p0, Lcom/youth/banner/Banner;->task:Ljava/lang/Runnable;

    iget v2, p0, Lcom/youth/banner/Banner;->delayTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/youth/banner/WeakHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopAutoPlay()V
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/youth/banner/Banner;->handler:Lcom/youth/banner/WeakHandler;

    iget-object v1, p0, Lcom/youth/banner/Banner;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/youth/banner/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toRealPosition(I)I
    .locals 1

    add-int/lit8 p1, p1, -0x1

    .line 494
    iget v0, p0, Lcom/youth/banner/Banner;->count:I

    rem-int/2addr p1, v0

    if-gez p1, :cond_0

    .line 496
    iget v0, p0, Lcom/youth/banner/Banner;->count:I

    add-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method public update(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/youth/banner/Banner;->imageUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 249
    iget-object v0, p0, Lcom/youth/banner/Banner;->imageViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 250
    iget-object v0, p0, Lcom/youth/banner/Banner;->indicatorImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 251
    iget-object v0, p0, Lcom/youth/banner/Banner;->imageUrls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 252
    iget-object p1, p0, Lcom/youth/banner/Banner;->imageUrls:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/youth/banner/Banner;->count:I

    .line 253
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->start()Lcom/youth/banner/Banner;

    return-void
.end method

.method public update(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/youth/banner/Banner;->titles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 243
    iget-object v0, p0, Lcom/youth/banner/Banner;->titles:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 244
    invoke-virtual {p0, p1}, Lcom/youth/banner/Banner;->update(Ljava/util/List;)V

    return-void
.end method

.method public updateBannerStyle(I)V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/youth/banner/Banner;->indicator:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/youth/banner/Banner;->numIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/youth/banner/Banner;->numIndicatorInside:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/youth/banner/Banner;->indicatorInside:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/youth/banner/Banner;->bannerTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/youth/banner/Banner;->titleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    iput p1, p0, Lcom/youth/banner/Banner;->bannerStyle:I

    .line 264
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->start()Lcom/youth/banner/Banner;

    return-void
.end method
