.class public Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "OtaMonitorUpgradeActivity.java"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/lang/Runnable;

.field private d:Lcom/phicomm/speaker/c/g;

.field ivUpgrade:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09013c
    .end annotation
.end field

.field tvUpgradeHint:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090294
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    .line 35
    new-instance v0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity$1;-><init>(Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->d:Lcom/phicomm/speaker/c/g;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->b:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;)Landroid/os/Handler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->a:Landroid/os/Handler;

    return-object p0
.end method

.method private b()V
    .locals 4

    const-string v0, "OTA_AUTO_UPGRADE_TIMEOUT"

    .line 122
    invoke-static {p0, v0}, Lcom/phicomm/speaker/f/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/phicomm/speaker/views/e;

    const v1, 0x7f0f0195

    const v2, 0x7f0f00b4

    new-instance v3, Lcom/phicomm/speaker/activity/ota/monitor/a;

    invoke-direct {v3, p0}, Lcom/phicomm/speaker/activity/ota/monitor/a;-><init>(Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/phicomm/speaker/views/e;-><init>(Landroid/content/Context;IILcom/phicomm/speaker/c/c;)V

    .line 127
    invoke-virtual {v0}, Lcom/phicomm/speaker/views/e;->show()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-static {p0, v0, v1}, Lcom/jaeger/library/a;->a(Landroid/app/Activity;ILandroid/view/View;)V

    .line 92
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "upgradeTime"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 93
    iget-object v2, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->tvUpgradeHint:Landroid/widget/TextView;

    const v3, 0x7f0f0194

    invoke-virtual {p0, v3}, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->ivUpgrade:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 95
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 96
    invoke-static {}, Lcom/phicomm/speaker/presenter/mqtt/d;->a()Lcom/phicomm/speaker/presenter/mqtt/d;

    move-result-object v0

    iget-object v2, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->d:Lcom/phicomm/speaker/c/g;

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/presenter/mqtt/d;->a(Lcom/phicomm/speaker/c/g;)V

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->a:Landroid/os/Handler;

    .line 98
    new-instance v0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity$2;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity$2;-><init>(Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->b:Ljava/lang/Runnable;

    .line 104
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->b:Ljava/lang/Runnable;

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method final synthetic a(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 125
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 126
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->finish()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b004d

    .line 86
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->setContentView(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 109
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    .line 110
    invoke-static {}, Lcom/phicomm/speaker/presenter/mqtt/d;->a()Lcom/phicomm/speaker/presenter/mqtt/d;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->d:Lcom/phicomm/speaker/c/g;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/mqtt/d;->b(Lcom/phicomm/speaker/c/g;)V

    return-void
.end method
