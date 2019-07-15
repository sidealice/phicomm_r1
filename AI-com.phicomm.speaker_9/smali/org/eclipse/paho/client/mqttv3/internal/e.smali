.class public Lorg/eclipse/paho/client/mqttv3/internal/e;
.super Ljava/lang/Object;
.source "CommsReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static a:Ljava/lang/Class;

.field private static final b:Ljava/lang/String;

.field private static final c:Lorg/eclipse/paho/client/mqttv3/a/b;


# instance fields
.field private d:Z

.field private e:Ljava/lang/Object;

.field private f:Lorg/eclipse/paho/client/mqttv3/internal/c;

.field private g:Lorg/eclipse/paho/client/mqttv3/internal/a;

.field private h:Lorg/eclipse/paho/client/mqttv3/internal/b/f;

.field private i:Lorg/eclipse/paho/client/mqttv3/internal/g;

.field private j:Ljava/lang/Thread;

.field private volatile k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/e;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.e"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/e;->a:Ljava/lang/Class;

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

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/e;->b:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    .line 37
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/e;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/a/b;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/e;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/a;Lorg/eclipse/paho/client/mqttv3/internal/c;Lorg/eclipse/paho/client/mqttv3/internal/g;Ljava/io/InputStream;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->d:Z

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->f:Lorg/eclipse/paho/client/mqttv3/internal/c;

    .line 42
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->g:Lorg/eclipse/paho/client/mqttv3/internal/a;

    .line 44
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->i:Lorg/eclipse/paho/client/mqttv3/internal/g;

    .line 45
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->j:Ljava/lang/Thread;

    .line 49
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/b/f;

    invoke-direct {v0, p2, p4}, Lorg/eclipse/paho/client/mqttv3/internal/b/f;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/c;Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->h:Lorg/eclipse/paho/client/mqttv3/internal/b/f;

    .line 50
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->g:Lorg/eclipse/paho/client/mqttv3/internal/a;

    .line 51
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->f:Lorg/eclipse/paho/client/mqttv3/internal/c;

    .line 52
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->i:Lorg/eclipse/paho/client/mqttv3/internal/g;

    .line 53
    sget-object p2, Lorg/eclipse/paho/client/mqttv3/internal/e;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/a;->j()Lorg/eclipse/paho/client/mqttv3/d;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/paho/client/mqttv3/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/eclipse/paho/client/mqttv3/a/b;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 78
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/e;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/e;->b:Ljava/lang/String;

    const-string v3, "stop"

    const-string v4, "850"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->d:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 82
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->d:Z

    .line 83
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->k:Z

    .line 84
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->j:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 92
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->j:Ljava/lang/Thread;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->j:Ljava/lang/Thread;

    .line 101
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/e;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/e;->b:Ljava/lang/String;

    const-string v2, "stop"

    const-string v3, "851"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 78
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 63
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/e;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/e;->b:Ljava/lang/String;

    const-string v2, "start"

    const-string v3, "855"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->d:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 66
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->d:Z

    .line 67
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->j:Ljava/lang/Thread;

    .line 68
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->j:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 64
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 9

    const/4 v0, 0x0

    .line 111
    :goto_0
    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->d:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->h:Lorg/eclipse/paho/client/mqttv3/internal/b/f;

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v1, 0x0

    .line 114
    :try_start_0
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/e;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/e;->b:Ljava/lang/String;

    const-string v4, "run"

    const-string v5, "852"

    invoke-interface {v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->h:Lorg/eclipse/paho/client/mqttv3/internal/b/f;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->available()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->k:Z

    .line 116
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->h:Lorg/eclipse/paho/client/mqttv3/internal/b/f;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/b/f;->a()Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    move-result-object v2

    .line 117
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->k:Z

    .line 120
    instance-of v3, v2, Lorg/eclipse/paho/client/mqttv3/internal/b/b;

    if-eqz v3, :cond_5

    .line 121
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->i:Lorg/eclipse/paho/client/mqttv3/internal/g;

    invoke-virtual {v3, v2}, Lorg/eclipse/paho/client/mqttv3/internal/g;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)Lorg/eclipse/paho/client/mqttv3/s;

    move-result-object v3
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_2

    .line 123
    :try_start_1
    monitor-enter v3
    :try_end_1
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->f:Lorg/eclipse/paho/client/mqttv3/internal/c;

    check-cast v2, Lorg/eclipse/paho/client/mqttv3/internal/b/b;

    invoke-virtual {v0, v2}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/b;)V

    .line 123
    monitor-exit v3

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v3

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v3

    goto :goto_5

    .line 130
    :cond_2
    instance-of v0, v2, Lorg/eclipse/paho/client/mqttv3/internal/b/m;

    if-nez v0, :cond_4

    instance-of v0, v2, Lorg/eclipse/paho/client/mqttv3/internal/b/l;

    if-nez v0, :cond_4

    instance-of v0, v2, Lorg/eclipse/paho/client/mqttv3/internal/b/k;

    if-eqz v0, :cond_3

    goto :goto_2

    .line 139
    :cond_3
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/4 v2, 0x6

    invoke-direct {v0, v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v0

    .line 135
    :cond_4
    :goto_2
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/e;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/e;->b:Ljava/lang/String;

    const-string v4, "run"

    const-string v5, "857"

    invoke-interface {v0, v2, v4, v5}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    move-object v0, v3

    goto :goto_6

    :cond_5
    if-eqz v2, :cond_6

    .line 144
    :try_start_4
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->f:Lorg/eclipse/paho/client/mqttv3/internal/c;

    invoke-virtual {v3, v2}, Lorg/eclipse/paho/client/mqttv3/internal/c;->d(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)V
    :try_end_4
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v2

    .line 157
    :goto_4
    :try_start_5
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/e;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/e;->b:Ljava/lang/String;

    const-string v5, "run"

    const-string v6, "853"

    invoke-interface {v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->d:Z

    .line 163
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->g:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/internal/a;->e()Z

    move-result v3

    if-nez v3, :cond_6

    .line 164
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->g:Lorg/eclipse/paho/client/mqttv3/internal/a;

    new-instance v4, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v5, 0x7d6d

    invoke-direct {v4, v5, v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v3, v0, v4}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/s;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    goto :goto_6

    :catch_3
    move-exception v2

    .line 150
    :goto_5
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/e;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/e;->b:Ljava/lang/String;

    const-string v5, "run"

    const-string v6, "856"

    const/4 v7, 0x0

    move-object v8, v2

    invoke-interface/range {v3 .. v8}, Lorg/eclipse/paho/client/mqttv3/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 151
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->d:Z

    .line 153
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->g:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v3, v0, v2}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/s;Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 168
    :cond_6
    :goto_6
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->k:Z

    goto/16 :goto_0

    :goto_7
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/e;->k:Z

    .line 169
    throw v0

    .line 173
    :cond_7
    :goto_8
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/e;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/e;->b:Ljava/lang/String;

    const-string v2, "run"

    const-string v3, "854"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
