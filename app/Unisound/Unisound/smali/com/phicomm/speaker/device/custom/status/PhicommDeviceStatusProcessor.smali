.class public Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;
.super Ljava/lang/Object;
.source "PhicommDeviceStatusProcessor.java"

# interfaces
.implements Lcom/phicomm/speaker/device/ipc/IpcReceiver;
.implements Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$StatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;,
        Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$Holder;
    }
.end annotation


# static fields
.field public static final SP_DEVICE_STATUS:Ljava/lang/String; = "deviceStatus"

.field public static final STATUS_BLUETOOTH:I = 0x3

.field public static final STATUS_DORMANT:I = 0x5

.field public static final STATUS_MUSIC:I = 0x1

.field public static final STATUS_READY:I = 0x0

.field public static final STATUS_SETUP_NET:I = 0x2

.field public static final TAG:Ljava/lang/String; = "PhicommDeviceStatusProcessor"

.field private static sContext:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mDeviceStatus:Ljava/lang/Integer;

.field private mIpcManager:Lcom/phicomm/speaker/device/ipc/IpcManager;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSceneStateMachine:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mDeviceStatus:Ljava/lang/Integer;

    .line 46
    sget-object v0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/device/ipc/IpcManager;->defaultInstance(Landroid/content/Context;)Lcom/phicomm/speaker/device/ipc/IpcManager;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mIpcManager:Lcom/phicomm/speaker/device/ipc/IpcManager;

    .line 47
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mIpcManager:Lcom/phicomm/speaker/device/ipc/IpcManager;

    const v1, 0x8000

    invoke-virtual {v0, p0, v1}, Lcom/phicomm/speaker/device/ipc/IpcManager;->registerReceiver(Lcom/phicomm/speaker/device/ipc/IpcReceiver;I)V

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$1;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$Holder;->access$000()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 66
    sput-object p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sContext:Landroid/content/Context;

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private setDeviceStatus(I)V
    .locals 2
    .param p1, "deviceStatus"    # I

    .prologue
    .line 171
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mDeviceStatus:Ljava/lang/Integer;

    .line 172
    sget-object v0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/vui/util/SharedPreferencesHelper;->getInstance(Landroid/content/Context;)Lcom/unisound/vui/util/SharedPreferencesHelper;

    move-result-object v0

    const-string v1, "deviceStatus"

    invoke-virtual {v0, v1, p1}, Lcom/unisound/vui/util/SharedPreferencesHelper;->saveIntValue(Ljava/lang/String;I)V

    .line 173
    return-void
.end method


# virtual methods
.method public addDeviceStatusChangedListener(Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;

    .prologue
    .line 90
    const-class v1, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mListeners:Ljava/util/List;

    .line 94
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_1
    return-void

    .line 94
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDeviceStatus()I
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mDeviceStatus:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 120
    sget-object v0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sContext:Landroid/content/Context;

    .line 121
    invoke-static {v0}, Lcom/unisound/vui/util/SharedPreferencesHelper;->getInstance(Landroid/content/Context;)Lcom/unisound/vui/util/SharedPreferencesHelper;

    move-result-object v0

    const-string v1, "deviceStatus"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/util/SharedPreferencesHelper;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mDeviceStatus:Ljava/lang/Integer;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mDeviceStatus:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public onReceive(IIILjava/lang/Object;)V
    .locals 4
    .param p1, "domain"    # I
    .param p2, "subDomain"    # I
    .param p3, "sessionId"    # I
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    .line 127
    const/16 v3, 0x33

    if-ne p2, v3, :cond_2

    .line 128
    check-cast p4, Landroid/os/ParcelableUtil;

    .end local p4    # "data":Ljava/lang/Object;
    invoke-virtual {p4}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 129
    .local v1, "isMusicOn":Z
    if-eqz v1, :cond_1

    .line 130
    const/16 v3, 0x67

    invoke-virtual {p0, v3}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    .line 168
    .end local v1    # "isMusicOn":Z
    :cond_0
    :goto_0
    return-void

    .line 132
    .restart local v1    # "isMusicOn":Z
    :cond_1
    const/16 v3, 0x68

    invoke-virtual {p0, v3}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    goto :goto_0

    .line 134
    .end local v1    # "isMusicOn":Z
    .restart local p4    # "data":Ljava/lang/Object;
    :cond_2
    const/16 v3, 0x34

    if-ne p2, v3, :cond_4

    .line 135
    check-cast p4, Landroid/os/ParcelableUtil;

    .end local p4    # "data":Ljava/lang/Object;
    invoke-virtual {p4}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 136
    .local v0, "isBtOn":Z
    if-eqz v0, :cond_3

    .line 137
    const/16 v3, 0x6b

    invoke-virtual {p0, v3}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    goto :goto_0

    .line 139
    :cond_3
    const/16 v3, 0x6c

    invoke-virtual {p0, v3}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    goto :goto_0

    .line 141
    .end local v0    # "isBtOn":Z
    .restart local p4    # "data":Ljava/lang/Object;
    :cond_4
    const/16 v3, 0x35

    if-ne p2, v3, :cond_0

    .line 142
    check-cast p4, Landroid/os/ParcelableUtil;

    .end local p4    # "data":Ljava/lang/Object;
    invoke-virtual {p4}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 143
    .local v2, "isNetConfigOn":Z
    if-eqz v2, :cond_5

    .line 144
    const/16 v3, 0x69

    invoke-virtual {p0, v3}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    goto :goto_0

    .line 146
    :cond_5
    const/16 v3, 0x6a

    invoke-virtual {p0, v3}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    goto :goto_0
.end method

.method public onStateChanged(I)V
    .locals 7
    .param p1, "newState"    # I

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v1

    .line 177
    .local v1, "prevStatus":I
    const-string v2, "PhicommDeviceStatusProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceived device status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", prevStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->setDeviceStatus(I)V

    .line 179
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mIpcManager:Lcom/phicomm/speaker/device/ipc/IpcManager;

    const/16 v3, 0x4000

    const/4 v4, 0x4

    const/4 v5, -0x1

    const/4 v6, 0x1

    .line 180
    invoke-static {v6}, Landroid/os/ParcelableUtil;->obtain(Z)Landroid/os/ParcelableUtil;

    move-result-object v6

    .line 179
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/phicomm/speaker/device/ipc/IpcManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 181
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;

    .line 183
    .local v0, "listener":Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;
    invoke-interface {v0, v1, p1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;->onDeviceStatusChanged(II)V

    goto :goto_0

    .line 186
    .end local v0    # "listener":Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mIpcManager:Lcom/phicomm/speaker/device/ipc/IpcManager;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/device/ipc/IpcManager;->unRegisterReceiver(Lcom/phicomm/speaker/device/ipc/IpcReceiver;)V

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mListeners:Ljava/util/List;

    .line 82
    :cond_0
    return-void
.end method

.method public removeDeviceStatusChangedListener(Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mListeners:Ljava/util/List;

    .line 110
    :cond_0
    return-void
.end method

.method public sendStatusMessage(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mSceneStateMachine:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->sendMessage(I)V

    .line 205
    return-void
.end method

.method public startMonitorStatus()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    sget-object v1, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mSceneStateMachine:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mSceneStateMachine:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->registerStatusChangedListener(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$StatusChangedListener;)V

    .line 57
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mSceneStateMachine:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->start()V

    .line 58
    return-void
.end method
