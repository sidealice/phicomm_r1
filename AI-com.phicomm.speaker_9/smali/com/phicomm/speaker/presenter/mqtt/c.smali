.class public Lcom/phicomm/speaker/presenter/mqtt/c;
.super Ljava/lang/Object;
.source "MqttDeviceStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/presenter/mqtt/c$c;,
        Lcom/phicomm/speaker/presenter/mqtt/c$b;,
        Lcom/phicomm/speaker/presenter/mqtt/c$a;
    }
.end annotation


# static fields
.field private static a:I = 0x1388

.field private static b:Ljava/lang/String; = "device/%s/probe/request/%s"

.field private static c:Ljava/lang/String; = "device/%s/probe/response/+"


# instance fields
.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/Runnable;

.field private f:Ljava/lang/String;

.field private g:Lcom/phicomm/speaker/presenter/mqtt/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/c;->d:Landroid/os/Handler;

    .line 38
    new-instance v0, Lcom/phicomm/speaker/presenter/mqtt/c$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/presenter/mqtt/c$1;-><init>(Lcom/phicomm/speaker/presenter/mqtt/c;)V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/c;->e:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/mqtt/c;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/mqtt/c;->b()V

    return-void
.end method

.method private a()Z
    .locals 1

    .line 50
    invoke-static {}, Lcom/phicomm/speaker/d/a;->a()Lcom/phicomm/speaker/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/d/a;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/mqtt/c;)Lcom/phicomm/speaker/presenter/mqtt/c$a;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/mqtt/c;->g:Lcom/phicomm/speaker/presenter/mqtt/c$a;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 96
    invoke-static {}, Lcom/phicomm/speaker/d/a;->a()Lcom/phicomm/speaker/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/mqtt/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/d/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .line 81
    sget-object v0, Lcom/phicomm/speaker/presenter/mqtt/c;->c:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/c;->f:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/phicomm/speaker/d/a;->a()Lcom/phicomm/speaker/d/a;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/c;->f:Ljava/lang/String;

    new-instance v2, Lcom/phicomm/speaker/presenter/mqtt/c$2;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/presenter/mqtt/c$2;-><init>(Lcom/phicomm/speaker/presenter/mqtt/c;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/phicomm/speaker/d/a;->a(Ljava/lang/String;ILorg/eclipse/paho/client/mqttv3/f;)V

    return-void
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/mqtt/c;)Ljava/lang/Runnable;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/mqtt/c;->e:Ljava/lang/Runnable;

    return-object p0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .line 101
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_id()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static synthetic d(Lcom/phicomm/speaker/presenter/mqtt/c;)Landroid/os/Handler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/mqtt/c;->d:Landroid/os/Handler;

    return-object p0
.end method

.method private d()Ljava/lang/String;
    .locals 6

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 110
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 5

    .line 116
    new-instance v0, Lcom/phicomm/speaker/presenter/mqtt/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/mqtt/c$c;-><init>(Lcom/phicomm/speaker/presenter/mqtt/c;Lcom/phicomm/speaker/presenter/mqtt/c$1;)V

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/mqtt/c$c;->a(Ljava/lang/String;)V

    .line 118
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/presenter/mqtt/c$a;)V
    .locals 4

    .line 64
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/c;->g:Lcom/phicomm/speaker/presenter/mqtt/c$a;

    .line 65
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/mqtt/c;->a()Z

    move-result p1

    if-nez p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/c;->g:Lcom/phicomm/speaker/presenter/mqtt/c$a;

    sget v0, Lcom/phicomm/speaker/presenter/mqtt/c$b;->a:I

    const-string v1, "MQTT\u672a\u8fde\u63a5"

    invoke-interface {p1, v0, v1}, Lcom/phicomm/speaker/presenter/mqtt/c$a;->a(ILjava/lang/String;)V

    return-void

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/mqtt/c;->c()Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/c;->g:Lcom/phicomm/speaker/presenter/mqtt/c$a;

    sget v0, Lcom/phicomm/speaker/presenter/mqtt/c$b;->b:I

    const-string v1, "\u6590\u8bafAI\u97f3\u7bb1\u5df2\u79bb\u7ebf"

    invoke-interface {p1, v0, v1}, Lcom/phicomm/speaker/presenter/mqtt/c$a;->a(ILjava/lang/String;)V

    return-void

    .line 74
    :cond_1
    sget-object v0, Lcom/phicomm/speaker/presenter/mqtt/c;->b:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/mqtt/c;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {}, Lcom/phicomm/speaker/d/a;->a()Lcom/phicomm/speaker/d/a;

    move-result-object v1

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/mqtt/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/phicomm/speaker/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/mqtt/c;->b(Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/c;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/c;->e:Ljava/lang/Runnable;

    sget v1, Lcom/phicomm/speaker/presenter/mqtt/c;->a:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "1.0.0.3304"

    .line 59
    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
