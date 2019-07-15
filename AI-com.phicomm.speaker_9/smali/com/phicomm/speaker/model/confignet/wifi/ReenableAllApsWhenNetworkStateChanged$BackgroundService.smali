.class public Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService;
.super Landroid/app/Service;
.source "ReenableAllApsWhenNetworkStateChanged.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundService"
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/content/BroadcastReceiver;

.field private c:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 59
    new-instance v0, Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService$1;-><init>(Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService;)V

    iput-object v0, p0, Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService;->a:Z

    return p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService;->a:Z

    return p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 90
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService;->a:Z

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService;->c:Landroid/content/IntentFilter;

    .line 93
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService;->b:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService;->c:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 98
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 99
    iget-object v0, p0, Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/model/confignet/wifi/ReenableAllApsWhenNetworkStateChanged$BackgroundService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
