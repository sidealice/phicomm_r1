.class public abstract Lcom/unisound/vui/common/location/strategy/LocationStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/common/location/action/LocateInterface;
.implements Lcom/unisound/vui/common/location/listener/LocationListener;


# static fields
.field private static final MAX_ERROR_LOCATION_TIMES:I = 0xa


# instance fields
.field private currentErrorTimes:I

.field protected isStartLocation:Z

.field private mLocationListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/common/location/listener/LocationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->currentErrorTimes:I

    iput-boolean v0, p0, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->isStartLocation:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->mLocationListenerList:Ljava/util/List;

    return-void
.end method

.method private checkMaxErrorTimes(Ljava/lang/String;)V
    .locals 2
    .param p1, "locationErrorMessage"    # Ljava/lang/String;

    .prologue
    iget v0, p0, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->currentErrorTimes:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->stopLocation()V

    iget-object v0, p0, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->mLocationListenerList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->notifyLocationListenerListFail(Ljava/util/List;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->currentErrorTimes:I

    :cond_0
    return-void
.end method

.method private notifyLocationListenerListFail(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p2, "locationFailInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/common/location/listener/LocationListener;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "mLocationListenerList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/common/location/listener/LocationListener;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/common/location/listener/LocationListener;

    invoke-interface {v0, p2}, Lcom/unisound/vui/common/location/listener/LocationListener;->onLocationFail(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyLocationListenerListSuccess(Ljava/util/List;Lcom/unisound/vui/common/location/bean/LocationInfo;)V
    .locals 2
    .param p2, "locationInfo"    # Lcom/unisound/vui/common/location/bean/LocationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/common/location/listener/LocationListener;",
            ">;",
            "Lcom/unisound/vui/common/location/bean/LocationInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "mLocationListenerList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/common/location/listener/LocationListener;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/common/location/listener/LocationListener;

    invoke-interface {v0, p2}, Lcom/unisound/vui/common/location/listener/LocationListener;->onLocationSuccess(Lcom/unisound/vui/common/location/bean/LocationInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onDestory()V
    .locals 0

    invoke-virtual {p0}, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->stopLocation()V

    invoke-virtual {p0}, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->unRegisterAllLocationListener()V

    return-void
.end method

.method public onLocationFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "locationErrorMessage"    # Ljava/lang/String;

    .prologue
    iget v0, p0, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->currentErrorTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->currentErrorTimes:I

    invoke-direct {p0, p1}, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->checkMaxErrorTimes(Ljava/lang/String;)V

    return-void
.end method

.method public onLocationSuccess(Lcom/unisound/vui/common/location/bean/LocationInfo;)V
    .locals 1
    .param p1, "locationInfo"    # Lcom/unisound/vui/common/location/bean/LocationInfo;

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->currentErrorTimes:I

    invoke-virtual {p0}, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->stopLocation()V

    iget-object v0, p0, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->mLocationListenerList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->notifyLocationListenerListSuccess(Ljava/util/List;Lcom/unisound/vui/common/location/bean/LocationInfo;)V

    return-void
.end method

.method public registerLocationLinstener(Lcom/unisound/vui/common/location/listener/LocationListener;)V
    .locals 1
    .param p1, "locationListener"    # Lcom/unisound/vui/common/location/listener/LocationListener;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->mLocationListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->mLocationListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public startLocation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->isStartLocation:Z

    return-void
.end method

.method public stopLocation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->isStartLocation:Z

    return-void
.end method

.method public unRegisterAllLocationListener()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->mLocationListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public unRegisterLocationListener(Lcom/unisound/vui/common/location/listener/LocationListener;)V
    .locals 1
    .param p1, "locationListener"    # Lcom/unisound/vui/common/location/listener/LocationListener;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->mLocationListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->mLocationListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
