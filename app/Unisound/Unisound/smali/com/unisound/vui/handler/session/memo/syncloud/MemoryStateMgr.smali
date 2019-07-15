.class public Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;
.super Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;
.source "MemoryStateMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr$ControlStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "memolog-MemoryStateMgr"


# instance fields
.field private mControlStateListener:Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr$ControlStateListener;

.field private mReportHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;-><init>()V

    .line 43
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "memolog-MemoryStateMgr"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 45
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;->mReportHandler:Landroid/os/Handler;

    .line 46
    const-string v1, "memoryManager"

    invoke-static {v1, p0}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->associateSessionCenter(Ljava/lang/String;Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;)V

    .line 47
    return-void
.end method

.method private dispatchMemoControlCommand(Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V
    .locals 7
    .param p1, "command"    # Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->getOperation()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "operation":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->getParameter()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonObject;

    .line 70
    .local v3, "parameter":Lcom/google/gson/JsonObject;
    const-string v4, "memolog-MemoryStateMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchMemoControlCommand operate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-class v4, Lcom/unisound/ant/device/bean/AlarmReminder;

    invoke-static {v3, v4}, Lcom/unisound/vui/util/JsonTool;->fromJson(Lcom/google/gson/JsonObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/ant/device/bean/AlarmReminder;

    .line 72
    .local v0, "alarmReminder":Lcom/unisound/ant/device/bean/AlarmReminder;
    if-nez v0, :cond_1

    .line 73
    const-string v4, "memolog-MemoryStateMgr"

    const-string v5, "dispatchMemoControlCommand get alarmReminder is null"

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-static {v0}, Lcom/unisound/vui/handler/session/memo/utils/MemoUtils;->getLocalMemo(Lcom/unisound/ant/device/bean/AlarmReminder;)Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    move-result-object v1

    .line 77
    .local v1, "localMemo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    if-nez v1, :cond_2

    .line 78
    const-string v4, "memolog-MemoryStateMgr"

    const-string v5, "dispatchMemoControlCommand get localMemo is null"

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setLocalCreateUpDdate(Z)V

    .line 83
    const-string v4, "add"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 84
    iget-object v4, p0, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;->mControlStateListener:Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr$ControlStateListener;

    if-eqz v4, :cond_0

    .line 85
    iget-object v4, p0, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;->mControlStateListener:Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr$ControlStateListener;

    invoke-interface {v4, v1}, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr$ControlStateListener;->remoteAddMemo(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    goto :goto_0

    .line 87
    :cond_3
    const-string v4, "delete"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 88
    iget-object v4, p0, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;->mControlStateListener:Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr$ControlStateListener;

    if-eqz v4, :cond_0

    .line 89
    iget-object v4, p0, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;->mControlStateListener:Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr$ControlStateListener;

    invoke-interface {v4, v1}, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr$ControlStateListener;->remoteDeleteMemo(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    goto :goto_0

    .line 91
    :cond_4
    const-string v4, "update"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    iget-object v4, p0, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;->mControlStateListener:Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr$ControlStateListener;

    if-eqz v4, :cond_0

    .line 93
    iget-object v4, p0, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;->mControlStateListener:Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr$ControlStateListener;

    invoke-interface {v4, v1}, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr$ControlStateListener;->remoteUpdateMemo(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 54
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 56
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    if-eqz v1, :cond_0

    .line 57
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    .line 58
    .local v0, "command":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;
    invoke-direct {p0, v0}, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;->dispatchMemoControlCommand(Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public reportMemoStatus(Ljava/lang/String;Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V
    .locals 4
    .param p1, "commandValue"    # Ljava/lang/String;
    .param p2, "memo"    # Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .prologue
    .line 99
    const-string v1, "memolog-MemoryStateMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportMemoStatus, commandValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 116
    const/4 v0, 0x0

    .line 120
    .local v0, "content":Lcom/unisound/ant/device/bean/AlarmReminder;
    :goto_1
    if-eqz v0, :cond_1

    .line 121
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;->mReportHandler:Landroid/os/Handler;

    new-instance v2, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr$1;-><init>(Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;Ljava/lang/String;Lcom/unisound/ant/device/bean/AlarmReminder;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    :cond_1
    return-void

    .line 101
    .end local v0    # "content":Lcom/unisound/ant/device/bean/AlarmReminder;
    :sswitch_0
    const-string v2, "add"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "delete"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "update"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 103
    :pswitch_0
    const-string v1, "start"

    invoke-static {v1, p2}, Lcom/unisound/vui/handler/session/memo/utils/MemoUtils;->getAlarmReminder(Ljava/lang/String;Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)Lcom/unisound/ant/device/bean/AlarmReminder;

    move-result-object v0

    .line 104
    .restart local v0    # "content":Lcom/unisound/ant/device/bean/AlarmReminder;
    goto :goto_1

    .line 106
    .end local v0    # "content":Lcom/unisound/ant/device/bean/AlarmReminder;
    :pswitch_1
    const-string v1, "cancel"

    invoke-static {v1, p2}, Lcom/unisound/vui/handler/session/memo/utils/MemoUtils;->getAlarmReminder(Ljava/lang/String;Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)Lcom/unisound/ant/device/bean/AlarmReminder;

    move-result-object v0

    .line 107
    .restart local v0    # "content":Lcom/unisound/ant/device/bean/AlarmReminder;
    goto :goto_1

    .line 109
    .end local v0    # "content":Lcom/unisound/ant/device/bean/AlarmReminder;
    :pswitch_2
    invoke-virtual {p2}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    const-string v1, "start"

    invoke-static {v1, p2}, Lcom/unisound/vui/handler/session/memo/utils/MemoUtils;->getAlarmReminder(Ljava/lang/String;Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)Lcom/unisound/ant/device/bean/AlarmReminder;

    move-result-object v0

    .restart local v0    # "content":Lcom/unisound/ant/device/bean/AlarmReminder;
    goto :goto_1

    .line 112
    .end local v0    # "content":Lcom/unisound/ant/device/bean/AlarmReminder;
    :cond_2
    const-string v1, "cancel"

    invoke-static {v1, p2}, Lcom/unisound/vui/handler/session/memo/utils/MemoUtils;->getAlarmReminder(Ljava/lang/String;Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)Lcom/unisound/ant/device/bean/AlarmReminder;

    move-result-object v0

    .line 114
    .restart local v0    # "content":Lcom/unisound/ant/device/bean/AlarmReminder;
    goto :goto_1

    .line 101
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f997a55 -> :sswitch_1
        -0x31ffc737 -> :sswitch_2
        0x178a1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setControlStateListener(Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr$ControlStateListener;)V
    .locals 0
    .param p1, "controlStateListener"    # Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr$ControlStateListener;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;->mControlStateListener:Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr$ControlStateListener;

    .line 51
    return-void
.end method
