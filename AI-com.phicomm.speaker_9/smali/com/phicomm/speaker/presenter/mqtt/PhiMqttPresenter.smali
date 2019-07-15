.class public Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;
.super Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;
.source "PhiMqttPresenter.java"

# interfaces
.implements Lcom/phicomm/speaker/d/a$a;


# static fields
.field private static f:Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;
    .locals 1

    .line 47
    sget-object v0, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->f:Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->f:Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;

    .line 50
    :cond_0
    sget-object p0, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->f:Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;

    return-object p0
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

    .line 133
    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p1, p2, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "$phihome/shadow/echo_r1/%s/common_config/get"

    const/4 v1, 0x1

    .line 73
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->g()V

    const-string v0, "$phihome/shadow/echo_r1/%s/common_config/update/accepted"

    const/4 v1, 0x1

    .line 86
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->c:Ljava/lang/String;

    const-string v0, "$phihome/shadow/echo_r1/%s/common_config/get/accepted"

    .line 87
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->d:Ljava/lang/String;

    .line 88
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->e(Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->e(Ljava/lang/String;)V

    return-void
.end method

.method private g()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->f(Ljava/lang/String;)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->f(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Lcom/phicomm/speaker/d/a/a;)V
    .locals 5

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phi_mqtt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/phicomm/speaker/d/a/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 116
    :try_start_0
    invoke-virtual {p1}, Lcom/phicomm/speaker/d/a/a;->b()Lorg/eclipse/paho/client/mqttv3/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/p;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter$1;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter$1;-><init>(Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;)V

    invoke-direct {p0, v1, v2}, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->a(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/bean/mqtt/shadow/ShadowBean;

    .line 118
    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/mqtt/shadow/ShadowBean;->getState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigState;

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigState;->getConfig()Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;

    move-result-object v1

    .line 119
    new-instance v2, Lcom/phicomm/speaker/a/k;

    invoke-direct {v2, v1, v0}, Lcom/phicomm/speaker/a/k;-><init>(Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Lcom/phicomm/speaker/d/a/a;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/phicomm/speaker/a/k;->a(Z)V

    .line 122
    invoke-static {}, Lcom/phicomm/speaker/e/b;->a()Lcom/phicomm/speaker/e/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/phicomm/speaker/e/b;->b()Lcom/phicomm/speaker/e/a/a;

    move-result-object v3

    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/phicomm/speaker/e/d;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/phicomm/speaker/e/a/a;->a(Ljava/lang/String;Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;)V

    .line 123
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phi_mqtt_error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 126
    new-instance v1, Lcom/phicomm/speaker/a/k;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->a:Landroid/content/Context;

    const v4, 0x7f0f0076

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "305"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/phicomm/speaker/a/k;-><init>(Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lcom/phicomm/speaker/d/a/a;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/phicomm/speaker/a/k;->a(Z)V

    .line 128
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 0

    .line 139
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->e:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->b(Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->e:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 54
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 57
    :cond_0
    invoke-static {}, Lcom/phicomm/speaker/d/a;->a()Lcom/phicomm/speaker/d/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/d/a;->a(Lcom/phicomm/speaker/d/a$a;)V

    return-void
.end method

.method protected c(Ljava/lang/String;)Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public f()V
    .locals 1

    .line 61
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 64
    :cond_0
    invoke-static {}, Lcom/phicomm/speaker/d/a;->a()Lcom/phicomm/speaker/d/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/d/a;->b(Lcom/phicomm/speaker/d/a$a;)V

    return-void
.end method

.method public onDeviceChange(Lcom/phicomm/speaker/e/b/d;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 150
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/d;->a()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v1, p0, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 152
    :goto_0
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/d;->a()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->hasDevice()Z

    move-result p1

    if-nez p1, :cond_2

    .line 154
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->g()V

    const/4 p1, 0x0

    .line 155
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->e:Ljava/lang/String;

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 158
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->g()V

    .line 159
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->b(Ljava/lang/String;)V

    .line 160
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->a(Ljava/lang/String;)V

    .line 161
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->e:Ljava/lang/String;

    :cond_3
    :goto_1
    return-void
.end method
