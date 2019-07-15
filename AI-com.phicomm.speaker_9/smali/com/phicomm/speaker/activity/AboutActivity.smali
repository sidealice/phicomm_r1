.class public Lcom/phicomm/speaker/activity/AboutActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "AboutActivity.java"


# instance fields
.field private a:J

.field mTvNew:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b5
    .end annotation
.end field

.field mTvVersion:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090304
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const v0, 0x7f0f001d

    .line 43
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/AboutActivity;->e(I)V

    .line 44
    iget-object v0, p0, Lcom/phicomm/speaker/activity/AboutActivity;->mTvVersion:Landroid/widget/TextView;

    const-string v1, "\u6590\u8bafAI 2.0.0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/AboutActivity;->b()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b001b

    .line 38
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/AboutActivity;->setContentView(I)V

    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x4

    :try_start_0
    const-string v1, "app_new_vercode"

    const-string v2, ""

    .line 53
    invoke-static {v1, v2}, Lcom/phicomm/speaker/f/y;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Lcom/phicomm/speaker/f/b;->c()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 55
    iget-object v1, p0, Lcom/phicomm/speaker/activity/AboutActivity;->mTvNew:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/activity/AboutActivity;->mTvNew:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    iget-object v1, p0, Lcom/phicomm/speaker/activity/AboutActivity;->mTvNew:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public getInstructionDetail()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09006d
        }
    .end annotation

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/IntroductionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/AboutActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public ib_update()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09006f
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/phicomm/speaker/manager/d;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/manager/d;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/manager/d;->a(Z)V

    return-void
.end method

.method public tv_version()V
    .locals 7
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090304
        }
    .end annotation

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 71
    iget-wide v2, p0, Lcom/phicomm/speaker/activity/AboutActivity;->a:J

    long-to-double v2, v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v4, v2

    if-eqz v6, :cond_0

    iget-wide v2, p0, Lcom/phicomm/speaker/activity/AboutActivity;->a:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x7d0

    cmp-long v2, v4, v0

    if-gez v2, :cond_0

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7248\u672c\u4fe1\u606f: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/phicomm/speaker/f/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/phicomm/speaker/activity/AboutActivity;->a:J

    :goto_0
    return-void
.end method
