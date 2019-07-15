.class public Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;
.super Landroid/os/Handler;
.source "SessionExecuteHandler.java"


# static fields
.field protected static final MESSAGE_TYPE_CLOUD_RESPONSE:I = 0x1

.field protected static final MESSAGE_TYPE_DSTSERVICE:I = 0x0

.field protected static final MESSAGE_TYPE_PUSH_SYNCINFO:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispActionResponse(Lcom/unisound/lib/msgcenter/service/ActionResponse;)V
    .locals 2

    .line 45
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 46
    iput v1, v0, Landroid/os/Message;->what:I

    .line 47
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    invoke-virtual {p0, v0}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispCloudSyncInfo(Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;)V
    .locals 2

    .line 57
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 58
    iput v1, v0, Landroid/os/Message;->what:I

    .line 59
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 60
    invoke-virtual {p0, v0}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispDstService(Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;)V
    .locals 2

    .line 33
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 34
    iput v1, v0, Landroid/os/Message;->what:I

    .line 35
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 36
    invoke-virtual {p0, v0}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
