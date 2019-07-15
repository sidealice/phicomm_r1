.class public Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "OtaDownloadActivity.java"


# instance fields
.field private a:Lcom/phicomm/speaker/presenter/l;

.field myProgressView:Lcom/phicomm/speaker/views/MyProgressView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09018c
    .end annotation
.end field

.field tvProgress:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902c7
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;)Lcom/phicomm/speaker/presenter/l;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;->a:Lcom/phicomm/speaker/presenter/l;

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 98
    new-instance v0, Lcom/phicomm/speaker/views/e;

    new-instance v1, Lcom/phicomm/speaker/activity/ota/a;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/ota/a;-><init>(Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;)V

    const v2, 0x7f0f0195

    const v3, 0x7f0f00b4

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/phicomm/speaker/views/e;-><init>(Landroid/content/Context;IILcom/phicomm/speaker/c/c;)V

    .line 101
    invoke-virtual {v0}, Lcom/phicomm/speaker/views/e;->show()V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-static {p0, v1, v0}, Lcom/jaeger/library/a;->a(Landroid/app/Activity;ILandroid/view/View;)V

    .line 41
    iget-object v1, p0, Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;->tvProgress:Landroid/widget/TextView;

    const-string v2, "0%"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    new-instance v1, Lcom/phicomm/speaker/presenter/l;

    new-instance v2, Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity$1;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity$1;-><init>(Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;)V

    invoke-direct {v1, p0, v2, v0}, Lcom/phicomm/speaker/presenter/l;-><init>(Landroid/content/Context;Lcom/phicomm/speaker/presenter/b/l;Lcom/phicomm/speaker/presenter/b/f;)V

    iput-object v1, p0, Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;->a:Lcom/phicomm/speaker/presenter/l;

    .line 80
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/l;->a(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic a(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 99
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 100
    invoke-static {p0}, Lcom/phicomm/speaker/activity/ota/b;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b004c

    .line 35
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;->setContentView(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/l;->a()V

    .line 86
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method
