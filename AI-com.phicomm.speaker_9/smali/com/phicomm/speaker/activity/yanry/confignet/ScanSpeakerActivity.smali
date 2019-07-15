.class public Lcom/phicomm/speaker/activity/yanry/confignet/ScanSpeakerActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "ScanSpeakerActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/b/f;


# instance fields
.field private a:Landroid/graphics/drawable/AnimationDrawable;

.field private b:Z

.field mIvScan:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090120
    .end annotation
.end field

.field mTvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902d3
    .end annotation
.end field

.field tvTip:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902d2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/ScanSpeakerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/jaeger/library/a;->a(Landroid/app/Activity;II)V

    .line 47
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ScanSpeakerActivity;->mIvScan:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ScanSpeakerActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    .line 48
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ScanSpeakerActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 49
    const-class v0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a(Lcom/phicomm/speaker/b/f;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0056

    .line 40
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/confignet/ScanSpeakerActivity;->setContentView(I)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ScanSpeakerActivity;->mTvTitle:Landroid/widget/TextView;

    const v1, 0x7f0f008a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 69
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ScanSpeakerActivity;->tvTip:Landroid/widget/TextView;

    const v1, 0x7f0f0089

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ScanSpeakerActivity;->b:Z

    .line 71
    const-class v1, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {v1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->setFoundBtDevice(Z)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "BL_CONNECT_SUCCEED"

    .line 76
    invoke-static {p0, v0}, Lcom/phicomm/speaker/f/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/confignet/ScanSpeakerActivity;->startActivity(Landroid/content/Intent;)V

    .line 78
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/ScanSpeakerActivity;->finish()V

    return-void
.end method

.method public e()V
    .locals 2

    .line 83
    iget-boolean v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ScanSpeakerActivity;->b:Z

    if-nez v0, :cond_0

    .line 84
    const-class v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->setFoundBtDevice(Z)V

    :cond_0
    const-string v0, "BL_CONNECT_FAILED"

    .line 86
    invoke-static {p0, v0}, Lcom/phicomm/speaker/f/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/confignet/ScanSpeakerActivity;->startActivity(Landroid/content/Intent;)V

    .line 88
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/ScanSpeakerActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ScanSpeakerActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ScanSpeakerActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 58
    :cond_0
    const-class v0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->a(Ljava/lang/Object;)V

    .line 59
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method
