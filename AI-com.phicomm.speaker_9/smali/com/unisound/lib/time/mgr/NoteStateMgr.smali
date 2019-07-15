.class public Lcom/unisound/lib/time/mgr/NoteStateMgr;
.super Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;
.source "NoteStateMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/time/mgr/NoteStateMgr$SingleFactory;
    }
.end annotation


# static fields
.field public static final OPERATE_NOTE_ADD:Ljava/lang/String; = "addNote"

.field public static final OPERATE_NOTE_DELETE:Ljava/lang/String; = "deleteNote"

.field public static final OPERATE_NOTE_DELETE_ALL:Ljava/lang/String; = "deleteAllNote"

.field public static final OPERATE_NOTE_GET_ALL:Ljava/lang/String; = "getAllNote"

.field public static final OPERATE_NOTE_UPDATE:Ljava/lang/String; = "updateNote"

.field private static final TAG:Ljava/lang/String; = "NoteSateMgr"


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/time/listener/INoteStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/lib/time/mgr/NoteStateMgr;->mListeners:Ljava/util/List;

    const-string v0, "noteManager"

    .line 69
    invoke-static {v0, p0}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionRegister;->associateSessionCenter(Ljava/lang/String;Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unisound/lib/time/mgr/NoteStateMgr$1;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/unisound/lib/time/mgr/NoteStateMgr;-><init>()V

    return-void
.end method

.method private dispatchNoteControlCommand(Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "NoteSateMgr"

    const-string v0, "dispatchNoteControlCommand command is null"

    .line 101
    invoke-static {p1, v0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 104
    :cond_0
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->getAccelerate()Lcom/unisound/lib/msgcenter/bean/Accelerate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/bean/Accelerate;->getValuse()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->getParameter()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/k;

    const-string v1, "NoteSateMgr"

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>dispatchNoteControlCommand operate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-class v1, Lcom/unisound/lib/time/bean/NoteInfo;

    invoke-static {p1, v1}, Lcom/unisound/lib/utils/JsonTool;->fromJson(Lcom/google/gson/k;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/lib/time/bean/NoteInfo;

    if-nez p1, :cond_1

    const-string p1, "NoteSateMgr"

    const-string v0, "dispatchNoteControlCommand get alarmReminder is null"

    .line 110
    invoke-static {p1, v0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/unisound/lib/time/mgr/NoteStateMgr;->mListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/unisound/lib/time/mgr/NoteStateMgr;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unisound/lib/time/listener/INoteStateListener;

    .line 115
    invoke-interface {v2, v0, p1}, Lcom/unisound/lib/time/listener/INoteStateListener;->onNoteStateChange(Ljava/lang/String;Lcom/unisound/lib/time/bean/NoteInfo;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/unisound/lib/time/mgr/NoteStateMgr;
    .locals 1

    .line 85
    sget-object v0, Lcom/unisound/lib/time/mgr/NoteStateMgr$SingleFactory;->instant:Lcom/unisound/lib/time/mgr/NoteStateMgr;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;

    .line 92
    invoke-direct {p0, p1}, Lcom/unisound/lib/time/mgr/NoteStateMgr;->dispatchNoteControlCommand(Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;)V

    :goto_0
    return-void
.end method

.method public removeNoteStateListener(Lcom/unisound/lib/time/listener/INoteStateListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/unisound/lib/time/mgr/NoteStateMgr;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/unisound/lib/time/mgr/NoteStateMgr;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setNoteStateListener(Lcom/unisound/lib/time/listener/INoteStateListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/unisound/lib/time/mgr/NoteStateMgr;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/unisound/lib/time/mgr/NoteStateMgr;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
