.class Lorg/eclipse/paho/client/mqttv3/TimerPingSender$PingTask;
.super Ljava/util/TimerTask;


# static fields
.field private static final b:Ljava/lang/String; = "PingTask.run"


# instance fields
.field final a:Lorg/eclipse/paho/client/mqttv3/TimerPingSender;


# direct methods
.method private constructor <init>(Lorg/eclipse/paho/client/mqttv3/TimerPingSender;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/TimerPingSender$PingTask;->a:Lorg/eclipse/paho/client/mqttv3/TimerPingSender;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/eclipse/paho/client/mqttv3/TimerPingSender;Lorg/eclipse/paho/client/mqttv3/TimerPingSender$PingTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/TimerPingSender$PingTask;-><init>(Lorg/eclipse/paho/client/mqttv3/TimerPingSender;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/TimerPingSender;->a()Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/TimerPingSender;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PingTask.run"

    const-string v3, "660"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/lang/Long;-><init>(J)V

    aput-object v6, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/TimerPingSender$PingTask;->a:Lorg/eclipse/paho/client/mqttv3/TimerPingSender;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/TimerPingSender;->a(Lorg/eclipse/paho/client/mqttv3/TimerPingSender;)Lorg/eclipse/paho/client/mqttv3/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/a;->p()Lorg/eclipse/paho/client/mqttv3/MqttToken;

    return-void
.end method
