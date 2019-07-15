.class Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr$1;
.super Ljava/lang/Object;
.source "NoteSateMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr;->reportNoteStatus(Ljava/lang/String;Lcom/unisound/ant/device/bean/NoteInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr;

.field final synthetic val$commandValue:Ljava/lang/String;

.field final synthetic val$content:Lcom/unisound/ant/device/bean/NoteInfo;


# direct methods
.method constructor <init>(Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr;Lcom/unisound/ant/device/bean/NoteInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr$1;->this$0:Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr;

    iput-object p2, p0, Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr$1;->val$content:Lcom/unisound/ant/device/bean/NoteInfo;

    iput-object p3, p0, Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr$1;->val$commandValue:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 90
    const-string v0, "NoteSateMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>reportAlarmReminder content:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr$1;->val$content:Lcom/unisound/ant/device/bean/NoteInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/ant/device/message/UpDownMessageManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 92
    const-string v0, "NoteSateMgr"

    const-string v1, "--->>messgaeMonitor is null"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-static {}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/ant/device/message/UpDownMessageManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr$1;->val$commandValue:Ljava/lang/String;

    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr$1;->val$content:Lcom/unisound/ant/device/bean/NoteInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/unisound/ant/device/message/UpDownMessageManager;->onReportNoteStatus(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/bean/NoteInfo;)V

    goto :goto_0
.end method
