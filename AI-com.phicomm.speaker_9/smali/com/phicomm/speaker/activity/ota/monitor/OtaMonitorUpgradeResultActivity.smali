.class public Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeResultActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "OtaMonitorUpgradeResultActivity.java"


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

    .line 22
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-static {p0, v0, v1}, Lcom/jaeger/library/a;->a(Landroid/app/Activity;ILandroid/view/View;)V

    .line 39
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isUpgradeSucceed"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 40
    iget-object v1, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeResultActivity;->tvHint1:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v2, 0x7f0f019b

    goto :goto_0

    :cond_0
    const v2, 0x7f0f0197

    :goto_0
    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v1, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeResultActivity;->tvHint2:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v2, 0x7f0f019c

    goto :goto_1

    :cond_1
    const v2, 0x7f0f0198

    :goto_1
    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v1, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeResultActivity;->ivUpgradeResult:Landroid/widget/ImageView;

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

    .line 33
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeResultActivity;->setContentView(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Lcom/phicomm/speaker/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "isUpgradeSucceed"

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 52
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeResultActivity;->tvHint1:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const v1, 0x7f0f019b

    goto :goto_0

    :cond_1
    const v1, 0x7f0f0197

    :goto_0
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeResultActivity;->tvHint2:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const v1, 0x7f0f019c

    goto :goto_1

    :cond_2
    const v1, 0x7f0f0198

    :goto_1
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeResultActivity;->ivUpgradeResult:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    const p1, 0x7f080136

    goto :goto_2

    :cond_3
    const p1, 0x7f080135

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method tv_sure()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902f9
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeResultActivity;->finish()V

    return-void
.end method
