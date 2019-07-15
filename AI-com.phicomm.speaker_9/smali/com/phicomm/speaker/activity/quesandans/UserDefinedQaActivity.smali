.class public Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "UserDefinedQaActivity.java"


# instance fields
.field mTvChoiceness:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090272
    .end annotation
.end field

.field mTvMine:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b3
    .end annotation
.end field

.field mViewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090315
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x2

    const/high16 v1, 0x41f00000    # 30.0f

    .line 93
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 95
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/4 v1, 0x1

    .line 96
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f06003e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41c00000    # 24.0f

    .line 99
    invoke-virtual {p2, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 100
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/4 p2, 0x0

    .line 101
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;->a(Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 51
    new-instance v0, Lcom/phicomm/speaker/fragment/ChoicenessFragment;

    invoke-direct {v0}, Lcom/phicomm/speaker/fragment/ChoicenessFragment;-><init>()V

    .line 52
    new-instance v1, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;

    invoke-direct {v1}, Lcom/phicomm/speaker/fragment/MyQuestionAnswerFragment;-><init>()V

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v0, Lcom/phicomm/speaker/adapter/q;

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/adapter/q;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    .line 57
    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity$1;-><init>(Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const v0, 0x7f0f027d

    .line 45
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;->e(I)V

    const v0, 0x7f080059

    .line 46
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;->i(I)V

    .line 47
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;->b()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b005f

    .line 40
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;->setContentView(I)V

    return-void
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 0

    const/4 p1, 0x0

    .line 120
    invoke-static {p0, p1}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public tv_choiceness()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090272
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public tv_mine()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902b3
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method
