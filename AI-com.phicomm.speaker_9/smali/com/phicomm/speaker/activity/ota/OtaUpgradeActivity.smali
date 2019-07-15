.class public Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "OtaUpgradeActivity.java"


# instance fields
.field private a:Lcom/phicomm/speaker/presenter/l;

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
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    .line 81
    new-instance v0, Lcom/phicomm/speaker/views/e;

    new-instance v1, Lcom/phicomm/speaker/activity/ota/c;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/ota/c;-><init>(Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;)V

    const v2, 0x7f0f0195

    const v3, 0x7f0f00b4

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/phicomm/speaker/views/e;-><init>(Landroid/content/Context;IILcom/phicomm/speaker/c/c;)V

    .line 84
    invoke-virtual {v0}, Lcom/phicomm/speaker/views/e;->show()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-static {p0, v1, v0}, Lcom/jaeger/library/a;->a(Landroid/app/Activity;ILandroid/view/View;)V

    .line 40
    iget-object v2, p0, Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;->tvUpgradeHint:Landroid/widget/TextView;

    const v3, 0x7f0f0194

    invoke-virtual {p0, v3}, Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "upgradeTime"

    const/16 v7, 0xa

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v1, p0, Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;->ivUpgrade:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 42
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 44
    new-instance v1, Lcom/phicomm/speaker/presenter/l;

    new-instance v2, Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity$1;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity$1;-><init>(Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;)V

    invoke-direct {v1, p0, v2, v0}, Lcom/phicomm/speaker/presenter/l;-><init>(Landroid/content/Context;Lcom/phicomm/speaker/presenter/b/l;Lcom/phicomm/speaker/presenter/b/f;)V

    iput-object v1, p0, Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;->a:Lcom/phicomm/speaker/presenter/l;

    .line 63
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "upgradeTime"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/phicomm/speaker/presenter/l;->a(Ljava/lang/String;J)V

    return-void
.end method

.method final synthetic a(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 82
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 83
    invoke-static {p0}, Lcom/phicomm/speaker/activity/ota/b;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b004d

    .line 34
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;->setContentView(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/l;->a()V

    .line 69
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method
