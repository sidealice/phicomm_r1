.class public Lorg/eclipse/paho/client/mqttv3/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static b:Ljava/lang/Class; = null

.field private static final c:Ljava/lang/String;

.field private static final d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

.field private static final e:I = 0xa


# instance fields
.field public a:Z

.field private f:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

.field private g:Lorg/eclipse/paho/client/mqttv3/a/a;

.field private h:Ljava/util/Vector;

.field private i:Ljava/util/Vector;

.field private j:Z

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Thread;

.field private m:Ljava/lang/Object;

.field private n:Ljava/lang/Object;

.field private o:Lorg/eclipse/paho/client/mqttv3/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.a.f"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->b:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>(Lorg/eclipse/paho/client/mqttv3/a/a;)V
    .locals 2

    const/16 v1, 0xa

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->a:Z

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->j:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->k:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->m:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->n:Ljava/lang/Object;

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->h:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->i:Ljava/util/Vector;

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/a;->k()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->setResourceName(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lorg/eclipse/paho/client/mqttv3/a/b/o;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->f:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v3, "handleMessage"

    const-string v4, "713"

    new-array v5, v10, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->i()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    aput-object v0, v5, v9

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->f:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->g()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/eclipse/paho/client/mqttv3/MqttCallback;->messageArrived(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->g()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v0

    if-ne v0, v9, :cond_1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/a/b/k;

    invoke-direct {v1, p1}, Lorg/eclipse/paho/client/mqttv3/a/b/k;-><init>(Lorg/eclipse/paho/client/mqttv3/a/b/o;)V

    new-instance v2, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/a/a;->k()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/eclipse/paho/client/mqttv3/MqttToken;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->g()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v0

    if-ne v0, v10, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/a/b/o;)V

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/l;

    invoke-direct {v0, p1}, Lorg/eclipse/paho/client/mqttv3/a/b/l;-><init>(Lorg/eclipse/paho/client/mqttv3/a/b/o;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    new-instance v2, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/a/a;->k()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/eclipse/paho/client/mqttv3/MqttToken;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    goto :goto_0
.end method

.method private c(Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    .locals 8

    monitor-enter p1

    :try_start_0
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v3, "handleActionComplete"

    const-string v4, "705"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v7}, Lorg/eclipse/paho/client/mqttv3/a/u;->s()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/u;->j()V

    iget-object v1, p1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/u;->t()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->f:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->f:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    move-object v0, p1

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    move-object v1, v0

    invoke-interface {v2, v1}, Lorg/eclipse/paho/client/mqttv3/MqttCallback;->deliveryComplete(Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;)V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/f;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->getActionCallback()Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    move-result-object v1

    instance-of v1, v1, Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/u;->a(Z)V

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->o:Lorg/eclipse/paho/client/mqttv3/a/e;

    invoke-virtual {v1, p1}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    :cond_4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v3, "stop"

    const-string v4, "700"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->a:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->l:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->m:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v4, "stop"

    const-string v5, "701"

    invoke-interface {v0, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->l:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->l:Ljava/lang/Thread;

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v3, "stop"

    const-string v4, "703"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->j:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->l:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->l:Ljava/lang/Thread;

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

.method public a(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->f:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    return-void
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->f:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v2, "connectionLost"

    const-string v3, "708"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->f:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    invoke-interface {v0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttCallback;->connectionLost(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v3, "connectionLost"

    const-string v4, "720"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->getActionCallback()Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->getException()Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v3, "fireActionEvent"

    const-string v4, "716"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v6}, Lorg/eclipse/paho/client/mqttv3/a/u;->s()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;->onSuccess(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v3, "fireActionEvent"

    const-string v4, "716"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v6}, Lorg/eclipse/paho/client/mqttv3/a/u;->s()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->getException()Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;->onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/a/b/o;)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->f:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->n:Ljava/lang/Object;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v3, "messageArrived"

    const-string v4, "710"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    return-void

    :cond_2
    :try_start_2
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v3, "messageArrived"

    const-string v4, "709"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->n:Ljava/lang/Object;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/a/e;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->o:Lorg/eclipse/paho/client/mqttv3/a/e;

    return-void
.end method

.method public b()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->j:Z

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v3, "quiesce"

    const-string v4, "711"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    .locals 8

    const/4 v4, 0x0

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->i:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v3, "asyncOperationComplete"

    const-string v4, "715"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v7}, Lorg/eclipse/paho/client/mqttv3/a/u;->s()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v0, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/f;->c(Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v2, "asyncOperationComplete"

    const-string v3, "719"

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v1, v5}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v4, v1}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->l:Ljava/lang/Thread;

    return-object v0
.end method

.method public run()V
    .locals 7

    const/4 v6, 0x0

    :goto_0
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->m:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v3, "run"

    const-string v4, "704"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->a:Z

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->i:Ljava/util/Vector;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->i:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->i:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_2

    :try_start_4
    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/f;->c(Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    :cond_2
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->h:Ljava/util/Vector;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->h:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/b/o;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->h:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    :goto_3
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v0, :cond_3

    :try_start_6
    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/f;->b(Lorg/eclipse/paho/client/mqttv3/a/b/o;)V

    :cond_3
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->j:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->o:Lorg/eclipse/paho/client/mqttv3/a/e;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/e;->f()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_4
    :goto_4
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v3, "run"

    const-string v4, "706"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catch_1
    move-exception v5

    :try_start_c
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v2, "run"

    const-string v3, "714"

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->a:Z

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    const/4 v1, 0x0

    new-instance v2, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v2, v5}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v4, "run"

    const-string v5, "706"

    invoke-interface {v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->n:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v0

    :catchall_4
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    throw v0
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :catchall_5
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v0

    :cond_5
    move-object v0, v6

    goto :goto_3

    :cond_6
    move-object v0, v6

    goto/16 :goto_2
.end method
