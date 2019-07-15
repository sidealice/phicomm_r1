.class public Lcom/phicomm/speaker/device/ui/service/WindowsService;
.super Landroid/app/Service;
.source "WindowsService.java"

# interfaces
.implements Lcom/unisound/vui/message/TransferHandlerWithGui;


# static fields
.field private static final NOTIFICATION_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WindowsService"

.field private static antServiceBinder:Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private showNotificationForAliveBackground()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 113
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, "builder":Landroid/app/Notification$Builder;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/phicomm/speaker/device/ui/MainActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    invoke-static {p0, v5, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 116
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 117
    const v3, 0x7f020007

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 118
    const-string v3, "Foreground Service Start"

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 119
    const-string v3, "Foreground Service"

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 120
    const-string v3, "Make this service run in the foreground."

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 121
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 122
    .local v2, "notification":Landroid/app/Notification;
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/phicomm/speaker/device/ui/service/WindowsService;->startForegroundCompat(ILandroid/app/Notification;)V

    .line 123
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 68
    const-string v0, "WindowsService"

    const-string v1, "-->>onBind"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/phicomm/speaker/device/ui/service/WindowsService;->antServiceBinder:Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 31
    const-string v0, "WindowsService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/ui/service/WindowsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/common/config/ANTConfigPreference;->init(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/phicomm/speaker/device/ui/service/WindowsService;->showNotificationForAliveBackground()V

    .line 34
    sget-object v0, Lcom/phicomm/speaker/device/ui/service/WindowsService;->antServiceBinder:Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;

    invoke-virtual {p0}, Lcom/phicomm/speaker/device/ui/service/WindowsService;->getApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;-><init>(Landroid/app/Application;Lcom/unisound/vui/engine/ANTAudioSourceImpl;)V

    sput-object v0, Lcom/phicomm/speaker/device/ui/service/WindowsService;->antServiceBinder:Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;

    .line 37
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/ui/service/WindowsService;->stopForegroundCompat(I)V

    .line 42
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 43
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 79
    const-string v0, "WindowsService"

    const-string v1, "onRebind"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 62
    const-string v0, "WindowsService"

    const-string v1, "Windows Service Start"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/ui/service/WindowsService;->stopSelf()V

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public preReceiveMsg(Lcom/unisound/vui/message/MessageBeanHandlerGui;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/vui/message/MessageBeanHandlerGui",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "messageBeanHandlerGui":Lcom/unisound/vui/message/MessageBeanHandlerGui;, "Lcom/unisound/vui/message/MessageBeanHandlerGui<*>;"
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/ui/service/WindowsService;->receiveMsg(Lcom/unisound/vui/message/MessageBeanHandlerGui;)V

    .line 110
    return-void
.end method

.method public receiveMsg(Lcom/unisound/vui/message/MessageBeanHandlerGui;)V
    .locals 3
    .param p1, "message"    # Lcom/unisound/vui/message/MessageBeanHandlerGui;

    .prologue
    .line 94
    if-nez p1, :cond_1

    .line 95
    const-string v0, "WindowsService"

    const-string v1, "receiveMsg message is null"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p1}, Lcom/unisound/vui/message/MessageBeanHandlerGui;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoloumeChange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const-string v0, "WindowsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receiveMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/unisound/vui/message/MessageBeanHandlerGui;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerMessageHandlerWithGui(Lcom/unisound/vui/message/TransferHandlerWithGui;)V
    .locals 0
    .param p1, "transferHandlerWithGui"    # Lcom/unisound/vui/message/TransferHandlerWithGui;

    .prologue
    .line 106
    return-void
.end method

.method public sendMsg(Lcom/unisound/vui/message/MessageBeanHandlerGui;Lcom/unisound/vui/message/TransferHandlerWithGui;)V
    .locals 3
    .param p1, "message"    # Lcom/unisound/vui/message/MessageBeanHandlerGui;
    .param p2, "receiver"    # Lcom/unisound/vui/message/TransferHandlerWithGui;

    .prologue
    .line 83
    const-string v0, "WindowsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMsg to handler:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lcom/unisound/vui/message/MessageBeanHandlerGui;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/unisound/vui/message/MessageBeanHandlerGui;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/unisound/vui/message/HandlerSelectData;

    if-eqz v0, :cond_0

    .line 85
    const-string v1, "WindowsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMsg to handler data:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 86
    invoke-virtual {p1}, Lcom/unisound/vui/message/MessageBeanHandlerGui;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/message/HandlerSelectData;

    invoke-virtual {v0}, Lcom/unisound/vui/message/HandlerSelectData;->getHandlerSelectType()Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/vui/message/HandlerSelectData$HandlerSelectType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v1, v0}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    if-eqz p2, :cond_1

    .line 89
    invoke-interface {p2, p1}, Lcom/unisound/vui/message/TransferHandlerWithGui;->preReceiveMsg(Lcom/unisound/vui/message/MessageBeanHandlerGui;)V

    .line 91
    :cond_1
    return-void
.end method

.method startForegroundCompat(ILandroid/app/Notification;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/device/ui/service/WindowsService;->startForeground(ILandroid/app/Notification;)V

    .line 51
    return-void
.end method

.method stopForegroundCompat(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/ui/service/WindowsService;->stopForeground(Z)V

    .line 59
    return-void
.end method
