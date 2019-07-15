.class Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;
.super Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;
.source "WifiConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field b:Lcom/phicomm/speaker/c/c;

.field final synthetic c:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;Landroid/content/Context;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;->c:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;

    invoke-direct {p0, p2}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance p1, Lcom/phicomm/speaker/activity/yanry/confignet/n;

    invoke-direct {p1, p0}, Lcom/phicomm/speaker/activity/yanry/confignet/n;-><init>(Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;)V

    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;->b:Lcom/phicomm/speaker/c/c;

    return-void
.end method

.method static final synthetic a(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 110
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 111
    const-class p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {p0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-virtual {p0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->abort()V

    return-void
.end method

.method static final synthetic b(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 98
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 99
    const-class p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {p0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-virtual {p0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->abort()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    .line 94
    iget v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;->a:I

    if-ne v0, v1, :cond_0

    .line 95
    new-instance v0, Lcom/phicomm/speaker/views/e;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;->c:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;

    const v2, 0x7f0f006e

    const v3, 0x7f0f020b

    iget-object v4, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;->b:Lcom/phicomm/speaker/c/c;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/views/e;-><init>(Landroid/content/Context;IILcom/phicomm/speaker/c/c;)V

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/e;->show()V

    goto :goto_0

    .line 96
    :cond_0
    iget v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 97
    new-instance v0, Lcom/phicomm/speaker/views/e;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;->c:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;

    const v2, 0x7f0f006d

    const v3, 0x7f0f00b4

    sget-object v4, Lcom/phicomm/speaker/activity/yanry/confignet/o;->a:Lcom/phicomm/speaker/c/c;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/views/e;-><init>(Landroid/content/Context;IILcom/phicomm/speaker/c/c;)V

    .line 100
    invoke-virtual {v0}, Lcom/phicomm/speaker/views/e;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected a(IZ)V
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;->c:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;

    const-string v1, "CONFIGNET_BIND_FAILED"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "u"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 108
    :goto_0
    iget-object p2, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;->c:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;

    invoke-static {p2}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->a(Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 109
    new-instance p2, Lcom/phicomm/speaker/views/e;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;->c:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;

    iget-object v3, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;->c:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;

    const v4, 0x7f0f0079

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v3, v4, v1}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;->c:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;

    const v1, 0x7f0f00b4

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/phicomm/speaker/activity/yanry/confignet/p;->a:Lcom/phicomm/speaker/c/c;

    invoke-direct {p2, v2, p1, v0, v1}, Lcom/phicomm/speaker/views/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/c/c;)V

    .line 112
    invoke-virtual {p2}, Lcom/phicomm/speaker/views/e;->show()V

    goto :goto_1

    .line 114
    :cond_1
    iget-object p2, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;->c:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;

    invoke-static {p2, v1}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->a(Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;Z)Z

    .line 115
    new-instance p2, Lcom/phicomm/speaker/views/e;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;->c:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;

    iget-object v3, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;->c:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;

    const v4, 0x7f0f0078

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v3, v4, v1}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;->c:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;

    const v1, 0x7f0f020b

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;->b:Lcom/phicomm/speaker/c/c;

    invoke-direct {p2, v2, p1, v0, v1}, Lcom/phicomm/speaker/views/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/c/c;)V

    invoke-virtual {p2}, Lcom/phicomm/speaker/views/e;->show()V

    :goto_1
    return-void
.end method

.method protected b()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;->c:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;

    const-string v1, "CONFIGNET_BIND_SUCCEED"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;->c:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;->c:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;

    const-class v3, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetSuccessActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->startActivity(Landroid/content/Intent;)V

    .line 123
    new-instance v0, Lcom/phicomm/speaker/presenter/mqtt/a;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;->c:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/presenter/mqtt/a;-><init>(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;->c:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->b(Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;)Lcom/phicomm/speaker/bean/confignet/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/mqtt/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic c(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 2

    .line 87
    iget-object p2, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;->c:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;

    const-wide/16 v0, 0x7530

    invoke-static {p2, v0, v1}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->a(Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;J)V

    .line 88
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 89
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;->c()V

    return-void
.end method
