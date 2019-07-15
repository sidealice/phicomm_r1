.class public Lcom/unisound/vui/data/e/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/unisound/vui/data/entity/a/b;)Lcom/unisound/vui/data/entity/out/UniContact;
    .locals 4

    new-instance v0, Lcom/unisound/vui/data/entity/out/UniContact;

    invoke-direct {v0}, Lcom/unisound/vui/data/entity/out/UniContact;-><init>()V

    invoke-virtual {p1}, Lcom/unisound/vui/data/entity/a/b;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/unisound/vui/data/entity/out/UniContact;->setContactId(J)V

    invoke-virtual {p1}, Lcom/unisound/vui/data/entity/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/vui/data/entity/out/UniContact;->setContactName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/unisound/vui/data/entity/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/vui/data/entity/out/UniContact;->setContactNamePinYin(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/unisound/vui/data/entity/out/UniContact;->getContactPhoneNO()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/unisound/vui/data/entity/a/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/data/entity/a/b;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/data/entity/out/UniContact;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/data/entity/a/b;

    invoke-virtual {v0}, Lcom/unisound/vui/data/entity/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/unisound/vui/data/entity/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/vui/data/entity/out/UniContact;

    invoke-virtual {v1}, Lcom/unisound/vui/data/entity/out/UniContact;->getContactPhoneNO()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/unisound/vui/data/entity/a/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/unisound/vui/data/e/b;->a(Lcom/unisound/vui/data/entity/a/b;)Lcom/unisound/vui/data/entity/out/UniContact;

    move-result-object v1

    invoke-virtual {v0}, Lcom/unisound/vui/data/entity/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method
