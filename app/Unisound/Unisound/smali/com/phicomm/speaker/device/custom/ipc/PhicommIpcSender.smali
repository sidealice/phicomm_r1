.class public Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;
.super Ljava/lang/Object;
.source "PhicommIpcSender.java"

# interfaces
.implements Lcom/phicomm/speaker/device/ipc/IpcSender;


# static fields
.field private static final TAG:Ljava/lang/String; = "PhicommIpcSender"


# instance fields
.field private mSender:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->getInstance()Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->mSender:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    .line 22
    return-void
.end method


# virtual methods
.method public send(III)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "subType"    # I
    .param p3, "msgId"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->send(IIILandroid/os/Parcelable;)V

    .line 48
    return-void
.end method

.method public send(IIILandroid/os/Parcelable;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "subType"    # I
    .param p3, "msgId"    # I
    .param p4, "data"    # Landroid/os/Parcelable;

    .prologue
    const/4 v2, -0x1

    .line 59
    const/4 v1, 0x0

    move-object v0, p0

    move v3, v2

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->send(ZIIIIILandroid/os/Parcelable;)V

    .line 60
    return-void
.end method

.method public send(IILandroid/os/Parcelable;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "subType"    # I
    .param p3, "data"    # Landroid/os/Parcelable;

    .prologue
    .line 36
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->send(IIILandroid/os/Parcelable;)V

    .line 37
    return-void
.end method

.method public send(ZIIIIILandroid/os/Parcelable;)V
    .locals 8
    .param p1, "loopUntilReply"    # Z
    .param p2, "replyType"    # I
    .param p3, "subReplyType"    # I
    .param p4, "type"    # I
    .param p5, "subType"    # I
    .param p6, "msgId"    # I
    .param p7, "data"    # Landroid/os/Parcelable;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->mSender:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->send(ZIIIIILandroid/os/Parcelable;)V

    .line 76
    return-void
.end method

.method public sendMessage(IIILandroid/os/Parcelable;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "subDomain"    # I
    .param p3, "sessionId"    # I
    .param p4, "data"    # Landroid/os/Parcelable;

    .prologue
    .line 25
    const-string v0, "PhicommIpcSender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subDomain : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sessionId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->send(IIILandroid/os/Parcelable;)V

    .line 27
    return-void
.end method
