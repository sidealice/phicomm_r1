.class Lcom/phicomm/speaker/activity/SpeakerSettingActivity$9;
.super Ljava/lang/Object;
.source "SpeakerSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->rebootDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$9;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 401
    invoke-static {}, Lcom/phicomm/speaker/f/u;->c()Z

    move-result p1

    if-nez p1, :cond_0

    .line 402
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$9;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    const v0, 0x7f0f0178

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void

    .line 405
    :cond_0
    invoke-static {}, Lcom/phicomm/speaker/e/d;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 406
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$9;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    const-string v0, "REBOOT_REQUEST"

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 407
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$9;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$9;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    const-class v2, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "deviceId"

    iget-object v2, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$9;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    .line 408
    invoke-static {v2}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->c(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 407
    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
