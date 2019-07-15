.class public Lcom/unisound/lib/UnisTimeMgrAssistant;
.super Ljava/lang/Object;
.source "UnisTimeMgrAssistant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/UnisTimeMgrAssistant$SingleFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UnisTimeMgrAssistant"


# instance fields
.field private mRequestClient:Lcom/unisound/lib/net/UserRequestClient;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/unisound/lib/net/UserRequestClient;->getInstance()Lcom/unisound/lib/net/UserRequestClient;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/lib/UnisTimeMgrAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    return-void
.end method

.method synthetic constructor <init>(Lcom/unisound/lib/UnisTimeMgrAssistant$1;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/unisound/lib/UnisTimeMgrAssistant;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/unisound/lib/UnisTimeMgrAssistant;Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/unisound/lib/UnisTimeMgrAssistant;->afterGetNoteResult(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/unisound/lib/UnisTimeMgrAssistant;Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/unisound/lib/UnisTimeMgrAssistant;->afterGetAlarmResult(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method private afterGetAlarmResult(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 2

    .line 140
    :try_start_0
    const-class v0, Lcom/unisound/lib/time/bean/TimeManageBean;

    invoke-virtual {p1, v0}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getEntity(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/time/bean/TimeManageBean;

    .line 141
    invoke-direct {p0, p1, v0, p2}, Lcom/unisound/lib/UnisTimeMgrAssistant;->parseAlarmData(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/time/bean/TimeManageBean;Lcom/unisound/lib/callback/HttpDataCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    const-string p1, "UnisTimeMgrAssistant"

    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "analytic exception:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private afterGetNoteResult(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 2

    .line 82
    :try_start_0
    const-class v0, Lcom/unisound/lib/time/bean/NoteInfoBean;

    invoke-virtual {p1, v0}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getEntity(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/time/bean/NoteInfoBean;

    .line 83
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1, v0}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    const-string p1, "UnisTimeMgrAssistant"

    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "analytic exception:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private conversionTimestamp(Lcom/unisound/lib/time/bean/AlarmReminder;)V
    .locals 3

    .line 222
    :try_start_0
    invoke-virtual {p1}, Lcom/unisound/lib/time/bean/AlarmReminder;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "countDown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p1}, Lcom/unisound/lib/time/bean/AlarmReminder;->getTimeStamp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "HH:mm:ss"

    invoke-static {v0, v1, v2}, Lcom/unisound/lib/utils/UnisTimeUtils;->millis2String(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/unisound/lib/time/bean/AlarmReminder;->setTime(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p1}, Lcom/unisound/lib/time/bean/AlarmReminder;->getTimeStamp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "HH:mm"

    invoke-static {v0, v1, v2}, Lcom/unisound/lib/utils/UnisTimeUtils;->millis2String(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/unisound/lib/time/bean/AlarmReminder;->setTime(Ljava/lang/String;)V

    .line 229
    :goto_0
    invoke-virtual {p1}, Lcom/unisound/lib/time/bean/AlarmReminder;->getTimeStamp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "yyyy-MM-dd"

    invoke-static {v0, v1, v2}, Lcom/unisound/lib/utils/UnisTimeUtils;->millis2String(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/unisound/lib/time/bean/AlarmReminder;->setDate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 232
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private generateTimeStamp(Ljava/util/List;ILjava/lang/StringBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/time/bean/AlarmReminder;",
            ">;I",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 172
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/lib/utils/UnisTimeUtils;->isValidDate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/lib/time/bean/AlarmReminder;

    .line 174
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "yyyy-MM-dd HH:mm"

    invoke-static {p2, p3}, Lcom/unisound/lib/utils/UnisTimeUtils;->string2Millis(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/unisound/lib/time/bean/AlarmReminder;->setTimeStamp(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/lib/time/bean/AlarmReminder;

    .line 178
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/unisound/lib/utils/UnisTimeUtils;->string2Millis(Ljava/lang/String;)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/unisound/lib/time/bean/AlarmReminder;->setTimeStamp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "UnisTimeMgrAssistant"

    .line 181
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/unisound/lib/utils/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private getAlarmReminderList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/time/bean/AlarmReminder;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/unisound/lib/time/bean/AlarmReminder;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 162
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 163
    invoke-direct {p0, p1, v0}, Lcom/unisound/lib/UnisTimeMgrAssistant;->getTimeStringBuilder(Ljava/util/List;I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    invoke-direct {p0, p1, v0, v1}, Lcom/unisound/lib/UnisTimeMgrAssistant;->generateTimeStamp(Ljava/util/List;ILjava/lang/StringBuilder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static getInstance()Lcom/unisound/lib/UnisTimeMgrAssistant;
    .locals 1

    .line 53
    sget-object v0, Lcom/unisound/lib/UnisTimeMgrAssistant$SingleFactory;->instant:Lcom/unisound/lib/UnisTimeMgrAssistant;

    return-object v0
.end method

.method private getTimeStringBuilder(Ljava/util/List;I)Ljava/lang/StringBuilder;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/time/bean/AlarmReminder;",
            ">;I)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-virtual {v1}, Lcom/unisound/lib/time/bean/AlarmReminder;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-virtual {p1}, Lcom/unisound/lib/time/bean/AlarmReminder;->getTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private parseAlarmData(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/time/bean/TimeManageBean;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 2

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    invoke-virtual {p2}, Lcom/unisound/lib/time/bean/TimeManageBean;->getAlarm()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/lib/UnisTimeMgrAssistant;->getAlarmReminderList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 153
    new-instance v1, Lcom/unisound/lib/time/bean/TimeManageBean;

    invoke-direct {v1}, Lcom/unisound/lib/time/bean/TimeManageBean;-><init>()V

    .line 154
    invoke-virtual {v1, v0}, Lcom/unisound/lib/time/bean/TimeManageBean;->setAlarm(Ljava/util/List;)V

    .line 155
    invoke-virtual {p2}, Lcom/unisound/lib/time/bean/TimeManageBean;->getPageCount()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/unisound/lib/time/bean/TimeManageBean;->setPageCount(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p3, p1, v1}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cancleHttpRequest()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/unisound/lib/UnisTimeMgrAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisTimeMgrAssistant"

    invoke-virtual {v0, v1}, Lcom/unisound/lib/net/UserRequestClient;->cancelHttpTask(Ljava/lang/String;)V

    return-void
.end method

.method public delNote(Ljava/lang/String;Lcom/unisound/lib/time/bean/NoteInfo;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 8

    .line 100
    iget-object v0, p0, Lcom/unisound/lib/UnisTimeMgrAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisTimeMgrAssistant"

    new-instance v7, Lcom/unisound/lib/UnisTimeMgrAssistant$2;

    invoke-direct {v7, p0, p4}, Lcom/unisound/lib/UnisTimeMgrAssistant$2;-><init>(Lcom/unisound/lib/UnisTimeMgrAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/unisound/lib/net/UserRequestClient;->noteControlCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/time/bean/NoteInfo;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public deleteAlarm(Ljava/lang/String;Lcom/unisound/lib/time/bean/AlarmReminder;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 7

    .line 245
    iget-object v0, p0, Lcom/unisound/lib/UnisTimeMgrAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisTimeMgrAssistant"

    const-string v3, "delete"

    new-instance v6, Lcom/unisound/lib/UnisTimeMgrAssistant$5;

    invoke-direct {v6, p0, p3}, Lcom/unisound/lib/UnisTimeMgrAssistant$5;-><init>(Lcom/unisound/lib/UnisTimeMgrAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/unisound/lib/net/UserRequestClient;->memoControlCommand(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/time/bean/AlarmReminder;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getAllNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 8

    .line 66
    iget-object v0, p0, Lcom/unisound/lib/UnisTimeMgrAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisTimeMgrAssistant"

    const-string v3, "getAllNote"

    new-instance v7, Lcom/unisound/lib/UnisTimeMgrAssistant$1;

    invoke-direct {v7, p0, p4}, Lcom/unisound/lib/UnisTimeMgrAssistant$1;-><init>(Lcom/unisound/lib/UnisTimeMgrAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/unisound/lib/net/UserRequestClient;->noteControlCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/time/bean/NoteInfo;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getAllalarmData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 9

    .line 124
    iget-object v0, p0, Lcom/unisound/lib/UnisTimeMgrAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisTimeMgrAssistant"

    const-string v3, "getAll"

    new-instance v8, Lcom/unisound/lib/UnisTimeMgrAssistant$3;

    invoke-direct {v8, p0, p5}, Lcom/unisound/lib/UnisTimeMgrAssistant$3;-><init>(Lcom/unisound/lib/UnisTimeMgrAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    const/4 v7, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v8}, Lcom/unisound/lib/net/UserRequestClient;->getMemoData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/time/bean/AlarmReminder;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public resetAlarmByType(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 7

    .line 266
    new-instance v5, Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-direct {v5}, Lcom/unisound/lib/time/bean/AlarmReminder;-><init>()V

    .line 267
    invoke-virtual {v5, p2}, Lcom/unisound/lib/time/bean/AlarmReminder;->setType(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/unisound/lib/UnisTimeMgrAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v1, "UnisTimeMgrAssistant"

    const-string v3, "deleteByType"

    new-instance v6, Lcom/unisound/lib/UnisTimeMgrAssistant$6;

    invoke-direct {v6, p0, p3}, Lcom/unisound/lib/UnisTimeMgrAssistant$6;-><init>(Lcom/unisound/lib/UnisTimeMgrAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/unisound/lib/net/UserRequestClient;->memoControlCommand(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/time/bean/AlarmReminder;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public updateAlarm(Ljava/lang/String;Lcom/unisound/lib/time/bean/AlarmReminder;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 8

    .line 203
    invoke-virtual {p2}, Lcom/unisound/lib/time/bean/AlarmReminder;->getTimeStamp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-direct {p0, p2}, Lcom/unisound/lib/UnisTimeMgrAssistant;->conversionTimestamp(Lcom/unisound/lib/time/bean/AlarmReminder;)V

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/unisound/lib/UnisTimeMgrAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    const-string v2, "UnisTimeMgrAssistant"

    const-string v4, "update"

    const/4 v5, 0x0

    new-instance v7, Lcom/unisound/lib/UnisTimeMgrAssistant$4;

    invoke-direct {v7, p0, p3}, Lcom/unisound/lib/UnisTimeMgrAssistant$4;-><init>(Lcom/unisound/lib/UnisTimeMgrAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    move-object v3, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/unisound/lib/net/UserRequestClient;->memoControlCommand(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/time/bean/AlarmReminder;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method
