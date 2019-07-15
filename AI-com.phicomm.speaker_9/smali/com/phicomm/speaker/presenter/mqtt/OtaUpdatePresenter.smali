.class public Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;
.super Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;
.source "OtaUpdatePresenter.java"


# instance fields
.field private c:Lcom/phicomm/speaker/model/k;

.field private d:Lcom/phicomm/speaker/c/g;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 31
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->e:Ljava/lang/String;

    .line 35
    new-instance p1, Lcom/phicomm/speaker/model/k;

    invoke-direct {p1}, Lcom/phicomm/speaker/model/k;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->c:Lcom/phicomm/speaker/model/k;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;->a()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->d:Lcom/phicomm/speaker/c/g;

    .line 42
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->c:Lcom/phicomm/speaker/model/k;

    .line 43
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->a:Landroid/content/Context;

    return-void
.end method

.method public a(Lcom/phicomm/speaker/d/a/a;)V
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMqttReceiver event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 102
    :try_start_0
    invoke-virtual {p1}, Lcom/phicomm/speaker/d/a/a;->b()Lorg/eclipse/paho/client/mqttv3/p;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/p;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 106
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMqttReceiver RomUpdateProgressBean = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    .line 108
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->getRet_code()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 142
    :pswitch_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->d:Lcom/phicomm/speaker/c/g;

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->d:Lcom/phicomm/speaker/c/g;

    invoke-interface {p1}, Lcom/phicomm/speaker/c/g;->d()V

    .line 147
    :cond_0
    :pswitch_1
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->d:Lcom/phicomm/speaker/c/g;

    if-eqz p1, :cond_3

    .line 148
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->d:Lcom/phicomm/speaker/c/g;

    invoke-interface {p1}, Lcom/phicomm/speaker/c/g;->e()V

    goto :goto_1

    .line 136
    :pswitch_2
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->d:Lcom/phicomm/speaker/c/g;

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->d:Lcom/phicomm/speaker/c/g;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->getDownload_progress()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/c/g;->b(I)V

    goto :goto_1

    .line 130
    :pswitch_3
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->d:Lcom/phicomm/speaker/c/g;

    if-eqz p1, :cond_3

    .line 131
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->d:Lcom/phicomm/speaker/c/g;

    invoke-interface {p1}, Lcom/phicomm/speaker/c/g;->c()V

    goto :goto_1

    .line 124
    :pswitch_4
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->d:Lcom/phicomm/speaker/c/g;

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->d:Lcom/phicomm/speaker/c/g;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->getReboot_delay()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/c/g;->a(I)V

    goto :goto_1

    .line 118
    :pswitch_5
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->d:Lcom/phicomm/speaker/c/g;

    if-eqz p1, :cond_3

    .line 119
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->d:Lcom/phicomm/speaker/c/g;

    invoke-interface {p1}, Lcom/phicomm/speaker/c/g;->b()V

    goto :goto_1

    .line 111
    :pswitch_6
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->d:Lcom/phicomm/speaker/c/g;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->d:Lcom/phicomm/speaker/c/g;

    invoke-interface {v0}, Lcom/phicomm/speaker/c/g;->a()V

    .line 114
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/a/aa;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/mqtt/RomUpdateProgressBean;->getCur_fw_ver()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/phicomm/speaker/a/aa;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string p1, "onMqttReceiver RomUpdateProgressBean is null !! "

    .line 155
    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Lcom/phicomm/speaker/c/g;)V
    .locals 3

    const-string v0, "$events/client/%s/upgraded"

    const/4 v1, 0x1

    .line 78
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->e:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->d:Lcom/phicomm/speaker/c/g;

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "subscribeRomUpdateStatue subscribeTopic = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 81
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->c:Lcom/phicomm/speaker/model/k;

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/model/k;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/net/a/b<",
            "Lcom/phicomm/speaker/bean/RomUpdateBean;",
            ">;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->c:Lcom/phicomm/speaker/model/k;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/phicomm/speaker/model/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method protected c(Ljava/lang/String;)Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
