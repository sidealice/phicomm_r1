.class public Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "NoSpeakerFindActivity.java"


# instance fields
.field private a:Lcom/phicomm/speaker/b/b;

.field mIvGuide:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090110
    .end annotation
.end field

.field mTvBack:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09010f
    .end annotation
.end field

.field mTvNext:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902bd
    .end annotation
.end field

.field mTvTip:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902bb
    .end annotation
.end field

.field mTvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902bc
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 51
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/jaeger/library/a;->a(Landroid/app/Activity;II)V

    .line 52
    const-class v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    .line 53
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->isFoundBtDevice()Z

    move-result v2

    const v3, 0x7f0f0185

    if-eqz v2, :cond_0

    .line 55
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;->mTvTitle:Landroid/widget/TextView;

    const v1, 0x7f0f0085

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;->mTvTip:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;->mIvGuide:Landroid/widget/ImageView;

    const v1, 0x7f080091

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;->mTvNext:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;->mTvTitle:Landroid/widget/TextView;

    const v4, 0x7f0f0184

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 63
    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;->mTvTip:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;->mIvGuide:Landroid/widget/ImageView;

    const v2, 0x7f08011e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->getBtScanTimes()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 67
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;->mTvNext:Landroid/widget/TextView;

    const v1, 0x7f0f0182

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;->mTvNext:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0049

    .line 46
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;->setContentView(I)V

    return-void
.end method

.method public c()V
    .locals 0

    .line 95
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;->iv_no_speaker_find_back()V

    return-void
.end method

.method iv_no_speaker_find_back()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09010f
        }
    .end annotation

    .line 90
    invoke-static {p0}, Lcom/phicomm/speaker/f/a/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2, p3}, Lcom/phicomm/speaker/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 78
    iget-object p3, p0, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;->a:Lcom/phicomm/speaker/b/b;

    if-eqz p3, :cond_0

    .line 79
    iget-object p3, p0, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;->a:Lcom/phicomm/speaker/b/b;

    invoke-interface {p3, p1, p2}, Lcom/phicomm/speaker/b/b;->a(II)V

    :cond_0
    return-void
.end method

.method tv_no_speaker_find_try()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902bd
        }
    .end annotation

    const/4 v0, 0x1

    .line 85
    invoke-static {p0, v0}, Lcom/phicomm/speaker/f/a/c;->a(Landroid/app/Activity;Z)Lcom/phicomm/speaker/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;->a:Lcom/phicomm/speaker/b/b;

    return-void
.end method
