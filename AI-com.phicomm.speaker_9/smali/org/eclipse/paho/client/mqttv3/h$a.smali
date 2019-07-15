.class Lorg/eclipse/paho/client/mqttv3/h$a;
.super Ljava/util/TimerTask;
.source "MqttAsyncClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/client/mqttv3/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final a:Lorg/eclipse/paho/client/mqttv3/h;


# direct methods
.method private constructor <init>(Lorg/eclipse/paho/client/mqttv3/h;)V
    .locals 0

    .line 1248
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/h$a;->a:Lorg/eclipse/paho/client/mqttv3/h;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/eclipse/paho/client/mqttv3/h;Lorg/eclipse/paho/client/mqttv3/h$a;)V
    .locals 0

    .line 1248
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/h$a;-><init>(Lorg/eclipse/paho/client/mqttv3/h;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1252
    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/h;->g()Lorg/eclipse/paho/client/mqttv3/a/b;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/h;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReconnectTask.run"

    const-string v3, "506"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/h$a;->a:Lorg/eclipse/paho/client/mqttv3/h;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/h;->a(Lorg/eclipse/paho/client/mqttv3/h;)V

    return-void
.end method
