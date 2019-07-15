.class public Lcom/phicomm/speaker/activity/ota/OtaCheckActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "OtaCheckActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field private a:Landroid/graphics/drawable/AnimationDrawable;

.field private b:Lcom/phicomm/speaker/presenter/l;

.field ivOtaCheck:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090112
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-static {p0, v0, v1}, Lcom/jaeger/library/a;->a(Landroid/app/Activity;ILandroid/view/View;)V

    .line 40
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckActivity;->ivOtaCheck:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    .line 41
    new-instance v0, Lcom/phicomm/speaker/presenter/l;

    new-instance v1, Lcom/phicomm/speaker/activity/ota/OtaCheckActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/ota/OtaCheckActivity$1;-><init>(Lcom/phicomm/speaker/activity/ota/OtaCheckActivity;)V

    invoke-direct {v0, p0, v1, p0}, Lcom/phicomm/speaker/presenter/l;-><init>(Landroid/content/Context;Lcom/phicomm/speaker/presenter/b/l;Lcom/phicomm/speaker/presenter/b/f;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckActivity;->b:Lcom/phicomm/speaker/presenter/l;

    .line 54
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ota/OtaCheckActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "deviceInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;

    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckActivity;->b:Lcom/phicomm/speaker/presenter/l;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->getHardwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->getRomVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/phicomm/speaker/presenter/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v7, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckActivity;->b:Lcom/phicomm/speaker/presenter/l;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/phicomm/speaker/presenter/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b004a

    .line 34
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/ota/OtaCheckActivity;->setContentView(I)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckActivity;->b:Lcom/phicomm/speaker/presenter/l;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/l;->a()V

    .line 65
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method
