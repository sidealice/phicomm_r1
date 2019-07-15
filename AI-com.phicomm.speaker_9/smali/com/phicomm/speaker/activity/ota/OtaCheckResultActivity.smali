.class public Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "OtaCheckResultActivity.java"


# instance fields
.field tvOtaInfo:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902c1
    .end annotation
.end field

.field tvOtaVersion:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902c2
    .end annotation
.end field

.field tvSkip:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902e2
    .end annotation
.end field

.field viewIsLatest:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09014c
    .end annotation
.end field

.field viewNeedUpgrade:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09014d
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 78
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move p1, v0

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;->tvSkip:Landroid/widget/TextView;

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    :cond_0
    const/16 v0, 0x8

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private b()V
    .locals 6

    .line 59
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RomUpdateBean"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity$1;-><init>(Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;)V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v0, v1, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/RomUpdateBean;

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    .line 61
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/RomUpdateBean;->getRet()I

    move-result v3

    if-nez v3, :cond_2

    .line 62
    iget-object v3, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;->viewIsLatest:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v1, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;->viewNeedUpgrade:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v1, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;->tvOtaInfo:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 65
    iget-object v1, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;->tvOtaVersion:Landroid/widget/TextView;

    const v3, 0x7f0f0192

    invoke-virtual {p0, v3}, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/RomUpdateBean;->getFw_ver()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/RomUpdateBean;->getFw_ver()Ljava/lang/String;

    move-result-object v5

    :goto_0
    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;->tvOtaInfo:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0f0196

    invoke-virtual {p0, v3}, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/RomUpdateBean;->getVer_infos()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/RomUpdateBean;->getVer_infos()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/RomUpdateBean;->getUpdate_type()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;->viewIsLatest:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;->viewNeedUpgrade:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-static {p0, v0, v1}, Lcom/jaeger/library/a;->a(Landroid/app/Activity;ILandroid/view/View;)V

    .line 50
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;->b()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b004b

    .line 44
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;->setContentView(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method tv_skip()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902e2
        }
    .end annotation

    .line 91
    invoke-static {p0}, Lcom/phicomm/speaker/activity/ota/b;->b(Landroid/app/Activity;)V

    return-void
.end method

.method tv_sure()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902f9
        }
    .end annotation

    .line 96
    invoke-static {p0}, Lcom/phicomm/speaker/activity/ota/b;->b(Landroid/app/Activity;)V

    return-void
.end method

.method tv_upgrade_now()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090303
        }
    .end annotation

    .line 86
    invoke-static {p0}, Lcom/phicomm/speaker/activity/ota/b;->a(Landroid/app/Activity;)V

    return-void
.end method
