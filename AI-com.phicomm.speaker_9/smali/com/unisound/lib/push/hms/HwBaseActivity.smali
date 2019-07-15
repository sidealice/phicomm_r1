.class public Lcom/unisound/lib/push/hms/HwBaseActivity;
.super Landroid/support/v4/app/FragmentActivity;


# instance fields
.field private activityCallBack:Lcom/unisound/lib/push/intf/IActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/hms/HwBaseActivity;->activityCallBack:Lcom/unisound/lib/push/intf/IActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/lib/push/hms/HwBaseActivity;->activityCallBack:Lcom/unisound/lib/push/intf/IActivity;

    invoke-interface {v0, p1, p2, p3}, Lcom/unisound/lib/push/intf/IActivity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/unisound/lib/push/hms/HwBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/unisound/lib/push/hms/HwBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/unisound/lib/push/R$string;->scheme:I

    invoke-virtual {p0, v0}, Lcom/unisound/lib/push/hms/HwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/unisound/lib/push/hms/HwBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "notice"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "HwBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOTICE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/unisound/lib/push/hms/HwBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.unisound.athena.EXTRA_CONTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public setActivityCallBack(Lcom/unisound/lib/push/intf/IActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/hms/HwBaseActivity;->activityCallBack:Lcom/unisound/lib/push/intf/IActivity;

    return-void
.end method
