.class public Lorg/eclipse/paho/client/mqttv3/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static a:Ljava/lang/Class;

.field private static final b:Ljava/lang/String;

.field private static final c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;


# instance fields
.field private d:Z

.field private e:Ljava/lang/Object;

.field private f:Lorg/eclipse/paho/client/mqttv3/a/e;

.field private g:Lorg/eclipse/paho/client/mqttv3/a/a;

.field private h:Lorg/eclipse/paho/client/mqttv3/a/b/f;

.field private i:Lorg/eclipse/paho/client/mqttv3/a/i;

.field private j:Ljava/lang/Thread;

.field private volatile k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/g;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.a.g"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/g;->a:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/g;->b:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/g;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/g;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/a/a;Lorg/eclipse/paho/client/mqttv3/a/e;Lorg/eclipse/paho/client/mqttv3/a/i;Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->d:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->e:Ljava/lang/Object;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->f:Lorg/eclipse/paho/client/mqttv3/a/e;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->i:Lorg/eclipse/paho/client/mqttv3/a/i;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->j:Ljava/lang/Thread;

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/f;

    invoke-direct {v0, p2, p4}, Lorg/eclipse/paho/client/mqttv3/a/b/f;-><init>(Lorg/eclipse/paho/client/mqttv3/a/e;Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->h:Lorg/eclipse/paho/client/mqttv3/a/b/f;

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->f:Lorg/eclipse/paho/client/mqttv3/a/e;

    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->i:Lorg/eclipse/paho/client/mqttv3/a/i;

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/g;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/a;->k()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->setResourceName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/g;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/g;->b:Ljava/lang/String;

    const-string v3, "stop"

    const-string v4, "850"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->k:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->j:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->j:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->j:Ljava/lang/Thread;

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/g;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/g;->b:Ljava/lang/String;

    const-string v2, "stop"

    const-string v3, "851"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/g;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/g;->b:Ljava/lang/String;

    const-string v2, "start"

    const-string v3, "855"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->d:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->j:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->j:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->d:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->k:Z

    return v0
.end method

.method public run()V
    .locals 8

    const/4 v0, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    :goto_0
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->h:Lorg/eclipse/paho/client/mqttv3/a/b/f;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/g;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/g;->b:Ljava/lang/String;

    const-string v2, "run"

    const-string v3, "854"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/g;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/g;->b:Ljava/lang/String;

    const-string v3, "run"

    const-string v4, "852"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->h:Lorg/eclipse/paho/client/mqttv3/a/b/f;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/b/f;->available()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->k:Z

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->h:Lorg/eclipse/paho/client/mqttv3/a/b/f;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/b/f;->a()Lorg/eclipse/paho/client/mqttv3/a/b/u;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->k:Z

    instance-of v2, v0, Lorg/eclipse/paho/client/mqttv3/a/b/b;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->i:Lorg/eclipse/paho/client/mqttv3/a/i;

    invoke-virtual {v2, v0}, Lorg/eclipse/paho/client/mqttv3/a/i;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    move-result-object v1

    if-eqz v1, :cond_3

    monitor-enter v1
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->f:Lorg/eclipse/paho/client/mqttv3/a/e;

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/b/b;

    invoke-virtual {v2, v0}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(Lorg/eclipse/paho/client/mqttv3/a/b/b;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    :goto_2
    iput-boolean v7, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->k:Z

    move-object v1, v0

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v5

    move-object v6, v1

    :try_start_4
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/g;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/g;->b:Ljava/lang/String;

    const-string v2, "run"

    const-string v3, "856"

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->d:Z

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v0, v6, v5}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v0, v6

    goto :goto_2

    :cond_3
    :try_start_5
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/4 v2, 0x6

    invoke-direct {v0, v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v0
    :try_end_5
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_1
    move-exception v0

    :try_start_6
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/g;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/a/g;->b:Ljava/lang/String;

    const-string v4, "run"

    const-string v5, "853"

    invoke-interface {v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->d:Z

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/a/a;->f()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    new-instance v3, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v4, 0x7d6d

    invoke-direct {v3, v4, v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v2, v1, v3}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v0, v1

    goto :goto_2

    :cond_4
    :try_start_7
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->f:Lorg/eclipse/paho/client/mqttv3/a/e;

    invoke-virtual {v2, v0}, Lorg/eclipse/paho/client/mqttv3/a/e;->b(Lorg/eclipse/paho/client/mqttv3/a/b/u;)V
    :try_end_7
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception v0

    iput-boolean v7, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->k:Z

    throw v0

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method
