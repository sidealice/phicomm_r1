.class Lorg/eclipse/paho/android/service/f;
.super Landroid/os/Binder;
.source "MqttServiceBinder.java"


# instance fields
.field private a:Lorg/eclipse/paho/android/service/MqttService;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/MqttService;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/eclipse/paho/android/service/f;->a:Lorg/eclipse/paho/android/service/MqttService;

    return-void
.end method


# virtual methods
.method public a()Lorg/eclipse/paho/android/service/MqttService;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/eclipse/paho/android/service/f;->a:Lorg/eclipse/paho/android/service/MqttService;

    return-object v0
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/eclipse/paho/android/service/f;->b:Ljava/lang/String;

    return-void
.end method
