.class public Lcom/unisound/b/b;
.super Ljava/lang/Object;


# static fields
.field private static final C:Ljava/lang/String; = "systemResponese"

.field private static z:Ljava/lang/String;


# instance fields
.field private A:Landroid/content/Context;

.field private B:Lcom/unisound/b/a;

.field private D:Lcom/unisound/b/c;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/unisound/b/b;->z:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://dc.hivoice.cn/rest/v2/device/activate"

    iput-object v0, p0, Lcom/unisound/b/b;->a:Ljava/lang/String;

    const-string v0, "http://dc.hivoice.cn/rest/v2/token/refresh"

    iput-object v0, p0, Lcom/unisound/b/b;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->q:Ljava/lang/String;

    const-string v0, "Android"

    iput-object v0, p0, Lcom/unisound/b/b;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->t:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->u:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->v:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->w:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->x:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->y:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    sget-object v0, Lcom/unisound/b/c;->b:Lcom/unisound/b/c;

    iput-object v0, p0, Lcom/unisound/b/b;->D:Lcom/unisound/b/c;

    iput-object p1, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    new-instance v0, Lcom/unisound/b/a;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unisound/b/a;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unisound/b/b;->B:Lcom/unisound/b/a;

    return-void
.end method

.method private A()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "udid"

    iget-object v0, p0, Lcom/unisound/b/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/b/b;->d:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "deviceSn"

    iget-object v0, p0, Lcom/unisound/b/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/b/b;->e:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appKey"

    iget-object v0, p0, Lcom/unisound/b/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/b/b;->f:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "timestamp"

    invoke-direct {p0}, Lcom/unisound/b/b;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appVersion"

    iget-object v0, p0, Lcom/unisound/b/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unisound/b/b;->h:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "pkgName"

    iget-object v0, p0, Lcom/unisound/b/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unisound/b/b;->i:Ljava/lang/String;

    :goto_4
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "imei"

    iget-object v0, p0, Lcom/unisound/b/b;->j:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unisound/b/b;->j:Ljava/lang/String;

    :goto_5
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "macAddress"

    iget-object v0, p0, Lcom/unisound/b/b;->k:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unisound/b/b;->k:Ljava/lang/String;

    :goto_6
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "wifiSsid"

    iget-object v0, p0, Lcom/unisound/b/b;->l:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/unisound/b/b;->l:Ljava/lang/String;

    :goto_7
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "telecomOperator"

    iget-object v0, p0, Lcom/unisound/b/b;->m:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/unisound/b/b;->m:Ljava/lang/String;

    :goto_8
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "bssId"

    iget-object v0, p0, Lcom/unisound/b/b;->n:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unisound/b/b;->n:Ljava/lang/String;

    :goto_9
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productName"

    iget-object v0, p0, Lcom/unisound/b/b;->o:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/unisound/b/b;->o:Ljava/lang/String;

    :goto_a
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productModel"

    iget-object v0, p0, Lcom/unisound/b/b;->p:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unisound/b/b;->p:Ljava/lang/String;

    :goto_b
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productMfr"

    iget-object v0, p0, Lcom/unisound/b/b;->q:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/unisound/b/b;->q:Ljava/lang/String;

    :goto_c
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productOs"

    iget-object v0, p0, Lcom/unisound/b/b;->r:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/unisound/b/b;->r:Ljava/lang/String;

    :goto_d
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productOsVersion"

    iget-object v0, p0, Lcom/unisound/b/b;->s:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/unisound/b/b;->s:Ljava/lang/String;

    :goto_e
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "hardwareSn"

    iget-object v0, p0, Lcom/unisound/b/b;->t:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/unisound/b/b;->t:Ljava/lang/String;

    :goto_f
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "memo"

    iget-object v0, p0, Lcom/unisound/b/b;->u:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/unisound/b/b;->u:Ljava/lang/String;

    :goto_10
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "signature"

    invoke-direct {p0}, Lcom/unisound/b/b;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    const-string v0, ""

    goto/16 :goto_0

    :cond_1
    const-string v0, ""

    goto/16 :goto_1

    :cond_2
    const-string v0, ""

    goto/16 :goto_2

    :cond_3
    const-string v0, ""

    goto/16 :goto_3

    :cond_4
    const-string v0, ""

    goto/16 :goto_4

    :cond_5
    const-string v0, ""

    goto/16 :goto_5

    :cond_6
    const-string v0, ""

    goto/16 :goto_6

    :cond_7
    const-string v0, ""

    goto/16 :goto_7

    :cond_8
    const-string v0, ""

    goto/16 :goto_8

    :cond_9
    const-string v0, ""

    goto :goto_9

    :cond_a
    const-string v0, ""

    goto :goto_a

    :cond_b
    const-string v0, ""

    goto :goto_b

    :cond_c
    const-string v0, ""

    goto :goto_c

    :cond_d
    const-string v0, ""

    goto :goto_d

    :cond_e
    const-string v0, ""

    goto :goto_e

    :cond_f
    const-string v0, ""

    goto :goto_f

    :cond_10
    const-string v0, ""

    goto :goto_10
