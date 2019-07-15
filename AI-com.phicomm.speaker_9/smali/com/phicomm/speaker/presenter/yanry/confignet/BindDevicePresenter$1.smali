.class Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$1;
.super Lcom/phicomm/speaker/model/confignet/ApClient;
.source "BindDevicePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$1;->b:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-direct {p0}, Lcom/phicomm/speaker/model/confignet/ApClient;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/net/wifi/SupplicantState;)V
    .locals 0

    return-void
.end method

.method protected a(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method protected b(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$1;->a:Z

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$1;->b:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->b(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/model/common/f;

    move-result-object p1

    new-instance v0, Lcom/phicomm/speaker/presenter/yanry/confignet/d;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/d;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$1;)V

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/common/f;->a(Lcom/phicomm/speaker/b/d;)V

    :cond_0
    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$1;->a:Z

    return-void
.end method

.method protected b(Ljava/lang/String;)Z
    .locals 0

    .line 58
    iget-boolean p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$1;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$1;->b:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->a(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method final synthetic f()Z
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$1;->b:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->c(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$1;->b:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->c(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$1;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$1;->b:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->d(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/model/confignet/ApClient;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$1;->b:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->c(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/confignet/ApClient;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$1;->b:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->e(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$1;->b:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->e(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$1;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$1;->b:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->d(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/model/confignet/ApClient;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$1;->b:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->e(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->getSsid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$1;->b:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {v2}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->e(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->getBssid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$1;->b:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {v3}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->e(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->getPassword()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$1;->b:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {v4}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->e(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->getSecurity()Lcom/phicomm/speaker/constants/yanry/WifiSecurity;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/model/confignet/ApClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/constants/yanry/WifiSecurity;)Z

    :goto_0
    const/4 v0, 0x0

    return v0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$1;->b:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->a()V

    const/4 v0, 0x1

    return v0
.end method
