.class public Lorg/eclipse/paho/client/mqttv3/internal/t;
.super Ljava/lang/Object;
.source "Token.java"


# static fields
.field static b:Ljava/lang/Class;

.field private static final c:Ljava/lang/String;

.field private static final d:Lorg/eclipse/paho/client/mqttv3/a/b;


# instance fields
.field protected a:Lorg/eclipse/paho/client/mqttv3/p;

.field private volatile e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:Lorg/eclipse/paho/client/mqttv3/internal/b/u;

.field private k:Lorg/eclipse/paho/client/mqttv3/MqttException;

.field private l:[Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lorg/eclipse/paho/client/mqttv3/d;

.field private o:Lorg/eclipse/paho/client/mqttv3/c;

.field private p:Ljava/lang/Object;

.field private q:I

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/t;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.t"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/t;->b:Ljava/lang/Class;

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

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/t;->c:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    .line 32
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/t;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/a/b;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/t;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->e:Z

    .line 35
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->f:Z

    .line 36
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->g:Z

    .line 38
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->h:Ljava/lang/Object;

    .line 39
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->i:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->a:Lorg/eclipse/paho/client/mqttv3/p;

    .line 42
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->j:Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    .line 43
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 44
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->l:[Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->n:Lorg/eclipse/paho/client/mqttv3/d;

    .line 49
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->o:Lorg/eclipse/paho/client/mqttv3/c;

    .line 51
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->p:Ljava/lang/Object;

    .line 53
    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->q:I

    .line 54
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->r:Z

    .line 57
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/t;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    invoke-interface {v0, p1}, Lorg/eclipse/paho/client/mqttv3/a/b;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 61
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->q:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 65
    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->q:I

    return-void
.end method

.method public a(J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 106
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/t;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/t;->c:Ljava/lang/String;

    const-string v2, "waitForCompletion"

    const-string v3, "407"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->o()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const/4 v5, 0x2

    aput-object p0, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/t;->b(J)Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    move-result-object p1

    if-nez p1, :cond_0

    .line 109
    iget-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->e:Z

    if-nez p1, :cond_0

    .line 111
    sget-object p1, Lorg/eclipse/paho/client/mqttv3/internal/t;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object p2, Lorg/eclipse/paho/client/mqttv3/internal/t;->c:Ljava/lang/String;

    const-string v0, "waitForCompletion"

    const-string v1, "406"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->o()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p0, v2, v7

    invoke-interface {p1, p2, v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    new-instance p1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 p2, 0x7d00

    invoke-direct {p1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 113
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    throw p1

    .line 115
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->b()Z

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->p:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->m:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .locals 1

    .line 343
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 343
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/c;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->o:Lorg/eclipse/paho/client/mqttv3/c;

    return-void
.end method

.method protected a(Lorg/eclipse/paho/client/mqttv3/d;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->n:Lorg/eclipse/paho/client/mqttv3/d;

    return-void
.end method

.method protected a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .locals 7

    .line 178
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/t;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/t;->c:Ljava/lang/String;

    const-string v2, "markComplete"

    const-string v3, "404"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->o()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v6, 0x2

    aput-object p2, v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/b/b;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 183
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->a:Lorg/eclipse/paho/client/mqttv3/p;

    .line 185
    :cond_0
    iput-boolean v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->f:Z

    .line 186
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->j:Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    .line 187
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 180
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/p;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->a:Lorg/eclipse/paho/client/mqttv3/p;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 353
    iput-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->r:Z

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->l:[Ljava/lang/String;

    return-void
.end method

.method protected b(J)Lorg/eclipse/paho/client/mqttv3/internal/b/u;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    .line 132
    iget-object v4, v1, Lorg/eclipse/paho/client/mqttv3/internal/t;->h:Ljava/lang/Object;

    monitor-enter v4

    .line 134
    :try_start_0
    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/t;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v6, Lorg/eclipse/paho/client/mqttv3/internal/t;->c:Ljava/lang/String;

    const-string v7, "waitForResponse"

    const-string v8, "400"

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->o()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    new-instance v10, Ljava/lang/Long;

    invoke-direct {v10, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const/4 v12, 0x1

    aput-object v10, v9, v12

    new-instance v10, Ljava/lang/Boolean;

    iget-boolean v13, v1, Lorg/eclipse/paho/client/mqttv3/internal/t;->g:Z

    invoke-direct {v10, v13}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v13, 0x2

    aput-object v10, v9, v13

    const/4 v10, 0x3

    new-instance v14, Ljava/lang/Boolean;

    iget-boolean v15, v1, Lorg/eclipse/paho/client/mqttv3/internal/t;->e:Z

    invoke-direct {v14, v15}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v14, v9, v10

    const/4 v10, 0x4

    iget-object v14, v1, Lorg/eclipse/paho/client/mqttv3/internal/t;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-nez v14, :cond_0

    const-string v14, "false"

    goto :goto_0

    :cond_0
    const-string v14, "true"

    :goto_0
    aput-object v14, v9, v10

    const/4 v10, 0x5

    iget-object v14, v1, Lorg/eclipse/paho/client/mqttv3/internal/t;->j:Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    aput-object v14, v9, v10

    const/4 v10, 0x6

    aput-object v1, v9, v10

    iget-object v10, v1, Lorg/eclipse/paho/client/mqttv3/internal/t;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-interface/range {v5 .. v10}, Lorg/eclipse/paho/client/mqttv3/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 136
    :cond_1
    iget-boolean v5, v1, Lorg/eclipse/paho/client/mqttv3/internal/t;->e:Z

    if-eqz v5, :cond_2

    goto :goto_2

    .line 137
    :cond_2
    iget-object v5, v1, Lorg/eclipse/paho/client/mqttv3/internal/t;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v6, 0x0

    if-nez v5, :cond_4

    .line 140
    :try_start_1
    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/t;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v8, Lorg/eclipse/paho/client/mqttv3/internal/t;->c:Ljava/lang/String;

    const-string v9, "waitForResponse"

    const-string v10, "408"

    new-array v14, v13, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->o()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v11

    new-instance v15, Ljava/lang/Long;

    invoke-direct {v15, v2, v3}, Ljava/lang/Long;-><init>(J)V

    aput-object v15, v14, v12

    invoke-interface {v5, v8, v9, v10, v14}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    cmp-long v5, v2, v6

    if-gtz v5, :cond_3

    .line 143
    iget-object v5, v1, Lorg/eclipse/paho/client/mqttv3/internal/t;->h:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 145
    :cond_3
    iget-object v5, v1, Lorg/eclipse/paho/client/mqttv3/internal/t;->h:Ljava/lang/Object;

    invoke-virtual {v5, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 148
    :try_start_2
    new-instance v8, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v8, v5}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    iput-object v8, v1, Lorg/eclipse/paho/client/mqttv3/internal/t;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 151
    :cond_4
    :goto_1
    iget-boolean v5, v1, Lorg/eclipse/paho/client/mqttv3/internal/t;->e:Z

    if-nez v5, :cond_1

    .line 152
    iget-object v5, v1, Lorg/eclipse/paho/client/mqttv3/internal/t;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-eqz v5, :cond_5

    .line 154
    sget-object v14, Lorg/eclipse/paho/client/mqttv3/internal/t;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v15, Lorg/eclipse/paho/client/mqttv3/internal/t;->c:Ljava/lang/String;

    const-string v16, "waitForResponse"

    const-string v17, "401"

    const/16 v18, 0x0

    iget-object v2, v1, Lorg/eclipse/paho/client/mqttv3/internal/t;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-object/from16 v19, v2

    invoke-interface/range {v14 .. v19}, Lorg/eclipse/paho/client/mqttv3/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 155
    iget-object v2, v1, Lorg/eclipse/paho/client/mqttv3/internal/t;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    throw v2

    :cond_5
    cmp-long v5, v2, v6

    if-lez v5, :cond_1

    .line 132
    :goto_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/t;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/t;->c:Ljava/lang/String;

    const-string v4, "waitForResponse"

    const-string v5, "402"

    new-array v6, v13, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->o()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    iget-object v7, v1, Lorg/eclipse/paho/client/mqttv3/internal/t;->j:Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    aput-object v7, v6, v12

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object v2, v1, Lorg/eclipse/paho/client/mqttv3/internal/t;->j:Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    return-object v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 132
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public b()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->c()Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->c()Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public c()Lorg/eclipse/paho/client/mqttv3/MqttException;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->e:Z

    return v0
.end method

.method protected e()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->f:Z

    return v0
.end method

.method public f()Lorg/eclipse/paho/client/mqttv3/c;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->o:Lorg/eclipse/paho/client/mqttv3/c;

    return-object v0
.end method

.method protected g()V
    .locals 9

    .line 197
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/t;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/t;->c:Ljava/lang/String;

    const-string v2, "notifyComplete"

    const-string v3, "404"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->o()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->j:Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->f:Z

    if-eqz v1, :cond_0

    .line 205
    iput-boolean v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->e:Z

    .line 206
    iput-boolean v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->f:Z

    goto :goto_0

    .line 208
    :cond_0
    iput-boolean v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->f:Z

    .line 211
    :goto_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->h:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 199
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 213
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_1
    iput-boolean v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->g:Z

    .line 215
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 213
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 199
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public h()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->h:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 239
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    throw v2

    .line 238
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :catch_0
    :goto_0
    :try_start_2
    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->g:Z

    if-eqz v1, :cond_3

    .line 253
    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->g:Z

    if-nez v1, :cond_2

    .line 254
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-nez v1, :cond_1

    const/4 v1, 0x6

    .line 255
    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/j;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v1

    throw v1

    .line 257
    :cond_1
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    throw v1

    .line 237
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 246
    :cond_3
    :try_start_3
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/t;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/t;->c:Ljava/lang/String;

    const-string v3, "waitUntilSent"

    const-string v4, "409"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->o()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->i:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 238
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2

    :catchall_1
    move-exception v1

    .line 237
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method protected i()V
    .locals 8

    .line 269
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/t;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/t;->c:Ljava/lang/String;

    const-string v2, "notifySent"

    const-string v3, "403"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->o()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-interface {v0, v1, v2, v3, v5}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->h:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 271
    :try_start_0
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->j:Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    .line 272
    iput-boolean v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->e:Z

    .line 270
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 274
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 275
    :try_start_1
    iput-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->g:Z

    .line 276
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 274
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 270
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public j()Lorg/eclipse/paho/client/mqttv3/d;
    .locals 1

    .line 281
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->n:Lorg/eclipse/paho/client/mqttv3/d;

    return-object v0
.end method

.method public k()Lorg/eclipse/paho/client/mqttv3/p;
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->a:Lorg/eclipse/paho/client/mqttv3/p;

    return-object v0
.end method

.method public l()Lorg/eclipse/paho/client/mqttv3/internal/b/u;
    .locals 1

    .line 310
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->j:Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    return-object v0
.end method

.method public m()[Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->l:[Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/Object;
    .locals 1

    .line 327
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->p:Ljava/lang/Object;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->m:Ljava/lang/String;

    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->r:Z

    return v0
.end method

.method public q()Lorg/eclipse/paho/client/mqttv3/internal/b/u;
    .locals 1

    .line 391
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/t;->j:Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 357
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "key="

    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ,topics="

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->m()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 361
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->m()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 362
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->m()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, " ,usercontext="

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->n()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " ,isComplete="

    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, " ,isNotified="

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, " ,exception="

    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->c()Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " ,actioncallback="

    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->f()Lorg/eclipse/paho/client/mqttv3/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 371
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
