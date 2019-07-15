.class Lorg/eclipse/paho/android/service/MqttService$a;
.super Landroid/content/BroadcastReceiver;
.source "MqttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/android/service/MqttService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/paho/android/service/MqttService;


# direct methods
.method private constructor <init>(Lorg/eclipse/paho/android/service/MqttService;)V
    .locals 0

    .line 866
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttService$a;->a:Lorg/eclipse/paho/android/service/MqttService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/paho/android/service/MqttService;Lorg/eclipse/paho/android/service/MqttService$1;)V
    .locals 0

    .line 866
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService$a;-><init>(Lorg/eclipse/paho/android/service/MqttService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 871
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService$a;->a:Lorg/eclipse/paho/android/service/MqttService;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Lorg/eclipse/paho/android/service/MqttService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 872
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttService$a;->a:Lorg/eclipse/paho/android/service/MqttService;

    const-string v0, "MqttService"

    const-string v1, "Reconnect since BroadcastReceiver."

    invoke-virtual {p2, v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 874
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService$a;->a:Lorg/eclipse/paho/android/service/MqttService;

    invoke-static {p1}, Lorg/eclipse/paho/android/service/MqttService;->b(Lorg/eclipse/paho/android/service/MqttService;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 875
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService$a;->a:Lorg/eclipse/paho/android/service/MqttService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/eclipse/paho/android/service/MqttService;->a(Lorg/eclipse/paho/android/service/MqttService;Z)Z

    .line 878
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService$a;->a:Lorg/eclipse/paho/android/service/MqttService;

    invoke-virtual {p1}, Lorg/eclipse/paho/android/service/MqttService;->a()V

    goto :goto_0

    .line 881
    :cond_0
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService$a;->a:Lorg/eclipse/paho/android/service/MqttService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/eclipse/paho/android/service/MqttService;->a(Lorg/eclipse/paho/android/service/MqttService;Z)Z

    .line 882
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService$a;->a:Lorg/eclipse/paho/android/service/MqttService;

    invoke-static {p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Lorg/eclipse/paho/android/service/MqttService;)V

    :cond_1
    :goto_0
    return-void
.end method
