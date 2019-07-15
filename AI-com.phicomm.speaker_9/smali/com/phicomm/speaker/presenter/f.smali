.class public Lcom/phicomm/speaker/presenter/f;
.super Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;
.source "LyricProgressPresenter.java"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Lcom/phicomm/speaker/d/a$a;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/phicomm/speaker/d/a$a;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 49
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/f;->d:Lcom/phicomm/speaker/d/a$a;

    .line 50
    invoke-static {}, Lcom/phicomm/speaker/d/a;->a()Lcom/phicomm/speaker/d/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/d/a;->a(Lcom/phicomm/speaker/d/a$a;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/TypeReference<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 140
    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p1, p2, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/phicomm/speaker/d/a/a;)V
    .locals 2

    .line 122
    :try_start_0
    invoke-virtual {p1}, Lcom/phicomm/speaker/d/a/a;->b()Lorg/eclipse/paho/client/mqttv3/p;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/p;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/phicomm/speaker/presenter/f$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/presenter/f$1;-><init>(Lcom/phicomm/speaker/presenter/f;)V

    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/presenter/f;->a(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/bean/player/MusicPlayStatus;

    if-eqz p1, :cond_0

    .line 125
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/a/v;

    invoke-direct {v1, p1}, Lcom/phicomm/speaker/a/v;-><init>(Lcom/phicomm/speaker/bean/player/MusicPlayStatus;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/f;->d:Lcom/phicomm/speaker/d/a$a;

    if-eqz v0, :cond_0

    .line 134
    invoke-static {}, Lcom/phicomm/speaker/d/a;->a()Lcom/phicomm/speaker/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/f;->d:Lcom/phicomm/speaker/d/a$a;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/d/a;->b(Lcom/phicomm/speaker/d/a$a;)V

    .line 136
    :cond_0
    invoke-super {p0}, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;->a()V

    return-void
.end method

.method protected a(Lcom/phicomm/speaker/d/a/a;)V
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lyric_progress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/phicomm/speaker/d/a/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p1}, Lcom/phicomm/speaker/d/a/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/f;->e:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/f;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/f;->b(Lcom/phicomm/speaker/d/a/a;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/f;->c()V

    const-string v0, "device/%s/music/status/request"

    const/4 v1, 0x1

    .line 82
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/f;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/f;->c()V

    const-string v0, "device/%s/music/report/config"

    const/4 v1, 0x1

    .line 65
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 66
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v1, "interval"

    .line 67
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/f;->c()V

    const-string v0, "device/%s/music/status/report"

    const/4 v1, 0x1

    .line 95
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/f;->c:Ljava/lang/String;

    .line 96
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/f;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/f;->e(Ljava/lang/String;)V

    return-void
.end method

.method protected c(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/f;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
