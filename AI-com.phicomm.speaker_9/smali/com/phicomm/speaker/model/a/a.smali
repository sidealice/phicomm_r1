.class public Lcom/phicomm/speaker/model/a/a;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "FunctionTabHandler.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$b;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/phicomm/speaker/views/LazyViewPager$b;


# instance fields
.field private a:Landroid/support/design/widget/TabLayout;

.field private b:Landroid/support/v4/view/ViewPager;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/base/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:Lcom/phicomm/speaker/views/LazyViewPager;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/support/design/widget/TabLayout;)V
    .locals 0

    .line 45
    invoke-virtual {p1}, Lcom/phicomm/speaker/base/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 46
    iput-object p2, p0, Lcom/phicomm/speaker/model/a/a;->a:Landroid/support/design/widget/TabLayout;

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/model/a/a;->c:Ljava/util/List;

    .line 48
    invoke-virtual {p2, p0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$b;)V

    return-void
.end method

.method public constructor <init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/support/design/widget/TabLayout;Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/model/a/a;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/support/design/widget/TabLayout;)V

    .line 34
    iput-object p3, p0, Lcom/phicomm/speaker/model/a/a;->b:Landroid/support/v4/view/ViewPager;

    .line 35
    invoke-virtual {p3, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/support/design/widget/TabLayout;Lcom/phicomm/speaker/views/LazyViewPager;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/model/a/a;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/support/design/widget/TabLayout;)V

    .line 40
    iput-object p3, p0, Lcom/phicomm/speaker/model/a/a;->f:Lcom/phicomm/speaker/views/LazyViewPager;

    .line 41
    invoke-virtual {p3, p0}, Lcom/phicomm/speaker/views/LazyViewPager;->setOnPageChangeListener(Lcom/phicomm/speaker/views/LazyViewPager$b;)V

    return-void
.end method

.method private a(Lcom/phicomm/speaker/base/a;)Landroid/widget/TextView;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 68
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/model/a/a;->a:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget v1, p0, Lcom/phicomm/speaker/model/a/a;->e:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 71
    iget-object v1, p0, Lcom/phicomm/speaker/model/a/a;->a:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    iget-object v1, p0, Lcom/phicomm/speaker/model/a/a;->a:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/phicomm/speaker/model/a/a;->a:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->a()Landroid/support/design/widget/TabLayout$e;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/design/widget/TabLayout$e;->a(Landroid/view/View;)Landroid/support/design/widget/TabLayout$e;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$e;)V

    .line 73
    iget-object v1, p0, Lcom/phicomm/speaker/model/a/a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/model/a/a;->b:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/model/a/a;->f:Lcom/phicomm/speaker/views/LazyViewPager;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/views/LazyViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/model/a/a;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/phicomm/speaker/model/a/a;->a()V

    .line 87
    iget-object v0, p0, Lcom/phicomm/speaker/model/a/a;->a:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout;->a(I)Landroid/support/design/widget/TabLayout$e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$e;->e()V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/phicomm/speaker/model/a/a;->d:I

    .line 53
    iput p2, p0, Lcom/phicomm/speaker/model/a/a;->e:I

    return-void
.end method

.method public a(ILcom/phicomm/speaker/base/a;)V
    .locals 0

    .line 62
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/model/a/a;->a(Lcom/phicomm/speaker/base/a;)Landroid/widget/TextView;

    move-result-object p2

    .line 63
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public a(Landroid/support/design/widget/TabLayout$e;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/phicomm/speaker/model/a/a;->b:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/phicomm/speaker/model/a/a;->f:Lcom/phicomm/speaker/views/LazyViewPager;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$e;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/LazyViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/model/a/a;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$e;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 106
    :goto_0
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$e;->a()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 107
    iget v0, p0, Lcom/phicomm/speaker/model/a/a;->d:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v0, 0x1

    .line 108
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 109
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/phicomm/speaker/base/a;)V
    .locals 0

    .line 57
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/model/a/a;->a(Lcom/phicomm/speaker/base/a;)Landroid/widget/TextView;

    move-result-object p2

    .line 58
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Landroid/support/design/widget/TabLayout$e;)V
    .locals 2

    .line 114
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$e;->a()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 115
    iget v0, p0, Lcom/phicomm/speaker/model/a/a;->e:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v0, 0x0

    .line 116
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 117
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public c(Landroid/support/design/widget/TabLayout$e;)V
    .locals 0

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/phicomm/speaker/model/a/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/phicomm/speaker/model/a/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/phicomm/speaker/model/a/a;->a:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout;->a(I)Landroid/support/design/widget/TabLayout$e;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$e;->e()V

    return-void
.end method
