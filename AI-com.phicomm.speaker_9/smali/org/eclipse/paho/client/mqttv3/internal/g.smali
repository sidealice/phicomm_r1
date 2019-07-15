.class public Lorg/eclipse/paho/client/mqttv3/internal/g;
.super Ljava/lang/Object;
.source "CommsTokenStore.java"


# static fields
.field static a:Ljava/lang/Class;

.field private static final b:Ljava/lang/String;

.field private static final c:Lorg/eclipse/paho/client/mqttv3/a/b;


# instance fields
.field private d:Ljava/util/Hashtable;

.field private e:Ljava/lang/String;

.field private f:Lorg/eclipse/paho/client/mqttv3/MqttException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/g;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.g"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/g;->a:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/g;->b:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    .line 48
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/g;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/a/b;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/g;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->f:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 58
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/g;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    invoke-interface {v0, p1}, Lorg/eclipse/paho/client/mqttv3/a/b;->a(Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->d:Ljava/util/Hashtable;

    .line 60
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->e:Ljava/lang/String;

    .line 62
    sget-object p1, Lorg/eclipse/paho/client/mqttv3/internal/g;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/g;->b:Ljava/lang/String;

    const-string v1, "<Init>"

    const-string v2, "308"

    invoke-interface {p1, v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lorg/eclipse/paho/client/mqttv3/internal/b/o;)Lorg/eclipse/paho/client/mqttv3/o;
    .locals 11

    .line 111
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->d:Ljava/util/Hashtable;

    monitor-enter v0

    .line 112
    :try_start_0
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->j()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->d:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->d:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/paho/client/mqttv3/o;

    .line 116
    sget-object v7, Lorg/eclipse/paho/client/mqttv3/internal/g;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v8, Lorg/eclipse/paho/client/mqttv3/internal/g;->b:Ljava/lang/String;

    const-string v9, "restoreToken"

    const-string v10, "302"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    aput-object p1, v6, v4

    aput-object v2, v6, v3

    invoke-interface {v7, v8, v9, v10, v6}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    :cond_0
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/o;

    iget-object v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->e:Ljava/lang/String;

    invoke-direct {v2, v7}, Lorg/eclipse/paho/client/mqttv3/o;-><init>(Ljava/lang/String;)V

    .line 119
    iget-object v7, v2, Lorg/eclipse/paho/client/mqttv3/o;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v7, v1}, Lorg/eclipse/paho/client/mqttv3/internal/t;->a(Ljava/lang/String;)V

    .line 120
    iget-object v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->d:Ljava/util/Hashtable;

    invoke-virtual {v7, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v7, Lorg/eclipse/paho/client/mqttv3/internal/g;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v8, Lorg/eclipse/paho/client/mqttv3/internal/g;->b:Ljava/lang/String;

    const-string v9, "restoreToken"

    const-string v10, "303"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    aput-object p1, v6, v4

    aput-object v2, v6, v3

    invoke-interface {v7, v8, v9, v10, v6}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/s;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/paho/client/mqttv3/s;

    return-object p1
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Lorg/eclipse/paho/client/mqttv3/s;
    .locals 1

    .line 73
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->e()Ljava/lang/String;

    move-result-object p1

    .line 74
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/paho/client/mqttv3/s;

    return-object p1
.end method

.method public a()V
    .locals 5

    .line 171
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->d:Ljava/util/Hashtable;

    monitor-enter v0

    .line 173
    :try_start_0
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/g;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/g;->b:Ljava/lang/String;

    const-string v3, "open"

    const-string v4, "310"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 175
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->f:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 171
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected a(Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .locals 7

    .line 160
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->d:Ljava/util/Hashtable;

    monitor-enter v0

    .line 162
    :try_start_0
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/g;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/g;->b:Ljava/lang/String;

    const-string v3, "quiesce"

    const-string v4, "309"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->f:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 160
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected a(Lorg/eclipse/paho/client/mqttv3/s;Ljava/lang/String;)V
    .locals 8

    .line 149
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->d:Ljava/util/Hashtable;

    monitor-enter v0

    .line 151
    :try_start_0
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/g;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/g;->b:Ljava/lang/String;

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

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v1, p1, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/t;->a(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->d:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected a(Lorg/eclipse/paho/client/mqttv3/s;Lorg/eclipse/paho/client/mqttv3/internal/b/u;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->d:Ljava/util/Hashtable;

    monitor-enter v0

    .line 134
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->f:Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-nez v1, :cond_0

    .line 135
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->e()Ljava/lang/String;

    move-result-object v1

    .line 137
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/g;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/g;->b:Ljava/lang/String;

    const-string v4, "saveToken"

    const-string v5, "300"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/paho/client/mqttv3/internal/g;->a(Lorg/eclipse/paho/client/mqttv3/s;Ljava/lang/String;)V

    .line 133
    monitor-exit v0

    return-void

    .line 141
    :cond_0
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->f:Lorg/eclipse/paho/client/mqttv3/MqttException;

    throw p1

    :catchall_0
    move-exception p1

    .line 133
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/s;
    .locals 6

    .line 92
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/g;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/g;->b:Ljava/lang/String;

    const-string v2, "removeToken"

    const-string v3, "306"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/paho/client/mqttv3/s;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Lorg/eclipse/paho/client/mqttv3/s;
    .locals 0

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/g;->b(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/s;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()[Lorg/eclipse/paho/client/mqttv3/o;
    .locals 5

    .line 182
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->d:Ljava/util/Hashtable;

    monitor-enter v0

    .line 184
    :try_start_0
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/g;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/g;->b:Ljava/lang/String;

    const-string v3, "getOutstandingDelTokens"

    const-string v4, "311"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 187
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->d:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 189
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 199
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Lorg/eclipse/paho/client/mqttv3/o;

    .line 200
    invoke-virtual {v1, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/eclipse/paho/client/mqttv3/o;

    monitor-exit v0

    return-object v1

    .line 190
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/paho/client/mqttv3/s;

    if-eqz v3, :cond_0

    .line 192
    instance-of v4, v3, Lorg/eclipse/paho/client/mqttv3/o;

    if-eqz v4, :cond_0

    .line 193
    iget-object v4, v3, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/t;->p()Z

    move-result v4

    if-nez v4, :cond_0

    .line 195
    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 182
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()Ljava/util/Vector;
    .locals 5

    .line 207
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->d:Ljava/util/Hashtable;

    monitor-enter v0

    .line 209
    :try_start_0
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/g;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/g;->b:Ljava/lang/String;

    const-string v3, "getOutstandingTokens"

    const-string v4, "312"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 212
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->d:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 214
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 220
    monitor-exit v0

    return-object v1

    .line 215
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/paho/client/mqttv3/s;

    if-eqz v3, :cond_0

    .line 217
    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 207
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 7

    .line 230
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/g;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/g;->b:Ljava/lang/String;

    const-string v2, "clear"

    const-string v3, "305"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->d:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->d:Ljava/util/Hashtable;

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->d:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 231
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()I
    .locals 2

    .line 237
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->d:Ljava/util/Hashtable;

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->d:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 237
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const-string v0, "line.separator"

    const-string v1, "\n"

    .line 242
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 244
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->d:Ljava/util/Hashtable;

    monitor-enter v2

    .line 245
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/g;->d:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 247
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_0

    .line 251
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    return-object v0

    .line 248
    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/paho/client/mqttv3/s;

    .line 249
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "{"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, "}"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 244
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
