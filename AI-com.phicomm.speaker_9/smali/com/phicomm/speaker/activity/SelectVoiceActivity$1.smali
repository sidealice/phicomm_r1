.class Lcom/phicomm/speaker/activity/SelectVoiceActivity$1;
.super Lcom/phicomm/speaker/presenter/b/o;
.source "SelectVoiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/SelectVoiceActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/SelectVoiceActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/SelectVoiceActivity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity$1;->a:Lcom/phicomm/speaker/activity/SelectVoiceActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity$1;->a:Lcom/phicomm/speaker/activity/SelectVoiceActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "speakerVoice"

    iget-object v3, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity$1;->a:Lcom/phicomm/speaker/activity/SelectVoiceActivity;

    invoke-static {v3}, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->a(Lcom/phicomm/speaker/activity/SelectVoiceActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->setResult(ILandroid/content/Intent;)V

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity$1;->a:Lcom/phicomm/speaker/activity/SelectVoiceActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->finish()V

    return-void
.end method
