.class Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;
.super Ljava/lang/Object;
.source "BindDevicePresenter.java"

# interfaces
.implements Lcom/phicomm/speaker/e/c/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$1;)V
    .locals 0

    .line 199
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)V

    return-void
.end method

.method private a(I)V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->a(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;Z)Z

    .line 250
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {v1, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->a(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;I)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->b(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;Z)Z

    .line 251
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->b(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/model/common/f;

    move-result-object p1

    monitor-enter p1

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->b(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/model/common/f;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 253
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 4

    const-string v0, "bind device success(%s): %s"

    const/4 v1, 0x2

    .line 213
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a(I)V

    .line 215
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->b(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/model/common/f;

    move-result-object p1

    new-instance p2, Lcom/phicomm/speaker/presenter/yanry/confignet/f;

    invoke-direct {p2, p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/f;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;)V

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/model/common/f;->a(Lcom/phicomm/speaker/b/d;)V

    return-void
.end method

.method public a(IZLjava/lang/String;)V
    .locals 4

    const-string v0, "bind device fail(%s): %s."

    const/4 v1, 0x2

    .line 223
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a(I)V

    .line 225
    iget-object p3, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {p3}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->b(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/model/common/f;

    move-result-object p3

    new-instance v0, Lcom/phicomm/speaker/presenter/yanry/confignet/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/confignet/g;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;IZ)V

    invoke-virtual {p3, v0}, Lcom/phicomm/speaker/model/common/f;->a(Lcom/phicomm/speaker/b/d;)V

    return-void
.end method

.method final synthetic a()Z
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->b()V

    const/4 v0, 0x1

    return v0
.end method

.method final synthetic a(IZ)Z
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->b(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;I)I

    .line 227
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {v0, p2}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->c(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;Z)Z

    .line 228
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->c(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 229
    const-class p1, Lcom/phicomm/speaker/model/common/d;

    invoke-static {p1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/model/common/d;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, p0, v2, v3}, Lcom/phicomm/speaker/model/common/d;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->a(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 234
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->c(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->c(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {p2}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->d(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/model/confignet/ApClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/phicomm/speaker/model/confignet/ApClient;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->e(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->e(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->getSsid()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {p2}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->d(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/model/confignet/ApClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/phicomm/speaker/model/confignet/ApClient;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    return v1

    .line 238
    :cond_3
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->a()V

    goto :goto_0

    .line 241
    :cond_4
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->a(IZ)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method final synthetic b()Z
    .locals 12

    const-string v0, "do binding..."

    const/4 v1, 0x0

    .line 204
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v3

    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    const-string v2, "CLOUD_ACCOUNT_PHONE"

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/manager/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->h(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/bean/confignet/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->h(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/bean/confignet/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    .line 206
    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->h(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/bean/confignet/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->h(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/bean/confignet/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->getHardwareVersion()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->h(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/bean/confignet/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->getRomVersion()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->h(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/bean/confignet/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v10

    move-object v11, p0

    .line 205
    invoke-virtual/range {v3 .. v11}, Lcom/phicomm/speaker/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/c;)V

    return v1
.end method

.method public run()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->b(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/model/common/f;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/confignet/e;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/e;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/common/f;->a(Lcom/phicomm/speaker/b/d;)V

    return-void
.end method
