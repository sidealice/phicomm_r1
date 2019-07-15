.class public Lorg/eclipse/paho/client/mqttv3/internal/i;
.super Ljava/lang/Object;
.source "DisconnectedMessageBuffer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Lorg/eclipse/paho/client/mqttv3/a/b;


# instance fields
.field private b:Lorg/eclipse/paho/client/mqttv3/b;

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/lang/Object;

.field private e:Lorg/eclipse/paho/client/mqttv3/internal/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    const-string v1, "DisconnectedMessageBuffer"

    .line 31
    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/a/b;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/i;->a:Lorg/eclipse/paho/client/mqttv3/a/b;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 93
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/i;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 93
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(I)Lorg/eclipse/paho/client/mqttv3/a;
    .locals 2

    .line 72
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/i;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/paho/client/mqttv3/a;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/s;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 53
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/a;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/s;)V

    .line 54
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/i;->d:Ljava/lang/Object;

    monitor-enter p1

    .line 55
    :try_start_0
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/i;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/i;->b:Lorg/eclipse/paho/client/mqttv3/b;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/b;->a()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 56
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/i;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_0
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/i;->b:Lorg/eclipse/paho/client/mqttv3/b;

    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/b;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 58
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/i;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 59
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/i;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :goto_0
    monitor-exit p1

    return-void

    .line 61
    :cond_1
    new-instance p2, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v0, 0x7dcb

    invoke-direct {p2, v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw p2

    :catchall_0
    move-exception p2

    .line 54
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/internal/l;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/i;->e:Lorg/eclipse/paho/client/mqttv3/internal/l;

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 83
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/i;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 83
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Z
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/i;->b:Lorg/eclipse/paho/client/mqttv3/b;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/b;->b()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 4

    .line 104
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/i;->a:Lorg/eclipse/paho/client/mqttv3/a/b;

    const-string v1, "DisconnectedMessageBuffer"

    const-string v2, "run"

    const-string v3, "516"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/i;->a()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 107
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/i;->a(I)Lorg/eclipse/paho/client/mqttv3/a;

    move-result-object v1

    .line 108
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/i;->e:Lorg/eclipse/paho/client/mqttv3/internal/l;

    invoke-interface {v2, v1}, Lorg/eclipse/paho/client/mqttv3/internal/l;->a(Lorg/eclipse/paho/client/mqttv3/a;)V

    .line 110
    invoke-virtual {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/i;->b(I)V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/i;->a:Lorg/eclipse/paho/client/mqttv3/a/b;

    const-string v1, "DisconnectedMessageBuffer"

    const-string v2, "run"

    const-string v3, "517"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
