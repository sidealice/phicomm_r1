.class Lcom/phicomm/speaker/activity/SpeakerSettingActivity$4;
.super Ljava/lang/Object;
.source "SpeakerSettingActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/mqtt/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->onClick(Landroid/view/View;)V
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

    .line 616
    iput-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$4;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;)V
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$4;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mBassSwitch:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;->getSound_effect()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 624
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method
