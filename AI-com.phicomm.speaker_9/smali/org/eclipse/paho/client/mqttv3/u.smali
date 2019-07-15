.class public Lorg/eclipse/paho/client/mqttv3/u;
.super Ljava/lang/Object;
.source "TimerPingSender.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/client/mqttv3/u$a;
    }
.end annotation


# static fields
.field static a:Ljava/lang/Class;

.field private static final b:Ljava/lang/String;

.field private static final c:Lorg/eclipse/paho/client/mqttv3/a/b;


# instance fields
.field private d:Lorg/eclipse/paho/client/mqttv3/internal/a;

.field private e:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/u;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.u"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/u;->a:Ljava/lang/Class;

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

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/u;->b:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    .line 34
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/u;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/a/b;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/u;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lorg/eclipse/paho/client/mqttv3/u;)Lorg/eclipse/paho/client/mqttv3/internal/a;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/eclipse/paho/client/mqttv3/u;->d:Lorg/eclipse/paho/client/mqttv3/internal/a;

    return-object p0
.end method

.method static c()Lorg/eclipse/paho/client/mqttv3/a/b;
    .locals 1

    .line 34
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/u;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    return-object v0
.end method

.method static d()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/u;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 48
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/u;->d:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->j()Lorg/eclipse/paho/client/mqttv3/d;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 51
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/u;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/u;->b:Ljava/lang/String;

    const-string v3, "start"

    const-string v4, "659"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/u;->e:Ljava/util/Timer;

    .line 56
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/u;->e:Ljava/util/Timer;

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/u$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/eclipse/paho/client/mqttv3/u$a;-><init>(Lorg/eclipse/paho/client/mqttv3/u;Lorg/eclipse/paho/client/mqttv3/u$a;)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/u;->d:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/a;->k()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public a(J)V
    .locals 3

    .line 69
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/u;->e:Ljava/util/Timer;

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/u$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/eclipse/paho/client/mqttv3/u$a;-><init>(Lorg/eclipse/paho/client/mqttv3/u;Lorg/eclipse/paho/client/mqttv3/u$a;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/internal/a;)V
    .locals 1

    if-nez p1, :cond_0

    .line 41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ClientComms cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_0
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/u;->d:Lorg/eclipse/paho/client/mqttv3/internal/a;

    return-void
.end method

.method public b()V
    .locals 5

    .line 62
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/u;->c:Lorg/eclipse/paho/client/mqttv3/a/b;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/u;->b:Ljava/lang/String;

    const-string v2, "stop"

    const-string v3, "661"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/u;->e:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/u;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method
