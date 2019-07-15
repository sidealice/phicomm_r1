.class Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity$1;
.super Lcom/phicomm/speaker/presenter/b/l;
.source "OtaUpgradeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity$1;->a:Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/l;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity$1;->a:Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;

    const-string v1, "OTA_USER_REQUEST_SUCCEED"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity$1;->a:Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/ota/b;->a(Landroid/app/Activity;Z)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity$1;->a:Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;

    const-string v1, "OTA_USER_REQUEST_FAILED"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity$1;->a:Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/ota/b;->a(Landroid/app/Activity;Z)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity$1;->a:Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;

    const-string v1, "OTA_USER_REQUEST_TIMEOUT"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity$1;->a:Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;->a(Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;)V

    return-void
.end method
