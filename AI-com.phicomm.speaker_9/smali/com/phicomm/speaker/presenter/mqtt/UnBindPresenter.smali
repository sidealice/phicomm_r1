.class public Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter;
.super Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;
.source "UnBindPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter$a;
    }
.end annotation


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;-><init>(Landroid/content/Context;)V

    const-string p1, "$events/broker/%s/unbinded/+"

    .line 37
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter;->c:Ljava/lang/String;

    const-string p1, "$events/broker/%s/unbinded/"

    .line 41
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter;->d:Ljava/lang/String;

    const-string p1, "UnBindPresenter"

    .line 49
    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/phicomm/speaker/d/a/a;)V
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnBindPresenter \u8bbe\u5907\u89e3\u7ed1\u901a\u77e5: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/phicomm/speaker/d/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " * "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/phicomm/speaker/d/a/a;->b()Lorg/eclipse/paho/client/mqttv3/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p1}, Lcom/phicomm/speaker/d/a/a;->b()Lorg/eclipse/paho/client/mqttv3/p;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/p;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/phicomm/speaker/bean/MqttUnbind;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/bean/MqttUnbind;

    if-nez p1, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/MqttUnbind;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 89
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/MqttUnbind;->getUnbind_by_other()I

    move-result p1

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 91
    :cond_2
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object p1

    const-string v1, "CLOUD_ACCOUNT_UID"

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/manager/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr v2, p1

    :goto_0
    if-eqz v2, :cond_3

    const-string p1, "UnBindPresenter"

    const-string v0, "unbind from mqtt"

    .line 95
    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter$a;->a()V

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "subUnBindTopic"

    .line 54
    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter;->f(Ljava/lang/String;)V

    :cond_1
    const-string v0, "$events/broker/%s/unbinded/+"

    const/4 v1, 0x1

    .line 61
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "$events/broker/%s/unbinded/"

    .line 62
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter;->e:Ljava/lang/String;

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subUnBindTopic deviceId = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter;->e(Ljava/lang/String;)V

    .line 65
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter;->f:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter;->f:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter;->e:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter;->e()V

    return-void
.end method

.method protected c(Ljava/lang/String;)Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
