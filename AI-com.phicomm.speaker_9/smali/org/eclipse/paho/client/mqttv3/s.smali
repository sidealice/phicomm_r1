.class public Lorg/eclipse/paho/client/mqttv3/s;
.super Ljava/lang/Object;
.source "MqttToken.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/g;


# instance fields
.field public a:Lorg/eclipse/paho/client/mqttv3/internal/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    .line 43
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-direct {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/t;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/c;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/t;->a(Lorg/eclipse/paho/client/mqttv3/c;)V

    return-void
.end method

.method public b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/t;->a(J)V

    return-void
.end method

.method public c()Lorg/eclipse/paho/client/mqttv3/MqttException;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->c()Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    return-object v0
.end method

.method public d()Lorg/eclipse/paho/client/mqttv3/d;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->j()Lorg/eclipse/paho/client/mqttv3/d;

    move-result-object v0

    return-object v0
.end method

.method public e()Lorg/eclipse/paho/client/mqttv3/c;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->f()Lorg/eclipse/paho/client/mqttv3/c;

    move-result-object v0

    return-object v0
.end method

.method public f()[Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->m()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->a()I

    move-result v0

    return v0
.end method

.method public h()Lorg/eclipse/paho/client/mqttv3/internal/b/u;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->q()Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->d()Z

    move-result v0

    return v0
.end method
