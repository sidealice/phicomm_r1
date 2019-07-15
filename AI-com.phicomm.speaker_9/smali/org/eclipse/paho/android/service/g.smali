.class Lorg/eclipse/paho/android/service/g;
.super Ljava/lang/Object;
.source "MqttTokenAndroid.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/g;


# instance fields
.field private a:Lorg/eclipse/paho/client/mqttv3/c;

.field private volatile b:Z

.field private volatile c:Lorg/eclipse/paho/client/mqttv3/MqttException;

.field private d:Ljava/lang/Object;

.field private e:Lorg/eclipse/paho/android/service/MqttAndroidClient;

.field private f:Ljava/lang/Object;

.field private g:[Ljava/lang/String;

.field private h:Lorg/eclipse/paho/client/mqttv3/g;

.field private i:Lorg/eclipse/paho/client/mqttv3/MqttException;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/paho/android/service/g;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;[Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;[Ljava/lang/String;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/g;->d:Ljava/lang/Object;

    .line 70
    iput-object p1, p0, Lorg/eclipse/paho/android/service/g;->e:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    .line 71
    iput-object p2, p0, Lorg/eclipse/paho/android/service/g;->f:Ljava/lang/Object;

    .line 72
    iput-object p3, p0, Lorg/eclipse/paho/android/service/g;->a:Lorg/eclipse/paho/client/mqttv3/c;

    .line 73
    iput-object p4, p0, Lorg/eclipse/paho/android/service/g;->g:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Throwable;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lorg/eclipse/paho/android/service/g;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 134
    :try_start_0
    iput-boolean v1, p0, Lorg/eclipse/paho/android/service/g;->b:Z

    .line 135
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-eqz v1, :cond_0

    .line 136
    move-object v1, p1

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    iput-object v1, p0, Lorg/eclipse/paho/android/service/g;->i:Lorg/eclipse/paho/client/mqttv3/MqttException;

    goto :goto_0

    .line 139
    :cond_0
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v1, p1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lorg/eclipse/paho/android/service/g;->i:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 141
    :goto_0
    iget-object v1, p0, Lorg/eclipse/paho/android/service/g;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 142
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-eqz v1, :cond_1

    .line 143
    move-object v1, p1

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    iput-object v1, p0, Lorg/eclipse/paho/android/service/g;->c:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 145
    :cond_1
    iget-object v1, p0, Lorg/eclipse/paho/android/service/g;->a:Lorg/eclipse/paho/client/mqttv3/c;

    if-eqz v1, :cond_2

    .line 146
    iget-object v1, p0, Lorg/eclipse/paho/android/service/g;->a:Lorg/eclipse/paho/client/mqttv3/c;

    invoke-interface {v1, p0, p1}, Lorg/eclipse/paho/client/mqttv3/c;->a(Lorg/eclipse/paho/client/mqttv3/g;Ljava/lang/Throwable;)V

    .line 148
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method a(Lorg/eclipse/paho/client/mqttv3/g;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lorg/eclipse/paho/android/service/g;->h:Lorg/eclipse/paho/client/mqttv3/g;

    return-void
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/eclipse/paho/android/service/g;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/android/service/g;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 88
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    iget-object v0, p0, Lorg/eclipse/paho/android/service/g;->i:Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/eclipse/paho/android/service/g;->i:Lorg/eclipse/paho/client/mqttv3/MqttException;

    throw v0

    :cond_0
    return-void

    .line 88
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method c()V
    .locals 2

    .line 120
    iget-object v0, p0, Lorg/eclipse/paho/android/service/g;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 121
    :try_start_0
    iput-boolean v1, p0, Lorg/eclipse/paho/android/service/g;->b:Z

    .line 122
    iget-object v1, p0, Lorg/eclipse/paho/android/service/g;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 123
    iget-object v1, p0, Lorg/eclipse/paho/android/service/g;->a:Lorg/eclipse/paho/client/mqttv3/c;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lorg/eclipse/paho/android/service/g;->a:Lorg/eclipse/paho/client/mqttv3/c;

    invoke-interface {v1, p0}, Lorg/eclipse/paho/client/mqttv3/c;->a(Lorg/eclipse/paho/client/mqttv3/g;)V

    .line 126
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()Lorg/eclipse/paho/client/mqttv3/d;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/eclipse/paho/android/service/g;->e:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    return-object v0
.end method

.method public e()Lorg/eclipse/paho/client/mqttv3/c;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/eclipse/paho/android/service/g;->a:Lorg/eclipse/paho/client/mqttv3/c;

    return-object v0
.end method

.method public f()[Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/eclipse/paho/android/service/g;->g:[Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/eclipse/paho/android/service/g;->h:Lorg/eclipse/paho/client/mqttv3/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/android/service/g;->h:Lorg/eclipse/paho/client/mqttv3/g;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/g;->g()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Lorg/eclipse/paho/client/mqttv3/internal/b/u;
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/eclipse/paho/android/service/g;->h:Lorg/eclipse/paho/client/mqttv3/g;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/g;->h()Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    move-result-object v0

    return-object v0
.end method
