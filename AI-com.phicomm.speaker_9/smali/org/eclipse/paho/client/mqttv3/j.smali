.class Lorg/eclipse/paho/client/mqttv3/j;
.super Ljava/lang/Object;
.source "MqttAsyncClient.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/c;


# instance fields
.field final a:Lorg/eclipse/paho/client/mqttv3/h;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/client/mqttv3/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/j;->a:Lorg/eclipse/paho/client/mqttv3/h;

    .line 1177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/eclipse/paho/client/mqttv3/g;)V
    .locals 6

    .line 1181
    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/h;->g()Lorg/eclipse/paho/client/mqttv3/a/b;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/h;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "attemptReconnect"

    const-string v3, "501"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/eclipse/paho/client/mqttv3/g;->d()Lorg/eclipse/paho/client/mqttv3/d;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/paho/client/mqttv3/d;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1182
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/j;->a:Lorg/eclipse/paho/client/mqttv3/h;

    iget-object p1, p1, Lorg/eclipse/paho/client/mqttv3/h;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {p1, v5}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Z)V

    .line 1183
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/j;->a:Lorg/eclipse/paho/client/mqttv3/h;

    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/h;->c(Lorg/eclipse/paho/client/mqttv3/h;)V

    return-void
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/g;Ljava/lang/Throwable;)V
    .locals 5

    .line 1188
    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/h;->g()Lorg/eclipse/paho/client/mqttv3/a/b;

    move-result-object p2

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/h;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "attemptReconnect"

    const-string v2, "502"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/eclipse/paho/client/mqttv3/g;->d()Lorg/eclipse/paho/client/mqttv3/d;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/paho/client/mqttv3/d;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {p2, v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1189
    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/h;->i()I

    move-result p1

    const p2, 0x1f400

    if-ge p1, p2, :cond_0

    .line 1190
    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/h;->i()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/h;->a(I)V

    .line 1192
    :cond_0
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/j;->a:Lorg/eclipse/paho/client/mqttv3/h;

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/h;->i()I

    move-result p2

    invoke-static {p1, p2}, Lorg/eclipse/paho/client/mqttv3/h;->a(Lorg/eclipse/paho/client/mqttv3/h;I)V

    return-void
.end method
