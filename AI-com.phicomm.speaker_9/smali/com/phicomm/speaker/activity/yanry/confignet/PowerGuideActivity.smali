.class public Lcom/phicomm/speaker/activity/yanry/confignet/PowerGuideActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "PowerGuideActivity.java"


# instance fields
.field private a:Landroid/graphics/drawable/AnimationDrawable;

.field mIvTips:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090114
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/PowerGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/jaeger/library/a;->a(Landroid/app/Activity;II)V

    .line 37
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/PowerGuideActivity;->mIvTips:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/PowerGuideActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    .line 38
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/PowerGuideActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0052

    .line 31
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/confignet/PowerGuideActivity;->setContentView(I)V

    return-void
.end method

.method iv_power_guide_back()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090115
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/PowerGuideActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 43
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    .line 44
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/PowerGuideActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    return-void
.end method

.method tv_power_guide_next()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902c5
        }
    .end annotation

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/confignet/PowerGuideActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
