.class public Lcom/unisound/vui/common/location/client/LocationClientImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/common/location/client/LocationClient;


# instance fields
.field private mLocationStrategy:Lcom/unisound/vui/common/location/strategy/LocationStrategy;


# direct methods
.method public constructor <init>(Lcom/unisound/vui/common/location/strategy/LocationStrategy;)V
    .locals 2
    .param p1, "locationStrategy"    # Lcom/unisound/vui/common/location/strategy/LocationStrategy;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locationStrategy is null !!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/unisound/vui/common/location/client/LocationClientImpl;->mLocationStrategy:Lcom/unisound/vui/common/location/strategy/LocationStrategy;

    return-void
.end method


# virtual methods
.method public onDestory()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/location/client/LocationClientImpl;->mLocationStrategy:Lcom/unisound/vui/common/location/strategy/LocationStrategy;

    invoke-virtual {v0}, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->onDestory()V

    return-void
.end method

.method public registerLocationLinstener(Lcom/unisound/vui/common/location/listener/LocationListener;)V
    .locals 2
    .param p1, "locationListener"    # Lcom/unisound/vui/common/location/listener/LocationListener;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locationStrategy is null !!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/common/location/client/LocationClientImpl;->mLocationStrategy:Lcom/unisound/vui/common/location/strategy/LocationStrategy;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->registerLocationLinstener(Lcom/unisound/vui/common/location/listener/LocationListener;)V

    return-void
.end method

.method public startLocation()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/location/client/LocationClientImpl;->mLocationStrategy:Lcom/unisound/vui/common/location/strategy/LocationStrategy;

    invoke-virtual {v0}, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->startLocation()V

    return-void
.end method

.method public stopLocation()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/location/client/LocationClientImpl;->mLocationStrategy:Lcom/unisound/vui/common/location/strategy/LocationStrategy;

    invoke-virtual {v0}, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->stopLocation()V

    return-void
.end method

.method public unRegisterAllLocationListener()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/location/client/LocationClientImpl;->mLocationStrategy:Lcom/unisound/vui/common/location/strategy/LocationStrategy;

    invoke-virtual {v0}, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->unRegisterAllLocationListener()V

    return-void
.end method

.method public unRegisterLocationListener(Lcom/unisound/vui/common/location/listener/LocationListener;)V
    .locals 2
    .param p1, "locationListener"    # Lcom/unisound/vui/common/location/listener/LocationListener;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locationStrategy is null !!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/common/location/client/LocationClientImpl;->mLocationStrategy:Lcom/unisound/vui/common/location/strategy/LocationStrategy;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->unRegisterLocationListener(Lcom/unisound/vui/common/location/listener/LocationListener;)V

    return-void
.end method
