.class public Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr;
.super Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;
.source "NoteSateMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr$NoteStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NoteSateMgr"


# instance fields
.field private controlStateListener:Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr$NoteStateListener;

.field private reportHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;-><init>()V

    .line 35
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NoteSateMgr"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 37
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr;->reportHandler:Landroid/os/Handler;

    .line 38
    const-string v1, "noteManager"

    invoke-static {v1, p0}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->associateSessionCenter(Ljava/lang/String;Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;)V

    .line 39
    return-void
.end method

.method private dispatchNoteControlCommand(Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V
    .locals 6
    .param p1, "command"    # Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    .prologue
    .line 57
    if-nez p1, :cond_1

    .line 58
    const-string v3, "NoteSateMgr"

    const-string v4, "dispatchNoteControlCommand command is null"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p1}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->getOperation()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "operation":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->getParameter()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonObject;

    .line 63
    .local v2, "parameter":Lcom/google/gson/JsonObject;
    const-string v3, "NoteSateMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--->>dispatchNoteControlCommand operate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-class v3, Lcom/unisound/ant/device/bean/NoteInfo;

    invoke-static {v2, v3}, Lcom/unisound/vui/util/JsonTool;->fromJson(Lcom/google/gson/JsonObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/ant/device/bean/NoteInfo;

    .line 65
    .local v0, "noteInfo":Lcom/unisound/ant/device/bean/NoteInfo;
    if-nez v0, :cond_2

    .line 66
    const-string v3, "NoteSateMgr"

    const-string v4, "dispatchNoteControlCommand get alarmReminder is null"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_2
    const-string v3, "add"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 70
    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr;->controlStateListener:Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr$NoteStateListener;

    if-eqz v3, :cond_0

    .line 71
    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr;->controlStateListener:Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr$NoteStateListener;

    invoke-interface {v3, v0}, Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr$NoteStateListener;->remoteAddNote(Lcom/unisound/ant/device/bean/NoteInfo;)V

    goto :goto_0

    .line 73
    :cond_3
    const-string v3, "delete"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 74
    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr;->controlStateListener:Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr$NoteStateListener;

    if-eqz v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr;->controlStateListener:Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr$NoteStateListener;

    invoke-interface {v3, v0}, Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr$NoteStateListener;->remoteDeleteNote(Lcom/unisound/ant/device/bean/NoteInfo;)V

    goto :goto_0

    .line 77
    :cond_4
    const-string v3, "update"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr;->controlStateListener:Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr$NoteStateListener;

    if-eqz v3, :cond_0

    .line 79
    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr;->controlStateListener:Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr$NoteStateListener;

    invoke-interface {v3, v0}, Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr$NoteStateListener;->remoteUpdateNote(Lcom/unisound/ant/device/bean/NoteInfo;)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 46
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    .line 49
    .local v0, "command":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;
    invoke-direct {p0, v0}, Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr;->dispatchNoteControlCommand(Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public reportNoteStatus(Ljava/lang/String;Lcom/unisound/ant/device/bean/NoteInfo;)V
    .locals 2
    .param p1, "commandValue"    # Ljava/lang/String;
    .param p2, "content"    # Lcom/unisound/ant/device/bean/NoteInfo;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr;->reportHandler:Landroid/os/Handler;

    new-instance v1, Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr$1;-><init>(Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr;Lcom/unisound/ant/device/bean/NoteInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    return-void
.end method

.method public setControlStateListener(Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr$NoteStateListener;)V
    .locals 0
    .param p1, "controlStateListener"    # Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr$NoteStateListener;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr;->controlStateListener:Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr$NoteStateListener;

    .line 43
    return-void
.end method
