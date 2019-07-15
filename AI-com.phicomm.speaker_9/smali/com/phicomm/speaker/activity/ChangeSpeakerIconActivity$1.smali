.class Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity$1;
.super Lcom/phicomm/speaker/presenter/b/d;
.source "ChangeSpeakerIconActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity$1;->a:Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity$1;->a:Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->b(Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;)Lcom/phicomm/speaker/adapter/n;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity$1;->a:Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->c(Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/n;->a(I)V

    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "newpicgrou"

    .line 75
    iget-object v2, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity$1;->a:Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;

    invoke-static {v2}, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->d(Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;)Lcom/phicomm/speaker/net/resultbean/GroupPic;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity$1;->a:Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->setResult(ILandroid/content/Intent;)V

    .line 77
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity$1;->a:Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->finish()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/net/resultbean/GroupPic;",
            ">;)V"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity$1;->a:Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->b(Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;)Lcom/phicomm/speaker/adapter/n;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity$1;->a:Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->a(Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/adapter/n;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 82
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity$1;->a:Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;

    const p2, 0x7f0f021f

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method
