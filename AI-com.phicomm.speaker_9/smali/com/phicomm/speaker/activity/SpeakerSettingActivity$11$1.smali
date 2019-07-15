.class Lcom/phicomm/speaker/activity/SpeakerSettingActivity$11$1;
.super Ljava/lang/Object;
.source "SpeakerSettingActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/mqtt/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/SpeakerSettingActivity$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity$11;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity$11;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$11$1;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "SpeakerSettingActivity"

    const-string v1, "deviceOnline"

    .line 462
    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$11$1;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity$11;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$11;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    const-string v1, "OTA_USER_REQUEST"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$11$1;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity$11;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$11;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$11$1;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity$11;

    iget-object v1, v1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$11;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->c(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_id()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/phicomm/speaker/activity/ota/b;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    const-string v0, "SpeakerSettingActivity"

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method
