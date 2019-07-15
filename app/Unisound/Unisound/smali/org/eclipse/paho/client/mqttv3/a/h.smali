.class public Lorg/eclipse/paho/client/mqttv3/a/h;
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

.field private g:Lorg/eclipse/paho/client/mqttv3/a/b/g;

.field private h:Lorg/eclipse/paho/client/mqttv3/a/a;

.field private i:Lorg/eclipse/paho/client/mqttv3/a/i;

.field private j:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/h;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.a.h"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/h;->a:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/h;->b:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/h;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/h;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/a/a;Lorg/eclipse/paho/client/mqttv3/a/e;Lorg/eclipse/paho/client/mqttv3/a/i;Ljava/io/OutputStream;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->d:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->e:Ljava/lang/Object;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->f:Lorg/eclipse/paho/client/mqttv3/a/e;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->h:Lorg/eclipse/paho/client/mqttv3/a/a;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->i:Lorg/eclipse/paho/client/mqttv3/a/i;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->j:Ljava/lang/Thread;

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/g;

    invoke-direct {v0, p2, p4}, Lorg/eclipse/paho/client/mqttv3/a/b/g;-><init>(Lorg/eclipse/paho/client/mqttv3/a/e;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->g:Lorg/eclipse/paho/client/mqttv3/a/b/g;

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->h:Lorg/eclipse/paho/client/mqttv3/a/a;

    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->f:Lorg/eclipse/paho/client/mqttv3/a/e;

    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->i:Lorg/eclipse/paho/client/mqttv3/a/i;

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/h;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/a;->k()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->setResourceName(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Ljava/lang/Exception;)V
    .locals 6

    const/4 v4, 0x0

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/h;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/h;->b:Ljava/lang/String;

    const-string v2, "handleRunException"

    const-string v3, "804"

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    instance-of v0, p2, Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v1, 0x7d6d

    invoke-direct {v0, v1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(ILjava/lang/Throwable;)V

    move-object p2, v0

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->d:Z

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->h:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v0, v4, p2}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    return-void

    :cond_0
    check-cast p2, Lorg/eclipse/paho/client/mqttv3/MqttException;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/h;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/h;->b:Ljava/lang/String;

    const-string v3, "stop"

    const-string v4, "800"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->d:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->j:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->f:Lorg/eclipse/paho/client/mqttv3/a/e;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/e;->h()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->j:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->j:Ljava/lang/Thread;

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/h;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/h;->b:Ljava/lang/String;

    const-string v3, "stop"

    const-string v4, "801"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->d:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->j:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->j:Ljava/lang/Thread;

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

.method public run()V
    .locals 8

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->g:Lorg/eclipse/paho/client/mqttv3/a/b/g;

    if-nez v1, :cond_2

    :cond_1
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/h;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/h;->b:Ljava/lang/String;

    const-string v2, "run"

    const-string v3, "805"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->f:Lorg/eclipse/paho/client/mqttv3/a/e;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/e;->e()Lorg/eclipse/paho/client/mqttv3/a/b/u;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/h;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/h;->b:Ljava/lang/String;

    const-string v3, "run"

    const-string v4, "802"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->e()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of v1, v0, Lorg/eclipse/paho/client/mqttv3/a/b/b;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->g:Lorg/eclipse/paho/client/mqttv3/a/b/g;

    invoke-virtual {v1, v0}, Lorg/eclipse/paho/client/mqttv3/a/b/g;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->g:Lorg/eclipse/paho/client/mqttv3/a/b/g;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/b/g;->flush()V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/h;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->i:Lorg/eclipse/paho/client/mqttv3/a/i;

    invoke-virtual {v1, v0}, Lorg/eclipse/paho/client/mqttv3/a/i;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    move-result-object v2

    if-eqz v2, :cond_0

    monitor-enter v2
    :try_end_1
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->g:Lorg/eclipse/paho/client/mqttv3/a/b/g;

    invoke-virtual {v1, v0}, Lorg/eclipse/paho/client/mqttv3/a/b/g;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->g:Lorg/eclipse/paho/client/mqttv3/a/b/g;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/b/g;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :try_start_4
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->f:Lorg/eclipse/paho/client/mqttv3/a/e;

    invoke-virtual {v1, v0}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/h;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Ljava/lang/Exception;)V

    goto :goto_0

    :catch_2
    move-exception v1

    :try_start_6
    instance-of v3, v0, Lorg/eclipse/paho/client/mqttv3/a/b/e;

    if-nez v3, :cond_4

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_5
    :try_start_7
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/h;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/h;->b:Ljava/lang/String;

    const-string v3, "run"

    const-string v4, "803"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->d:Z
    :try_end_7
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0
.end method
