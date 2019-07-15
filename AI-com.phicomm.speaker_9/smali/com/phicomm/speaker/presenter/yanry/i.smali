.class public Lcom/phicomm/speaker/presenter/yanry/i;
.super Lcom/phicomm/speaker/e/c/b;
.source "GetMqttDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/e/c/b<",
        "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/bean/MqttDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/phicomm/speaker/b/g<",
            "Lcom/phicomm/speaker/bean/MqttDeviceInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 36
    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/i;->a:Ljava/util/Map;

    .line 38
    invoke-static {}, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->createDefault()Lcom/phicomm/speaker/bean/MqttDeviceInfo;

    move-result-object v0

    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->setFresh(Z)V

    .line 40
    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/i;->a:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/i;->b:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/i;->c:Ljava/util/Set;

    return-void
.end method

.method private e()Z
    .locals 1

    .line 88
    invoke-static {}, Lcom/phicomm/speaker/f/a/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/yanry/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/yanry/i;->c()Lcom/phicomm/speaker/bean/MqttDeviceInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->setFresh(Z)V

    .line 69
    invoke-static {}, Lcom/phicomm/speaker/e/b;->a()Lcom/phicomm/speaker/e/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/e/b;->b(Lcom/phicomm/speaker/e/c/b;)V

    :cond_0
    return-void
.end method

.method protected a(I)V
    .locals 4

    const-string v0, "unisound http fail: %s."

    const/4 v1, 0x1

    .line 172
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x6a

    if-eq p1, v0, :cond_0

    .line 175
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    :cond_0
    return-void
.end method

.method protected a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 2

    const-string p2, "unisound http success: %s."

    const/4 v0, 0x1

    .line 167
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p2, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/i;->a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/b/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/b/g<",
            "Lcom/phicomm/speaker/bean/MqttDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/i;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/yanry/i;->c()Lcom/phicomm/speaker/bean/MqttDeviceInfo;

    move-result-object v0

    .line 48
    invoke-interface {p1, v0}, Lcom/phicomm/speaker/b/g;->a(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->isFresh()Z

    move-result p1

    if-nez p1, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/yanry/i;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 52
    invoke-static {}, Lcom/phicomm/speaker/e/b;->a()Lcom/phicomm/speaker/e/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/phicomm/speaker/e/b;->b(Lcom/phicomm/speaker/e/c/b;)V

    goto :goto_0

    :cond_0
    const-string p1, "device info is fresh hot."

    const/4 v0, 0x0

    .line 55
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/unisound/lib/self/bean/SelfContractBean$Content;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    .line 121
    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->getUdid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->getUdid()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/phicomm/speaker/f/a/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/yanry/i;->c()Lcom/phicomm/speaker/bean/MqttDeviceInfo;

    move-result-object v2

    .line 127
    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->getWakeUpWord()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 130
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v1, :cond_1

    .line 131
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    .line 133
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ">>>%s<<<"

    .line 134
    new-array v7, v1, [Ljava/lang/Object;

    aput-object v5, v7, v0

    invoke-static {v6, v7}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "\u5c0f\u8baf\u5c0f\u8baf"

    .line 135
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    if-nez v4, :cond_2

    move-object v4, v5

    goto :goto_0

    :cond_3
    :goto_1
    const-string v3, "wake name: %s."

    .line 141
    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    invoke-static {v3, v5}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_4

    .line 143
    invoke-virtual {v2, v4}, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->setWakeWord(Ljava/lang/String;)V

    .line 146
    :cond_4
    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->getTtsPlayer()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->setTtsPlayer(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v2, v1}, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->setFresh(Z)V

    .line 148
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/i;->c:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/b/g;

    .line 149
    invoke-interface {v0, v2}, Lcom/phicomm/speaker/b/g;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    :goto_3
    const-string v2, "invalid content: %s."

    .line 122
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 154
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/yanry/i;->c()Lcom/phicomm/speaker/bean/MqttDeviceInfo;

    move-result-object v0

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->setWakeWord(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    .line 158
    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->setFresh(Z)V

    .line 159
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/i;->c:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/b/g;

    .line 160
    invoke-interface {v1, v0}, Lcom/phicomm/speaker/b/g;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/i;->b:Ljava/util/Map;

    invoke-static {}, Lcom/phicomm/speaker/f/a/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()V
    .locals 3

    .line 77
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/yanry/i;->c()Lcom/phicomm/speaker/bean/MqttDeviceInfo;

    move-result-object v0

    .line 78
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/yanry/i;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->setFresh(Z)V

    .line 80
    invoke-static {}, Lcom/phicomm/speaker/e/b;->a()Lcom/phicomm/speaker/e/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/phicomm/speaker/e/b;->b(Lcom/phicomm/speaker/e/c/b;)V

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/i;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phicomm/speaker/b/g;

    .line 83
    invoke-interface {v2, v0}, Lcom/phicomm/speaker/b/g;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Lcom/phicomm/speaker/b/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/b/g<",
            "Lcom/phicomm/speaker/bean/MqttDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/i;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Lcom/phicomm/speaker/bean/MqttDeviceInfo;
    .locals 3

    .line 97
    invoke-static {}, Lcom/phicomm/speaker/f/a/j;->a()Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/i;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/bean/MqttDeviceInfo;

    if-nez v1, :cond_0

    .line 101
    invoke-static {}, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->createDefault()Lcom/phicomm/speaker/bean/MqttDeviceInfo;

    move-result-object v1

    .line 102
    iget-object v2, p0, Lcom/phicomm/speaker/presenter/yanry/i;->a:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public d()Lorg/json/JSONArray;
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/i;->b:Ljava/util/Map;

    invoke-static {}, Lcom/phicomm/speaker/f/a/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    return-object v0
.end method
