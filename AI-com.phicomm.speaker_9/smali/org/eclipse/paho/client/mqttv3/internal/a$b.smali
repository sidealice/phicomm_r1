.class Lorg/eclipse/paho/client/mqttv3/internal/a$b;
.super Ljava/lang/Object;
.source "ClientComms.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/client/mqttv3/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/Thread;

.field b:Lorg/eclipse/paho/client/mqttv3/internal/b/e;

.field c:J

.field d:Lorg/eclipse/paho/client/mqttv3/s;

.field final e:Lorg/eclipse/paho/client/mqttv3/internal/a;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/a;Lorg/eclipse/paho/client/mqttv3/internal/b/e;JLorg/eclipse/paho/client/mqttv3/s;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$b;->e:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 702
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$b;->a:Ljava/lang/Thread;

    .line 708
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$b;->b:Lorg/eclipse/paho/client/mqttv3/internal/b/e;

    .line 709
    iput-wide p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$b;->c:J

    .line 710
    iput-object p5, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$b;->d:Lorg/eclipse/paho/client/mqttv3/s;

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .line 714
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "MQTT Disc: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$b;->e:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/a;->j()Lorg/eclipse/paho/client/mqttv3/d;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$b;->a:Ljava/lang/Thread;

    .line 715
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$b;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 4

    .line 721
    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/internal/a;->n()Lorg/eclipse/paho/client/mqttv3/a/b;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/internal/a;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "disconnectBG:run"

    const-string v3, "221"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$b;->e:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->d(Lorg/eclipse/paho/client/mqttv3/internal/a;)Lorg/eclipse/paho/client/mqttv3/internal/c;

    move-result-object v0

    iget-wide v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$b;->c:J

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/c;->b(J)V

    const/4 v0, 0x0

    .line 726
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$b;->e:Lorg/eclipse/paho/client/mqttv3/internal/a;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$b;->b:Lorg/eclipse/paho/client/mqttv3/internal/b/e;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$b;->d:Lorg/eclipse/paho/client/mqttv3/s;

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/s;)V

    .line 727
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$b;->d:Lorg/eclipse/paho/client/mqttv3/s;

    iget-object v1, v1, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/t;->h()V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 732
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$b;->d:Lorg/eclipse/paho/client/mqttv3/s;

    iget-object v2, v2, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v2, v0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 733
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$b;->e:Lorg/eclipse/paho/client/mqttv3/internal/a;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$b;->d:Lorg/eclipse/paho/client/mqttv3/s;

    invoke-virtual {v2, v3, v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/s;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 734
    throw v1

    .line 732
    :catch_0
    :goto_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$b;->d:Lorg/eclipse/paho/client/mqttv3/s;

    iget-object v1, v1, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v1, v0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 733
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$b;->e:Lorg/eclipse/paho/client/mqttv3/internal/a;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$b;->d:Lorg/eclipse/paho/client/mqttv3/s;

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/s;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    return-void
.end method
