.class public Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "BindGuideActivity.java"


# instance fields
.field private a:Landroid/graphics/drawable/AnimationDrawable;

.field private b:Lcom/phicomm/speaker/b/b;

.field private d:Lcom/phicomm/speaker/model/common/a;

.field mIvTips:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900df
    .end annotation
.end field

.field mTvAddSpeaker:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090253
    .end annotation
.end field

.field mTvBack:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900e0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 49
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/jaeger/library/a;->a(Landroid/app/Activity;II)V

    .line 50
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;->mIvTips:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    .line 51
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 52
    const-class v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->setFoundBtDevice(Z)V

    .line 53
    new-instance v0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity$1;

    const-wide/16 v1, 0x12c

    invoke-direct {v0, p0, v1, v2}, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity$1;-><init>(Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;J)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;->d:Lcom/phicomm/speaker/model/common/a;

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0022

    .line 44
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;->setContentView(I)V

    return-void
.end method

.method clickToEnterAp()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0900df
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;->d:Lcom/phicomm/speaker/model/common/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/a;->a()V

    return-void
.end method

.method iv_bind_guide_back()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0900e0
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 73
    invoke-super {p0, p1, p2, p3}, Lcom/phicomm/speaker/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 74
    iget-object p3, p0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;->b:Lcom/phicomm/speaker/b/b;

    if-eqz p3, :cond_0

    .line 75
    iget-object p3, p0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;->b:Lcom/phicomm/speaker/b/b;

    invoke-interface {p3, p1, p2}, Lcom/phicomm/speaker/b/b;->a(II)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 67
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    return-void
.end method

.method tv_bind_guide_next()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090253
        }
    .end annotation

    .line 81
    const-class v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->setMode(Z)V

    .line 82
    invoke-static {p0, v1}, Lcom/phicomm/speaker/f/a/c;->a(Landroid/app/Activity;Z)Lcom/phicomm/speaker/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;->b:Lcom/phicomm/speaker/b/b;

    return-void
.end method