.end method

.method private B()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "udid"

    iget-object v0, p0, Lcom/unisound/b/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/b/b;->d:Ljava/lang/String;

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appKey"

    iget-object v0, p0, Lcom/unisound/b/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/b/b;->f:Ljava/lang/String;

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "token"

    iget-object v0, p0, Lcom/unisound/b/b;->x:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/b/b;->x:Ljava/lang/String;

    :goto_2
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "timestamp"

    invoke-direct {p0}, Lcom/unisound/b/b;->E()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "signature"

    invoke-direct {p0}, Lcom/unisound/b/b;->D()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2
.end method

.method private C()Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/unisound/b/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/b/b;->d:Ljava/lang/String;

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/b/b;->e:Ljava/lang/String;

    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/b/b;->f:Ljava/lang/String;

    :goto_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unisound/b/b;->g:Ljava/lang/String;

    :goto_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unisound/b/b;->h:Ljava/lang/String;

    :goto_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unisound/b/b;->i:Ljava/lang/String;

    :goto_5
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->j:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unisound/b/b;->j:Ljava/lang/String;

    :goto_6
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->k:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/unisound/b/b;->k:Ljava/lang/String;

    :goto_7
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->l:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/unisound/b/b;->l:Ljava/lang/String;

    :goto_8
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->m:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unisound/b/b;->m:Ljava/lang/String;

    :goto_9
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->n:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/unisound/b/b;->n:Ljava/lang/String;

    :goto_a
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->o:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unisound/b/b;->o:Ljava/lang/String;

    :goto_b
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->p:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/unisound/b/b;->p:Ljava/lang/String;

    :goto_c
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->q:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/unisound/b/b;->q:Ljava/lang/String;

    :goto_d
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->r:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/unisound/b/b;->r:Ljava/lang/String;

    :goto_e
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->s:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/unisound/b/b;->s:Ljava/lang/String;

    :goto_f
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->t:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/unisound/b/b;->t:Ljava/lang/String;

    :goto_10
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->u:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/unisound/b/b;->u:Ljava/lang/String;

    :goto_11
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->y:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/unisound/b/b;->y:Ljava/lang/String;

    :goto_12
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/unisound/b/k;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto/16 :goto_0

    :cond_1
    const-string v0, ""

    goto/16 :goto_1

    :cond_2
    const-string v0, ""

    goto/16 :goto_2

    :cond_3
    const-string v0, ""

    goto/16 :goto_3

    :cond_4
    const-string v0, ""

    goto/16 :goto_4

    :cond_5
    const-string v0, ""

    goto/16 :goto_5

    :cond_6
    const-string v0, ""

    goto/16 :goto_6

    :cond_7
    const-string v0, ""

    goto/16 :goto_7

    :cond_8
    const-string v0, ""

    goto/16 :goto_8

    :cond_9
    const-string v0, ""

    goto :goto_9

    :cond_a
    const-string v0, ""

    goto :goto_a

    :cond_b
    const-string v0, ""

    goto :goto_b

    :cond_c
    const-string v0, ""

    goto :goto_c

    :cond_d
    const-string v0, ""

    goto :goto_d

    :cond_e
    const-string v0, ""

    goto :goto_e

    :cond_f
    const-string v0, ""

    goto :goto_f

    :cond_10
    const-string v0, ""

    goto :goto_10

    :cond_11
    const-string v0, ""

    goto :goto_11

    :cond_12
    const-string v0, ""

    goto :goto_12
