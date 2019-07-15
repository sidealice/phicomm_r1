.class public Landroid/os/MessageDispatchManager;
.super Ljava/lang/Object;
.source "MessageDispatchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageDispatchManager$MsgRecvFlaged;,
        Landroid/os/MessageDispatchManager$MessageReceiver;,
        Landroid/os/MessageDispatchManager$MSGHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MessageDispatchManager"

.field public static final MSG_TYPE_BT:I = 0x40

.field public static final MSG_TYPE_BT_ACK:I = 0x80

.field public static final MSG_TYPE_HIVOICE:I = 0x4000

.field public static final MSG_TYPE_HIVOICE_ACK:I = 0x8000

.field public static final MSG_TYPE_INPUT_KEY:I = 0x100

.field public static final MSG_TYPE_INPUT_KEY_ACK:I = 0x200

.field public static final MSG_TYPE_INPUT_TOUCH:I = 0x400

.field public static final MSG_TYPE_INPUT_TOUCH_ACK:I = 0x800

.field public static final MSG_TYPE_LIGHT:I = 0x1000

.field public static final MSG_TYPE_LIGHT_ACK:I = 0x2000

.field public static final MSG_TYPE_MATCH:I = 0x40000

.field public static final MSG_TYPE_MATCH_ACK:I = 0x80000

.field public static final MSG_TYPE_MQTT:I = 0x200000

.field public static final MSG_TYPE_PLAYER:I = 0x4

.field public static final MSG_TYPE_PLAYER_ACK:I = 0x8

.field public static final MSG_TYPE_PLAY_TTS:I = 0x10000

.field public static final MSG_TYPE_PLAY_TTS_ACK:I = 0x20000

.field public static final MSG_TYPE_REGISTER_RECEIVER:I = 0x1

.field public static final MSG_TYPE_SMART_HOME:I = 0x800000

.field public static final MSG_TYPE_SMART_HOME_ACK:I = 0x1000000

.field public static final MSG_TYPE_UNREGISTER_RECEIVER:I = 0x2

.field public static final MSG_TYPE_USER_DATA:I = 0x2000000

.field public static final MSG_TYPE_USER_DATA_ACK:I = 0x4000000

.field public static final MSG_TYPE_WIFI:I = 0x10

.field public static final MSG_TYPE_WIFI_ACK:I = 0x20


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMsgHandler:Landroid/os/MessageDispatchManager$MSGHandler;

.field private mService:Landroid/os/IMessenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IMessenger;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "serv"    # Landroid/os/IMessenger;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroid/os/MessageDispatchManager;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Landroid/os/MessageDispatchManager;->mService:Landroid/os/IMessenger;

    .line 71
    new-instance v0, Landroid/os/MessageDispatchManager$MSGHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/MessageDispatchManager$MSGHandler;-><init>(Landroid/os/MessageDispatchManager;Landroid/os/MessageDispatchManager$1;)V

    iput-object v0, p0, Landroid/os/MessageDispatchManager;->mMsgHandler:Landroid/os/MessageDispatchManager$MSGHandler;

    .line 72
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Landroid/os/MessageDispatchManager;->mMsgHandler:Landroid/os/MessageDispatchManager$MSGHandler;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 73
    return-void
.end method


# virtual methods
.method public registerMessageReceiver(Landroid/os/MessageDispatchManager$MessageReceiver;I)V
    .locals 3
    .param p1, "recv"    # Landroid/os/MessageDispatchManager$MessageReceiver;
    .param p2, "flags"    # I

    .prologue
    .line 87
    iget-object v1, p0, Landroid/os/MessageDispatchManager;->mMsgHandler:Landroid/os/MessageDispatchManager$MSGHandler;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageDispatchManager;->mMsgHandler:Landroid/os/MessageDispatchManager$MSGHandler;

    iget-object v0, v0, Landroid/os/MessageDispatchManager$MSGHandler;->mRecvs:Ljava/util/ArrayList;

    new-instance v2, Landroid/os/MessageDispatchManager$MsgRecvFlaged;

    invoke-direct {v2, p0, p1, p2}, Landroid/os/MessageDispatchManager$MsgRecvFlaged;-><init>(Landroid/os/MessageDispatchManager;Landroid/os/MessageDispatchManager$MessageReceiver;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p2, v1, v2}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 91
    return-void

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sendMessage(IIILandroid/os/Parcelable;)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Landroid/os/Parcelable;

    .prologue
    .line 76
    const/4 v2, 0x0

    invoke-static {v2, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 77
    .local v1, "msg":Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Landroid/os/MessageDispatchManager;->mMsgHandler:Landroid/os/MessageDispatchManager$MSGHandler;

    iget-object v2, v2, Landroid/os/MessageDispatchManager$MSGHandler;->mMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Landroid/os/MessageDispatchManager;->mMsgHandler:Landroid/os/MessageDispatchManager$MSGHandler;

    iget-object v2, v2, Landroid/os/MessageDispatchManager$MSGHandler;->mMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 80
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageDispatchManager;->mService:Landroid/os/IMessenger;

    invoke-interface {v2, v1}, Landroid/os/IMessenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MessageDispatchManager"

    const-string v3, "Error while calling remote serivce"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterMessageReceiver(Landroid/os/MessageDispatchManager$MessageReceiver;)V
    .locals 3
    .param p1, "recv"    # Landroid/os/MessageDispatchManager$MessageReceiver;

    .prologue
    const/4 v2, 0x0

    .line 94
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v2, v1}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 95
    return-void
.end method
