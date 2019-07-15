.class public Lcom/phicomm/speaker/activity/MyFavoriteActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "MyFavoriteActivity.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Lcom/phicomm/speaker/presenter/j;

.field tvBroadcast:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090258
    .end annotation
.end field

.field tvMusic:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b1
    .end annotation
.end field

.field tvProgram:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902c6
    .end annotation
.end field

.field vpFavorite:Lcom/phicomm/speaker/views/MyViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090319
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    const/16 v0, 0x14

    .line 42
    iput v0, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->e:I

    const/16 v0, 0x1e

    .line 43
    iput v0, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->f:I

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/MyFavoriteActivity;)Lcom/phicomm/speaker/presenter/j;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->g:Lcom/phicomm/speaker/presenter/j;

    return-object p0
.end method

.method private a(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 103
    :pswitch_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->tvBroadcast:Landroid/widget/TextView;

    goto :goto_0

    .line 100
    :pswitch_1
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->tvProgram:Landroid/widget/TextView;

    goto :goto_0

    .line 97
    :pswitch_2
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->tvMusic:Landroid/widget/TextView;

    :goto_0
    if-eqz p1, :cond_2

    .line 109
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->a:Landroid/widget/TextView;

    if-eq p1, v0, :cond_2

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->a:Landroid/widget/TextView;

    iget v2, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->b:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->a:Landroid/widget/TextView;

    iget v2, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->e:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 113
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 114
    iput-object p1, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->a:Landroid/widget/TextView;

    .line 116
    :cond_1
    iget v0, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->d:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    iget v0, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->f:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 118
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 119
    iput-object p1, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->a:Landroid/widget/TextView;

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 4

    const v0, 0x7f0f0174

    .line 58
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->e(I)V

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->tvBroadcast:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->a(I)V

    .line 61
    iget-object v1, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->vpFavorite:Lcom/phicomm/speaker/views/MyViewPager;

    new-instance v2, Lcom/phicomm/speaker/adapter/b;

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/phicomm/speaker/adapter/b;-><init>(Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/views/MyViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 62
    new-instance v1, Lcom/phicomm/speaker/presenter/j;

    new-instance v2, Lcom/phicomm/speaker/activity/MyFavoriteActivity$1;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/MyFavoriteActivity$1;-><init>(Lcom/phicomm/speaker/activity/MyFavoriteActivity;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/phicomm/speaker/presenter/j;-><init>(Lcom/phicomm/speaker/presenter/b/i;Lcom/phicomm/speaker/presenter/b/g;)V

    iput-object v1, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->g:Lcom/phicomm/speaker/presenter/j;

    .line 79
    iget-object v1, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->g:Lcom/phicomm/speaker/presenter/j;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/presenter/j;->a(Z)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    const p1, 0x7f0b0047

    .line 49
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06003e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->b:I

    .line 51
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06006f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->d:I

    .line 52
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700d1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->e:I

    .line 53
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700d3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->f:I

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->g:Lcom/phicomm/speaker/presenter/j;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/j;->c()V

    .line 85
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method tv_broadcast()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090258
        }
    .end annotation

    const/4 v0, 0x2

    .line 137
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->a(I)V

    .line 138
    iget-object v1, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->vpFavorite:Lcom/phicomm/speaker/views/MyViewPager;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/views/MyViewPager;->setCurrentItem(I)V

    return-void
.end method

.method tv_music()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902b1
        }
    .end annotation

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->a(I)V

    .line 126
    iget-object v1, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->vpFavorite:Lcom/phicomm/speaker/views/MyViewPager;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/views/MyViewPager;->setCurrentItem(I)V

    return-void
.end method

.method tv_program()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902c6
        }
    .end annotation

    const/4 v0, 0x1

    .line 131
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->a(I)V

    .line 132
    iget-object v1, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->vpFavorite:Lcom/phicomm/speaker/views/MyViewPager;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/views/MyViewPager;->setCurrentItem(I)V

    return-void
.end method
