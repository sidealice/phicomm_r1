.class public Lcom/phicomm/speaker/activity/UpdateDetailActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "UpdateDetailActivity.java"


# instance fields
.field mTvContent:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900ee
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/phicomm/speaker/bean/Introduction;)V
    .locals 2

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/UpdateDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Introduction"

    .line 37
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const v0, 0x7f0f027a

    .line 27
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/UpdateDetailActivity;->e(I)V

    .line 28
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/UpdateDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Introduction"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/Introduction;

    if-nez v0, :cond_0

    const v1, 0x7f0f020b

    .line 30
    invoke-static {v1}, Lcom/phicomm/speaker/f/ab;->a(I)V

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/activity/UpdateDetailActivity;->mTvContent:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/Introduction;->getIntroduction_content()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b005e

    .line 22
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/UpdateDetailActivity;->setContentView(I)V

    return-void
.end method
