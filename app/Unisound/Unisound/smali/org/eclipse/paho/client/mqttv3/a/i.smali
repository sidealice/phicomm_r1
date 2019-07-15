.class public Lorg/eclipse/paho/client/mqttv3/a/i;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/Class;

.field private static final b:Ljava/lang/String;

.field private static final c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;


# instance fields
.field private d:Ljava/util/Hashtable;

.field private e:Ljava/lang/String;

.field private f:Lorg/eclipse/paho/client/mqttv3/MqttException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/i;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.a.i"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/i;->a:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/i;->b:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/i;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/i;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->f:Lorg/eclipse/paho/client/mqttv3/MqttException;

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/i;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    invoke-interface {v0, p1}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->setResourceName(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->d:Ljava/util/Hashtable;

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->e:Ljava/lang/String;

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/i;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/i;->b:Ljava/lang/String;

    const-string v2, "<Init>"

    const-string v3, "308"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lorg/eclipse/paho/client/mqttv3/a/b/o;)Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    .locals 9

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->d:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->i()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/a/i;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/a/i;->b:Ljava/lang/String;

    const-string v5, "restoreToken"

    const-string v6, "302"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    aput-object p1, v7, v2

    const/4 v2, 0x2

    aput-object v0, v7, v2

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->e:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v3, v2}, Lorg/eclipse/paho/client/mqttv3/a/u;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->d:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/a/i;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/a/i;->b:Ljava/lang/String;

    const-string v5, "restoreToken"

    const-string v6, "303"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    aput-object p1, v7, v2

    const/4 v2, 0x2

    aput-object v0, v7, v2

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    return-object v0
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->d:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    return-object v0
.end method

.method public a()V
    .locals 5

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->d:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/i;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/i;->b:Ljava/lang/String;

    const-string v3, "open"

    const-string v4, "310"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->f:Lorg/eclipse/paho/client/mqttv3/MqttException;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .locals 7

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->d:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/i;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/i;->b:Ljava/lang/String;

    const-string v3, "quiesce"

    const-string v4, "309"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-interface {v0, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->f:Lorg/eclipse/paho/client/mqttv3/MqttException;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Lorg/eclipse/paho/client/mqttv3/MqttToken;Ljava/lang/String;)V
    .locals 8

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->d:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/i;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/i;->b:Ljava/lang/String;

    const-string v3, "saveToken"

    const-string v4, "307"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v0, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v0, p2}, Lorg/eclipse/paho/client/mqttv3/a/u;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/a/b/u;)V
    .locals 8

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->d:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->f:Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/i;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/a/i;->b:Ljava/lang/String;

    const-string v4, "saveToken"

    const-string v5, "300"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/paho/client/mqttv3/a/i;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->f:Lorg/eclipse/paho/client/mqttv3/MqttException;

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .locals 6

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/i;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/i;->b:Ljava/lang/String;

    const-string v2, "removeToken"

    const-string v3, "306"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/i;->b(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()[Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    .locals 5

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->d:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/i;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/i;->b:Ljava/lang/String;

    const-string v3, "getOutstandingDelTokens"

    const-string v4, "311"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    monitor-exit v1

    return-object v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    if-eqz v0, :cond_0

    instance-of v4, v0, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/a/u;->t()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Ljava/util/Vector;
    .locals 5

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->d:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/i;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/i;->b:Ljava/lang/String;

    const-string v3, "getOutstandingTokens"

    const-string v4, "312"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v1

    return-object v2

    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 8

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/i;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/i;->b:Ljava/lang/String;

    const-string v2, "clear"

    const-string v3, "305"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    iget-object v7, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->d:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->d:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()I
    .locals 2

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->d:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->d:Ljava/util/Hashtable;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/i;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v3

    return-object v0

    :cond_0
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "{"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v5, "}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
