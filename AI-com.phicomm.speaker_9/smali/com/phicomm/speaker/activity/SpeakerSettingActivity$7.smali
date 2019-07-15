.class Lcom/phicomm/speaker/activity/SpeakerSettingActivity$7;
.super Lcom/phicomm/speaker/presenter/b/o;
.source "SpeakerSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a()V
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

    .line 213
    iput-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$7;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$7;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mDormancySwitch:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 218
    invoke-static {}, Lcom/phicomm/speaker/e/b;->a()Lcom/phicomm/speaker/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/b;->b()Lcom/phicomm/speaker/e/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$7;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/e/a/a;->c(Ljava/lang/String;I)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$7;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mDormancySwitch:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 225
    invoke-static {}, Lcom/phicomm/speaker/e/b;->a()Lcom/phicomm/speaker/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/b;->b()Lcom/phicomm/speaker/e/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$7;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/e/a/a;->c(Ljava/lang/String;I)V

    return-void
.end method
