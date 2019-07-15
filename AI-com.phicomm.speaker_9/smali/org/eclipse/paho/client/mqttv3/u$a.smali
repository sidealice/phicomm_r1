.class Lorg/eclipse/paho/client/mqttv3/u$a;
.super Ljava/util/TimerTask;
.source "TimerPingSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/client/mqttv3/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final a:Lorg/eclipse/paho/client/mqttv3/u;


# direct methods
.method private constructor <init>(Lorg/eclipse/paho/client/mqttv3/u;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/u$a;->a:Lorg/eclipse/paho/client/mqttv3/u;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/eclipse/paho/client/mqttv3/u;Lorg/eclipse/paho/client/mqttv3/u$a;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/u$a;-><init>(Lorg/eclipse/paho/client/mqttv3/u;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 77
    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/u;->c()Lorg/eclipse/paho/client/mqttv3/a/b;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/u;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PingTask.run"

    const-string v3, "660"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/u$a;->a:Lorg/eclipse/paho/client/mqttv3/u;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/u;->a(Lorg/eclipse/paho/client/mqttv3/u;)Lorg/eclipse/paho/client/mqttv3/internal/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->l()Lorg/eclipse/paho/client/mqttv3/s;

    return-void
.end method
