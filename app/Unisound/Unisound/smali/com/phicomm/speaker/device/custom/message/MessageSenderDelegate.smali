.class public Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;
.super Ljava/lang/Object;
.source "MessageSenderDelegate.java"

# interfaces
.implements Landroid/os/MessageDispatchManager$MessageReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate$LoopSendHandler;,
        Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate$Holder;
    }
.end annotation


# static fields
.field private static final MSG_SEND_INTERVAL:I = 0xbb8

.field private static final TAG:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mMessageManager:Landroid/os/MessageDispatchManager;

.field private mSendHandler:Landroid/os/Handler;

.field private mSendMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/device/custom/message/PhicommMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/device/utils/PhicommMessageManager;->messageCenter(Landroid/content/Context;)Landroid/os/MessageDispatchManager;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->mMessageManager:Landroid/os/MessageDispatchManager;

    .line 34
    new-instance v0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate$LoopSendHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate$LoopSendHandler;-><init>(Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate$1;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->mSendHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->mSendMap:Ljava/util/Map;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate$1;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate$Holder;->access$100()Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    move-result-object v0

    return-object v0
.end method

.method private getMessageWhat(II)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "subType"    # I

    .prologue
    .line 151
    mul-int/lit8 v0, p1, 0x64

    add-int/2addr v0, p2

    return v0
.end method

.method private getSentMsgKey(II)Ljava/lang/String;
    .locals 2
    .param p1, "replyType"    # I
    .param p2, "subReplyType"    # I

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sput-object p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->sContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public notifyMsg(IIILjava/lang/Object;)V
    .locals 5
    .param p1, "replyType"    # I
    .param p2, "subReplyType"    # I
    .param p3, "msgId"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->getSentMsgKey(II)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->mSendMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;

    .line 127
    .local v1, "send":Lcom/phicomm/speaker/device/custom/message/PhicommMessage;
    sget-object v2, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received message, type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sent message = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->getSubReplyType()I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->mSendHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->getType()I

    move-result v3

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->getSubType()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->getMessageWhat(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->mSendMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_0
    return-void
.end method

.method public send(III)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "subType"    # I
    .param p3, "msgId"    # I

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->send(IIILandroid/os/Parcelable;)V

    .line 65
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

    .line 76
    const/4 v1, 0x0

    move-object v0, p0

    move v3, v2

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->send(ZIIIIILandroid/os/Parcelable;)V

    .line 77
    return-void
.end method

.method public send(IILandroid/os/Parcelable;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "subType"    # I
    .param p3, "data"    # Landroid/os/Parcelable;

    .prologue
    .line 53
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->send(IIILandroid/os/Parcelable;)V

    .line 54
    return-void
.end method

.method public send(ZIIIIILandroid/os/Parcelable;)V
    .locals 13
    .param p1, "loopUntilReply"    # Z
    .param p2, "replyType"    # I
    .param p3, "subReplyType"    # I
    .param p4, "type"    # I
    .param p5, "subType"    # I
    .param p6, "msgId"    # I
    .param p7, "data"    # Landroid/os/Parcelable;

    .prologue
    .line 94
    if-eqz p1, :cond_1

    .line 95
    new-instance v4, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move v9, p2

    move/from16 v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;-><init>(IIILandroid/os/Parcelable;II)V

    .line 97
    .local v4, "msg":Lcom/phicomm/speaker/device/custom/message/PhicommMessage;
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->mSendMap:Ljava/util/Map;

    move/from16 v0, p3

    invoke-direct {p0, p2, v0}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->getSentMsgKey(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->mMessageManager:Landroid/os/MessageDispatchManager;

    invoke-virtual {v5, p0, p2}, Landroid/os/MessageDispatchManager;->registerMessageReceiver(Landroid/os/MessageDispatchManager$MessageReceiver;I)V

    .line 100
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {p0, v0, v1}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->getMessageWhat(II)I

    move-result v12

    .line 101
    .local v12, "what":I
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->mSendHandler:Landroid/os/Handler;

    invoke-virtual {v5, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 102
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->mSendHandler:Landroid/os/Handler;

    invoke-virtual {v5, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    :cond_0
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->mSendHandler:Landroid/os/Handler;

    invoke-virtual {v5, v12, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 105
    .local v11, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->mSendHandler:Landroid/os/Handler;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v5, v11, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 107
    .end local v4    # "msg":Lcom/phicomm/speaker/device/custom/message/PhicommMessage;
    .end local v11    # "message":Landroid/os/Message;
    .end local v12    # "what":I
    :cond_1
    sget-object v6, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send message to phicomm, type = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", subType = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", needReply = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", replyType = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", subReplyType = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", msgId = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", data = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p7, :cond_2

    const-string v5, "null"

    .line 120
    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-static {v6, v5}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->mMessageManager:Landroid/os/MessageDispatchManager;

    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p7

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 122
    return-void

    .line 120
    :cond_2
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
