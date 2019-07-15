.class public Lcom/alibaba/mtl/appmonitor/AppMonitorService;
.super Landroid/app/Service;
.source "AppMonitorService.java"


# instance fields
.field a:Lcom/alibaba/mtl/appmonitor/IMonitor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/AppMonitorService;->a:Lcom/alibaba/mtl/appmonitor/IMonitor;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 13
    iget-object p1, p0, Lcom/alibaba/mtl/appmonitor/AppMonitorService;->a:Lcom/alibaba/mtl/appmonitor/IMonitor;

    if-nez p1, :cond_0

    .line 14
    new-instance p1, Lcom/alibaba/mtl/appmonitor/Monitor;

    invoke-virtual {p0}, Lcom/alibaba/mtl/appmonitor/AppMonitorService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/mtl/appmonitor/Monitor;-><init>(Landroid/app/Application;)V

    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/AppMonitorService;->a:Lcom/alibaba/mtl/appmonitor/IMonitor;

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/alibaba/mtl/appmonitor/AppMonitorService;->a:Lcom/alibaba/mtl/appmonitor/IMonitor;

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/AppMonitorService;->a:Lcom/alibaba/mtl/appmonitor/IMonitor;

    if-eqz v0, :cond_0

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/AppMonitorService;->a:Lcom/alibaba/mtl/appmonitor/IMonitor;

    invoke-interface {v0}, Lcom/alibaba/mtl/appmonitor/IMonitor;->triggerUpload()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :catch_0
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/AppMonitorService;->a:Lcom/alibaba/mtl/appmonitor/IMonitor;

    if-eqz v0, :cond_0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/AppMonitorService;->a:Lcom/alibaba/mtl/appmonitor/IMonitor;

    invoke-interface {v0}, Lcom/alibaba/mtl/appmonitor/IMonitor;->triggerUpload()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :catch_0
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    return-void
.end method
