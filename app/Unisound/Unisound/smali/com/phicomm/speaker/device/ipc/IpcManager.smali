.class public Lcom/phicomm/speaker/device/ipc/IpcManager;
.super Lcom/phicomm/speaker/device/ipc/AbsIpcManager;
.source "IpcManager.java"


# instance fields
.field private mIpcReceiver:Lcom/phicomm/speaker/device/ipc/IpcRegister;

.field private mIpcSender:Lcom/phicomm/speaker/device/ipc/IpcSender;

.field private mReceiver:Lcom/phicomm/speaker/device/ipc/IpcReceiver;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/device/ipc/IpcSender;Lcom/phicomm/speaker/device/ipc/IpcRegister;)V
    .locals 0
    .param p1, "ipcSender"    # Lcom/phicomm/speaker/device/ipc/IpcSender;
    .param p2, "ipcRegister"    # Lcom/phicomm/speaker/device/ipc/IpcRegister;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/phicomm/speaker/device/ipc/AbsIpcManager;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/phicomm/speaker/device/ipc/IpcManager;->mIpcSender:Lcom/phicomm/speaker/device/ipc/IpcSender;

    .line 25
    iput-object p2, p0, Lcom/phicomm/speaker/device/ipc/IpcManager;->mIpcReceiver:Lcom/phicomm/speaker/device/ipc/IpcRegister;

    .line 26
    return-void
.end method

.method public static defaultInstance(Landroid/content/Context;)Lcom/phicomm/speaker/device/ipc/IpcManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    new-instance v0, Lcom/phicomm/speaker/device/ipc/IpcManager;

    new-instance v1, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/device/ipc/IpcManager;-><init>(Lcom/phicomm/speaker/device/ipc/IpcSender;Lcom/phicomm/speaker/device/ipc/IpcRegister;)V

    return-object v0
.end method


# virtual methods
.method public notifyMsg(IIILjava/lang/Object;)V
    .locals 1
    .param p1, "domain"    # I
    .param p2, "subDomain"    # I
    .param p3, "sessionId"    # I
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    .line 53
    invoke-super {p0, p1, p2, p3, p4}, Lcom/phicomm/speaker/device/ipc/AbsIpcManager;->notifyMsg(IIILjava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/phicomm/speaker/device/ipc/IpcManager;->mReceiver:Lcom/phicomm/speaker/device/ipc/IpcReceiver;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/phicomm/speaker/device/ipc/IpcReceiver;->onReceive(IIILjava/lang/Object;)V

    .line 55
    return-void
.end method

.method public registerReceiver(Lcom/phicomm/speaker/device/ipc/IpcReceiver;I)V
    .locals 1
    .param p1, "receiver"    # Lcom/phicomm/speaker/device/ipc/IpcReceiver;
    .param p2, "domain"    # I

    .prologue
    .line 43
    iput-object p1, p0, Lcom/phicomm/speaker/device/ipc/IpcManager;->mReceiver:Lcom/phicomm/speaker/device/ipc/IpcReceiver;

    .line 44
    iget-object v0, p0, Lcom/phicomm/speaker/device/ipc/IpcManager;->mIpcReceiver:Lcom/phicomm/speaker/device/ipc/IpcRegister;

    invoke-interface {v0, p1, p2}, Lcom/phicomm/speaker/device/ipc/IpcRegister;->registerReceiver(Lcom/phicomm/speaker/device/ipc/IpcReceiver;I)V

    .line 45
    return-void
.end method

.method public sendMessage(IIILandroid/os/Parcelable;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "subDomain"    # I
    .param p3, "sessionId"    # I
    .param p4, "data"    # Landroid/os/Parcelable;

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Lcom/phicomm/speaker/device/ipc/AbsIpcManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 49
    iget-object v0, p0, Lcom/phicomm/speaker/device/ipc/IpcManager;->mIpcSender:Lcom/phicomm/speaker/device/ipc/IpcSender;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/phicomm/speaker/device/ipc/IpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 50
    return-void
.end method

.method public unRegisterReceiver(Lcom/phicomm/speaker/device/ipc/IpcReceiver;)V
    .locals 1
    .param p1, "receiver"    # Lcom/phicomm/speaker/device/ipc/IpcReceiver;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/phicomm/speaker/device/ipc/IpcManager;->mIpcReceiver:Lcom/phicomm/speaker/device/ipc/IpcRegister;

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/device/ipc/IpcRegister;->unRegisterReceiver(Lcom/phicomm/speaker/device/ipc/IpcReceiver;)V

    .line 63
    return-void
.end method
