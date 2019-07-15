.class Lcom/alibaba/mtl/appmonitor/d/i;
.super Lcom/alibaba/mtl/appmonitor/d/a;
.source "MonitorPointSampling.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/mtl/appmonitor/d/a<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field protected e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/mtl/appmonitor/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p2}, Lcom/alibaba/mtl/appmonitor/d/a;-><init>(I)V

    .line 24
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/d/i;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(ILjava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/i;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 30
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/i;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/d/c;

    .line 31
    invoke-virtual {v1, p1, p2}, Lcom/alibaba/mtl/appmonitor/d/c;->a(ILjava/util/Map;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 37
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/d/i;->a(I)Z

    move-result p1

    return p1
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 4

    .line 46
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/d/i;->a(Lorg/json/JSONObject;)V

    :try_start_0
    const-string v0, "extra"

    .line 48
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 50
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 51
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 52
    new-instance v2, Lcom/alibaba/mtl/appmonitor/d/c;

    iget v3, p0, Lcom/alibaba/mtl/appmonitor/d/i;->n:I

    invoke-direct {v2, v3}, Lcom/alibaba/mtl/appmonitor/d/c;-><init>(I)V

    .line 53
    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/d/i;->e:Ljava/util/List;

    if-nez v3, :cond_0

    .line 54
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/mtl/appmonitor/d/i;->e:Ljava/util/List;

    .line 56
    :cond_0
    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/d/i;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v2, v1}, Lcom/alibaba/mtl/appmonitor/d/c;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method
