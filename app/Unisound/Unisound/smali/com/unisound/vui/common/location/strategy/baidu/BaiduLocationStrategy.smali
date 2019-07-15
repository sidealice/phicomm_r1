.class public Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;
.super Lcom/unisound/vui/common/location/strategy/LocationStrategy;


# instance fields
.field private baiduLocationClient:Lcom/baidu/location/g;

.field private bdAbstractLocationListener:Lcom/baidu/location/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcom/unisound/vui/common/location/strategy/LocationStrategy;-><init>()V

    new-instance v0, Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy$1;

    invoke-direct {v0, p0}, Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy$1;-><init>(Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;)V

    iput-object v0, p0, Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;->bdAbstractLocationListener:Lcom/baidu/location/b;

    new-instance v0, Lcom/baidu/location/g;

    invoke-direct {p0}, Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;->getDefaultOptions()Lcom/baidu/location/h;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/baidu/location/g;-><init>(Landroid/content/Context;Lcom/baidu/location/h;)V

    iput-object v0, p0, Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;->baiduLocationClient:Lcom/baidu/location/g;

    iget-object v0, p0, Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;->baiduLocationClient:Lcom/baidu/location/g;

    iget-object v1, p0, Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;->bdAbstractLocationListener:Lcom/baidu/location/b;

    invoke-virtual {v0, v1}, Lcom/baidu/location/g;->a(Lcom/baidu/location/b;)V

    return-void
.end method

.method static synthetic access$000(Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;Lcom/baidu/location/c;)Z
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;
    .param p1, "x1"    # Lcom/baidu/location/c;

    .prologue
    invoke-direct {p0, p1}, Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;->isLocateSuccess(Lcom/baidu/location/c;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;Lcom/baidu/location/c;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;
    .param p1, "x1"    # Lcom/baidu/location/c;

    .prologue
    invoke-direct {p0, p1}, Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;->getLocationFailInfo(Lcom/baidu/location/c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultOptions()Lcom/baidu/location/h;
    .locals 2

    new-instance v0, Lcom/baidu/location/h;

    invoke-direct {v0}, Lcom/baidu/location/h;-><init>()V

    sget-object v1, Lcom/baidu/location/h$a;->b:Lcom/baidu/location/h$a;

    invoke-virtual {v0, v1}, Lcom/baidu/location/h;->a(Lcom/baidu/location/h$a;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/location/h;->a(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/location/h;->b(Z)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/baidu/location/h;->a(I)V

    return-object v0
.end method

.method private getLocationFailInfo(Lcom/baidu/location/c;)Ljava/lang/String;
    .locals 1
    .param p1, "bdLocation"    # Lcom/baidu/location/c;

    .prologue
    if-nez p1, :cond_0

    const-string v0, "bdLocation is null !!"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/baidu/location/c;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isLocateSuccess(Lcom/baidu/location/c;)Z
    .locals 2
    .param p1, "bdLocation"    # Lcom/baidu/location/c;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/location/c;->h()I

    move-result v0

    const/16 v1, 0xa1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public startLocation()V
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;->isStartLocation:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;->baiduLocationClient:Lcom/baidu/location/g;

    invoke-virtual {v0}, Lcom/baidu/location/g;->a()V

    :cond_0
    invoke-super {p0}, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->startLocation()V

    return-void
.end method

.method public stopLocation()V
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;->isStartLocation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;->baiduLocationClient:Lcom/baidu/location/g;

    invoke-virtual {v0}, Lcom/baidu/location/g;->b()V

    :cond_0
    invoke-super {p0}, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->stopLocation()V

    return-void
.end method
