.class Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister$1;
.super Ljava/lang/Object;
.source "PhicommIpcRegister.java"

# interfaces
.implements Landroid/os/MessageDispatchManager$MessageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister;->initPhicommReceiverByIpcReceiver(Lcom/phicomm/speaker/device/ipc/IpcReceiver;)Landroid/os/MessageDispatchManager$MessageReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister;

.field final synthetic val$receiver:Lcom/phicomm/speaker/device/ipc/IpcReceiver;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister;Lcom/phicomm/speaker/device/ipc/IpcReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister$1;->this$0:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister;

    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister$1;->val$receiver:Lcom/phicomm/speaker/device/ipc/IpcReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyMsg(IIILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcRegister$1;->val$receiver:Lcom/phicomm/speaker/device/ipc/IpcReceiver;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/phicomm/speaker/device/ipc/IpcReceiver;->onReceive(IIILjava/lang/Object;)V

    .line 47
    return-void
.end method
