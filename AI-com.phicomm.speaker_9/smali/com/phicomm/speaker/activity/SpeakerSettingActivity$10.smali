.class Lcom/phicomm/speaker/activity/SpeakerSettingActivity$10;
.super Ljava/lang/Object;
.source "SpeakerSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->unBindDevice()V
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

    .line 423
    iput-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$10;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 426
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$10;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->d(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)Lcom/phicomm/speaker/presenter/d;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$10;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->c(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$10;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->c(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/phicomm/speaker/presenter/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
