.class public Lcom/phicomm/speaker/activity/yanry/confignet/ApOpenWifiActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "ApOpenWifiActivity.java"


# instance fields
.field mIvBackView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900d7
    .end annotation
.end field

.field mIvGuide:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900d8
    .end annotation
.end field

.field mTvGotoConnect:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090250
    .end annotation
.end field

.field tvTip:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902fc
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
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/ApOpenWifiActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/jaeger/library/a;->a(Landroid/app/Activity;II)V

    .line 44
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ApOpenWifiActivity;->tvTip:Landroid/widget/TextView;

    const v1, 0x7f0f0031

    invoke-static {v1}, Lcom/phicomm/speaker/f/a/c;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0020

    .line 38
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/confignet/ApOpenWifiActivity;->setContentView(I)V

    return-void
.end method

.method public c()V
    .locals 0

    .line 62
    invoke-static {p0}, Lcom/phicomm/speaker/f/a/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public iv_ap_open_wifi_back()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0900d7
        }
    .end annotation

    .line 67
    invoke-static {p0}, Lcom/phicomm/speaker/f/a/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0x2766

    if-ne p1, p2, :cond_1

    .line 51
    const-class p1, Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-static {p1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/confignet/ApOpenWifiActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 54
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/phicomm/speaker/activity/yanry/confignet/ApConnectActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "auto_connect"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/confignet/ApOpenWifiActivity;->startActivity(Landroid/content/Intent;)V

    .line 56
    :goto_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/ApOpenWifiActivity;->finish()V

    :cond_1
    return-void
.end method

.method public tv_ap_open_wifi_connect()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090250
        }
    .end annotation

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2766

    .line 73
    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/activity/yanry/confignet/ApOpenWifiActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
