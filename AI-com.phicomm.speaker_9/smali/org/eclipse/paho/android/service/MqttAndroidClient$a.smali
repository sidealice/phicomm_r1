.class final Lorg/eclipse/paho/android/service/MqttAndroidClient$a;
.super Ljava/lang/Object;
.source "MqttAndroidClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/android/service/MqttAndroidClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/paho/android/service/MqttAndroidClient;


# direct methods
.method private constructor <init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient$a;->a:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Lorg/eclipse/paho/android/service/MqttAndroidClient$1;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient$a;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 111
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient$a;->a:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    check-cast p2, Lorg/eclipse/paho/android/service/f;

    invoke-virtual {p2}, Lorg/eclipse/paho/android/service/f;->a()Lorg/eclipse/paho/android/service/MqttService;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a(Lorg/eclipse/paho/android/service/MqttAndroidClient;Lorg/eclipse/paho/android/service/MqttService;)Lorg/eclipse/paho/android/service/MqttService;

    .line 112
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient$a;->a:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a(Lorg/eclipse/paho/android/service/MqttAndroidClient;Z)Z

    .line 115
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient$a;->a:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    invoke-static {p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a(Lorg/eclipse/paho/android/service/MqttAndroidClient;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 120
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient$a;->a:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->a(Lorg/eclipse/paho/android/service/MqttAndroidClient;Lorg/eclipse/paho/android/service/MqttService;)Lorg/eclipse/paho/android/service/MqttService;

    return-void
.end method
