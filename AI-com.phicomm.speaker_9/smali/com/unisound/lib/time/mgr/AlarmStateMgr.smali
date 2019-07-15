.class public Lcom/unisound/lib/time/mgr/AlarmStateMgr;
.super Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;
.source "AlarmStateMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/time/mgr/AlarmStateMgr$SingleFactory;
    }
.end annotation


# static fields
.field public static final OPERATE_MEMO_ADD:Ljava/lang/String; = "add"

.field public static final OPERATE_MEMO_DELETE:Ljava/lang/String; = "delete"

.field public static final OPERATE_MEMO_DELETE_ALL:Ljava/lang/String; = "deleteAll"

.field public static final OPERATE_MEMO_DELETE_BY_TYPE:Ljava/lang/String; = "deleteByType"

.field public static final OPERATE_MEMO_GET_ALL:Ljava/lang/String; = "getAll"

.field public static final OPERATE_MEMO_UPDATE:Ljava/lang/String; = "update"

.field private static final TAG:Ljava/lang/String; = "AlarmStateMgr"


# instance fields
.field private mChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/time/listener/IAlarmStateChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/lib/time/mgr/AlarmStateMgr;->mChangeListeners:Ljava/util/List;

    const-string v0, "memoryManager"

    .line 57
    invoke-static {v0, p0}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionRegister;->associateSessionCenter(Ljava/lang/String;Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unisound/lib/time/mgr/AlarmStateMgr$1;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/unisound/lib/time/mgr/AlarmStateMgr;-><init>()V

    return-void
.end method

.method private dispatchMemoControlCommand(Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "AlarmStateMgr"

    const-string v0, "dispatchMemoControlCommand command is null"

    .line 123
    invoke-static {p1, v0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 126
    :cond_0
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->getAccelerate()Lcom/unisound/lib/msgcenter/bean/Accelerate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/bean/Accelerate;->getValuse()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->getParameter()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/k;

    const-string v1, "AlarmStateMgr"

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>dispatchMemoControlCommand operate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-class v1, Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-static {p1, v1}, Lcom/unisound/lib/utils/JsonTool;->fromJson(Lcom/google/gson/k;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/lib/time/bean/AlarmReminder;

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    invoke-virtual {p1}, Lcom/unisound/lib/time/bean/AlarmReminder;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p1}, Lcom/unisound/lib/time/bean/AlarmReminder;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unisound/lib/utils/UnisTimeUtils;->isValidDate(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-static {v1, v2}, Lcom/unisound/lib/utils/UnisTimeUtils;->string2Millis(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 136
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/unisound/lib/time/bean/AlarmReminder;->setTimeStamp(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/lib/utils/UnisTimeUtils;->string2Millis(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {p1, v1}, Lcom/unisound/lib/time/bean/AlarmReminder;->setTimeStamp(Ljava/lang/String;)V

    :goto_0
    const-string v1, "AlarmStateMgr"

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/unisound/lib/time/bean/AlarmReminder;->getTimeStamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 146
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    if-nez p1, :cond_2

    const-string p1, "AlarmStateMgr"

    const-string v0, "dispatchMemoControlCommand get alarmReminder is null"

    .line 149
    invoke-static {p1, v0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/unisound/lib/time/mgr/AlarmStateMgr;->mChangeListeners:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 153
    iget-object v1, p0, Lcom/unisound/lib/time/mgr/AlarmStateMgr;->mChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unisound/lib/time/listener/IAlarmStateChangeListener;

    .line 154
    invoke-interface {v2, v0, p1}, Lcom/unisound/lib/time/listener/IAlarmStateChangeListener;->onAlarmStateChange(Ljava/lang/String;Lcom/unisound/lib/time/bean/AlarmReminder;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private getHandMessage(Landroid/os/Message;)V
    .locals 0

    .line 114
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;

    .line 115
    invoke-direct {p0, p1}, Lcom/unisound/lib/time/mgr/AlarmStateMgr;->dispatchMemoControlCommand(Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;)V

    return-void
.end method

.method public static getInstance()Lcom/unisound/lib/time/mgr/AlarmStateMgr;
    .locals 1

    .line 73
    sget-object v0, Lcom/unisound/lib/time/mgr/AlarmStateMgr$SingleFactory;->instant:Lcom/unisound/lib/time/mgr/AlarmStateMgr;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 99
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-direct {p0, p1}, Lcom/unisound/lib/time/mgr/AlarmStateMgr;->getHandMessage(Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method public removeAlarmStateChangeListener(Lcom/unisound/lib/time/listener/IAlarmStateChangeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/unisound/lib/time/mgr/AlarmStateMgr;->mChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/unisound/lib/time/mgr/AlarmStateMgr;->mChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setAlarmStateChangeListener(Lcom/unisound/lib/time/listener/IAlarmStateChangeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/unisound/lib/time/mgr/AlarmStateMgr;->mChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/unisound/lib/time/mgr/AlarmStateMgr;->mChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
