.class public Lcom/phicomm/speaker/views/LazyViewPager;
.super Landroid/view/ViewGroup;
.source "LazyViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/views/LazyViewPager$c;,
        Lcom/phicomm/speaker/views/LazyViewPager$SavedState;,
        Lcom/phicomm/speaker/views/LazyViewPager$b;,
        Lcom/phicomm/speaker/views/LazyViewPager$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/phicomm/speaker/views/LazyViewPager$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Landroid/view/VelocityTracker;

.field private B:I

.field private C:I

.field private D:F

.field private E:F

.field private F:Z

.field private G:Landroid/support/v4/widget/EdgeEffectCompat;

.field private H:Landroid/support/v4/widget/EdgeEffectCompat;

.field private I:Z

.field private J:Lcom/phicomm/speaker/views/LazyViewPager$b;

.field private K:I

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/phicomm/speaker/views/LazyViewPager$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/support/v4/view/PagerAdapter;

.field private e:I

.field private f:I

.field private g:Landroid/os/Parcelable;

.field private h:Ljava/lang/ClassLoader;

.field private i:Landroid/widget/Scroller;

.field private j:Lcom/phicomm/speaker/views/LazyViewPager$c;

.field private k:I

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:I

.field private t:Z

.field private u:Z

.field private v:I

.field private w:F

.field private x:F

.field private y:F

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/phicomm/speaker/views/LazyViewPager$1;

    invoke-direct {v0}, Lcom/phicomm/speaker/views/LazyViewPager$1;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/views/LazyViewPager;->a:Ljava/util/Comparator;

    .line 79
    new-instance v0, Lcom/phicomm/speaker/views/LazyViewPager$2;

    invoke-direct {v0}, Lcom/phicomm/speaker/views/LazyViewPager$2;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/views/LazyViewPager;->b:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 232
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 96
    iput p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->f:I

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->g:Landroid/os/Parcelable;

    .line 98
    iput-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->h:Ljava/lang/ClassLoader;

    const/4 v0, 0x0

    .line 113
    iput v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->s:I

    .line 128
    iput p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->z:I

    const/4 p1, 0x1

    .line 150
    iput-boolean p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->I:Z

    .line 170
    iput v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->K:I

    .line 233
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 237
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 96
    iput p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->f:I

    const/4 p2, 0x0

    .line 97
    iput-object p2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->g:Landroid/os/Parcelable;

    .line 98
    iput-object p2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->h:Ljava/lang/ClassLoader;

    const/4 p2, 0x0

    .line 113
    iput p2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->s:I

    .line 128
    iput p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->z:I

    const/4 p1, 0x1

    .line 150
    iput-boolean p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->I:Z

    .line 170
    iput p2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->K:I

    .line 238
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->a()V

    return-void
.end method

