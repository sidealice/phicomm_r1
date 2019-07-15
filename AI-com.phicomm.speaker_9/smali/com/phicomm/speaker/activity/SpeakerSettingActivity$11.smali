.class Lcom/phicomm/speaker/activity/SpeakerSettingActivity$11;
.super Ljava/lang/Object;
.source "SpeakerSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a(Lcom/phicomm/speaker/bean/RomUpdateBean;)V
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

    .line 453
    iput-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$11;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 457
    new-instance p1, Lcom/phicomm/speaker/presenter/mqtt/c;

    invoke-direct {p1}, Lcom/phicomm/speaker/presenter/mqtt/c;-><init>()V

    .line 458
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$11;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->c(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getRom_version()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/mqtt/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    new-instance v0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$11$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$11$1;-><init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity$11;)V

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/mqtt/c;->a(Lcom/phicomm/speaker/presenter/mqtt/c$a;)V

    goto :goto_0

    .line 474
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$11;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    const-string v0, "OTA_USER_REQUEST"

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 475
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$11;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$11;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->c(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_id()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/phicomm/speaker/activity/ota/b;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method
