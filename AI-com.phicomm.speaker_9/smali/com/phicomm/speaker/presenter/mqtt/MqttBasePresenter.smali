.class public abstract Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;
.super Ljava/lang/Object;
.source "MqttBasePresenter.java"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/phicomm/speaker/d/a$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;->b:Ljava/util/List;

    .line 49
    new-instance v0, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter$1;-><init>(Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;)V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;->c:Lcom/phicomm/speaker/d/a$b;

    const-string v0, "MqttBasePresenter"

    .line 26
    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 27
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;->a:Landroid/content/Context;

    .line 28
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;->d()V

    .line 36
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;->e()V

    .line 37
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected abstract a(Lcom/phicomm/speaker/d/a/a;)V
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, ""

    if-eqz p2, :cond_0

    .line 96
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publishTopic topic = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 109
    invoke-static {}, Lcom/phicomm/speaker/f/u;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "\u624b\u673a\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 110
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void

    .line 113
    :cond_0
    invoke-static {}, Lcom/phicomm/speaker/d/a;->a()Lcom/phicomm/speaker/d/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 41
    invoke-static {}, Lcom/phicomm/speaker/d/a;->a()Lcom/phicomm/speaker/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;->c:Lcom/phicomm/speaker/d/a$b;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/d/a;->a(Lcom/phicomm/speaker/d/a$b;)V

    return-void
.end method

.method protected abstract c(Ljava/lang/String;)Z
.end method

.method public d()V
    .locals 2

    .line 45
    invoke-static {}, Lcom/phicomm/speaker/d/a;->a()Lcom/phicomm/speaker/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;->c:Lcom/phicomm/speaker/d/a$b;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/d/a;->b(Lcom/phicomm/speaker/d/a$b;)V

    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected e()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 146
    invoke-static {}, Lcom/phicomm/speaker/d/a;->a()Lcom/phicomm/speaker/d/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/phicomm/speaker/d/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected e(Ljava/lang/String;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_0
    invoke-static {}, Lcom/phicomm/speaker/d/a;->a()Lcom/phicomm/speaker/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/d/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected f(Ljava/lang/String;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 137
    :cond_0
    invoke-static {}, Lcom/phicomm/speaker/d/a;->a()Lcom/phicomm/speaker/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/d/a;->b(Ljava/lang/String;)V

    return-void
.end method
