.class public Lcom/unisound/vui/handler/session/memo/schulding/MemoScheduler;
.super Ljava/lang/Object;
.source "MemoScheduler.java"


# static fields
.field public static final EXTRA_TIME:Ljava/lang/String; = "extra_time"

.field private static final TAG:Ljava/lang/String; = "memolog-MemoScheduler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method private buildPendingIntent(Landroid/content/Context;J)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "time"    # J

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.yunzhisheng.action.ring"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_time"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 32
    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    long-to-int v1, v2

    const/high16 v2, 0x8000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public cancelAlarmSchedule(Landroid/content/Context;J)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "time"    # J

    .prologue
    .line 49
    const-string v2, "memolog-MemoScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelAlarmSchedule, time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "yyyyMMdd HH:mm:ss"

    .line 50
    invoke-static {p2, p3, v4}, Lcom/unisound/vui/util/TimeUtils;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/unisound/vui/handler/session/memo/schulding/MemoScheduler;->buildPendingIntent(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v1

    .line 52
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 53
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 54
    return-void
.end method

.method public createAlarmSchedule(Landroid/content/Context;J)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "time"    # J

    .prologue
    const/4 v5, 0x0

    .line 37
    const-string v2, "memolog-MemoScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createAlarmSchedule, time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "yyyyMMdd HH:mm:ss"

    .line 38
    invoke-static {p2, p3, v4}, Lcom/unisound/vui/util/TimeUtils;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/unisound/vui/handler/session/memo/schulding/MemoScheduler;->buildPendingIntent(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v1

    .line 40
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 41
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 42
    invoke-virtual {v0, v5, p2, p3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {v0, v5, p2, p3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public createSchedules(Landroid/content/Context;Ljava/util/Set;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "times":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const-string v2, "memolog-MemoScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createSchedules, size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 24
    .local v0, "time":J
    invoke-virtual {p0, p1, v0, v1}, Lcom/unisound/vui/handler/session/memo/schulding/MemoScheduler;->createAlarmSchedule(Landroid/content/Context;J)V

    goto :goto_0

    .line 26
    .end local v0    # "time":J
    :cond_0
    return-void
.end method
