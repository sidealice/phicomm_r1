.class public Lorg/eclipse/paho/client/mqttv3/internal/a;
.super Ljava/lang/Object;
.source "ClientComms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/client/mqttv3/internal/a$a;,
        Lorg/eclipse/paho/client/mqttv3/internal/a$b;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "${project.version}"

.field public static b:Ljava/lang/String; = "L${build.level}"

.field static c:Ljava/lang/Class;

.field private static final d:Ljava/lang/String;

.field private static final e:Lorg/eclipse/paho/client/mqttv3/a/b;


# instance fields
.field private f:Lorg/eclipse/paho/client/mqttv3/d;

.field private g:I

.field private h:[Lorg/eclipse/paho/client/mqttv3/internal/p;

.field private i:Lorg/eclipse/paho/client/mqttv3/internal/e;

.field private j:Lorg/eclipse/paho/client/mqttv3/internal/f;

.field private k:Lorg/eclipse/paho/client/mqttv3/internal/d;

.field private l:Lorg/eclipse/paho/client/mqttv3/internal/c;

.field private m:Lorg/eclipse/paho/client/mqttv3/n;

.field private n:Lorg/eclipse/paho/client/mqttv3/m;

.field private o:Lorg/eclipse/paho/client/mqttv3/r;

.field private p:Lorg/eclipse/paho/client/mqttv3/internal/g;

.field private q:Z

.field private r:B

.field private s:Ljava/lang/Object;

.field private t:Z

.field private u:Z

.field private v:Lorg/eclipse/paho/client/mqttv3/internal/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/a;->c:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.a"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/a;->c:Ljava/lang/Class;

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

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/a;->d:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    .line 57
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/a/b;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/a;->e:Lorg/eclipse/paho/client/mqttv3/a/b;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/d;Lorg/eclipse/paho/client/mqttv3/m;Lorg/eclipse/paho/client/mqttv3/r;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->q:Z

    const/4 v1, 0x3

    .line 78
    iput-byte v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->r:B

    .line 79
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->s:Ljava/lang/Object;

    .line 80
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->t:Z

    .line 81
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->u:Z

    .line 93
    iput-byte v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->r:B

    .line 94
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->f:Lorg/eclipse/paho/client/mqttv3/d;

    .line 95
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->n:Lorg/eclipse/paho/client/mqttv3/m;

    .line 96
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->o:Lorg/eclipse/paho/client/mqttv3/r;

    .line 97
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->o:Lorg/eclipse/paho/client/mqttv3/r;

    invoke-interface {p1, p0}, Lorg/eclipse/paho/client/mqttv3/r;->a(Lorg/eclipse/paho/client/mqttv3/internal/a;)V

    .line 99
    new-instance p1, Lorg/eclipse/paho/client/mqttv3/internal/g;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->j()Lorg/eclipse/paho/client/mqttv3/d;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/g;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->p:Lorg/eclipse/paho/client/mqttv3/internal/g;

    .line 100
    new-instance p1, Lorg/eclipse/paho/client/mqttv3/internal/d;

    invoke-direct {p1, p0}, Lorg/eclipse/paho/client/mqttv3/internal/d;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/a;)V

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->k:Lorg/eclipse/paho/client/mqttv3/internal/d;

    .line 101
    new-instance p1, Lorg/eclipse/paho/client/mqttv3/internal/c;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->p:Lorg/eclipse/paho/client/mqttv3/internal/g;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->k:Lorg/eclipse/paho/client/mqttv3/internal/d;

    move-object v0, p1

    move-object v1, p2

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/internal/c;-><init>(Lorg/eclipse/paho/client/mqttv3/m;Lorg/eclipse/paho/client/mqttv3/internal/g;Lorg/eclipse/paho/client/mqttv3/internal/d;Lorg/eclipse/paho/client/mqttv3/internal/a;Lorg/eclipse/paho/client/mqttv3/r;)V

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->l:Lorg/eclipse/paho/client/mqttv3/internal/c;

    .line 103
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->k:Lorg/eclipse/paho/client/mqttv3/internal/d;

    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->l:Lorg/eclipse/paho/client/mqttv3/internal/c;

    invoke-virtual {p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/d;->a(Lorg/eclipse/paho/client/mqttv3/internal/c;)V

    .line 104
    sget-object p1, Lorg/eclipse/paho/client/mqttv3/internal/a;->e:Lorg/eclipse/paho/client/mqttv3/a/b;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->j()Lorg/eclipse/paho/client/mqttv3/d;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/paho/client/mqttv3/d;->b()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/eclipse/paho/client/mqttv3/a/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method static a(Lorg/eclipse/paho/client/mqttv3/internal/a;)Lorg/eclipse/paho/client/mqttv3/internal/g;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->p:Lorg/eclipse/paho/client/mqttv3/internal/g;

    return-object p0
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 6

    .line 770
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/a;->e:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/a;->d:Ljava/lang/String;

    const-string v2, "handleRunException"

    const-string v3, "804"

    const/4 v4, 0x0

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 772
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-nez v0, :cond_0

    .line 773
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v1, 0x7d6d

    invoke-direct {v0, v1, p1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(ILjava/lang/Throwable;)V

    goto :goto_0

    .line 775
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    :goto_0
    const/4 p1, 0x0

    .line 778
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/s;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    return-void
.end method

.method static a(Lorg/eclipse/paho/client/mqttv3/internal/a;Lorg/eclipse/paho/client/mqttv3/internal/e;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->i:Lorg/eclipse/paho/client/mqttv3/internal/e;

    return-void
.end method

.method static a(Lorg/eclipse/paho/client/mqttv3/internal/a;Lorg/eclipse/paho/client/mqttv3/internal/f;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->j:Lorg/eclipse/paho/client/mqttv3/internal/f;

    return-void
.end method

.method private b(Lorg/eclipse/paho/client/mqttv3/s;Lorg/eclipse/paho/client/mqttv3/MqttException;)Lorg/eclipse/paho/client/mqttv3/s;
    .locals 4

    .line 423
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/a;->e:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/a;->d:Ljava/lang/String;

    const-string v2, "handleOldTokens"

    const-string v3, "222"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 430
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->p:Lorg/eclipse/paho/client/mqttv3/internal/g;

    iget-object v2, p1, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/t;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/g;->a(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/s;

    move-result-object v1

    if-nez v1, :cond_0

    .line 431
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->p:Lorg/eclipse/paho/client/mqttv3/internal/g;

    iget-object v2, p1, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/t;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/g;->a(Lorg/eclipse/paho/client/mqttv3/s;Ljava/lang/String;)V

    .line 435
    :cond_0
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->l:Lorg/eclipse/paho/client/mqttv3/internal/c;

    invoke-virtual {p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a(Lorg/eclipse/paho/client/mqttv3/MqttException;)Ljava/util/Vector;

    move-result-object p1

    .line 436
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    .line 437
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_2

    .line 438
    :cond_1
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/paho/client/mqttv3/s;

    .line 440
    iget-object v1, p2, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/t;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Disc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 441
    iget-object v1, p2, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/t;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Con"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 448
    :cond_2
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->k:Lorg/eclipse/paho/client/mqttv3/internal/d;

    invoke-virtual {v1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/d;->b(Lorg/eclipse/paho/client/mqttv3/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    :goto_1
    move-object v0, p2

    goto :goto_0

    :catch_0
    :goto_2
    return-object v0
.end method

.method static b(Lorg/eclipse/paho/client/mqttv3/internal/a;)[Lorg/eclipse/paho/client/mqttv3/internal/p;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->h:[Lorg/eclipse/paho/client/mqttv3/internal/p;

    return-object p0
.end method

.method static c(Lorg/eclipse/paho/client/mqttv3/internal/a;)I
    .locals 0

    .line 66
    iget p0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->g:I

    return p0
.end method

.method static d(Lorg/eclipse/paho/client/mqttv3/internal/a;)Lorg/eclipse/paho/client/mqttv3/internal/c;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->l:Lorg/eclipse/paho/client/mqttv3/internal/c;

    return-object p0
.end method

.method static e(Lorg/eclipse/paho/client/mqttv3/internal/a;)Lorg/eclipse/paho/client/mqttv3/internal/e;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->i:Lorg/eclipse/paho/client/mqttv3/internal/e;

    return-object p0
.end method

.method static f(Lorg/eclipse/paho/client/mqttv3/internal/a;)Lorg/eclipse/paho/client/mqttv3/internal/f;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->j:Lorg/eclipse/paho/client/mqttv3/internal/f;

    return-object p0
.end method

.method static g(Lorg/eclipse/paho/client/mqttv3/internal/a;)Lorg/eclipse/paho/client/mqttv3/internal/d;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->k:Lorg/eclipse/paho/client/mqttv3/internal/d;

    return-object p0
.end method

.method static n()Lorg/eclipse/paho/client/mqttv3/a/b;
    .locals 1

    .line 57
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/a;->e:Lorg/eclipse/paho/client/mqttv3/a/b;

    return-object v0
.end method

.method static o()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/a;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/s;
    .locals 1

    .line 758
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->l:Lorg/eclipse/paho/client/mqttv3/internal/c;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a(Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/s;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 762
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 760
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Ljava/lang/Exception;)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->f()Z

    move-result v1

    if-nez v1, :cond_3

    .line 193
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->d()Z

    move-result v1

    if-nez v1, :cond_2

    .line 195
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/a;->e:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/a;->d:Ljava/lang/String;

    const-string v3, "close"

    const-string v4, "224"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v2, 0x7d6e

    invoke-direct {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v1

    .line 199
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x7d64

    .line 200
    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/j;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v1

    throw v1

    .line 201
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 202
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->t:Z

    .line 203
    monitor-exit v0

    return-void

    :cond_2
    const/4 v1, 0x4

    .line 207
    iput-byte v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->r:B

    .line 210
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->l:Lorg/eclipse/paho/client/mqttv3/internal/c;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/c;->k()V

    const/4 v1, 0x0

    .line 211
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->l:Lorg/eclipse/paho/client/mqttv3/internal/c;

    .line 212
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->k:Lorg/eclipse/paho/client/mqttv3/internal/d;

    .line 213
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->n:Lorg/eclipse/paho/client/mqttv3/m;

    .line 214
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->j:Lorg/eclipse/paho/client/mqttv3/internal/f;

    .line 215
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->o:Lorg/eclipse/paho/client/mqttv3/r;

    .line 216
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->i:Lorg/eclipse/paho/client/mqttv3/internal/e;

    .line 217
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->h:[Lorg/eclipse/paho/client/mqttv3/internal/p;

    .line 218
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->m:Lorg/eclipse/paho/client/mqttv3/n;

    .line 219
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->p:Lorg/eclipse/paho/client/mqttv3/internal/g;

    .line 190
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(I)V
    .locals 0

    .line 585
    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->g:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 578
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->k:Lorg/eclipse/paho/client/mqttv3/internal/d;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/f;)V
    .locals 1

    .line 574
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->k:Lorg/eclipse/paho/client/mqttv3/internal/d;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/d;->a(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/f;)V

    return-void
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/internal/b/c;Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 278
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/c;->d_()I

    move-result p1

    .line 279
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->s:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 283
    :try_start_0
    sget-object p1, Lorg/eclipse/paho/client/mqttv3/internal/a;->e:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object p2, Lorg/eclipse/paho/client/mqttv3/internal/a;->d:Ljava/lang/String;

    const-string v2, "connectComplete"

    const-string v3, "215"

    invoke-interface {p1, p2, v2, v3}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iput-byte v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->r:B

    .line 286
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 279
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/a;->e:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/a;->d:Ljava/lang/String;

    const-string v3, "connectComplete"

    const-string v4, "204"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v1

    invoke-interface {v0, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    throw p2

    .line 279
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/internal/b/e;JLorg/eclipse/paho/client/mqttv3/s;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    sget-object p1, Lorg/eclipse/paho/client/mqttv3/internal/a;->e:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object p2, Lorg/eclipse/paho/client/mqttv3/internal/a;->d:Ljava/lang/String;

    const-string p3, "disconnect"

    const-string p4, "223"

    invoke-interface {p1, p2, p3, p4}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7d6f

    .line 463
    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/internal/j;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object p1

    throw p1

    .line 464
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 466
    sget-object p1, Lorg/eclipse/paho/client/mqttv3/internal/a;->e:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object p2, Lorg/eclipse/paho/client/mqttv3/internal/a;->d:Ljava/lang/String;

    const-string p3, "disconnect"

    const-string p4, "211"

    invoke-interface {p1, p2, p3, p4}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7d65

    .line 467
    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/internal/j;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object p1

    throw p1

    .line 468
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 470
    sget-object p1, Lorg/eclipse/paho/client/mqttv3/internal/a;->e:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object p2, Lorg/eclipse/paho/client/mqttv3/internal/a;->d:Ljava/lang/String;

    const-string p3, "disconnect"

    const-string p4, "219"

    invoke-interface {p1, p2, p3, p4}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7d66

    .line 471
    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/internal/j;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object p1

    throw p1

    .line 472
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->k:Lorg/eclipse/paho/client/mqttv3/internal/d;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/d;->d()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 474
    sget-object p1, Lorg/eclipse/paho/client/mqttv3/internal/a;->e:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object p2, Lorg/eclipse/paho/client/mqttv3/internal/a;->d:Ljava/lang/String;

    const-string p3, "disconnect"

    const-string p4, "210"

    invoke-interface {p1, p2, p3, p4}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7d6b

    .line 476
    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/internal/j;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object p1

    throw p1

    .line 480
    :cond_3
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/a;->e:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/a;->d:Ljava/lang/String;

    const-string v3, "disconnect"

    const-string v4, "218"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 481
    iput-byte v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->r:B

    .line 482
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/a$b;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/paho/client/mqttv3/internal/a$b;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/a;Lorg/eclipse/paho/client/mqttv3/internal/b/e;JLorg/eclipse/paho/client/mqttv3/s;)V

    .line 483
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/a$b;->a()V

    .line 459
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected a(Lorg/eclipse/paho/client/mqttv3/internal/b/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->l:Lorg/eclipse/paho/client/mqttv3/internal/c;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/c;->b(Lorg/eclipse/paho/client/mqttv3/internal/b/o;)V

    return-void
.end method

.method a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/s;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 121
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/a;->e:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/a;->d:Ljava/lang/String;

    const-string v2, "internalSend"

    const-string v3, "200"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->e()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v8, 0x2

    aput-object p2, v5, v8

    invoke-interface {v0, v1, v2, v3, v5}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/s;->d()Lorg/eclipse/paho/client/mqttv3/d;

    move-result-object v0

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p2, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->j()Lorg/eclipse/paho/client/mqttv3/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/t;->a(Lorg/eclipse/paho/client/mqttv3/d;)V

    .line 136
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->l:Lorg/eclipse/paho/client/mqttv3/internal/c;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/s;)V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 138
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/internal/b/o;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->l:Lorg/eclipse/paho/client/mqttv3/internal/c;

    check-cast p1, Lorg/eclipse/paho/client/mqttv3/internal/b/o;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/o;)V

    .line 141
    :cond_0
    throw p2

    .line 129
    :cond_1
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/a;->e:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/a;->d:Ljava/lang/String;

    const-string v2, "internalSend"

    const-string v3, "213"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p1, v4, v6

    aput-object p2, v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    new-instance p1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 p2, 0x7dc9

    invoke-direct {p1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw p1
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/k;)V
    .locals 1

    .line 558
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->k:Lorg/eclipse/paho/client/mqttv3/internal/d;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/d;->a(Lorg/eclipse/paho/client/mqttv3/k;)V

    return-void
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/l;)V
    .locals 1

    .line 562
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->k:Lorg/eclipse/paho/client/mqttv3/internal/d;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/d;->a(Lorg/eclipse/paho/client/mqttv3/l;)V

    return-void
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/n;Lorg/eclipse/paho/client/mqttv3/s;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 234
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->d()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->t:Z

    if-nez v2, :cond_0

    .line 237
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/a;->e:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/a;->d:Ljava/lang/String;

    const-string v5, "connect"

    const-string v6, "214"

    invoke-interface {v2, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iput-byte v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->r:B

    .line 241
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->m:Lorg/eclipse/paho/client/mqttv3/n;

    .line 243
    new-instance v11, Lorg/eclipse/paho/client/mqttv3/internal/b/d;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->f:Lorg/eclipse/paho/client/mqttv3/d;

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/d;->b()Ljava/lang/String;

    move-result-object v3

    .line 244
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->m:Lorg/eclipse/paho/client/mqttv3/n;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/n;->f()I

    move-result v4

    .line 245
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->m:Lorg/eclipse/paho/client/mqttv3/n;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/n;->m()Z

    move-result v5

    .line 246
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->m:Lorg/eclipse/paho/client/mqttv3/n;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/n;->e()I

    move-result v6

    .line 247
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->m:Lorg/eclipse/paho/client/mqttv3/n;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/n;->d()Ljava/lang/String;

    move-result-object v7

    .line 248
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->m:Lorg/eclipse/paho/client/mqttv3/n;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/n;->c()[C

    move-result-object v8

    .line 249
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->m:Lorg/eclipse/paho/client/mqttv3/n;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/n;->k()Lorg/eclipse/paho/client/mqttv3/p;

    move-result-object v9

    .line 250
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->m:Lorg/eclipse/paho/client/mqttv3/n;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/n;->j()Ljava/lang/String;

    move-result-object v10

    move-object v2, v11

    .line 243
    invoke-direct/range {v2 .. v10}, Lorg/eclipse/paho/client/mqttv3/internal/b/d;-><init>(Ljava/lang/String;IZILjava/lang/String;[CLorg/eclipse/paho/client/mqttv3/p;Ljava/lang/String;)V

    .line 252
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->l:Lorg/eclipse/paho/client/mqttv3/internal/c;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->m:Lorg/eclipse/paho/client/mqttv3/n;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/n;->e()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a(J)V

    .line 253
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->l:Lorg/eclipse/paho/client/mqttv3/internal/c;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->m:Lorg/eclipse/paho/client/mqttv3/n;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/n;->m()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a(Z)V

    .line 254
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->l:Lorg/eclipse/paho/client/mqttv3/internal/c;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->m:Lorg/eclipse/paho/client/mqttv3/n;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/n;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a(I)V

    .line 256
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->p:Lorg/eclipse/paho/client/mqttv3/internal/g;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/g;->a()V

    .line 257
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/a$a;

    invoke-direct {v2, p0, p0, p2, v11}, Lorg/eclipse/paho/client/mqttv3/internal/a$a;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/a;Lorg/eclipse/paho/client/mqttv3/internal/a;Lorg/eclipse/paho/client/mqttv3/s;Lorg/eclipse/paho/client/mqttv3/internal/b/d;)V

    .line 258
    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->a()V

    .line 234
    monitor-exit v1

    return-void

    .line 262
    :cond_0
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/a;->e:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/a;->d:Ljava/lang/String;

    const-string v5, "connect"

    const-string v6, "207"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/Byte;

    iget-byte v9, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->r:B

    invoke-direct {v8, v9}, Ljava/lang/Byte;-><init>(B)V

    aput-object v8, v3, v7

    invoke-interface {v2, v4, v5, v6, v3}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->f()Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->t:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 266
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v3, 0x7d6e

    invoke-direct {v2, v3}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v2

    .line 267
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 268
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v3, 0x7d66

    invoke-direct {v2, v3}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v2

    :cond_3
    const/16 v2, 0x7d64

    .line 270
    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/j;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v2

    throw v2

    .line 264
    :cond_4
    :goto_0
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v3, 0x7d6f

    invoke-direct {v2, v3}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 234
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/s;Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .locals 8

    .line 311
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->q:Z

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->t:Z

    if-nez v1, :cond_f

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x1

    .line 315
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->q:Z

    .line 318
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/internal/a;->e:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/a;->d:Ljava/lang/String;

    const-string v4, "shutdownConnection"

    const-string v5, "216"

    invoke-interface {v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->b()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->e()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const/4 v4, 0x2

    .line 321
    iput-byte v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->r:B

    .line 311
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_2

    .line 326
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/s;->i()Z

    move-result v0

    if-nez v0, :cond_2

    .line 327
    iget-object v0, p1, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v0, p2}, Lorg/eclipse/paho/client/mqttv3/internal/t;->a(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 332
    :cond_2
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->k:Lorg/eclipse/paho/client/mqttv3/internal/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->k:Lorg/eclipse/paho/client/mqttv3/internal/d;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/d;->a()V

    .line 335
    :cond_3
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->i:Lorg/eclipse/paho/client/mqttv3/internal/e;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->i:Lorg/eclipse/paho/client/mqttv3/internal/e;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/e;->a()V

    .line 339
    :cond_4
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->h:[Lorg/eclipse/paho/client/mqttv3/internal/p;

    if-eqz v0, :cond_5

    .line 340
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->h:[Lorg/eclipse/paho/client/mqttv3/internal/p;

    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->g:I

    aget-object v0, v0, v4

    if-eqz v0, :cond_5

    .line 342
    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/internal/p;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 350
    :catch_0
    :cond_5
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->p:Lorg/eclipse/paho/client/mqttv3/internal/g;

    new-instance v4, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v5, 0x7d66

    invoke-direct {v4, v5}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    invoke-virtual {v0, v4}, Lorg/eclipse/paho/client/mqttv3/internal/g;->a(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 355
    invoke-direct {p0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/a;->b(Lorg/eclipse/paho/client/mqttv3/s;Lorg/eclipse/paho/client/mqttv3/MqttException;)Lorg/eclipse/paho/client/mqttv3/s;

    move-result-object p1

    .line 359
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->l:Lorg/eclipse/paho/client/mqttv3/internal/c;

    invoke-virtual {v0, p2}, Lorg/eclipse/paho/client/mqttv3/internal/c;->b(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 360
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->l:Lorg/eclipse/paho/client/mqttv3/internal/c;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 361
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->k:Lorg/eclipse/paho/client/mqttv3/internal/d;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/d;->e()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 366
    :catch_1
    :cond_6
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->j:Lorg/eclipse/paho/client/mqttv3/internal/f;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->j:Lorg/eclipse/paho/client/mqttv3/internal/f;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/f;->a()V

    .line 368
    :cond_7
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->o:Lorg/eclipse/paho/client/mqttv3/r;

    if-eqz v0, :cond_8

    .line 369
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->o:Lorg/eclipse/paho/client/mqttv3/r;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/r;->b()V

    .line 373
    :cond_8
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->v:Lorg/eclipse/paho/client/mqttv3/internal/i;

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->n:Lorg/eclipse/paho/client/mqttv3/m;

    if-eqz v0, :cond_9

    .line 374
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->n:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/m;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 382
    :catch_2
    :cond_9
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->s:Ljava/lang/Object;

    monitor-enter v4

    .line 384
    :try_start_4
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/a;->e:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/a;->d:Ljava/lang/String;

    const-string v6, "shutdownConnection"

    const-string v7, "217"

    invoke-interface {v0, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 386
    iput-byte v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->r:B

    .line 387
    iput-boolean v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->q:Z

    .line 382
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p1, :cond_a

    move v0, v1

    goto :goto_1

    :cond_a
    move v0, v3

    .line 395
    :goto_1
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->k:Lorg/eclipse/paho/client/mqttv3/internal/d;

    if-eqz v4, :cond_b

    goto :goto_2

    :cond_b
    move v1, v3

    :goto_2
    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    .line 396
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->k:Lorg/eclipse/paho/client/mqttv3/internal/d;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/d;->b(Lorg/eclipse/paho/client/mqttv3/s;)V

    :cond_c
    if-eqz v2, :cond_d

    .line 399
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->k:Lorg/eclipse/paho/client/mqttv3/internal/d;

    if-eqz p1, :cond_d

    .line 401
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->k:Lorg/eclipse/paho/client/mqttv3/internal/d;

    invoke-virtual {p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/d;->a(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 405
    :cond_d
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->s:Ljava/lang/Object;

    monitor-enter p1

    .line 406
    :try_start_5
    iget-boolean p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->t:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p2, :cond_e

    .line 408
    :try_start_6
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 405
    :catch_3
    :cond_e
    :try_start_7
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    .line 382
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p1

    .line 313
    :cond_f
    :goto_3
    :try_start_9
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p1

    .line 311
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p1
.end method

.method public a(Z)V
    .locals 0

    .line 787
    iput-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->u:Z

    return-void
.end method

.method public a([Lorg/eclipse/paho/client/mqttv3/internal/p;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->h:[Lorg/eclipse/paho/client/mqttv3/internal/p;

    return-void
.end method

.method public b(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/s;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->b()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 155
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/internal/b/d;

    if-nez v0, :cond_4

    .line 156
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/internal/b/e;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->v:Lorg/eclipse/paho/client/mqttv3/internal/i;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 169
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/a;->e:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/a;->d:Ljava/lang/String;

    const-string v4, "sendNoWait"

    const-string v5, "508"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->e()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-interface {v0, v3, v4, v5, v2}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->v:Lorg/eclipse/paho/client/mqttv3/internal/i;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/i;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->l:Lorg/eclipse/paho/client/mqttv3/internal/c;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)V

    .line 173
    :cond_2
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->v:Lorg/eclipse/paho/client/mqttv3/internal/i;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/i;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/s;)V

    goto :goto_1

    .line 176
    :cond_3
    sget-object p1, Lorg/eclipse/paho/client/mqttv3/internal/a;->e:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object p2, Lorg/eclipse/paho/client/mqttv3/internal/a;->d:Ljava/lang/String;

    const-string v0, "sendNoWait"

    const-string v1, "208"

    invoke-interface {p1, p2, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7d68

    .line 177
    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/internal/j;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object p1

    throw p1

    .line 157
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->v:Lorg/eclipse/paho/client/mqttv3/internal/i;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->v:Lorg/eclipse/paho/client/mqttv3/internal/i;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/i;->a()I

    move-result v0

    if-eqz v0, :cond_6

    .line 159
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/a;->e:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/a;->d:Ljava/lang/String;

    const-string v4, "sendNoWait"

    const-string v5, "507"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/b/u;->e()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-interface {v0, v3, v4, v5, v2}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->v:Lorg/eclipse/paho/client/mqttv3/internal/i;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/i;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 161
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->l:Lorg/eclipse/paho/client/mqttv3/internal/c;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;)V

    .line 163
    :cond_5
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->v:Lorg/eclipse/paho/client/mqttv3/internal/i;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/i;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/s;)V

    goto :goto_1

    .line 165
    :cond_6
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/s;)V

    :goto_1
    return-void
.end method

.method public b()Z
    .locals 2

    .line 521
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 522
    :try_start_0
    iget-byte v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->r:B

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 521
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()Z
    .locals 3

    .line 527
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 528
    :try_start_0
    iget-byte v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->r:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 527
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()Z
    .locals 3

    .line 533
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 534
    :try_start_0
    iget-byte v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->r:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 533
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()Z
    .locals 3

    .line 539
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 540
    :try_start_0
    iget-byte v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->r:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 539
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()Z
    .locals 3

    .line 545
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 546
    :try_start_0
    iget-byte v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->r:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 545
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public g()Z
    .locals 2

    .line 551
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 552
    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->u:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 551
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public h()I
    .locals 1

    .line 588
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->g:I

    return v0
.end method

.method public i()[Lorg/eclipse/paho/client/mqttv3/internal/p;
    .locals 1

    .line 591
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->h:[Lorg/eclipse/paho/client/mqttv3/internal/p;

    return-object v0
.end method

.method public j()Lorg/eclipse/paho/client/mqttv3/d;
    .locals 1

    .line 609
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->f:Lorg/eclipse/paho/client/mqttv3/d;

    return-object v0
.end method

.method public k()J
    .locals 2

    .line 613
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->l:Lorg/eclipse/paho/client/mqttv3/internal/c;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/c;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public l()Lorg/eclipse/paho/client/mqttv3/s;
    .locals 1

    const/4 v0, 0x0

    .line 744
    invoke-virtual {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/c;)Lorg/eclipse/paho/client/mqttv3/s;

    move-result-object v0

    return-object v0
.end method

.method public m()V
    .locals 4

    .line 814
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->v:Lorg/eclipse/paho/client/mqttv3/internal/i;

    if-eqz v0, :cond_0

    .line 816
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/a;->e:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/a;->d:Ljava/lang/String;

    const-string v2, "notifyReconnect"

    const-string v3, "509"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->v:Lorg/eclipse/paho/client/mqttv3/internal/i;

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/b;

    invoke-direct {v1, p0}, Lorg/eclipse/paho/client/mqttv3/internal/b;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/a;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/i;->a(Lorg/eclipse/paho/client/mqttv3/internal/l;)V

    .line 838
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a;->v:Lorg/eclipse/paho/client/mqttv3/internal/i;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