.method private a(IIII)V
    .locals 6

    add-int/2addr p1, p3

    if-lez p2, :cond_0

    .line 904
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getScrollX()I

    move-result p3

    add-int/2addr p2, p4

    .line 906
    div-int p4, p3, p2

    .line 907
    rem-int/2addr p3, p2

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p2, p4

    add-float/2addr p2, p3

    int-to-float p3, p1

    mul-float/2addr p2, p3

    float-to-int v1, p2

    .line 909
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getScrollY()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Lcom/phicomm/speaker/views/LazyViewPager;->scrollTo(II)V

    .line 910
    iget-object p2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->i:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_1

    .line 912
    iget-object p2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->i:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getDuration()I

    move-result p2

    iget-object p3, p0, Lcom/phicomm/speaker/views/LazyViewPager;->i:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->timePassed()I

    move-result p3

    sub-int v5, p2, p3

    .line 913
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->i:Landroid/widget/Scroller;

    const/4 v2, 0x0

    iget p2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    mul-int v3, p2, p1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 916
    :cond_0
    iget p2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    mul-int/2addr p2, p1

    .line 917
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getScrollX()I

    move-result p1

    if-eq p2, p1, :cond_1

    .line 918
    invoke-direct {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->f()V

    .line 919
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getScrollY()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/phicomm/speaker/views/LazyViewPager;->scrollTo(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1491
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1492
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1493
    iget v2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->z:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1497
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->x:F

    .line 1498
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->z:I

    .line 1499
    iget-object p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->A:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 1500
    iget-object p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->A:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private f()V
    .locals 6

    .line 991
    iget-boolean v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 994
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/views/LazyViewPager;->setScrollingCacheEnabled(Z)V

    .line 995
    iget-object v2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->i:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 996
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getScrollX()I

    move-result v2

    .line 997
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getScrollY()I

    move-result v3

    .line 998
    iget-object v4, p0, Lcom/phicomm/speaker/views/LazyViewPager;->i:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 999
    iget-object v5, p0, Lcom/phicomm/speaker/views/LazyViewPager;->i:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    if-ne v2, v4, :cond_0

    if-eq v3, v5, :cond_1

    .line 1001
    :cond_0
    invoke-virtual {p0, v4, v5}, Lcom/phicomm/speaker/views/LazyViewPager;->scrollTo(II)V

    .line 1003
    :cond_1
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/views/LazyViewPager;->setScrollState(I)V

    .line 1005
    :cond_2
    iput-boolean v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->q:Z

    .line 1006
    iput-boolean v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->r:Z

    move v2, v0

    move v0, v1

    .line 1007
    :goto_0
    iget-object v3, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1008
    iget-object v3, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/phicomm/speaker/views/LazyViewPager$a;

    .line 1009
    iget-boolean v4, v3, Lcom/phicomm/speaker/views/LazyViewPager$a;->c:Z

    if-eqz v4, :cond_3

    .line 1011
    iput-boolean v1, v3, Lcom/phicomm/speaker/views/LazyViewPager$a;->c:Z

    const/4 v2, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 1015
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->c()V

    :cond_5
    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    .line 1506
    iput-boolean v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->t:Z

    .line 1507
    iput-boolean v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->u:Z

    .line 1509
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->A:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1510
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->A:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1511
    iput-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->A:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private setScrollState(I)V
    .locals 1

    .line 260
    iget v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->K:I

    if-ne v0, p1, :cond_0

    return-void

    .line 264
    :cond_0
    iput p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->K:I

    .line 265
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->J:Lcom/phicomm/speaker/views/LazyViewPager$b;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->J:Lcom/phicomm/speaker/views/LazyViewPager$b;

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/views/LazyViewPager$b;->onPageScrollStateChanged(I)V

    :cond_1
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .line 1516
    iget-boolean v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->p:Z

    if-eq v0, p1, :cond_0

    .line 1517
    iput-boolean p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->p:Z

    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/view/View;)Lcom/phicomm/speaker/views/LazyViewPager$a;
    .locals 4

    const/4 v0, 0x0

    .line 830
    :goto_0
    iget-object v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 831
    iget-object v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/views/LazyViewPager$a;

    .line 832
    iget-object v2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, v1, Lcom/phicomm/speaker/views/LazyViewPager$a;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method a()V
    .locals 3

    const/4 v0, 0x0

    .line 242
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/LazyViewPager;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    .line 243
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/LazyViewPager;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    .line 244
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/LazyViewPager;->setFocusable(Z)V

    .line 245
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 246
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Lcom/phicomm/speaker/views/LazyViewPager;->b:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->i:Landroid/widget/Scroller;

    .line 247
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 248
    invoke-static {v1}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v2

    iput v2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->v:I

    .line 249
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->B:I

    .line 250
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->C:I

    .line 251
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->G:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 252
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 254
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const v1, 0x451c4000    # 2500.0f

    mul-float/2addr v1, v0

    .line 255
    iput v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->D:F

    const v0, 0x3ecccccd    # 0.4f

    .line 256
    iput v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->E:F

    return-void
.end method

.method a(II)V
    .locals 2

    .line 558
    new-instance v0, Lcom/phicomm/speaker/views/LazyViewPager$a;

    invoke-direct {v0}, Lcom/phicomm/speaker/views/LazyViewPager$a;-><init>()V

    .line 559
    iput p1, v0, Lcom/phicomm/speaker/views/LazyViewPager$a;->b:I

    .line 560
    iget-object v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/phicomm/speaker/views/LazyViewPager$a;->a:Ljava/lang/Object;

    if-gez p2, :cond_0

    .line 562
    iget-object p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 564
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method a(III)V
    .locals 8

    .line 523
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 525
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/views/LazyViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    .line 528
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getScrollX()I

    move-result v3

    .line 529
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getScrollY()I

    move-result v4

    sub-int v5, p1, v3

    sub-int v6, p2, v4

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    .line 533
    invoke-direct {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->f()V

    .line 534
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/views/LazyViewPager;->setScrollState(I)V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 538
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/LazyViewPager;->setScrollingCacheEnabled(Z)V

    .line 539
    iput-boolean p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->r:Z

    const/4 p1, 0x2

    .line 540
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/LazyViewPager;->setScrollState(I)V

    .line 542
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getWidth()I

    move-result p2

    iget v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->k:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 545
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_2

    int-to-float p1, p1

    int-to-float p2, p2

    .line 547
    iget p3, p0, Lcom/phicomm/speaker/views/LazyViewPager;->D:F

    div-float/2addr p2, p3

    div-float p2, p1, p2

    iget p3, p0, Lcom/phicomm/speaker/views/LazyViewPager;->E:F

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0x64

    :goto_0
    const/16 p2, 0x258

    .line 551
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 553
    iget-object v2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->i:Landroid/widget/Scroller;

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 554
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->invalidate()V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 326
    iput-boolean v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->q:Z

    .line 327
    invoke-virtual {p0, p1, p2, v0}, Lcom/phicomm/speaker/views/LazyViewPager;->a(IZZ)V

    return-void
.end method

.method a(IZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 335
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/phicomm/speaker/views/LazyViewPager;->a(IZZI)V

    return-void
.end method

.method a(IZZI)V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez p3, :cond_1

    .line 343
    iget p3, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1

    .line 344
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/views/LazyViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1
    const/4 p3, 0x1

    if-gez p1, :cond_2

    move p1, v1

    goto :goto_0

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 350
    iget-object p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, p3

    .line 352
    :cond_3
    :goto_0
    iget v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->s:I

    .line 353
    iget v2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_4

    iget v2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    :cond_4
    move v0, v1

    .line 357
    :goto_1
    iget-object v2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 358
    iget-object v2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phicomm/speaker/views/LazyViewPager$a;

    iput-boolean p3, v2, Lcom/phicomm/speaker/views/LazyViewPager$a;->c:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 362
    :cond_5
    iget v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    if-eq v0, p1, :cond_6

    goto :goto_2

    :cond_6
    move p3, v1

    .line 363
    :goto_2
    iput p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    .line 364
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->c()V

    .line 365
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->k:I

    add-int/2addr v0, v2

    mul-int/2addr v0, p1

    if-eqz p2, :cond_7

    .line 367
    invoke-virtual {p0, v0, v1, p4}, Lcom/phicomm/speaker/views/LazyViewPager;->a(III)V

    if-eqz p3, :cond_9

    .line 368
    iget-object p2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->J:Lcom/phicomm/speaker/views/LazyViewPager$b;

    if-eqz p2, :cond_9

    .line 369
    iget-object p2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->J:Lcom/phicomm/speaker/views/LazyViewPager$b;

    invoke-interface {p2, p1}, Lcom/phicomm/speaker/views/LazyViewPager$b;->onPageSelected(I)V

    goto :goto_3

    :cond_7
    if-eqz p3, :cond_8

    .line 372
    iget-object p2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->J:Lcom/phicomm/speaker/views/LazyViewPager$b;

    if-eqz p2, :cond_8

    .line 373
    iget-object p2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->J:Lcom/phicomm/speaker/views/LazyViewPager$b;

    invoke-interface {p2, p1}, Lcom/phicomm/speaker/views/LazyViewPager$b;->onPageSelected(I)V

    .line 375
    :cond_8
    invoke-direct {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->f()V

    .line 376
    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/views/LazyViewPager;->scrollTo(II)V

    :cond_9
    :goto_3
    return-void

    .line 340
    :cond_a
    :goto_4
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/views/LazyViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method public a(I)Z
    .locals 5

    .line 1602
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    .line 1609
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x42

    const/16 v4, 0x11

    if-eqz v2, :cond_4

    if-eq v2, v0, :cond_4

    if-ne p1, v4, :cond_2

    if-eqz v0, :cond_1

    .line 1615
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 1616
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->d()Z

    move-result v1

    goto :goto_1

    .line 1618
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_1

    :cond_2
    if-ne p1, v3, :cond_8

    if-eqz v0, :cond_3

    .line 1623
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-gt v1, v0, :cond_3

    .line 1624
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->e()Z

    move-result v1

    goto :goto_1

    .line 1626
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_1

    :cond_4
    if-eq p1, v4, :cond_7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    if-eq p1, v3, :cond_6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 1634
    :cond_6
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->e()Z

    move-result v1

    goto :goto_1

    .line 1631
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->d()Z

    move-result v1

    :cond_8
    :goto_1
    if-eqz v1, :cond_9

    .line 1637
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/LazyViewPager;->playSoundEffect(I)V

    :cond_9
    return v1
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1580
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 1581
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x42

    .line 1586
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/LazyViewPager;->a(I)Z

    move-result p1

    goto :goto_1

    :pswitch_1
    const/16 p1, 0x11

    .line 1583
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/LazyViewPager;->a(I)Z

    move-result p1

    goto :goto_1

    .line 1589
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    .line 1590
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/LazyViewPager;->a(I)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 1591
    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1592
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/LazyViewPager;->a(I)Z

    move-result p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Landroid/view/View;ZIII)Z
    .locals 13

    move-object v0, p1

    .line 1542
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1543
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 1544
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 1545
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 1546
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 1551
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 1552
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    .line 1553
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 1554
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    .line 1555
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move/from16 v9, p3

    .line 1554
    invoke-virtual/range {v6 .. v11}, Lcom/phicomm/speaker/views/LazyViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move/from16 v1, p3

    neg-int v1, v1

    .line 1561
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1663
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1665
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 1668
    :goto_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1669
    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/views/LazyViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1670
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1671
    invoke-virtual {p0, v3}, Lcom/phicomm/speaker/views/LazyViewPager;->a(Landroid/view/View;)Lcom/phicomm/speaker/views/LazyViewPager$a;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1672
    iget v4, v4, Lcom/phicomm/speaker/views/LazyViewPager$a;->b:I

    iget v5, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    if-ne v4, v5, :cond_0

    .line 1673
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_2

    .line 1686
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_5

    .line 1689
    :cond_2
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    .line 1693
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_5

    .line 1697
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1710
    :goto_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1711
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/LazyViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1712
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1713
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/views/LazyViewPager;->a(Landroid/view/View;)Lcom/phicomm/speaker/views/LazyViewPager$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1714
    iget v2, v2, Lcom/phicomm/speaker/views/LazyViewPager$a;->b:I

    iget v3, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    if-ne v2, v3, :cond_0

    .line 1715
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 813
    iget-boolean v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->o:Z

    if-eqz v0, :cond_0

    .line 814
    invoke-virtual {p0, p1, p2, p3}, Lcom/phicomm/speaker/views/LazyViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 815
    iget p2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->m:I

    iget p3, p0, Lcom/phicomm/speaker/views/LazyViewPager;->n:I

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 817
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method b(Landroid/view/View;)Lcom/phicomm/speaker/views/LazyViewPager$a;
    .locals 1

    .line 841
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_1

    .line 842
    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_1

    .line 845
    :cond_0
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 847
    :cond_2
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/LazyViewPager;->a(Landroid/view/View;)Lcom/phicomm/speaker/views/LazyViewPager$a;

    move-result-object p1

    return-object p1
.end method

.method b()V
    .locals 9

    .line 571
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, -0x1

    move v5, v0

    move v0, v1

    move v4, v3

    .line 574
    :goto_1
    iget-object v6, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_6

    .line 575
    iget-object v6, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/phicomm/speaker/views/LazyViewPager$a;

    .line 576
    iget-object v7, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    iget-object v8, v6, Lcom/phicomm/speaker/views/LazyViewPager$a;->a:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, v3, :cond_1

    goto :goto_3

    :cond_1
    const/4 v8, -0x2

    if-ne v7, v8, :cond_3

    .line 583
    iget-object v5, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    .line 585
    iget-object v5, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    iget v7, v6, Lcom/phicomm/speaker/views/LazyViewPager$a;->b:I

    iget-object v8, v6, Lcom/phicomm/speaker/views/LazyViewPager$a;->a:Ljava/lang/Object;

    invoke-virtual {v5, p0, v7, v8}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 588
    iget v5, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    iget v6, v6, Lcom/phicomm/speaker/views/LazyViewPager$a;->b:I

    if-ne v5, v6, :cond_2

    .line 590
    iget v4, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    iget-object v5, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_2
    :goto_2
    move v5, v2

    goto :goto_3

    .line 595
    :cond_3
    iget v8, v6, Lcom/phicomm/speaker/views/LazyViewPager$a;->b:I

    if-eq v8, v7, :cond_5

    .line 596
    iget v5, v6, Lcom/phicomm/speaker/views/LazyViewPager$a;->b:I

    iget v8, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    if-ne v5, v8, :cond_4

    move v4, v7

    .line 601
    :cond_4
    iput v7, v6, Lcom/phicomm/speaker/views/LazyViewPager$a;->b:I

    goto :goto_2

    :cond_5
    :goto_3
    add-int/2addr v0, v2

    goto :goto_1

    .line 606
    :cond_6
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    sget-object v3, Lcom/phicomm/speaker/views/LazyViewPager;->a:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-ltz v4, :cond_7

    .line 610
    invoke-virtual {p0, v4, v1, v2}, Lcom/phicomm/speaker/views/LazyViewPager;->a(IZZ)V

    goto :goto_4

    :cond_7
    move v2, v5

    :goto_4
    if-eqz v2, :cond_8

    .line 614
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->c()V

    .line 615
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->requestLayout()V

    :cond_8
    return-void
.end method

.method c()V
    .locals 9

    .line 620
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    if-nez v0, :cond_0

    return-void

    .line 628
    :cond_0
    iget-boolean v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->q:Z

    if-eqz v0, :cond_1

    return-void

    .line 638
    :cond_1
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 642
    :cond_2
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 644
    iget v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->s:I

    .line 645
    iget v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 646
    iget-object v3, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 647
    iget v4, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    add-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, -0x1

    move v4, v2

    move v5, v3

    .line 655
    :goto_0
    iget-object v6, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_7

    .line 656
    iget-object v6, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/phicomm/speaker/views/LazyViewPager$a;

    .line 657
    iget v7, v6, Lcom/phicomm/speaker/views/LazyViewPager$a;->b:I

    if-lt v7, v1, :cond_3

    iget v7, v6, Lcom/phicomm/speaker/views/LazyViewPager$a;->b:I

    if-le v7, v0, :cond_4

    :cond_3
    iget-boolean v7, v6, Lcom/phicomm/speaker/views/LazyViewPager$a;->c:Z

    if-nez v7, :cond_4

    .line 661
    iget-object v5, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    .line 663
    iget-object v5, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    iget v7, v6, Lcom/phicomm/speaker/views/LazyViewPager$a;->b:I

    iget-object v8, v6, Lcom/phicomm/speaker/views/LazyViewPager$a;->a:Ljava/lang/Object;

    invoke-virtual {v5, p0, v7, v8}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    if-ge v5, v0, :cond_6

    .line 664
    iget v7, v6, Lcom/phicomm/speaker/views/LazyViewPager$a;->b:I

    if-le v7, v1, :cond_6

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v1, :cond_5

    move v5, v1

    :cond_5
    :goto_1
    if-gt v5, v0, :cond_6

    .line 672
    iget v7, v6, Lcom/phicomm/speaker/views/LazyViewPager$a;->b:I

    if-ge v5, v7, :cond_6

    .line 676
    invoke-virtual {p0, v5, v4}, Lcom/phicomm/speaker/views/LazyViewPager;->a(II)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 681
    :cond_6
    :goto_2
    iget v5, v6, Lcom/phicomm/speaker/views/LazyViewPager$a;->b:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 685
    :cond_7
    iget-object v4, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    iget-object v4, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/phicomm/speaker/views/LazyViewPager$a;

    iget v4, v4, Lcom/phicomm/speaker/views/LazyViewPager$a;->b:I

    goto :goto_3

    :cond_8
    move v4, v3

    :goto_3
    if-ge v4, v0, :cond_a

    add-int/lit8 v4, v4, 0x1

    if-le v4, v1, :cond_9

    move v1, v4

    :cond_9
    :goto_4
    if-gt v1, v0, :cond_a

    .line 693
    invoke-virtual {p0, v1, v3}, Lcom/phicomm/speaker/views/LazyViewPager;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    move v0, v2

    .line 706
    :goto_5
    iget-object v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_c

    .line 707
    iget-object v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/views/LazyViewPager$a;

    iget v1, v1, Lcom/phicomm/speaker/views/LazyViewPager$a;->b:I

    iget v4, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    if-ne v1, v4, :cond_b

    .line 708
    iget-object v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/LazyViewPager$a;

    goto :goto_6

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_c
    move-object v0, v3

    .line 712
    :goto_6
    iget-object v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    iget v4, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/phicomm/speaker/views/LazyViewPager$a;->a:Ljava/lang/Object;

    goto :goto_7

    :cond_d
    move-object v0, v3

    :goto_7
    invoke-virtual {v1, p0, v4, v0}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 714
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 716
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 717
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 718
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/LazyViewPager;->b(Landroid/view/View;)Lcom/phicomm/speaker/views/LazyViewPager$a;

    move-result-object v3

    :cond_e
    if-eqz v3, :cond_f

    .line 719
    iget v0, v3, Lcom/phicomm/speaker/views/LazyViewPager$a;->b:I

    iget v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    if-eq v0, v1, :cond_11

    .line 720
    :cond_f
    :goto_8
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_11

    .line 721
    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/views/LazyViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 722
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/LazyViewPager;->a(Landroid/view/View;)Lcom/phicomm/speaker/views/LazyViewPager$a;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 723
    iget v1, v1, Lcom/phicomm/speaker/views/LazyViewPager$a;->b:I

    iget v3, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    if-ne v1, v3, :cond_10

    const/4 v1, 0x2

    .line 724
    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_9

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_11
    :goto_9
    return-void
.end method

.method public computeScroll()V
    .locals 4

    .line 958
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->i:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 959
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->i:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 963
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getScrollX()I

    move-result v0

    .line 964
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getScrollY()I

    move-result v1

    .line 965
    iget-object v2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->i:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 966
    iget-object v3, p0, Lcom/phicomm/speaker/views/LazyViewPager;->i:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 969
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/phicomm/speaker/views/LazyViewPager;->scrollTo(II)V

    .line 972
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->J:Lcom/phicomm/speaker/views/LazyViewPager$b;

    if-eqz v0, :cond_2

    .line 973
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->k:I

    add-int/2addr v0, v1

    .line 974
    div-int v1, v2, v0

    .line 975
    rem-int/2addr v2, v0

    int-to-float v3, v2

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 977
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->J:Lcom/phicomm/speaker/views/LazyViewPager$b;

    invoke-interface {v0, v1, v3, v2}, Lcom/phicomm/speaker/views/LazyViewPager$b;->onPageScrolled(IFI)V

    .line 981
    :cond_2
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->invalidate()V

    return-void

    .line 987
    :cond_3
    invoke-direct {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->f()V

    return-void
.end method

.method d()Z
    .locals 2

    .line 1643
    iget v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    if-lez v0, :cond_0

    .line 1644
    iget v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/views/LazyViewPager;->a(IZ)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1567
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/LazyViewPager;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 1761
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1763
    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/views/LazyViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1764
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1765
    invoke-virtual {p0, v3}, Lcom/phicomm/speaker/views/LazyViewPager;->a(Landroid/view/View;)Lcom/phicomm/speaker/views/LazyViewPager$a;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1766
    iget v4, v4, Lcom/phicomm/speaker/views/LazyViewPager$a;->b:I

    iget v5, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    if-ne v4, v5, :cond_0

    .line 1767
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1308
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1311
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    .line 1314
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 1339
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->G:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 1340
    iget-object p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto/16 :goto_1

    .line 1315
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->G:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1316
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1317
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x43870000    # 270.0f

    .line 1319
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v3

    .line 1320
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1321
    iget-object v4, p0, Lcom/phicomm/speaker/views/LazyViewPager;->G:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getWidth()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1322
    iget-object v3, p0, Lcom/phicomm/speaker/views/LazyViewPager;->G:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 1323
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1325
    :cond_2
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1326
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1327
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getWidth()I

    move-result v3

    .line 1328
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1329
    iget-object v5, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    if-eqz v5, :cond_3

    iget-object v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    :cond_3
    const/high16 v5, 0x42b40000    # 90.0f

    .line 1331
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1332
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    neg-int v1, v1

    iget v6, p0, Lcom/phicomm/speaker/views/LazyViewPager;->k:I

    add-int/2addr v6, v3

    mul-int/2addr v1, v6

    iget v6, p0, Lcom/phicomm/speaker/views/LazyViewPager;->k:I

    add-int/2addr v1, v6

    int-to-float v1, v1

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1334
    iget-object v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1, v4, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1335
    iget-object v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    or-int/2addr v2, v1

    .line 1336
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 1345
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->invalidate()V

    :cond_5
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 481
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 482
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method e()Z
    .locals 3

    .line 1651
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    iget-object v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 1652
    iget v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/phicomm/speaker/views/LazyViewPager;->a(IZ)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 331
    iget v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .line 392
    iget v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->s:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .line 448
    iget v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->k:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 852
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 853
    iput-boolean v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->I:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1351
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1354
    iget v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->k:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1355
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getScrollX()I

    move-result v0

    .line 1356
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getWidth()I

    move-result v1

    .line 1357
    iget v2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->k:I

    add-int/2addr v2, v1

    rem-int v2, v0, v2

    if-eqz v2, :cond_0

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 1361
    iget-object v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->l:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget v3, p0, Lcom/phicomm/speaker/views/LazyViewPager;->k:I

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getHeight()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1362
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1027
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_d

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz v0, :cond_2

    .line 1044
    iget-boolean v4, p0, Lcom/phicomm/speaker/views/LazyViewPager;->t:Z

    if-eqz v4, :cond_1

    return v3

    .line 1050
    :cond_1
    iget-boolean v4, p0, Lcom/phicomm/speaker/views/LazyViewPager;->u:Z

    if-eqz v4, :cond_2

    return v2

    :cond_2
    const/4 v4, 0x2

    if-eqz v0, :cond_a

    if-eq v0, v4, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_0

    .line 1146
    :cond_3
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/LazyViewPager;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1069
    :cond_4
    iget v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->z:I

    if-ne v0, v1, :cond_5

    goto/16 :goto_0

    .line 1075
    :cond_5
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1076
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1077
    iget v4, p0, Lcom/phicomm/speaker/views/LazyViewPager;->x:F

    sub-float v4, v1, v4

    .line 1078
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1079
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 1080
    iget v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->y:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1081
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getScrollX()I

    move-result v6

    const/4 v7, 0x0

    cmpl-float v8, v4, v7

    if-lez v8, :cond_6

    if-eqz v6, :cond_7

    :cond_6
    cmpg-float v7, v4, v7

    if-gez v7, :cond_7

    .line 1082
    iget-object v7, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    .line 1083
    invoke-virtual {v7}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getWidth()I

    move-result v8

    mul-int/2addr v7, v8

    sub-int/2addr v7, v3

    :cond_7
    const/4 v10, 0x0

    float-to-int v11, v4

    float-to-int v12, v1

    float-to-int v13, p1

    move-object v8, p0

    move-object v9, p0

    .line 1088
    invoke-virtual/range {v8 .. v13}, Lcom/phicomm/speaker/views/LazyViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1090
    iput v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->x:F

    iput v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->w:F

    .line 1091
    iput p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->y:F

    return v2

    .line 1094
    :cond_8
    iget p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->v:I

    int-to-float p1, p1

    cmpl-float p1, v5, p1

    if-lez p1, :cond_9

    cmpl-float p1, v5, v0

    if-lez p1, :cond_9

    .line 1098
    iput-boolean v3, p0, Lcom/phicomm/speaker/views/LazyViewPager;->t:Z

    .line 1099
    invoke-direct {p0, v3}, Lcom/phicomm/speaker/views/LazyViewPager;->setScrollState(I)V

    .line 1100
    iput v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->x:F

    .line 1101
    invoke-direct {p0, v3}, Lcom/phicomm/speaker/views/LazyViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 1103
    :cond_9
    iget p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->v:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_c

    .line 1111
    iput-boolean v3, p0, Lcom/phicomm/speaker/views/LazyViewPager;->u:Z

    goto :goto_0

    .line 1122
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->w:F

    iput v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->x:F

    .line 1123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->y:F

    .line 1124
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->z:I

    .line 1126
    iget p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->K:I

    if-ne p1, v4, :cond_b

    .line 1128
    iput-boolean v3, p0, Lcom/phicomm/speaker/views/LazyViewPager;->t:Z

    .line 1129
    iput-boolean v2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->u:Z

    .line 1130
    invoke-direct {p0, v3}, Lcom/phicomm/speaker/views/LazyViewPager;->setScrollState(I)V

    goto :goto_0

    .line 1132
    :cond_b
    invoke-direct {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->f()V

    .line 1133
    iput-boolean v2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->t:Z

    .line 1134
    iput-boolean v2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->u:Z

    .line 1155
    :cond_c
    :goto_0
    iget-boolean p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->t:Z

    return p1

    .line 1035
    :cond_d
    :goto_1
    iput-boolean v2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->t:Z

    .line 1036
    iput-boolean v2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->u:Z

    .line 1037
    iput v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->z:I

    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 p1, 0x1

    .line 926
    iput-boolean p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->o:Z

    .line 927
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->c()V

    const/4 p1, 0x0

    .line 928
    iput-boolean p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->o:Z

    .line 930
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getChildCount()I

    move-result p3

    sub-int/2addr p4, p2

    move p2, p1

    :goto_0
    if-ge p2, p3, :cond_1

    .line 934
    invoke-virtual {p0, p2}, Lcom/phicomm/speaker/views/LazyViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 936
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p5}, Lcom/phicomm/speaker/views/LazyViewPager;->a(Landroid/view/View;)Lcom/phicomm/speaker/views/LazyViewPager$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 937
    iget v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->k:I

    add-int/2addr v1, p4

    iget v0, v0, Lcom/phicomm/speaker/views/LazyViewPager$a;->b:I

    mul-int/2addr v1, v0

    .line 938
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, v1

    .line 939
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getPaddingTop()I

    move-result v1

    .line 946
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 947
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    .line 945
    invoke-virtual {p5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 950
    :cond_1
    iput-boolean p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->I:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    const/4 v0, 0x0

    .line 863
    invoke-static {v0, p1}, Lcom/phicomm/speaker/views/LazyViewPager;->getDefaultSize(II)I

    move-result p1

    .line 864
    invoke-static {v0, p2}, Lcom/phicomm/speaker/views/LazyViewPager;->getDefaultSize(II)I

    move-result p2

    .line 863
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/views/LazyViewPager;->setMeasuredDimension(II)V

    .line 867
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getMeasuredWidth()I

    move-result p1

    .line 868
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    .line 867
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->m:I

    .line 869
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getMeasuredHeight()I

    move-result p1

    .line 870
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p1, v1

    .line 869
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->n:I

    const/4 p1, 0x1

    .line 873
    iput-boolean p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->o:Z

    .line 874
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->c()V

    .line 875
    iput-boolean v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->o:Z

    .line 878
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getChildCount()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_1

    .line 880
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/LazyViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 881
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 886
    iget v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->m:I

    iget v2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->n:I

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->measure(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 1730
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v2, v0

    move v0, v3

    move v1, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v1, v2

    :goto_0
    if-eq v0, v2, :cond_2

    .line 1741
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/LazyViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1742
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 1743
    invoke-virtual {p0, v5}, Lcom/phicomm/speaker/views/LazyViewPager;->a(Landroid/view/View;)Lcom/phicomm/speaker/views/LazyViewPager$a;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1744
    iget v6, v6, Lcom/phicomm/speaker/views/LazyViewPager$a;->b:I

    iget v7, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    if-ne v6, v7, :cond_1

    .line 1745
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 793
    instance-of v0, p1, Lcom/phicomm/speaker/views/LazyViewPager$SavedState;

    if-nez v0, :cond_0

    .line 794
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 798
    :cond_0
    check-cast p1, Lcom/phicomm/speaker/views/LazyViewPager$SavedState;

    .line 799
    invoke-virtual {p1}, Lcom/phicomm/speaker/views/LazyViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 801
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_1

    .line 802
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p1, Lcom/phicomm/speaker/views/LazyViewPager$SavedState;->b:Landroid/os/Parcelable;

    iget-object v2, p1, Lcom/phicomm/speaker/views/LazyViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 803
    iget p1, p1, Lcom/phicomm/speaker/views/LazyViewPager$SavedState;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/phicomm/speaker/views/LazyViewPager;->a(IZZ)V

    goto :goto_0

    .line 805
    :cond_1
    iget v0, p1, Lcom/phicomm/speaker/views/LazyViewPager$SavedState;->a:I

    iput v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->f:I

    .line 806
    iget-object v0, p1, Lcom/phicomm/speaker/views/LazyViewPager$SavedState;->b:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->g:Landroid/os/Parcelable;

    .line 807
    iget-object p1, p1, Lcom/phicomm/speaker/views/LazyViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    iput-object p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->h:Ljava/lang/ClassLoader;

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 782
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 783
    new-instance v1, Lcom/phicomm/speaker/views/LazyViewPager$SavedState;

    invoke-direct {v1, v0}, Lcom/phicomm/speaker/views/LazyViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 784
    iget v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    iput v0, v1, Lcom/phicomm/speaker/views/LazyViewPager$SavedState;->a:I

    .line 785
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/phicomm/speaker/views/LazyViewPager$SavedState;->b:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 893
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    .line 897
    iget p2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->k:I

    iget p4, p0, Lcom/phicomm/speaker/views/LazyViewPager;->k:I

    invoke-direct {p0, p1, p3, p2, p4}, Lcom/phicomm/speaker/views/LazyViewPager;->a(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1160
    iget-boolean v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->F:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1167
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 1173
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 1178
    :cond_2
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->A:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 1179
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->A:Landroid/view/VelocityTracker;

    .line 1181
    :cond_3
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->A:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v3, -0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 1294
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/LazyViewPager;->a(Landroid/view/MotionEvent;)V

    .line 1295
    iget v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->z:I

    .line 1296
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1295
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->x:F

    goto/16 :goto_2

    .line 1287
    :pswitch_2
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1288
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1289
    iput v3, p0, Lcom/phicomm/speaker/views/LazyViewPager;->x:F

    .line 1290
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->z:I

    goto/16 :goto_2

    .line 1279
    :pswitch_3
    iget-boolean p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->t:Z

    if-eqz p1, :cond_a

    .line 1280
    iget p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    invoke-virtual {p0, p1, v1, v1}, Lcom/phicomm/speaker/views/LazyViewPager;->a(IZZ)V

    .line 1281
    iput v3, p0, Lcom/phicomm/speaker/views/LazyViewPager;->z:I

    .line 1282
    invoke-direct {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->g()V

    .line 1283
    iget-object p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->G:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    or-int v2, p1, v0

    goto/16 :goto_2

    .line 1200
    :pswitch_4
    iget-boolean v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->t:Z

    if-nez v0, :cond_4

    .line 1201
    iget v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->z:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1202
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1203
    iget v4, p0, Lcom/phicomm/speaker/views/LazyViewPager;->x:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1204
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1205
    iget v5, p0, Lcom/phicomm/speaker/views/LazyViewPager;->y:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1209
    iget v5, p0, Lcom/phicomm/speaker/views/LazyViewPager;->v:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    cmpl-float v0, v4, v0

    if-lez v0, :cond_4

    .line 1213
    iput-boolean v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->t:Z

    .line 1214
    iput v3, p0, Lcom/phicomm/speaker/views/LazyViewPager;->x:F

    .line 1215
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/views/LazyViewPager;->setScrollState(I)V

    .line 1216
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/views/LazyViewPager;->setScrollingCacheEnabled(Z)V

    .line 1219
    :cond_4
    iget-boolean v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->t:Z

    if-eqz v0, :cond_a

    .line 1221
    iget v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->z:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1223
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 1224
    iget v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->x:F

    sub-float/2addr v0, p1

    .line 1225
    iput p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->x:F

    .line 1226
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    .line 1228
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getWidth()I

    move-result v0

    .line 1229
    iget v3, p0, Lcom/phicomm/speaker/views/LazyViewPager;->k:I

    add-int/2addr v3, v0

    .line 1231
    iget-object v4, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    sub-int/2addr v4, v1

    .line 1232
    iget v5, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    sub-int/2addr v5, v1

    mul-int/2addr v5, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    .line 1233
    iget v6, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    add-int/2addr v6, v1

    .line 1234
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int/2addr v6, v3

    int-to-float v6, v6

    cmpg-float v7, p1, v5

    if-gez v7, :cond_6

    const/4 v4, 0x0

    cmpl-float v4, v5, v4

    if-nez v4, :cond_5

    neg-float p1, p1

    .line 1238
    iget-object v2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->G:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    :cond_5
    move p1, v5

    goto :goto_0

    :cond_6
    cmpl-float v5, p1, v6

    if-lez v5, :cond_8

    mul-int/2addr v4, v3

    int-to-float v4, v4

    cmpl-float v4, v6, v4

    if-nez v4, :cond_7

    sub-float/2addr p1, v6

    .line 1244
    iget-object v2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    :cond_7
    move p1, v6

    .line 1249
    :cond_8
    :goto_0
    iget v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->x:F

    float-to-int v4, p1

    int-to-float v5, v4

    sub-float/2addr p1, v5

    add-float/2addr v0, p1

    iput v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->x:F

    .line 1250
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v4, p1}, Lcom/phicomm/speaker/views/LazyViewPager;->scrollTo(II)V

    .line 1251
    iget-object p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->J:Lcom/phicomm/speaker/views/LazyViewPager$b;

    if-eqz p1, :cond_a

    .line 1252
    div-int p1, v4, v3

    .line 1253
    rem-int/2addr v4, v3

    int-to-float v0, v4

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 1255
    iget-object v3, p0, Lcom/phicomm/speaker/views/LazyViewPager;->J:Lcom/phicomm/speaker/views/LazyViewPager$b;

    invoke-interface {v3, p1, v0, v4}, Lcom/phicomm/speaker/views/LazyViewPager$b;->onPageScrolled(IFI)V

    goto :goto_2

    .line 1261
    :pswitch_5
    iget-boolean p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->t:Z

    if-eqz p1, :cond_a

    .line 1262
    iget-object p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->A:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    .line 1263
    iget v2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->C:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1264
    iget v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->z:I

    invoke-static {p1, v0}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result p1

    float-to-int p1, p1

    .line 1266
    iput-boolean v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->q:Z

    .line 1267
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->k:I

    add-int/2addr v0, v2

    .line 1268
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getScrollX()I

    move-result v2

    .line 1269
    div-int/2addr v2, v0

    if-lez p1, :cond_9

    goto :goto_1

    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 1271
    :goto_1
    invoke-virtual {p0, v2, v1, v1, p1}, Lcom/phicomm/speaker/views/LazyViewPager;->a(IZZI)V

    .line 1273
    iput v3, p0, Lcom/phicomm/speaker/views/LazyViewPager;->z:I

    .line 1274
    invoke-direct {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->g()V

    .line 1275
    iget-object p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->G:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    or-int v2, p1, v0

    goto :goto_2

    .line 1192
    :pswitch_6
    invoke-direct {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->f()V

    .line 1195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->w:F

    iput v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->x:F

    .line 1196
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->z:I

    :cond_a
    :goto_2
    if-eqz v2, :cond_b

    .line 1301
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->invalidate()V

    :cond_b
    return v1

    :cond_c
    :goto_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 5

    .line 271
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v0, v1

    .line 273
    :goto_0
    iget-object v2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phicomm/speaker/views/LazyViewPager$a;

    .line 275
    iget-object v3, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    iget v4, v2, Lcom/phicomm/speaker/views/LazyViewPager$a;->b:I

    iget-object v2, v2, Lcom/phicomm/speaker/views/LazyViewPager$a;->a:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v2}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 278
    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 279
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->removeAllViews()V

    .line 280
    iput v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->e:I

    .line 281
    invoke-virtual {p0, v1, v1}, Lcom/phicomm/speaker/views/LazyViewPager;->scrollTo(II)V

    .line 284
    :cond_1
    iput-object p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    .line 286
    iget-object p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    if-eqz p1, :cond_4

    .line 287
    iget-object p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->j:Lcom/phicomm/speaker/views/LazyViewPager$c;

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 288
    new-instance p1, Lcom/phicomm/speaker/views/LazyViewPager$c;

    invoke-direct {p1, p0, v0}, Lcom/phicomm/speaker/views/LazyViewPager$c;-><init>(Lcom/phicomm/speaker/views/LazyViewPager;Lcom/phicomm/speaker/views/LazyViewPager$1;)V

    iput-object p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->j:Lcom/phicomm/speaker/views/LazyViewPager$c;

    .line 290
    :cond_2
    iput-boolean v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->q:Z

    .line 291
    iget p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->f:I

    if-ltz p1, :cond_3

    .line 292
    iget-object p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->d:Landroid/support/v4/view/PagerAdapter;

    iget-object v2, p0, Lcom/phicomm/speaker/views/LazyViewPager;->g:Landroid/os/Parcelable;

    iget-object v3, p0, Lcom/phicomm/speaker/views/LazyViewPager;->h:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 293
    iget p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->f:I

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/phicomm/speaker/views/LazyViewPager;->a(IZZ)V

    const/4 p1, -0x1

    .line 294
    iput p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->f:I

    .line 295
    iput-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->g:Landroid/os/Parcelable;

    .line 296
    iput-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->h:Ljava/lang/ClassLoader;

    goto :goto_1

    .line 298
    :cond_3
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->c()V

    :cond_4
    :goto_1
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    .line 315
    iput-boolean v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->q:Z

    .line 316
    iget-boolean v1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->I:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/phicomm/speaker/views/LazyViewPager;->a(IZZ)V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const-string v1, "lazyvp"

    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested offscreen page limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " too small; defaulting to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 418
    :cond_0
    iget v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->s:I

    if-eq p1, v0, :cond_1

    .line 419
    iput p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->s:I

    .line 420
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->c()V

    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Lcom/phicomm/speaker/views/LazyViewPager$b;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->J:Lcom/phicomm/speaker/views/LazyViewPager$b;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 433
    iget v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->k:I

    .line 434
    iput p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->k:I

    .line 436
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getWidth()I

    move-result v1

    .line 437
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/phicomm/speaker/views/LazyViewPager;->a(IIII)V

    .line 439
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .line 471
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/LazyViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/phicomm/speaker/views/LazyViewPager;->l:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 461
    :goto_0
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/LazyViewPager;->setWillNotDraw(Z)V

    .line 462
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LazyViewPager;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 476
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/phicomm/speaker/views/LazyViewPager;->l:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
