.class Lorg/eclipse/paho/android/service/MqttService$b;
.super Landroid/content/BroadcastReceiver;
.source "MqttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/android/service/MqttService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/paho/android/service/MqttService;


# direct methods
.method private constructor <init>(Lorg/eclipse/paho/android/service/MqttService;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttService$b;->a:Lorg/eclipse/paho/android/service/MqttService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/paho/android/service/MqttService;Lorg/eclipse/paho/android/service/MqttService$1;)V
    .locals 0

    .line 809
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService$b;-><init>(Lorg/eclipse/paho/android/service/MqttService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .line 814
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService$b;->a:Lorg/eclipse/paho/android/service/MqttService;

    const-string p2, "MqttService"

    const-string v0, "Internal network status receive."

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/paho/android/service/MqttService;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService$b;->a:Lorg/eclipse/paho/android/service/MqttService;

    const-string p2, "power"

    invoke-virtual {p1, p2}, Lorg/eclipse/paho/android/service/MqttService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const-string p2, "MQTT"

    const/4 v0, 0x1

    .line 820
    invoke-virtual {p1, v0, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    .line 821
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 822
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttService$b;->a:Lorg/eclipse/paho/android/service/MqttService;

    const-string v0, "MqttService"

    const-string v1, "Reconnect for Network recovery."

    invoke-virtual {p2, v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttService$b;->a:Lorg/eclipse/paho/android/service/MqttService;

    invoke-virtual {p2}, Lorg/eclipse/paho/android/service/MqttService;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 824
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttService$b;->a:Lorg/eclipse/paho/android/service/MqttService;

    const-string v0, "MqttService"

    const-string v1, "Online,reconnect."

    invoke-virtual {p2, v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttService$b;->a:Lorg/eclipse/paho/android/service/MqttService;

    invoke-virtual {p2}, Lorg/eclipse/paho/android/service/MqttService;->a()V

    goto :goto_0

    .line 829
    :cond_0
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttService$b;->a:Lorg/eclipse/paho/android/service/MqttService;

    invoke-static {p2}, Lorg/eclipse/paho/android/service/MqttService;->a(Lorg/eclipse/paho/android/service/MqttService;)V

    .line 832
    :goto_0
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method
