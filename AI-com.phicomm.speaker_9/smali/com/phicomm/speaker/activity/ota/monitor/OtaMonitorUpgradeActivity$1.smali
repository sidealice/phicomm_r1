.class Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity$1;
.super Ljava/lang/Object;
.source "OtaMonitorUpgradeActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/c/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity$1;->a:Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity$1;->a:Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;

    const-string v1, "OTA_AUTO_UPGRADE_SUCCEED"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity$1;->a:Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->b(Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity$1;->a:Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->a(Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity$1;->a:Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->finish()V

    .line 41
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity$1;->a:Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity$1;->a:Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;

    const-class v2, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeResultActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "isUpgradeSucceed"

    const/4 v2, 0x1

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    iget-object v1, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity$1;->a:Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity$1;->a:Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;

    const-string v1, "OTA_AUTO_UPGRADE_FAILED"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity$1;->a:Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->b(Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity$1;->a:Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->a(Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity$1;->a:Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->finish()V

    .line 52
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity$1;->a:Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity$1;->a:Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;

    const-class v2, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeResultActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "isUpgradeSucceed"

    const/4 v2, 0x0

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    iget-object v1, p0, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity$1;->a:Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method
