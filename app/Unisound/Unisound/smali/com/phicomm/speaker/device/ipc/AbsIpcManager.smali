.class public Lcom/phicomm/speaker/device/ipc/AbsIpcManager;
.super Ljava/lang/Object;
.source "AbsIpcManager.java"

# interfaces
.implements Lcom/phicomm/speaker/device/ipc/IpcSender;
.implements Landroid/os/MessageDispatchManager$MessageReceiver;


# static fields
.field public static final TAG:Ljava/lang/String; = "IpcManagerAOP"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dobeforeNotifyMsg(IIILjava/lang/Object;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 29
    const-string v1, "IpcManagerAOP"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive message : domain "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " subDomain : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " sessionId : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " data : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p4, :cond_0

    .line 30
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void

    .line 30
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dobeforeSendMessage(IIILandroid/os/Parcelable;)V
    .locals 3
    .param p1, "domain"    # I
    .param p2, "subDomain"    # I
    .param p3, "sessionId"    # I
    .param p4, "data"    # Landroid/os/Parcelable;

    .prologue
    .line 24
    const-string v1, "IpcManagerAOP"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send message : domain "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " subDomain : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " sessionId : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " data : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p4, :cond_0

    .line 25
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v1, v0}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void

    .line 25
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public notifyMsg(IIILjava/lang/Object;)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/phicomm/speaker/device/ipc/AbsIpcManager;->dobeforeNotifyMsg(IIILjava/lang/Object;)V

    .line 21
    return-void
.end method

.method public sendMessage(IIILandroid/os/Parcelable;)V
    .locals 0
    .param p1, "domain"    # I
    .param p2, "subDomain"    # I
    .param p3, "sessionId"    # I
    .param p4, "data"    # Landroid/os/Parcelable;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/phicomm/speaker/device/ipc/AbsIpcManager;->dobeforeSendMessage(IIILandroid/os/Parcelable;)V

    .line 17
    return-void
.end method
