.class public Lcom/phicomm/speaker/activity/CropImageActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "CropImageActivity.java"


# instance fields
.field mClipImageLayout:Lcom/phicomm/speaker/views/clipview/ClipImageLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090071
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 31
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/CropImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/phicomm/speaker/activity/CropImageActivity;->mClipImageLayout:Lcom/phicomm/speaker/views/clipview/ClipImageLayout;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/views/clipview/ClipImageLayout;->setPath(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/phicomm/speaker/activity/CropImageActivity;->mClipImageLayout:Lcom/phicomm/speaker/views/clipview/ClipImageLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/clipview/ClipImageLayout;->setHorizontalPadding(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b002e

    .line 26
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/CropImageActivity;->setContentView(I)V

    return-void
.end method

.method public tv_cancel()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090259
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/CropImageActivity;->finish()V

    return-void
.end method

.method public tv_complete()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090276
        }
    .end annotation

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/phicomm/speaker/activity/CropImageActivity;->mClipImageLayout:Lcom/phicomm/speaker/views/clipview/ClipImageLayout;

    invoke-virtual {v1}, Lcom/phicomm/speaker/views/clipview/ClipImageLayout;->a()Landroid/net/Uri;

    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 46
    invoke-virtual {p0, v1, v0}, Lcom/phicomm/speaker/activity/CropImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 47
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/CropImageActivity;->finish()V

    return-void
.end method
