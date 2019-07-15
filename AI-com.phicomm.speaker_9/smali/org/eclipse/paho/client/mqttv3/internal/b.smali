.class Lorg/eclipse/paho/client/mqttv3/internal/b;
.super Ljava/lang/Object;
.source "ClientComms.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/internal/l;


# instance fields
.field final a:Lorg/eclipse/paho/client/mqttv3/internal/a;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/b;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/eclipse/paho/client/mqttv3/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 820
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/b;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 821
    :goto_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/b;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->d(Lorg/eclipse/paho/client/mqttv3/internal/a;)Lorg/eclipse/paho/client/mqttv3/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->i()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/b;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/a;->d(Lorg/eclipse/paho/client/mqttv3/internal/a;)Lorg/eclipse/paho/client/mqttv3/internal/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/c;->j()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 827
    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/internal/a;->n()Lorg/eclipse/paho/client/mqttv3/a/b;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/internal/a;->o()Ljava/lang/String;

    move-result-object v1

    const-string v3, "notifyReconnect"

    const-string v4, "510"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a;->a()Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->e()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-interface {v0, v1, v3, v4, v2}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 828
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/b;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a;->a()Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a;->b()Lorg/eclipse/paho/client/mqttv3/s;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/s;)V

    .line 830
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/b;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->d(Lorg/eclipse/paho/client/mqttv3/internal/a;)Lorg/eclipse/paho/client/mqttv3/internal/c;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a;->a()Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/c;->b(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)V

    return-void

    .line 823
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 833
    :cond_1
    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/internal/a;->n()Lorg/eclipse/paho/client/mqttv3/a/b;

    move-result-object p1

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/internal/a;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notifyReconnect"

    const-string v2, "208"

    invoke-interface {p1, v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7d68

    .line 834
    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/internal/j;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object p1

    throw p1
.end method
