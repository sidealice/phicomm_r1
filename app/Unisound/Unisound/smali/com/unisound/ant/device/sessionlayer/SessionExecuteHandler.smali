.class public Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;
.super Landroid/os/Handler;
.source "SessionExecuteHandler.java"


# static fields
.field protected static final MESSAGE_TYPE_CLOUD_RESPONSE:I = 0x1

.field protected static final MESSAGE_TYPE_DSTSERVICE:I = 0x0

.field protected static final MESSAGE_TYPE_SYNC_SERVICE_STATUS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispActionResponse(Lcom/unisound/ant/device/service/ActionResponse;)V
    .locals 2
    .param p1, "actionResponse"    # Lcom/unisound/ant/device/service/ActionResponse;

    .prologue
    .line 25
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 26
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 27
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    invoke-virtual {p0, v0}, Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;->sendMessage(Landroid/os/Message;)Z

    .line 29
    return-void
.end method

.method public dispDstService(Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V
    .locals 2
    .param p1, "unisoundDeviceCommand"    # Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    .prologue
    .line 18
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 19
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 20
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 21
    invoke-virtual {p0, v0}, Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;->sendMessage(Landroid/os/Message;)Z

    .line 22
    return-void
.end method

.method public dispSyncServiceStatusReq()V
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 33
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 34
    invoke-virtual {p0, v0}, Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;->sendMessage(Landroid/os/Message;)Z

    .line 35
    return-void
.end method
