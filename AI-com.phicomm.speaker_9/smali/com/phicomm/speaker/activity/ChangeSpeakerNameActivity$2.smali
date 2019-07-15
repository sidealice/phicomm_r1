.class Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity$2;
.super Lcom/phicomm/speaker/presenter/b/d;
.source "ChangeSpeakerNameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity$2;->a:Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "newname"

    .line 89
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity$2;->a:Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->setResult(ILandroid/content/Intent;)V

    .line 91
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity$2;->a:Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->finish()V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 96
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity$2;->a:Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;

    const p2, 0x7f0f021f

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method
