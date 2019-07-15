.class Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$2;
.super Lcom/phicomm/speaker/model/common/f;
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
.field final synthetic a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-direct {p0}, Lcom/phicomm/speaker/model/common/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 3

    if-eqz p1, :cond_2

    const-string p1, "last state code = %s"

    const/4 v0, 0x1

    .line 93
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {v2}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->f(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->f(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)I

    move-result p1

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->f(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->a(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->f(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)I

    move-result v0

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->g(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->a(IZ)V

    goto :goto_1

    .line 95
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->a()V

    :cond_2
    :goto_1
    return-void
.end method
