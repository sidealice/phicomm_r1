.class public Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;
.super Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;
.source "DefaultNoteHandler.java"

# interfaces
.implements Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr$NoteStateListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler",
        "<",
        "Lnluparser/scheme/NLU",
        "<",
        "Lnluparser/scheme/NoteIntent;",
        "Lnluparser/scheme/Result$NullResult;",
        ">;>;",
        "Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr$NoteStateListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultNoteHandler"


# instance fields
.field private isContinueRecon:Z

.field private noteSateMgr:Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;->isContinueRecon:Z

    .line 34
    new-instance v0, Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr;

    invoke-direct {v0}, Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;->noteSateMgr:Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr;

    .line 35
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;->noteSateMgr:Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr;

    invoke-virtual {v0, p0}, Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr;->setControlStateListener(Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr$NoteStateListener;)V

    .line 36
    return-void
.end method

.method private addNoteSync(Lnluparser/scheme/NoteIntent;)V
    .locals 3
    .param p1, "noteIntent"    # Lnluparser/scheme/NoteIntent;

    .prologue
    .line 110
    new-instance v0, Lcom/unisound/ant/device/bean/NoteInfo;

    invoke-direct {v0}, Lcom/unisound/ant/device/bean/NoteInfo;-><init>()V

    .line 111
    .local v0, "info":Lcom/unisound/ant/device/bean/NoteInfo;
    invoke-virtual {p1}, Lnluparser/scheme/NoteIntent;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/NoteInfo;->setMsg(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/unisound/vui/util/SystemUitls;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/NoteInfo;->setCreateTime(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;->noteSateMgr:Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr;

    const-string v2, "addNote"

    invoke-virtual {v1, v2, v0}, Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr;->reportNoteStatus(Ljava/lang/String;Lcom/unisound/ant/device/bean/NoteInfo;)V

    .line 114
    return-void
.end method

.method private exit()V
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;->reset()V

    .line 106
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;->fireResume(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 107
    return-void
.end method


# virtual methods
.method protected bridge synthetic acceptInboundEvent0(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;->acceptInboundEvent0(Lnluparser/scheme/NLU;)Z

    move-result v0

    return v0
.end method

.method protected acceptInboundEvent0(Lnluparser/scheme/NLU;)Z
    .locals 2
    .param p1, "evt"    # Lnluparser/scheme/NLU;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    const-string v0, "cn.yunzhisheng.note"

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "interruptType"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;->eventReceived:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V

    .line 84
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;->reset()V

    .line 86
    :cond_0
    return-void
.end method

.method protected bridge synthetic eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;->eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method protected eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 10
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/NoteIntent;",
            "Lnluparser/scheme/Result$NullResult;",
            ">;",
            "Lcom/unisound/vui/engine/ANTHandlerContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "evt":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/NoteIntent;Lnluparser/scheme/Result$NullResult;>;"
    const/4 v9, 0x1

    .line 49
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 50
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getSemantic()Lnluparser/scheme/Semantic;

    move-result-object v6

    invoke-virtual {v6}, Lnluparser/scheme/Semantic;->getIntent()Lnluparser/scheme/Intent;

    move-result-object v3

    .line 51
    .local v3, "intent":Lnluparser/scheme/Intent;
    const-string v6, "DefaultNoteHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "eventReceived noteIntent:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    if-eqz v3, :cond_3

    instance-of v6, v3, Lnluparser/scheme/NoteIntent;

    if-eqz v6, :cond_3

    move-object v5, v3

    .line 53
    check-cast v5, Lnluparser/scheme/NoteIntent;

    .line 54
    .local v5, "noteIntent":Lnluparser/scheme/NoteIntent;
    invoke-virtual {v5}, Lnluparser/scheme/NoteIntent;->getContent()Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "noteContent":Ljava/lang/String;
    const-string v6, "ANSWER"

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 56
    :cond_0
    iput-boolean v9, p0, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;->isContinueRecon:Z

    .line 57
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v6

    invoke-virtual {v6}, Lnluparser/scheme/General;->getText()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "answer":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 59
    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/unisound/vui/handler/session/memo/R$string;->tts_add_note_answer_tip:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    :cond_1
    invoke-interface {p2, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, p1, v1}, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    .line 79
    .end local v1    # "answer":Ljava/lang/String;
    .end local v4    # "noteContent":Ljava/lang/String;
    .end local v5    # "noteIntent":Lnluparser/scheme/NoteIntent;
    :goto_0
    return-void

    .line 64
    .restart local v4    # "noteContent":Ljava/lang/String;
    .restart local v5    # "noteIntent":Lnluparser/scheme/NoteIntent;
    :cond_2
    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/unisound/vui/handler/session/memo/R$string;->tts_add_note_tip:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "addNoteTipe":Ljava/lang/String;
    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "content":Ljava/lang/String;
    invoke-interface {p2, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, v5}, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;->addNoteSync(Lnluparser/scheme/NoteIntent;)V

    .line 68
    invoke-virtual {p0, p1, v2}, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v0    # "addNoteTipe":Ljava/lang/String;
    .end local v2    # "content":Ljava/lang/String;
    .end local v4    # "noteContent":Ljava/lang/String;
    .end local v5    # "noteIntent":Lnluparser/scheme/NoteIntent;
    :cond_3
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v6

    invoke-virtual {v6}, Lnluparser/scheme/General;->getText()Ljava/lang/String;

    move-result-object v1

    .line 72
    .restart local v1    # "answer":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 73
    invoke-interface {p2, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, p1, v1}, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_4
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;->exit()V

    goto :goto_0
.end method

.method protected initPriority()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;->setPriority(I)V

    .line 40
    return-void
.end method

.method protected onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 89
    const-string v0, "DefaultNoteHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTTSEventPlayingEnd eventReceived:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;->eventReceived:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isContinueRecon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;->isContinueRecon:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;->eventReceived:Z

    if-eqz v0, :cond_1

    .line 94
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;->isContinueRecon:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterASR()V

    .line 96
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;->exit()V

    .line 101
    :cond_1
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0
.end method

.method public remoteAddNote(Lcom/unisound/ant/device/bean/NoteInfo;)V
    .locals 0
    .param p1, "localMemo"    # Lcom/unisound/ant/device/bean/NoteInfo;

    .prologue
    .line 118
    return-void
.end method

.method public remoteDeleteNote(Lcom/unisound/ant/device/bean/NoteInfo;)V
    .locals 0
    .param p1, "localMemo"    # Lcom/unisound/ant/device/bean/NoteInfo;

    .prologue
    .line 122
    return-void
.end method

.method public remoteUpdateNote(Lcom/unisound/ant/device/bean/NoteInfo;)V
    .locals 0
    .param p1, "localMemo"    # Lcom/unisound/ant/device/bean/NoteInfo;

    .prologue
    .line 126
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->reset()V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;->isContinueRecon:Z

    .line 131
    return-void
.end method
