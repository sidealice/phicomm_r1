.class Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;
.super Lcom/phicomm/speaker/model/confignet/ApClient;
.source "ConfigByApPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/confignet/h;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-direct {p0}, Lcom/phicomm/speaker/model/confignet/ApClient;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/net/wifi/SupplicantState;)V
    .locals 0

    return-void
.end method

.method protected a(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)Z"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->c(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)Lcom/phicomm/speaker/model/common/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/f;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 71
    iget-object v2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a(Lcom/phicomm/speaker/presenter/yanry/confignet/h;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->d(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)Lcom/phicomm/speaker/model/confignet/ApClient;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/phicomm/speaker/model/confignet/ApClient;->a(Landroid/net/wifi/ScanResult;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 73
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->b(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)Lcom/phicomm/speaker/b/f;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 74
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->b(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)Lcom/phicomm/speaker/b/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/phicomm/speaker/b/f;->e()V

    :cond_2
    return v1

    :cond_3
    const-string p1, "speaker\'s AP not found, wait for the next connect result..."

    const/4 v0, 0x0

    .line 80
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method protected b(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 129
    :pswitch_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->c(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)Lcom/phicomm/speaker/model/common/f;

    move-result-object p1

    const-wide/16 v0, 0x7530

    invoke-virtual {p1, v0, v1}, Lcom/phicomm/speaker/model/common/f;->a(J)V

    .line 130
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->d(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)Lcom/phicomm/speaker/model/confignet/ApClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/model/confignet/ApClient;->b()V

    goto :goto_0

    .line 123
    :pswitch_1
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->e(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 124
    const-class p1, Lcom/phicomm/speaker/model/common/d;

    invoke-static {p1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/model/common/d;

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->e(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/common/d;->post(Ljava/lang/Runnable;)Z

    .line 125
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a(Lcom/phicomm/speaker/presenter/yanry/confignet/h;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected b(Ljava/lang/String;)Z
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->c(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)Lcom/phicomm/speaker/model/common/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/f;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a(Lcom/phicomm/speaker/presenter/yanry/confignet/h;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string p1, "connected to speaker\'s AP."

    .line 95
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    const-class p1, Lcom/phicomm/speaker/model/common/d;

    invoke-static {p1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/model/common/d;

    new-instance v0, Lcom/phicomm/speaker/presenter/yanry/confignet/t;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/t;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;)V

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/common/d;->post(Ljava/lang/Runnable;)Z

    .line 101
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->c(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)Lcom/phicomm/speaker/model/common/f;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/common/f;->a(Lcom/phicomm/speaker/b/d;)V

    goto :goto_0

    :cond_1
    const-string p1, "keep trying."

    .line 103
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method final synthetic f()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->b(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)Lcom/phicomm/speaker/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/h$2;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->b(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)Lcom/phicomm/speaker/b/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/phicomm/speaker/b/f;->d()V

    :cond_0
    return-void
.end method
