.class Lorg/eclipse/paho/android/service/a;
.super Ljava/lang/Object;
.source "AlarmPingSender.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/android/service/a$a;
    }
.end annotation


# instance fields
.field private a:Lorg/eclipse/paho/client/mqttv3/internal/a;

.field private b:Lorg/eclipse/paho/android/service/MqttService;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Lorg/eclipse/paho/android/service/a;

.field private e:Landroid/app/PendingIntent;

.field private volatile f:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/android/service/MqttService;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/a;->f:Z

    if-nez p1, :cond_0

    .line 57
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Neither service nor client can be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_0
    iput-object p1, p0, Lorg/eclipse/paho/android/service/a;->b:Lorg/eclipse/paho/android/service/MqttService;

    .line 61
    iput-object p0, p0, Lorg/eclipse/paho/android/service/a;->d:Lorg/eclipse/paho/android/service/a;

    return-void
.end method

.method static synthetic a(Lorg/eclipse/paho/android/service/a;)Lorg/eclipse/paho/android/service/a;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/eclipse/paho/android/service/a;->d:Lorg/eclipse/paho/android/service/a;

    return-object p0
.end method

.method static synthetic b(Lorg/eclipse/paho/android/service/a;)Lorg/eclipse/paho/client/mqttv3/internal/a;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/eclipse/paho/android/service/a;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    return-object p0
.end method

.method static synthetic c(Lorg/eclipse/paho/android/service/a;)Lorg/eclipse/paho/android/service/MqttService;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/eclipse/paho/android/service/a;->b:Lorg/eclipse/paho/android/service/MqttService;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttService.pingSender."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/a;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    .line 73
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/a;->j()Lorg/eclipse/paho/client/mqttv3/d;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmPingSender"

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register alarmreceiver to MqttService"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/phicomm/speaker/f/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lorg/eclipse/paho/android/service/a;->b:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/a;->c:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/paho/android/service/MqttService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lorg/eclipse/paho/android/service/a;->b:Lorg/eclipse/paho/android/service/MqttService;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v0, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/android/service/a;->e:Landroid/app/PendingIntent;

    .line 80
    iget-object v0, p0, Lorg/eclipse/paho/android/service/a;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->k()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/paho/android/service/a;->a(J)V

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/a;->f:Z

    return-void
.end method

.method public a(J)V
    .locals 7

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v2, v0, p1

    const-string v0, "AlarmPingSender"

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Schedule next alarm at "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lorg/eclipse/paho/android/service/a;->b:Lorg/eclipse/paho/android/service/MqttService;

    const-string v1, "alarm"

    .line 110
    invoke-virtual {v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 112
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x0

    const/16 v5, 0x17

    if-lt v1, v5, :cond_0

    const-string v1, "AlarmPingSender"

    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alarm scheule using setExactAndAllowWhileIdle, next: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lorg/eclipse/paho/android/service/a;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v2, v3, p1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 118
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v1, v5, :cond_1

    const-string v1, "AlarmPingSender"

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alarm scheule using setExact, delay: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lorg/eclipse/paho/android/service/a;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v2, v3, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object p1, p0, Lorg/eclipse/paho/android/service/a;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v2, v3, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/internal/a;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lorg/eclipse/paho/android/service/a;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    .line 67
    new-instance p1, Lorg/eclipse/paho/android/service/a$a;

    invoke-direct {p1, p0}, Lorg/eclipse/paho/android/service/a$a;-><init>(Lorg/eclipse/paho/android/service/a;)V

    iput-object p1, p0, Lorg/eclipse/paho/android/service/a;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public b()V
    .locals 3

    const-string v0, "AlarmPingSender"

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregister alarmreceiver to MqttService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/a;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/a;->j()Lorg/eclipse/paho/client/mqttv3/d;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/a;->f:Z

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lorg/eclipse/paho/android/service/a;->e:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/eclipse/paho/android/service/a;->b:Lorg/eclipse/paho/android/service/MqttService;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 92
    iget-object v1, p0, Lorg/eclipse/paho/android/service/a;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/a;->f:Z

    .line 97
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/a;->b:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/a;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
