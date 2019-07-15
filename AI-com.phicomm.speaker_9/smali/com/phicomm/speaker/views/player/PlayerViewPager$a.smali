.class Lcom/phicomm/speaker/views/player/PlayerViewPager$a;
.super Landroid/support/v4/view/PagerAdapter;
.source "PlayerViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/views/player/PlayerViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/views/player/PlayerViewPager;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/views/player/PlayerViewPager;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager$a;->a:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/views/player/PlayerViewPager;Lcom/phicomm/speaker/views/player/PlayerViewPager$1;)V
    .locals 0

    .line 428
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/player/PlayerViewPager$a;-><init>(Lcom/phicomm/speaker/views/player/PlayerViewPager;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 448
    iget-object p3, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager$a;->a:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-static {p3}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->b(Lcom/phicomm/speaker/views/player/PlayerViewPager;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager$a;->a:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-static {v0}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->b(Lcom/phicomm/speaker/views/player/PlayerViewPager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 443
    iget-object p1, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager$a;->a:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-static {p1}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->b(Lcom/phicomm/speaker/views/player/PlayerViewPager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
