.class public Lcom/youth/banner/view/BannerViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "BannerViewPager.java"


# instance fields
.field private scrollable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/youth/banner/view/BannerViewPager;->scrollable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/youth/banner/view/BannerViewPager;->scrollable:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 34
    iget-boolean v0, p0, Lcom/youth/banner/view/BannerViewPager;->scrollable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/youth/banner/view/BannerViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/youth/banner/view/BannerViewPager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 38
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 22
    iget-boolean v0, p0, Lcom/youth/banner/view/BannerViewPager;->scrollable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/youth/banner/view/BannerViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/youth/banner/view/BannerViewPager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 26
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public setScrollable(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/youth/banner/view/BannerViewPager;->scrollable:Z

    return-void
.end method