.end method

.method private D()Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/unisound/b/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/b/b;->d:Ljava/lang/String;

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/b/b;->f:Ljava/lang/String;

    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/b/b;->g:Ljava/lang/String;

    :goto_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->x:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unisound/b/b;->x:Ljava/lang/String;

    :goto_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->y:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unisound/b/b;->y:Ljava/lang/String;

    :goto_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/unisound/b/k;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3

    :cond_4
    const-string v0, ""

    goto :goto_4
.end method

.method private E()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/unisound/b/b;->F()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/unisound/b/k;->a(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/unisound/b/b;->g:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/unisound/b/k;->a(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/unisound/b/b;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method private F()J
    .locals 4

    iget-object v0, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    const-string v1, "systemResponese"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "timeDelay"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/unisound/b/b;Lcom/unisound/b/c;)Lcom/unisound/b/c;
    .locals 0

    iput-object p1, p0, Lcom/unisound/b/b;->D:Lcom/unisound/b/c;

    return-object p1
.end method

.method private a(J)V
    .locals 3

    iget-object v0, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    const-string v1, "systemResponese"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "timeDelay"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic a(Lcom/unisound/b/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/b/b;->y()V

    return-void
.end method

.method static synthetic a(Lcom/unisound/b/b;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/unisound/b/b;->a(J)V

    return-void
.end method

.method protected static a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p0, Lcom/unisound/b/b;->z:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "ActivatroInterface setJsonString error!"

    invoke-static {v0}, Lcom/unisound/b/i;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/unisound/b/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/unisound/b/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/b/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/unisound/b/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/unisound/b/b;)Ljava/util/Map;
    .locals 1

    invoke-direct {p0}, Lcom/unisound/b/b;->A()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/unisound/b/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/unisound/b/b;)Ljava/util/Map;
    .locals 1

    invoke-direct {p0}, Lcom/unisound/b/b;->B()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/unisound/b/b;)Lcom/unisound/b/a;
    .locals 1

    iget-object v0, p0, Lcom/unisound/b/b;->B:Lcom/unisound/b/a;

    return-object v0
.end method

