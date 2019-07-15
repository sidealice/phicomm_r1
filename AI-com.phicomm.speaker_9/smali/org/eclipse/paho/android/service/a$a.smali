.class Lorg/eclipse/paho/android/service/a$a;
.super Landroid/content/BroadcastReceiver;
.source "AlarmPingSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/android/service/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/paho/android/service/a;

.field private b:Landroid/os/PowerManager$WakeLock;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/a;)V
    .locals 1

    .line 131
    iput-object p1, p0, Lorg/eclipse/paho/android/service/a$a;->a:Lorg/eclipse/paho/android/service/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MqttService.client."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/eclipse/paho/android/service/a$a;->a:Lorg/eclipse/paho/android/service/a;

    .line 134
    invoke-static {v0}, Lorg/eclipse/paho/android/service/a;->a(Lorg/eclipse/paho/android/service/a;)Lorg/eclipse/paho/android/service/a;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/paho/android/service/a;->b(Lorg/eclipse/paho/android/service/a;)Lorg/eclipse/paho/client/mqttv3/internal/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->j()Lorg/eclipse/paho/client/mqttv3/d;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/paho/android/service/a$a;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lorg/eclipse/paho/android/service/a$a;)Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/eclipse/paho/android/service/a$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lorg/eclipse/paho/android/service/a$a;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/eclipse/paho/android/service/a$a;->b:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    const-string p1, "AlarmPingSender"

    .line 145
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sending Ping at:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lorg/eclipse/paho/android/service/a$a;->a:Lorg/eclipse/paho/android/service/a;

    invoke-static {p1}, Lorg/eclipse/paho/android/service/a;->c(Lorg/eclipse/paho/android/service/a;)Lorg/eclipse/paho/android/service/MqttService;

    move-result-object p1

    const-string p2, "power"

    .line 148
    invoke-virtual {p1, p2}, Lorg/eclipse/paho/android/service/MqttService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 149
    iget-object p2, p0, Lorg/eclipse/paho/android/service/a$a;->c:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/paho/android/service/a$a;->b:Landroid/os/PowerManager$WakeLock;

    .line 150
    iget-object p1, p0, Lorg/eclipse/paho/android/service/a$a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 155
    iget-object p1, p0, Lorg/eclipse/paho/android/service/a$a;->a:Lorg/eclipse/paho/android/service/a;

    invoke-static {p1}, Lorg/eclipse/paho/android/service/a;->b(Lorg/eclipse/paho/android/service/a;)Lorg/eclipse/paho/client/mqttv3/internal/a;

    move-result-object p1

    new-instance p2, Lorg/eclipse/paho/android/service/a$a$1;

    invoke-direct {p2, p0}, Lorg/eclipse/paho/android/service/a$a$1;-><init>(Lorg/eclipse/paho/android/service/a$a;)V

    invoke-virtual {p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/s;

    move-result-object p1

    if-nez p1, :cond_0

    .line 176
    iget-object p1, p0, Lorg/eclipse/paho/android/service/a$a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 177
    iget-object p1, p0, Lorg/eclipse/paho/android/service/a$a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method
