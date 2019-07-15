.class Lcom/phicomm/speaker/presenter/mqtt/d$1;
.super Ljava/lang/Object;
.source "MqttMessageWatcher.java"

# interfaces
.implements Lcom/phicomm/speaker/c/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/presenter/mqtt/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/mqtt/d;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/mqtt/d;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/d$1;->a:Lcom/phicomm/speaker/presenter/mqtt/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "MqttMessageWatcher"

    const-string v1, "onInstallFinish"

    .line 51
    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/d$1;->a:Lcom/phicomm/speaker/presenter/mqtt/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/mqtt/d;->a(Lcom/phicomm/speaker/presenter/mqtt/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/c/g;

    .line 54
    invoke-interface {v1}, Lcom/phicomm/speaker/c/g;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 5

    const-string v0, "MqttMessageWatcher"

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInstallStart installTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isUserStartOtaing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/presenter/mqtt/d$1;->a:Lcom/phicomm/speaker/presenter/mqtt/d;

    invoke-static {v2}, Lcom/phicomm/speaker/presenter/mqtt/d;->b(Lcom/phicomm/speaker/presenter/mqtt/d;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/d$1;->a:Lcom/phicomm/speaker/presenter/mqtt/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/mqtt/d;->b(Lcom/phicomm/speaker/presenter/mqtt/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/phicomm/speaker/f/c;->a()Lcom/phicomm/speaker/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/f/c;->b()Landroid/app/Activity;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 75
    const-class v2, Lcom/phicomm/speaker/activity/ota/monitor/OtaMonitorUpgradeActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "upgradeTime"

    int-to-float v3, p1

    const/high16 v4, 0x42700000    # 60.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    .line 76
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string v1, "OTA_AUTO_UPGRADE"

    .line 78
    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/d$1;->a:Lcom/phicomm/speaker/presenter/mqtt/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/mqtt/d;->a(Lcom/phicomm/speaker/presenter/mqtt/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/c/g;

    .line 82
    invoke-interface {v1, p1}, Lcom/phicomm/speaker/c/g;->a(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "MqttMessageWatcher"

    const-string v1, "onInstallFail"

    .line 60
    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/d$1;->a:Lcom/phicomm/speaker/presenter/mqtt/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/mqtt/d;->a(Lcom/phicomm/speaker/presenter/mqtt/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/c/g;

    .line 63
    invoke-interface {v1}, Lcom/phicomm/speaker/c/g;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3

    const-string v0, "MqttMessageWatcher"

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadProgress progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isUserStartOtaing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/presenter/mqtt/d$1;->a:Lcom/phicomm/speaker/presenter/mqtt/d;

    invoke-static {v2}, Lcom/phicomm/speaker/presenter/mqtt/d;->b(Lcom/phicomm/speaker/presenter/mqtt/d;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/d$1;->a:Lcom/phicomm/speaker/presenter/mqtt/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/mqtt/d;->a(Lcom/phicomm/speaker/presenter/mqtt/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/c/g;

    .line 98
    invoke-interface {v1, p1}, Lcom/phicomm/speaker/c/g;->b(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "MqttMessageWatcher"

    const-string v1, "onDownloadStart"

    .line 88
    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/d$1;->a:Lcom/phicomm/speaker/presenter/mqtt/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/mqtt/d;->a(Lcom/phicomm/speaker/presenter/mqtt/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/c/g;

    .line 90
    invoke-interface {v1}, Lcom/phicomm/speaker/c/g;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "MqttMessageWatcher"

    const-string v1, "onDownloadFail"

    .line 104
    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/d$1;->a:Lcom/phicomm/speaker/presenter/mqtt/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/mqtt/d;->a(Lcom/phicomm/speaker/presenter/mqtt/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/c/g;

    .line 106
    invoke-interface {v1}, Lcom/phicomm/speaker/c/g;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "MqttMessageWatcher"

    const-string v1, "onDownloadFinish"

    .line 112
    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/d$1;->a:Lcom/phicomm/speaker/presenter/mqtt/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/mqtt/d;->a(Lcom/phicomm/speaker/presenter/mqtt/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/c/g;

    .line 114
    invoke-interface {v1}, Lcom/phicomm/speaker/c/g;->e()V

    goto :goto_0

    :cond_0
    return-void
.end method
