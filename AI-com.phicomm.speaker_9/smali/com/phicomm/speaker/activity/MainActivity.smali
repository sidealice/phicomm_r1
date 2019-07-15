.class public Lcom/phicomm/speaker/activity/MainActivity;
.super Lcom/phicomm/speaker/base/BaseFragmentActivity;
.source "MainActivity.java"


# static fields
.field private static c:Landroid/content/Context;


# instance fields
.field private b:J

.field mMRbMine:Lcom/phicomm/speaker/views/MenuRadioButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09018d
    .end annotation
.end field

.field mRbFunction:Lcom/phicomm/speaker/views/MenuRadioButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901bd
    .end annotation
.end field

.field mRbHome:Lcom/phicomm/speaker/views/MenuRadioButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901be
    .end annotation
.end field

.field mRbPlayer:Lcom/phicomm/speaker/views/MenuRadioButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901c1
    .end annotation
.end field

.field mViewPager:Lcom/phicomm/speaker/views/MyViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09031a
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/MainActivity;->c(I)V

    .line 139
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/MainActivity;->b(I)V

    return-void
.end method

.method public static b()Landroid/content/Context;
    .locals 1

    .line 70
    sget-object v0, Lcom/phicomm/speaker/activity/MainActivity;->c:Landroid/content/Context;

    return-object v0
.end method

.method private b(I)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MainActivity;->mRbHome:Lcom/phicomm/speaker/views/MenuRadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/MenuRadioButton;->setSelected(Z)V

    .line 149
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MainActivity;->mRbFunction:Lcom/phicomm/speaker/views/MenuRadioButton;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/MenuRadioButton;->setSelected(Z)V

    .line 150
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MainActivity;->mRbPlayer:Lcom/phicomm/speaker/views/MenuRadioButton;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/MenuRadioButton;->setSelected(Z)V

    .line 151
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MainActivity;->mMRbMine:Lcom/phicomm/speaker/views/MenuRadioButton;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/MenuRadioButton;->setSelected(Z)V

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MainActivity;->mRbHome:Lcom/phicomm/speaker/views/MenuRadioButton;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/MenuRadioButton;->setSelected(Z)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 155
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MainActivity;->mRbFunction:Lcom/phicomm/speaker/views/MenuRadioButton;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/MenuRadioButton;->setSelected(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 157
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MainActivity;->mMRbMine:Lcom/phicomm/speaker/views/MenuRadioButton;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/MenuRadioButton;->setSelected(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private c(I)V
    .locals 2

    .line 183
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const v1, 0x7f06006f

    goto :goto_0

    :cond_0
    const v1, 0x7f0600ba

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/jaeger/library/a;->a(Landroid/app/Activity;II)V

    .line 184
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MainActivity;->mViewPager:Lcom/phicomm/speaker/views/MyViewPager;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/MyViewPager;->setCurrentItem(I)V

    return-void
.end method

.method private d()V
    .locals 2

    .line 77
    new-instance v0, Lcom/phicomm/speaker/manager/d;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/manager/d;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/manager/d;->a(Z)V

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/service/CommonService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 79
    invoke-static {}, Lcom/phicomm/speaker/f/b;->g()V

    return-void
.end method

.method private e()V
    .locals 1

    .line 179
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 60
    sput-object p0, Lcom/phicomm/speaker/activity/MainActivity;->c:Landroid/content/Context;

    .line 61
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MainActivity;->mViewPager:Lcom/phicomm/speaker/views/MyViewPager;

    new-instance v1, Lcom/phicomm/speaker/adapter/i;

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/adapter/i;-><init>(Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/MyViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 63
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MainActivity;->mViewPager:Lcom/phicomm/speaker/views/MyViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/MyViewPager;->setOffscreenPageLimit(I)V

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/MainActivity;->c(I)V

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MainActivity;->mRbHome:Lcom/phicomm/speaker/views/MenuRadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/MenuRadioButton;->setSelected(Z)V

    .line 66
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/MainActivity;->d()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0044

    .line 55
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/MainActivity;->setContentView(I)V

    return-void
.end method

.method public goToHomePageEvent(Lcom/phicomm/speaker/a/s;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "RecoveryDeviceEvent mainActivity get"

    .line 189
    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 190
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/MainActivity;->a(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 123
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseFragmentActivity;->onDestroy()V

    .line 124
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    .line 165
    iget-wide v2, p0, Lcom/phicomm/speaker/activity/MainActivity;->b:J

    long-to-double v2, v2

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/phicomm/speaker/activity/MainActivity;->b:J

    sub-long v2, p1, v0

    const-wide/16 p1, 0x7d0

    cmp-long v0, v2, p1

    if-gez v0, :cond_0

    .line 166
    invoke-static {}, Lcom/phicomm/speaker/f/c;->a()Lcom/phicomm/speaker/f/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/f/c;->c()V

    .line 167
    invoke-static {}, Lcom/phicomm/speaker/f/ae;->b()V

    .line 168
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/MainActivity;->e()V

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0032

    .line 170
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(I)V

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/phicomm/speaker/activity/MainActivity;->b:J

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 175
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lcom/phicomm/speaker/base/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 90
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/MainActivity;->a(I)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseFragmentActivity;->onResume()V

    .line 118
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MainActivity;->mViewPager:Lcom/phicomm/speaker/views/MyViewPager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/MainActivity;->b(I)V

    return-void
.end method

.method public rb_function()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0901bd
        }
    .end annotation

    const/4 v0, 0x1

    .line 100
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/MainActivity;->a(I)V

    return-void
.end method

.method public rb_home()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0901be
        }
    .end annotation

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/MainActivity;->a(I)V

    return-void
.end method

.method public rb_mine()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09018d
        }
    .end annotation

    const/4 v0, 0x2

    .line 129
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/MainActivity;->a(I)V

    return-void
.end method

.method public rb_player()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0901c1
        }
    .end annotation

    .line 105
    invoke-static {}, Lcom/phicomm/speaker/e/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MainActivity;->mRbHome:Lcom/phicomm/speaker/views/MenuRadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/MenuRadioButton;->setSelected(Z)V

    .line 107
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MainActivity;->mRbFunction:Lcom/phicomm/speaker/views/MenuRadioButton;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/MenuRadioButton;->setSelected(Z)V

    .line 108
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MainActivity;->mRbPlayer:Lcom/phicomm/speaker/views/MenuRadioButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/MenuRadioButton;->setSelected(Z)V

    .line 109
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MainActivity;->mMRbMine:Lcom/phicomm/speaker/views/MenuRadioButton;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/MenuRadioButton;->setSelected(Z)V

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "startFromMainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    const v0, 0x7f01000c

    const v1, 0x10a0001

    .line 111
    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/activity/MainActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method
