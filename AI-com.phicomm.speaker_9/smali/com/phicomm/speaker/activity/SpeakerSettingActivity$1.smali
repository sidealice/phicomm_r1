.class Lcom/phicomm/speaker/activity/SpeakerSettingActivity$1;
.super Lcom/phicomm/speaker/presenter/b/d;
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

    .line 169
    iput-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$1;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 188
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 189
    iget-object p2, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$1;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    iget-object p2, p2, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->tvWakeName:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$1;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    const-string v1, "\u89e3\u7ed1\u6210\u529f"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 181
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/a/q;

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/a/q;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$1;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->finish()V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 172
    invoke-super {p0, p1, p2}, Lcom/phicomm/speaker/presenter/b/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$1;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
