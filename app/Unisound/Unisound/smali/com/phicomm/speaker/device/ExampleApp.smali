.class public Lcom/phicomm/speaker/device/ExampleApp;
.super Landroid/support/multidex/MultiDexApplication;
.source "ExampleApp.java"


# static fields
.field private static final PROCESS_NAME:Ljava/lang/String; = "com.phicomm.speaker.device"

.field private static final TAG:Ljava/lang/String; = "ExampleApp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method private getMyProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 35
    .local v2, "pid":I
    const-string v3, "activity"

    .line 36
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 37
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 38
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_0

    .line 39
    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 42
    .end local v1    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return-object v3

    :cond_1
    const-string v3, ""

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 57
    invoke-static {p0}, Lcom/unisound/vui/util/SharedPreferencesHelper;->init(Landroid/content/Context;)V

    .line 58
    invoke-static {p0}, Lcom/unisound/vui/util/AppGlobalConstant;->setContext(Landroid/content/Context;)V

    .line 59
    invoke-static {p0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->init(Landroid/content/Context;)V

    .line 60
    invoke-static {p0}, Lorg/litepal/LitePalApplication;->initialize(Landroid/content/Context;)V

    .line 61
    invoke-static {p0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->init(Landroid/content/Context;)V

    .line 62
    const-string v0, "747a0abbf5"

    sget-boolean v1, Lcom/phicomm/speaker/device/BuildConfig;->DEBUG:Z

    invoke-static {p0, v0, v1}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 63
    invoke-static {p0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->init(Landroid/content/Context;)V

    .line 64
    invoke-static {p0}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->init(Landroid/content/Context;)V

    .line 65
    new-instance v0, Lcom/phicomm/speaker/device/custom/mqtt/PhicommMQTTStatausChange;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/device/custom/mqtt/PhicommMQTTStatausChange;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/unisound/ant/device/DeviceCenterHandler;->init(Landroid/content/Context;Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;)V

    .line 67
    invoke-direct {p0}, Lcom/phicomm/speaker/device/ExampleApp;->initCustomDevicesIdProcess()V

    .line 68
    return-void
.end method

.method private initCustomDevicesIdProcess()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/phicomm/speaker/device/custom/udid/DeviceIdProcessor;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/device/custom/udid/DeviceIdProcessor;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, "deviceIdProcessor":Lcom/phicomm/speaker/device/custom/udid/DeviceIdProcessor;
    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/udid/DeviceIdProcessor;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/udid/DeviceIdProcessor;->fetchDeviceId()V

    .line 76
    :cond_0
    return-void
.end method

.method private startWindowsService()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/phicomm/speaker/device/ui/service/WindowsService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/ExampleApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 82
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 46
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 47
    invoke-direct {p0, p0}, Lcom/phicomm/speaker/device/ExampleApp;->getMyProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "processName":Ljava/lang/String;
    const-string v1, "ExampleApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "com.phicomm.speaker.device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/phicomm/speaker/device/ExampleApp;->init()V

    .line 53
    invoke-direct {p0}, Lcom/phicomm/speaker/device/ExampleApp;->startWindowsService()V

    goto :goto_0
.end method