.method private r(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/unisound/b/h;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "deviceSn"

    invoke-static {v0, v1}, Lcom/unisound/b/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "ActivatorInterface _deviceSn= null"

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    :goto_0
    const-string v1, "appKey"

    invoke-static {v0, v1}, Lcom/unisound/b/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "ActivatorInterface _appkey= null"

    invoke-static {v1}, Lcom/unisound/b/i;->a(Ljava/lang/String;)V

    :goto_1
    const-string v1, "appSecret"

    invoke-static {v0, v1}, Lcom/unisound/b/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "ActivatorInterface _secret= null"

    invoke-static {v1}, Lcom/unisound/b/i;->a(Ljava/lang/String;)V

    :goto_2
    const-string v1, "appVersion"

    invoke-static {v0, v1}, Lcom/unisound/b/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "ActivatorInterface _appVersion= null"

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    :goto_3
    const-string v1, "packageName"

    invoke-static {v0, v1}, Lcom/unisound/b/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v1, "ActivatorInterface _packageName= null"

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    :goto_4
    const-string v1, "imei"

    invoke-static {v0, v1}, Lcom/unisound/b/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v1, "ActivatorInterface _imei= null"

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    :goto_5
    const-string v1, "macAddress"

    invoke-static {v0, v1}, Lcom/unisound/b/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v1, "ActivatorInterface _macAddress= null"

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    :goto_6
    const-string v1, "wifiSsid"

    invoke-static {v0, v1}, Lcom/unisound/b/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v1, "ActivatorInterface _wifiSsid= null"

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    :goto_7
    const-string v1, "telecomOperator"

    invoke-static {v0, v1}, Lcom/unisound/b/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v1, "ActivatorInterface _telecomOperator= null"

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    :goto_8
    const-string v1, "memo"

    invoke-static {v0, v1}, Lcom/unisound/b/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v1, "ActivatorInterface _memo= null"

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    :goto_9
    const-string v1, "token"

    invoke-static {v0, v1}, Lcom/unisound/b/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v1, "ActivatorInterface _token= null"

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    :goto_a
    const-string v1, "debug"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/unisound/b/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/unisound/b/b;->a(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivatorInterface _debug= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/unisound/b/b;->l(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivatorInterface _deviceSn= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/unisound/b/b;->c(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivatorInterface _appkey= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/unisound/b/b;->d(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivatorInterface _secret= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p0, v1}, Lcom/unisound/b/b;->f(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivatorInterface _appVersion= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    invoke-virtual {p0, v1}, Lcom/unisound/b/b;->g(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivatorInterface _packageName= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    invoke-virtual {p0, v1}, Lcom/unisound/b/b;->e(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivatorInterface _imei= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_7
    invoke-virtual {p0, v1}, Lcom/unisound/b/b;->h(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivatorInterface _macAddress= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_8
    invoke-virtual {p0, v1}, Lcom/unisound/b/b;->i(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivatorInterface _wifiSsid= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_9
    invoke-virtual {p0, v1}, Lcom/unisound/b/b;->j(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivatorInterface _telecomOperator= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_a
    invoke-virtual {p0, v1}, Lcom/unisound/b/b;->k(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivatorInterface _memo= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_b
    invoke-virtual {p0, v1}, Lcom/unisound/b/b;->q(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivatorInterface __token= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    goto/16 :goto_a
.end method

.method static synthetic x()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unisound/b/b;->z:Ljava/lang/String;

    return-object v0
.end method

.method private y()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/b/b;->h:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/unisound/b/b;->g()V

    :cond_0
    iget-object v0, p0, Lcom/unisound/b/b;->j:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/unisound/b/b;->e()V

    :cond_1
    iget-object v0, p0, Lcom/unisound/b/b;->i:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/unisound/b/b;->i()V

    :cond_2
    iget-object v0, p0, Lcom/unisound/b/b;->k:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/unisound/b/b;->k()V

    :cond_3
    iget-object v0, p0, Lcom/unisound/b/b;->l:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/unisound/b/b;->m()V

    :cond_4
    iget-object v0, p0, Lcom/unisound/b/b;->m:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/unisound/b/b;->o()V

    :cond_5
    invoke-direct {p0}, Lcom/unisound/b/b;->z()V

    return-void
.end method

.method private z()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->t:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->n:Ljava/lang/String;

    invoke-static {}, Lcom/unisound/a/a;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->o:Ljava/lang/String;

    invoke-static {}, Lcom/unisound/a/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->p:Ljava/lang/String;

    invoke-static {}, Lcom/unisound/a/a;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->q:Ljava/lang/String;

    invoke-static {}, Lcom/unisound/a/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->s:Ljava/lang/String;

    invoke-static {}, Lcom/unisound/a/a;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->t:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "activate cant createDeviceInfo"

    invoke-static {v0}, Lcom/unisound/b/i;->d(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/b/b;->D:Lcom/unisound/b/c;

    sget-object v1, Lcom/unisound/b/c;->a:Lcom/unisound/b/c;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/unisound/b/b;->B:Lcom/unisound/b/a;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lcom/unisound/b/a;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/unisound/b/c;->a:Lcom/unisound/b/c;

    iput-object v0, p0, Lcom/unisound/b/b;->D:Lcom/unisound/b/c;

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/unisound/b/b;->B:Lcom/unisound/b/a;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/unisound/b/a;->sendEmptyMessage(I)Z

    sget-object v0, Lcom/unisound/b/c;->b:Lcom/unisound/b/c;

    iput-object v0, p0, Lcom/unisound/b/b;->D:Lcom/unisound/b/c;

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/unisound/b/b;->z:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/unisound/b/b;->r(Ljava/lang/String;)V

    new-instance v0, Lcom/unisound/b/d;

    invoke-direct {v0, p0, p1}, Lcom/unisound/b/d;-><init>(Lcom/unisound/b/b;I)V

    invoke-virtual {v0}, Lcom/unisound/b/d;->start()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    return-void
.end method

.method public a(Lcom/unisound/b/a/c;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/b/b;->B:Lcom/unisound/b/a;

    invoke-virtual {v0, p1}, Lcom/unisound/b/a;->a(Lcom/unisound/b/a/c;)V

    return-void
.end method

.method protected a(Z)V
    .locals 0

    sput-boolean p1, Lcom/unisound/b/i;->a:Z

    invoke-static {p1}, Lcom/unisound/a/a;->b(Z)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/b/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/unisound/b/b;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/rest/v1/device/activate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/rest/v1/token/refresh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->b:Ljava/lang/String;

    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/b/b;->y:Ljava/lang/String;

    return-object v0
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/b/b;->f:Ljava/lang/String;

    return-void
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/b/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/b/b;->y:Ljava/lang/String;

    return-void
.end method

.method protected e()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/unisound/b/b;->B:Lcom/unisound/b/a;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lcom/unisound/b/a;->sendEmptyMessage(I)Z

    const-string v0, "activate HttpResponse result is null"

    invoke-static {v0}, Lcom/unisound/b/i;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/b/b;->j:Ljava/lang/String;

    return-void
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/b/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method protected f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/b/b;->h:Ljava/lang/String;

    return-void
.end method

.method protected g()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/a/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->h:Ljava/lang/String;

    return-void
.end method

.method protected g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/b/b;->i:Ljava/lang/String;

    return-void
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/b/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method protected h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/b/b;->k:Ljava/lang/String;

    return-void
.end method

.method protected i()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/a/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->i:Ljava/lang/String;

    return-void
.end method

.method protected i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/b/b;->l:Ljava/lang/String;

    return-void
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/b/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/b/b;->m:Ljava/lang/String;

    return-void
.end method

.method protected k()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/a/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "activate setMacAddress error"

    invoke-static {v0}, Lcom/unisound/b/i;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/b/b;->u:Ljava/lang/String;

    return-void
.end method

.method protected l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/b/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/unisound/b/b;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/unisound/b/b;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/unisound/a/a;->b(Ljava/lang/String;)I

    return-void
.end method

.method protected m()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/a/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "activate setWifiSsid error"

    invoke-static {v0}, Lcom/unisound/b/i;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/b/b;->g:Ljava/lang/String;

    return-void
.end method

.method protected n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/b/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method protected n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/b/b;->d:Ljava/lang/String;

    return-void
.end method

.method protected o()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/a/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->m:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "activate setTelecomOperator error"

    invoke-static {v0}, Lcom/unisound/b/i;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/b/b;->v:Ljava/lang/String;

    return-void
.end method

.method protected p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/b/b;->u:Ljava/lang/String;

    return-object v0
.end method

.method protected p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/b/b;->w:Ljava/lang/String;

    return-void
.end method

.method protected q()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/unisound/b/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/b/b;->x:Ljava/lang/String;

    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/b/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/b/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/b/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/b/b;->v:Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/b/b;->w:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/b/b;->x:Ljava/lang/String;

    return-object v0
.end method
