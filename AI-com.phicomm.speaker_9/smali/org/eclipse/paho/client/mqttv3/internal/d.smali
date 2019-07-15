.class public Lorg/eclipse/paho/client/mqttv3/internal/d;
.super Ljava/lang/Object;
.source "CommsCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static b:Ljava/lang/Class;

.field private static final c:Ljava/lang/String;

.field private static final d:Lorg/eclipse/paho/client/mqttv3/a/b;


# instance fields
.field public a:Z

.field private e:Lorg/eclipse/paho/client/mqttv3/k;

.field private f:Lorg/eclipse/paho/client/mqttv3/l;

.field private g:Ljava/util/Hashtable;

.field private h:Lorg/eclipse/paho/client/mqttv3/internal/a;

.field private i:Ljava/util/Vector;

.field private j:Ljava/util/Vector;

.field private k:Z

.field private l:Ljava/lang/Object;

.field private m:Ljava/lang/Thread;

.field private n:Ljava/lang/Object;

.field private o:Ljava/lang/Object;

.field private p:Lorg/eclipse/paho/client/mqttv3/internal/c;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/d;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.d"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/d;->b:Ljava/lang/Class;

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

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/d;->c:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    .line 47
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/d;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/a/b;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/d;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    return-void
.end method

.method constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/a;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->a:Z

    .line 57
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->k:Z

    .line 58
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->l:Ljava/lang/Object;

    .line 60
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->n:Ljava/lang/Object;

    .line 61
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->o:Ljava/lang/Object;

    .line 63
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->q:Z

    .line 66
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->h:Lorg/eclipse/paho/client/mqttv3/internal/a;

    .line 67
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->i:Ljava/util/Vector;

    .line 68
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->j:Ljava/util/Vector;

    .line 69
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->g:Ljava/util/Hashtable;

    .line 70
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/d;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/a;->j()Lorg/eclipse/paho/client/mqttv3/d;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/paho/client/mqttv3/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/eclipse/paho/client/mqttv3/a/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lorg/eclipse/paho/client/mqttv3/internal/b/o;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .line 375
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->g()Ljava/lang/String;

    move-result-object v0

    .line 378
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/d;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/d;->c:Ljava/lang/String;

    const-string v3, "handleMessage"

    const-string v4, "713"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    .line 379
    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->j()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v0, v6, v7

    .line 378
    invoke-interface {v1, v2, v3, v4, v6}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->j()I

    move-result v1

    .line 381
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->h()Lorg/eclipse/paho/client/mqttv3/p;

    move-result-object v2

    .line 380
    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/d;->a(Ljava/lang/String;ILorg/eclipse/paho/client/mqttv3/p;)Z

    .line 383
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->q:Z

    if-nez v0, :cond_1

    .line 384
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->h()Lorg/eclipse/paho/client/mqttv3/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/p;->c()I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 385
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->h:Lorg/eclipse/paho/client/mqttv3/internal/a;

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/b/k;

    invoke-direct {v1, p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/k;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/b/o;)V

    .line 386
    new-instance p1, Lorg/eclipse/paho/client/mqttv3/s;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->h:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/a;->j()Lorg/eclipse/paho/client/mqttv3/d;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lorg/eclipse/paho/client/mqttv3/s;-><init>(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0, v1, p1}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/s;)V

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/o;->h()Lorg/eclipse/paho/client/mqttv3/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/p;->c()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 388
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->h:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/o;)V

    .line 389
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/b/l;

    invoke-direct {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/l;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/b/o;)V

    .line 390
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->h:Lorg/eclipse/paho/client/mqttv3/internal/a;

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/s;

    .line 391
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->h:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/a;->j()Lorg/eclipse/paho/client/mqttv3/d;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/paho/client/mqttv3/s;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/s;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private c(Lorg/eclipse/paho/client/mqttv3/s;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 216
    monitor-enter p1

    .line 218
    :try_start_0
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/d;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/d;->c:Ljava/lang/String;

    const-string v2, "handleActionComplete"

    const-string v3, "705"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v7}, Lorg/eclipse/paho/client/mqttv3/internal/t;->o()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v0, v1, v2, v3, v5}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/s;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->p:Lorg/eclipse/paho/client/mqttv3/internal/c;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a(Lorg/eclipse/paho/client/mqttv3/s;)V

    .line 227
    :cond_0
    iget-object v0, p1, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->g()V

    .line 229
    iget-object v0, p1, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->p()Z

    move-result v0

    if-nez v0, :cond_2

    .line 232
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->e:Lorg/eclipse/paho/client/mqttv3/k;

    if-eqz v0, :cond_1

    .line 233
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/o;

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/s;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->e:Lorg/eclipse/paho/client/mqttv3/k;

    move-object v1, p1

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/o;

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/k;->deliveryComplete(Lorg/eclipse/paho/client/mqttv3/e;)V

    .line 238
    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/d;->a(Lorg/eclipse/paho/client/mqttv3/s;)V

    .line 242
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/s;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 243
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/o;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/s;->e()Lorg/eclipse/paho/client/mqttv3/c;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/paho/client/mqttv3/c;

    if-eqz v0, :cond_4

    .line 244
    :cond_3
    iget-object v0, p1, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v0, v4}, Lorg/eclipse/paho/client/mqttv3/internal/t;->a(Z)V

    .line 216
    :cond_4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 103
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->a:Z

    if-eqz v1, :cond_0

    .line 106
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/d;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/d;->c:Ljava/lang/String;

    const-string v3, "stop"

    const-string v4, "700"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 107
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->a:Z

    .line 108
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->m:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 110
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->n:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    :try_start_2
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/d;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/d;->c:Ljava/lang/String;

    const-string v4, "stop"

    const-string v5, "701"

    invoke-interface {v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->n:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 110
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    :try_start_3
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->m:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 110
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 122
    :try_start_6
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->m:Ljava/lang/Thread;

    .line 124
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/d;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/d;->c:Ljava/lang/String;

    const-string v3, "stop"

    const-string v4, "703"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->a:Z

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->i:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 87
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->j:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    const/4 v1, 0x1

    .line 89
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->a:Z

    const/4 v1, 0x0

    .line 90
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->k:Z

    .line 91
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->m:Ljava/lang/Thread;

    .line 92
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->m:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 82
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

.method public a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/f;)V
    .locals 1

    .line 447
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->g:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 267
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->e:Lorg/eclipse/paho/client/mqttv3/k;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 269
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/d;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/d;->c:Ljava/lang/String;

    const-string v4, "connectionLost"

    const-string v5, "708"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p1, v6, v0

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->e:Lorg/eclipse/paho/client/mqttv3/k;

    invoke-interface {v2, p1}, Lorg/eclipse/paho/client/mqttv3/k;->connectionLost(Ljava/lang/Throwable;)V

    .line 272
    :cond_0
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->f:Lorg/eclipse/paho/client/mqttv3/l;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 273
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->f:Lorg/eclipse/paho/client/mqttv3/l;

    invoke-interface {v2, p1}, Lorg/eclipse/paho/client/mqttv3/l;->connectionLost(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 279
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/d;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/d;->c:Ljava/lang/String;

    const-string v4, "connectionLost"

    const-string v5, "720"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-interface {v2, v3, v4, v5, v1}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/internal/b/o;)V
    .locals 5

    .line 320
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->e:Lorg/eclipse/paho/client/mqttv3/k;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->g:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 325
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->a:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->k:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->i:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    goto :goto_1

    .line 329
    :cond_1
    :try_start_1
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/d;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/d;->c:Ljava/lang/String;

    const-string v3, "messageArrived"

    const-string v4, "709"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->o:Ljava/lang/Object;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 325
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 335
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->k:Z

    if-nez v0, :cond_3

    .line 336
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->i:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 338
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->n:Ljava/lang/Object;

    monitor-enter p1

    .line 340
    :try_start_3
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/d;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/d;->c:Ljava/lang/String;

    const-string v2, "messageArrived"

    const-string v3, "710"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 338
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_3
    :goto_2
    return-void

    :catchall_1
    move-exception p1

    .line 325
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/internal/c;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->p:Lorg/eclipse/paho/client/mqttv3/internal/c;

    return-void
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/k;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->e:Lorg/eclipse/paho/client/mqttv3/k;

    return-void
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/l;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->f:Lorg/eclipse/paho/client/mqttv3/l;

    return-void
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/s;)V
    .locals 8

    if-eqz p1, :cond_1

    .line 293
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/s;->e()Lorg/eclipse/paho/client/mqttv3/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/s;->c()Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 297
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/d;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/d;->c:Ljava/lang/String;

    const-string v5, "fireActionEvent"

    const-string v6, "716"

    .line 298
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, p1, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v7}, Lorg/eclipse/paho/client/mqttv3/internal/t;->o()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    .line 297
    invoke-interface {v1, v4, v5, v6, v3}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    invoke-interface {v0, p1}, Lorg/eclipse/paho/client/mqttv3/c;->a(Lorg/eclipse/paho/client/mqttv3/g;)V

    goto :goto_0

    .line 302
    :cond_0
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/d;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/d;->c:Ljava/lang/String;

    const-string v5, "fireActionEvent"

    const-string v6, "716"

    .line 303
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, p1, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v7}, Lorg/eclipse/paho/client/mqttv3/internal/t;->o()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    .line 302
    invoke-interface {v1, v4, v5, v6, v3}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/s;->c()Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/eclipse/paho/client/mqttv3/c;->a(Lorg/eclipse/paho/client/mqttv3/g;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected a(Ljava/lang/String;ILorg/eclipse/paho/client/mqttv3/p;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->g:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 465
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_2

    .line 475
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->e:Lorg/eclipse/paho/client/mqttv3/k;

    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    .line 476
    invoke-virtual {p3, p2}, Lorg/eclipse/paho/client/mqttv3/p;->c(I)V

    .line 477
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->e:Lorg/eclipse/paho/client/mqttv3/k;

    invoke-interface {p2, p1, p3}, Lorg/eclipse/paho/client/mqttv3/k;->messageArrived(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/p;)V

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1

    .line 466
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 467
    invoke-static {v3, p1}, Lorg/eclipse/paho/client/mqttv3/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 468
    invoke-virtual {p3, p2}, Lorg/eclipse/paho/client/mqttv3/p;->c(I)V

    .line 469
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->g:Ljava/util/Hashtable;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/paho/client/mqttv3/f;

    invoke-interface {v2, p1, p3}, Lorg/eclipse/paho/client/mqttv3/f;->a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/p;)V

    move v2, v1

    goto :goto_0
.end method

.method public b()V
    .locals 5

    const/4 v0, 0x1

    .line 354
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->k:Z

    .line 355
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_0
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/d;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/d;->c:Ljava/lang/String;

    const-string v3, "quiesce"

    const-string v4, "711"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->o:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 355
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 452
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->g:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lorg/eclipse/paho/client/mqttv3/s;)V
    .locals 7

    .line 412
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->a:Z

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->j:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 415
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 417
    :try_start_0
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/d;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/d;->c:Ljava/lang/String;

    const-string v3, "asyncOperationComplete"

    const-string v4, "715"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object p1, p1, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/t;->o()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->n:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 415
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 423
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/d;->c(Lorg/eclipse/paho/client/mqttv3/s;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 428
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/d;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/d;->c:Ljava/lang/String;

    const-string v3, "asyncOperationComplete"

    const-string v4, "719"

    const/4 v5, 0x0

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lorg/eclipse/paho/client/mqttv3/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 431
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->h:Lorg/eclipse/paho/client/mqttv3/internal/a;

    const/4 v1, 0x0

    new-instance v2, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v2, p1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/s;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 364
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected d()Ljava/lang/Thread;
    .locals 1

    .line 442
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->m:Ljava/lang/Thread;

    return-object v0
.end method

.method public e()V
    .locals 1

    .line 456
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->g:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public run()V
    .locals 9

    .line 142
    :goto_0
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 146
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->n:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 147
    :try_start_1
    iget-boolean v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->a:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->i:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->j:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/d;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/d;->c:Ljava/lang/String;

    const-string v5, "run"

    const-string v6, "704"

    invoke-interface {v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->n:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 146
    :cond_1
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v2

    goto :goto_5

    .line 157
    :catch_1
    :goto_1
    :try_start_3
    iget-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->a:Z

    if-eqz v2, :cond_5

    .line 160
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->j:Ljava/util/Vector;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 161
    :try_start_4
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->j:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 163
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->j:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/paho/client/mqttv3/s;

    .line 164
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->j:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_2

    :cond_2
    move-object v3, v0

    .line 160
    :goto_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v3, :cond_3

    .line 168
    :try_start_5
    invoke-direct {p0, v3}, Lorg/eclipse/paho/client/mqttv3/internal/d;->c(Lorg/eclipse/paho/client/mqttv3/s;)V

    .line 173
    :cond_3
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->i:Ljava/util/Vector;

    monitor-enter v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 174
    :try_start_6
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->i:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 178
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->i:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/paho/client/mqttv3/internal/b/o;

    .line 180
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->i:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_3

    :cond_4
    move-object v3, v0

    .line 173
    :goto_3
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v3, :cond_5

    .line 184
    :try_start_7
    invoke-direct {p0, v3}, Lorg/eclipse/paho/client/mqttv3/internal/d;->b(Lorg/eclipse/paho/client/mqttv3/internal/b/o;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    :catchall_2
    move-exception v3

    .line 173
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v3
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_3
    move-exception v3

    .line 160
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v3

    .line 188
    :cond_5
    :goto_4
    iget-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->k:Z

    if-eqz v2, :cond_6

    .line 189
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->p:Lorg/eclipse/paho/client/mqttv3/internal/c;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/c;->f()Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_6

    .line 196
    :goto_5
    :try_start_c
    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/d;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/d;->c:Ljava/lang/String;

    const-string v5, "run"

    const-string v6, "714"

    const/4 v7, 0x0

    move-object v8, v2

    invoke-interface/range {v3 .. v8}, Lorg/eclipse/paho/client/mqttv3/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 197
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->a:Z

    .line 198
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->h:Lorg/eclipse/paho/client/mqttv3/internal/a;

    new-instance v3, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v3, v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v0, v3}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/s;Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 201
    :cond_6
    :goto_6
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_d
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/d;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/d;->c:Ljava/lang/String;

    const-string v3, "run"

    const-string v4, "706"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->o:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 201
    monitor-exit v0

    goto/16 :goto_0

    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v1

    :goto_7
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_e
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/d;->d:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/d;->c:Ljava/lang/String;

    const-string v4, "run"

    const-string v5, "706"

    invoke-interface {v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/d;->o:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 201
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 209
    throw v0

    :catchall_5
    move-exception v0

    .line 201
    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v0
.end method
