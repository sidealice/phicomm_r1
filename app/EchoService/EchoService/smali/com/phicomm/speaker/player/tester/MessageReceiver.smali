.class public Lcom/phicomm/speaker/player/tester/MessageReceiver;
.super Ljava/lang/Object;
.source "MessageReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/tester/MessageReceiver$1;,
        Lcom/phicomm/speaker/player/tester/MessageReceiver$MessageHandler;,
        Lcom/phicomm/speaker/player/tester/MessageReceiver$MsgReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDispatchManager:Landroid/os/MessageDispatchManager;

.field private mMessageHandler:Lcom/phicomm/speaker/player/tester/MessageReceiver$MessageHandler;

.field private mMsgReceiver:Lcom/phicomm/speaker/player/tester/MessageReceiver$MsgReceiver;

.field private mPlayerResponseListener:Lcom/phicomm/speaker/player/tester/IPlayerResponseListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/phicomm/speaker/player/tester/MessageReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/tester/MessageReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/phicomm/speaker/player/tester/MessageReceiver$MsgReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/player/tester/MessageReceiver$MsgReceiver;-><init>(Lcom/phicomm/speaker/player/tester/MessageReceiver;Lcom/phicomm/speaker/player/tester/MessageReceiver$1;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/tester/MessageReceiver;->mMsgReceiver:Lcom/phicomm/speaker/player/tester/MessageReceiver$MsgReceiver;

    .line 26
    iput-object p1, p0, Lcom/phicomm/speaker/player/tester/MessageReceiver;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Lcom/phicomm/speaker/player/tester/MessageReceiver$MessageHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/player/tester/MessageReceiver$MessageHandler;-><init>(Lcom/phicomm/speaker/player/tester/MessageReceiver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/tester/MessageReceiver;->mMessageHandler:Lcom/phicomm/speaker/player/tester/MessageReceiver$MessageHandler;

    .line 28
    const-string v0, "msgcenter"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageDispatchManager;

    iput-object v0, p0, Lcom/phicomm/speaker/player/tester/MessageReceiver;->mDispatchManager:Landroid/os/MessageDispatchManager;

    .line 29
    iget-object v0, p0, Lcom/phicomm/speaker/player/tester/MessageReceiver;->mDispatchManager:Landroid/os/MessageDispatchManager;

    iget-object v1, p0, Lcom/phicomm/speaker/player/tester/MessageReceiver;->mMsgReceiver:Lcom/phicomm/speaker/player/tester/MessageReceiver$MsgReceiver;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/os/MessageDispatchManager;->registerMessageReceiver(Landroid/os/MessageDispatchManager$MessageReceiver;I)V

    .line 30
    return-void
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/player/tester/MessageReceiver;)Lcom/phicomm/speaker/player/tester/MessageReceiver$MessageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/tester/MessageReceiver;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/phicomm/speaker/player/tester/MessageReceiver;->mMessageHandler:Lcom/phicomm/speaker/player/tester/MessageReceiver$MessageHandler;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/phicomm/speaker/player/tester/MessageReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/phicomm/speaker/player/tester/MessageReceiver;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/tester/MessageReceiver;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/tester/MessageReceiver;->handlePlayMessage(Landroid/os/Message;)V

    return-void
.end method

.method private handlePlayMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 71
    const/4 v3, 0x0

    .line 73
    .local v3, "resultBoolean":Z
    iget v4, p1, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_0

    .line 105
    :pswitch_0
    sget-object v4, Lcom/phicomm/speaker/player/tester/MessageReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Tester receive cann\'t process msg command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 84
    :pswitch_1
    const/4 v2, 0x0

    .line 85
    .local v2, "result":Z
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 86
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/ParcelableUtil;

    .line 87
    .local v1, "obj":Landroid/os/ParcelableUtil;
    invoke-virtual {v1}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 89
    .end local v1    # "obj":Landroid/os/ParcelableUtil;
    :cond_1
    iget-object v4, p0, Lcom/phicomm/speaker/player/tester/MessageReceiver;->mPlayerResponseListener:Lcom/phicomm/speaker/player/tester/IPlayerResponseListener;

    if-eqz v4, :cond_0

    .line 90
    iget-object v4, p0, Lcom/phicomm/speaker/player/tester/MessageReceiver;->mPlayerResponseListener:Lcom/phicomm/speaker/player/tester/IPlayerResponseListener;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v5, v2}, Lcom/phicomm/speaker/player/tester/IPlayerResponseListener;->onResponse(IZ)V

    goto :goto_0

    .line 96
    .end local v2    # "result":Z
    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 97
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/ParcelableUtil;

    .line 98
    .restart local v1    # "obj":Landroid/os/ParcelableUtil;
    invoke-virtual {v1}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    .local v0, "content":Ljava/lang/String;
    iget-object v4, p0, Lcom/phicomm/speaker/player/tester/MessageReceiver;->mPlayerResponseListener:Lcom/phicomm/speaker/player/tester/IPlayerResponseListener;

    if-eqz v4, :cond_0

    .line 100
    iget-object v4, p0, Lcom/phicomm/speaker/player/tester/MessageReceiver;->mPlayerResponseListener:Lcom/phicomm/speaker/player/tester/IPlayerResponseListener;

    iget v5, p1, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/phicomm/speaker/player/tester/IPlayerResponseListener;->onResponse(IZ)V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public setPlayerResponseListener(Lcom/phicomm/speaker/player/tester/IPlayerResponseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/phicomm/speaker/player/tester/IPlayerResponseListener;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/phicomm/speaker/player/tester/MessageReceiver;->mPlayerResponseListener:Lcom/phicomm/speaker/player/tester/IPlayerResponseListener;

    .line 38
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/phicomm/speaker/player/tester/MessageReceiver;->mDispatchManager:Landroid/os/MessageDispatchManager;

    iget-object v1, p0, Lcom/phicomm/speaker/player/tester/MessageReceiver;->mMsgReceiver:Lcom/phicomm/speaker/player/tester/MessageReceiver$MsgReceiver;

    invoke-virtual {v0, v1}, Landroid/os/MessageDispatchManager;->unregisterMessageReceiver(Landroid/os/MessageDispatchManager$MessageReceiver;)V

    .line 34
    return-void
.end method
