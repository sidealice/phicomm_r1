.class Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr$1;
.super Ljava/lang/Object;
.source "MemoryStateMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;->reportMemoStatus(Ljava/lang/String;Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;

.field final synthetic val$commandValue:Ljava/lang/String;

.field final synthetic val$content:Lcom/unisound/ant/device/bean/AlarmReminder;


# direct methods
.method constructor <init>(Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;Ljava/lang/String;Lcom/unisound/ant/device/bean/AlarmReminder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr$1;->this$0:Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr;

    iput-object p2, p0, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr$1;->val$commandValue:Ljava/lang/String;

    iput-object p3, p0, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr$1;->val$content:Lcom/unisound/ant/device/bean/AlarmReminder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 123
    invoke-static {}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/ant/device/message/UpDownMessageManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 124
    const-string v0, "memolog-MemoryStateMgr"

    const-string v1, "reportMemoStatus, UpDownMessageManager is null"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-static {}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/ant/device/message/UpDownMessageManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr$1;->val$commandValue:Ljava/lang/String;

    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/syncloud/MemoryStateMgr$1;->val$content:Lcom/unisound/ant/device/bean/AlarmReminder;

    .line 128
    invoke-virtual {v0, v1, v2, v3}, Lcom/unisound/ant/device/message/UpDownMessageManager;->onReportAlarmReminderStatus(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/bean/AlarmReminder;)V

    goto :goto_0
.end method
