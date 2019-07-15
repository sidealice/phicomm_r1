.class public Lcom/phicomm/speaker/activity/yanry/confignet/ApConnectActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "ApConnectActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/b/f;


# instance fields
.field private a:Landroid/graphics/drawable/AnimationDrawable;

.field mIvGuide:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900d6
    .end annotation
.end field

.field mTvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09024f
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 41
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/ApConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/jaeger/library/a;->a(Landroid/app/Activity;II)V

    .line 42
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ApConnectActivity;->mIvGuide:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ApConnectActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ApConnectActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 44
    const-class v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->setMode(Z)V

    .line 45
    const-class v0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    .line 46
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/ApConnectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "auto_connect"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a(ZLcom/phicomm/speaker/b/f;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b001f

    .line 36
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/confignet/ApConnectActivity;->setContentView(I)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "AP_CONNECT_SUCCEED"

    .line 68
    invoke-static {p0, v0}, Lcom/phicomm/speaker/f/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/confignet/ApConnectActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public e()V
    .locals 2

    const v0, 0x7f0f0085

    .line 74
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    const-string v0, "AP_CONNECT_FAILED"

    .line 75
    invoke-static {p0, v0}, Lcom/phicomm/speaker/f/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/yanry/confignet/ApOpenWifiActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/confignet/ApConnectActivity;->startActivity(Landroid/content/Intent;)V

    .line 77
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/ApConnectActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 51
    const-class v0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ApConnectActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 53
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method
