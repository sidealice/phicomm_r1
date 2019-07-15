.class public Lcom/phicomm/speaker/f/a/c;
.super Ljava/lang/Object;
.source "ConfigNetUtil.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/constants/yanry/WifiSecurity;Z)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 81
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    if-eqz p4, :cond_0

    .line 82
    invoke-static {p0}, Lcom/phicomm/speaker/f/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    iput-object p0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 83
    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 84
    invoke-static {v0, p2, p3}, Lcom/phicomm/speaker/f/a/c;->a(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Lcom/phicomm/speaker/constants/yanry/WifiSecurity;)V

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Z)Lcom/phicomm/speaker/b/b;
    .locals 4

    .line 231
    const-class v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    .line 232
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->isFoundBtDevice()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->getBtScanTimes()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 233
    const-class v1, Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    invoke-static {v1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    .line 234
    sget-object v2, Lcom/phicomm/speaker/f/a/c$3;->b:[I

    invoke-virtual {v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->d()Lcom/phicomm/speaker/constants/yanry/BluetoothState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/phicomm/speaker/constants/yanry/BluetoothState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 270
    :pswitch_0
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->increaseBtScanTimes()V

    .line 271
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/yanry/confignet/ScanSpeakerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    if-eqz p1, :cond_1

    .line 273
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 242
    :pswitch_1
    invoke-static {p0}, Lcom/phicomm/speaker/f/a/c;->a(Landroid/app/Activity;)V

    .line 243
    new-instance v2, Lcom/phicomm/speaker/f/a/g;

    invoke-direct {v2, v0, p0, p1, v1}, Lcom/phicomm/speaker/f/a/g;-><init>(Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;Landroid/app/Activity;ZLcom/phicomm/speaker/presenter/yanry/confignet/u;)V

    return-object v2

    .line 236
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/yanry/confignet/ApConnectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    if-eqz p1, :cond_1

    .line 238
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 279
    :cond_0
    const-class p1, Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-static {p1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    new-instance v0, Lcom/phicomm/speaker/f/a/h;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/f/a/h;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lcom/phicomm/speaker/constants/yanry/WifiSecurity;
    .locals 1

    const-string v0, "WPA"

    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    sget-object p0, Lcom/phicomm/speaker/constants/yanry/WifiSecurity;->WPA:Lcom/phicomm/speaker/constants/yanry/WifiSecurity;

    return-object p0

    :cond_0
    const-string v0, "WEP"

    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 74
    sget-object p0, Lcom/phicomm/speaker/constants/yanry/WifiSecurity;->WEP:Lcom/phicomm/speaker/constants/yanry/WifiSecurity;

    return-object p0

    .line 76
    :cond_1
    sget-object p0, Lcom/phicomm/speaker/constants/yanry/WifiSecurity;->INSECURE:Lcom/phicomm/speaker/constants/yanry/WifiSecurity;

    return-object p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 4

    .line 296
    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Phicomm_R1_XXXX"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 393
    invoke-virtual {p0}, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;->getDev_list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;->getDev_list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 394
    invoke-virtual {p0}, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;->getDev_list()Ljava/util/List;

    move-result-object p0

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 396
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;

    .line 397
    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->getDevice_type()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->getDevice_type()Ljava/lang/String;

    move-result-object v2

    const-string v3, "phicomm_echo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->getDev_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->extra_data:Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean$ExtraData;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->extra_data:Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean$ExtraData;

    iget-object v2, v2, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean$ExtraData;->udid:Ljava/lang/String;

    .line 398
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->extra_data:Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean$ExtraData;

    iget-object v2, v2, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean$ExtraData;->model:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->extra_data:Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean$ExtraData;

    iget-object v2, v2, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean$ExtraData;->hardware_version:Ljava/lang/String;

    .line 399
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->extra_data:Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean$ExtraData;

    iget-object v2, v2, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean$ExtraData;->rom_version:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 402
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 404
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x42

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static final synthetic a(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 161
    const-class p1, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {p1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->abort()V

    .line 162
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 64
    new-instance v0, Lcom/phicomm/speaker/views/CommonDialog$Builder;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/views/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {p0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-virtual {p0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->isNeedBind()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0f003f

    goto :goto_0

    :cond_0
    const p0, 0x7f0f01f9

    :goto_0
    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object p0

    const v0, 0x7f0f0040

    .line 65
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->b(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object p0

    const v0, 0x7f0f0041

    .line 66
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->d(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object p0

    sget-object v0, Lcom/phicomm/speaker/f/a/d;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->b(Landroid/view/View$OnClickListener;)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a()Lcom/phicomm/speaker/views/CommonDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/CommonDialog;->show()V

    return-void
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 139
    invoke-static {p0, p1, p2, v0}, Lcom/phicomm/speaker/f/a/c;->a(Landroid/content/Context;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    .line 143
    const-class v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    .line 144
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->getPresenter()Lcom/phicomm/speaker/b/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/phicomm/speaker/b/e;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 148
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 150
    :cond_1
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->isApMode()Z

    move-result p2

    const p3, 0x7f0f00b4

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    const p0, 0x7f0f002d

    .line 152
    invoke-static {p0}, Lcom/phicomm/speaker/f/a/c;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_2
    new-instance p1, Lcom/phicomm/speaker/views/e;

    const p2, 0x7f0f002e

    invoke-static {p2}, Lcom/phicomm/speaker/f/a/c;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/phicomm/speaker/f/a/e;->a:Lcom/phicomm/speaker/c/c;

    invoke-direct {p1, p0, p2, p3, v0}, Lcom/phicomm/speaker/views/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/c/c;)V

    .line 157
    invoke-virtual {p1}, Lcom/phicomm/speaker/views/e;->show()V

    goto :goto_0

    .line 160
    :cond_3
    new-instance p1, Lcom/phicomm/speaker/views/e;

    const p2, 0x7f0f0156

    sget-object v0, Lcom/phicomm/speaker/f/a/f;->a:Lcom/phicomm/speaker/c/c;

    invoke-direct {p1, p0, p2, p3, v0}, Lcom/phicomm/speaker/views/e;-><init>(Landroid/content/Context;IILcom/phicomm/speaker/c/c;)V

    .line 163
    invoke-virtual {p1}, Lcom/phicomm/speaker/views/e;->show()V

    :goto_0
    return-void
.end method

.method public static a(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Lcom/phicomm/speaker/constants/yanry/WifiSecurity;)V
    .locals 4

    .line 89
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 90
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 91
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 92
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 93
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 95
    sget-object v0, Lcom/phicomm/speaker/f/a/c$3;->a:[I

    invoke-virtual {p2}, Lcom/phicomm/speaker/constants/yanry/WifiSecurity;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 113
    :pswitch_0
    invoke-static {p1}, Lcom/phicomm/speaker/f/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 114
    iput-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 115
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    .line 116
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 117
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 118
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 119
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 120
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 121
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    .line 102
    :pswitch_1
    iput-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 103
    iget-object p2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {p1}, Lcom/phicomm/speaker/f/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    .line 104
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 105
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 106
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 107
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    .line 108
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 109
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    .line 110
    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto :goto_0

    .line 97
    :pswitch_2
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->set(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static final synthetic a(Landroid/view/View;)V
    .locals 0

    .line 66
    const-class p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {p0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-virtual {p0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->abort()V

    return-void
.end method

.method public static a(Lcom/phicomm/speaker/base/BaseActivity;)V
    .locals 3

    .line 313
    invoke-static {}, Lcom/phicomm/speaker/f/u;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/phicomm/speaker/f/u;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    invoke-static {}, Lcom/phicomm/speaker/f/u;->f()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "philink"

    const-string v2, "getPhiLinkDevices Gatewayip empty "

    .line 320
    invoke-static {v0, v2}, Lcom/phicomm/speaker/f/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-static {p0, v1}, Lcom/phicomm/speaker/f/a/c;->b(Landroid/app/Activity;Z)V

    return-void

    :cond_1
    const v0, 0x7f0f0133

    .line 324
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/base/BaseActivity;->e(Ljava/lang/String;)V

    .line 325
    new-instance v0, Lcom/phicomm/speaker/model/i;

    invoke-direct {v0}, Lcom/phicomm/speaker/model/i;-><init>()V

    new-instance v1, Lcom/phicomm/speaker/f/a/c$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/f/a/c$1;-><init>(Lcom/phicomm/speaker/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/i;->a(Lcom/phicomm/speaker/net/a/a;)V

    return-void

    :cond_2
    :goto_0
    const-string v0, "philink"

    const-string v2, "tryPhiLink Gateway empty "

    .line 314
    invoke-static {v0, v2}, Lcom/phicomm/speaker/f/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {p0, v1}, Lcom/phicomm/speaker/f/a/c;->b(Landroid/app/Activity;Z)V

    return-void
.end method

.method public static a(Lcom/phicomm/speaker/base/BaseFragmentActivity;)V
    .locals 2

    .line 356
    invoke-static {}, Lcom/phicomm/speaker/f/u;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/phicomm/speaker/f/u;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0f0133

    .line 361
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/base/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/base/BaseFragmentActivity;->a(Ljava/lang/String;)V

    .line 362
    new-instance v0, Lcom/phicomm/speaker/model/i;

    invoke-direct {v0}, Lcom/phicomm/speaker/model/i;-><init>()V

    new-instance v1, Lcom/phicomm/speaker/f/a/c$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/f/a/c$2;-><init>(Lcom/phicomm/speaker/base/BaseFragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/i;->a(Lcom/phicomm/speaker/net/a/a;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "philink"

    const-string v1, "tryPhiLink Gateway empty "

    .line 357
    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 358
    invoke-static {p0, v0}, Lcom/phicomm/speaker/f/a/c;->b(Landroid/app/Activity;Z)V

    return-void
.end method

.method static final synthetic a(Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;Landroid/app/Activity;ZLcom/phicomm/speaker/presenter/yanry/confignet/u;II)V
    .locals 1

    const/16 v0, 0x42

    if-ne p4, v0, :cond_0

    const/4 p3, -0x1

    if-ne p5, p3, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->increaseBtScanTimes()V

    .line 247
    new-instance p0, Landroid/content/Intent;

    const-class p3, Lcom/phicomm/speaker/activity/yanry/confignet/ScanSpeakerActivity;

    invoke-direct {p0, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    if-eqz p2, :cond_1

    .line 249
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const/16 p5, 0x43

    if-ne p4, p5, :cond_1

    .line 260
    invoke-virtual {p3}, Lcom/phicomm/speaker/presenter/yanry/confignet/u;->d()Lcom/phicomm/speaker/constants/yanry/BluetoothState;

    move-result-object p3

    sget-object p4, Lcom/phicomm/speaker/constants/yanry/BluetoothState;->ENABLE:Lcom/phicomm/speaker/constants/yanry/BluetoothState;

    if-ne p3, p4, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->increaseBtScanTimes()V

    .line 262
    new-instance p0, Landroid/content/Intent;

    const-class p3, Lcom/phicomm/speaker/activity/yanry/confignet/ScanSpeakerActivity;

    invoke-direct {p0, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    if-eqz p2, :cond_1

    .line 264
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "UTF-8"

    .line 301
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    sget-object v0, Lcom/phicomm/speaker/constants/yanry/a;->h:[B

    sget-object v1, Lcom/phicomm/speaker/constants/yanry/a;->j:Ljava/lang/String;

    sget-object v2, Lcom/phicomm/speaker/constants/yanry/a;->i:[B

    invoke-static {p0, v0, v1, v2}, Lcom/blankj/utilcode/util/a;->a([B[BLjava/lang/String;[B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 303
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static final synthetic b(Landroid/app/Activity;)V
    .locals 2

    .line 280
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/yanry/confignet/ApConnectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 281
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static b(Landroid/app/Activity;Z)V
    .locals 1

    .line 291
    const-class v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-virtual {v0, p0, p1}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->setFromActivity(Landroid/app/Activity;Z)V

    .line 292
    new-instance v0, Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-class p1, Lcom/phicomm/speaker/activity/yanry/confignet/PowerGuideActivity;

    goto :goto_0

    :cond_0
    const-class p1, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;

    :goto_0
    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static final synthetic b(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 155
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_1

    return-object p0

    .line 135
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
