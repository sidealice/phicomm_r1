.class public Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister;
.super Ljava/lang/Object;
.source "PhicommIpcRegister.java"

# interfaces
.implements Lcom/phicomm/speaker/device/ipc/IpcRegister;


# instance fields
.field private phicommMessageManager:Landroid/os/MessageDispatchManager;

.field private receiverMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/phicomm/speaker/device/ipc/IpcReceiver;",
            "Landroid/os/MessageDispatchManager$MessageReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Lcom/phicomm/speaker/device/utils/PhicommMessageManager;->messageCenter(Landroid/content/Context;)Landroid/os/MessageDispatchManager;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister;->phicommMessageManager:Landroid/os/MessageDispatchManager;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister;->receiverMap:Ljava/util/Map;

    .line 25
    return-void
.end method

.method private cacheReceiver(Lcom/phicomm/speaker/device/ipc/IpcReceiver;Landroid/os/MessageDispatchManager$MessageReceiver;)V
    .locals 1
    .param p1, "receiver"    # Lcom/phicomm/speaker/device/ipc/IpcReceiver;
    .param p2, "phicommReceiver"    # Landroid/os/MessageDispatchManager$MessageReceiver;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister;->receiverMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister;->receiverMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_0
    return-void
.end method

.method private initPhicommReceiverByIpcReceiver(Lcom/phicomm/speaker/device/ipc/IpcReceiver;)Landroid/os/MessageDispatchManager$MessageReceiver;
    .locals 1
    .param p1, "receiver"    # Lcom/phicomm/speaker/device/ipc/IpcReceiver;

    .prologue
    .line 44
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister$1;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister$1;-><init>(Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister;Lcom/phicomm/speaker/device/ipc/IpcReceiver;)V

    return-object v0
.end method


# virtual methods
.method public registerReceiver(Lcom/phicomm/speaker/device/ipc/IpcReceiver;I)V
    .locals 2
    .param p1, "receiver"    # Lcom/phicomm/speaker/device/ipc/IpcReceiver;
    .param p2, "domain"    # I

    .prologue
    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister;->initPhicommReceiverByIpcReceiver(Lcom/phicomm/speaker/device/ipc/IpcReceiver;)Landroid/os/MessageDispatchManager$MessageReceiver;

    move-result-object v0

    .line 32
    .local v0, "phicommReceiver":Landroid/os/MessageDispatchManager$MessageReceiver;
    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister;->cacheReceiver(Lcom/phicomm/speaker/device/ipc/IpcReceiver;Landroid/os/MessageDispatchManager$MessageReceiver;)V

    .line 34
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister;->phicommMessageManager:Landroid/os/MessageDispatchManager;

    invoke-virtual {v1, v0, p2}, Landroid/os/MessageDispatchManager;->registerMessageReceiver(Landroid/os/MessageDispatchManager$MessageReceiver;I)V

    .line 35
    return-void
.end method

.method public unRegisterReceiver(Lcom/phicomm/speaker/device/ipc/IpcReceiver;)V
    .locals 2
    .param p1, "receiver"    # Lcom/phicomm/speaker/device/ipc/IpcReceiver;

    .prologue
    .line 39
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister;->phicommMessageManager:Landroid/os/MessageDispatchManager;

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister;->receiverMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageDispatchManager$MessageReceiver;

    invoke-virtual {v1, v0}, Landroid/os/MessageDispatchManager;->unregisterMessageReceiver(Landroid/os/MessageDispatchManager$MessageReceiver;)V

    .line 40
    return-void
.end method
