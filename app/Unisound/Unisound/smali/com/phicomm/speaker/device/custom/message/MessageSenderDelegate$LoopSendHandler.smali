.class Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate$LoopSendHandler;
.super Landroid/os/Handler;
.source "MessageSenderDelegate.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoopSendHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate$LoopSendHandler;->this$0:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;
    .param p2, "x1"    # Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate$1;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate$LoopSendHandler;-><init>(Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 175
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;

    .line 176
    .local v8, "phicommMsg":Lcom/phicomm/speaker/device/custom/message/PhicommMessage;
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate$LoopSendHandler;->this$0:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    const/4 v1, 0x1

    invoke-virtual {v8}, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->getReplyType()I

    move-result v2

    invoke-virtual {v8}, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->getSubReplyType()I

    move-result v3

    invoke-virtual {v8}, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->getType()I

    move-result v4

    .line 177
    invoke-virtual {v8}, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->getSubType()I

    move-result v5

    invoke-virtual {v8}, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->getMsgId()I

    move-result v6

    invoke-virtual {v8}, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->getData()Landroid/os/Parcelable;

    move-result-object v7

    .line 176
    invoke-virtual/range {v0 .. v7}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->send(ZIIIIILandroid/os/Parcelable;)V

    .line 178
    return-void
.end method
