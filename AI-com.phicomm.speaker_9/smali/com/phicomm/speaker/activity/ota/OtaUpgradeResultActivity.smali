.class public Lcom/phicomm/speaker/activity/ota/OtaUpgradeResultActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "OtaUpgradeResultActivity.java"


# instance fields
.field ivUpgradeResult:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09013d
    .end annotation
.end field

.field tvHint1:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090293
    .end annotation
.end field

.field tvHint2:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090294
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-static {p0, v0, v1}, Lcom/jaeger/library/a;->a(Landroid/app/Activity;ILandroid/view/View;)V

    .line 36
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ota/OtaUpgradeResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isUpgradeSucceed"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 37
    iget-object v1, p0, Lcom/phicomm/speaker/activity/ota/OtaUpgradeResultActivity;->tvHint1:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v2, 0x7f0f019b

    goto :goto_0

    :cond_0
    const v2, 0x7f0f0197

    :goto_0
    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/activity/ota/OtaUpgradeResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v1, p0, Lcom/phicomm/speaker/activity/ota/OtaUpgradeResultActivity;->tvHint2:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v2, 0x7f0f019c

    goto :goto_1

    :cond_1
    const v2, 0x7f0f0198

    :goto_1
    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/activity/ota/OtaUpgradeResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v1, p0, Lcom/phicomm/speaker/activity/ota/OtaUpgradeResultActivity;->ivUpgradeResult:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const v0, 0x7f080136

    goto :goto_2

    :cond_2
    const v0, 0x7f080135

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b004e

    .line 30
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/ota/OtaUpgradeResultActivity;->setContentView(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method tv_sure()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902f9
        }
    .end annotation

    .line 49
    invoke-static {p0}, Lcom/phicomm/speaker/activity/ota/b;->b(Landroid/app/Activity;)V

    return-void
.end method
