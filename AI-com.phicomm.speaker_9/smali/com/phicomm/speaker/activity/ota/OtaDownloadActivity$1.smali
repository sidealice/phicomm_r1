.class Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity$1;
.super Lcom/phicomm/speaker/presenter/b/l;
.source "OtaDownloadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity$1;->a:Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity$1;->a:Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;->a(Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;)Lcom/phicomm/speaker/presenter/l;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity$1;->a:Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;

    invoke-virtual {v1}, Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/l;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity$1;->a:Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;->myProgressView:Lcom/phicomm/speaker/views/MyProgressView;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/MyProgressView;->setProgress(I)V

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity$1;->a:Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;->tvProgress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity$1;->a:Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;

    const-string v1, "OTA_USER_REQUEST_FAILED"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity$1;->a:Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/ota/b;->a(Landroid/app/Activity;Z)V

    return-void
.end method

.method public b(I)V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity$1;->a:Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;

    int-to-float p1, p1

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr p1, v1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    invoke-static {v0, p1}, Lcom/phicomm/speaker/activity/ota/b;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 51
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity$1;->a:Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;

    const-string v0, "OTA_USER_REQUEST_FAILED"

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity$1;->a:Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/phicomm/speaker/activity/ota/b;->a(Landroid/app/Activity;Z)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity$1;->a:Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;

    const-string v1, "OTA_USER_REQUEST_TIMEOUT"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity$1;->a:Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;->b(Lcom/phicomm/speaker/activity/ota/OtaDownloadActivity;)V

    return-void
.end method
