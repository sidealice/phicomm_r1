.class public Lcom/alibaba/mtl/appmonitor/d/f;
.super Lcom/alibaba/mtl/appmonitor/d/g;
.source "AlarmSampling.java"


# instance fields
.field TAG:Ljava/lang/String;

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Lcom/alibaba/mtl/appmonitor/a/f;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/d/g;-><init>(Lcom/alibaba/mtl/appmonitor/a/f;I)V

    const-string p1, "AlarmSampling"

    .line 13
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/d/f;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/alibaba/mtl/appmonitor/d/f;->o:I

    .line 15
    iput p1, p0, Lcom/alibaba/mtl/appmonitor/d/f;->p:I

    .line 19
    iput p2, p0, Lcom/alibaba/mtl/appmonitor/d/f;->o:I

    .line 20
    iput p2, p0, Lcom/alibaba/mtl/appmonitor/d/f;->p:I

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lcom/alibaba/mtl/appmonitor/d/g;->a(Lorg/json/JSONObject;)V

    .line 71
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/d/f;->n:I

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/d/f;->o:I

    .line 72
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/d/f;->n:I

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/d/f;->p:I

    :try_start_0
    const-string v0, "successSampling"

    .line 74
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/d/f;->o:I

    :cond_0
    const-string v0, "failSampling"

    .line 78
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/alibaba/mtl/appmonitor/d/f;->p:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/f;->TAG:Ljava/lang/String;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "samplingSeed:"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "isSuccess:"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const-string v2, "successSampling:"

    const/4 v5, 0x4

    aput-object v2, v1, v5

    iget v2, p0, Lcom/alibaba/mtl/appmonitor/d/f;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failSampling:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/alibaba/mtl/appmonitor/d/f;->p:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/f;->o:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/f;->o:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/mtl/appmonitor/d/h;

    if-eqz p2, :cond_0

    .line 28
    instance-of v0, p2, Lcom/alibaba/mtl/appmonitor/d/d;

    if-eqz v0, :cond_0

    .line 29
    check-cast p2, Lcom/alibaba/mtl/appmonitor/d/d;

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/alibaba/mtl/appmonitor/d/d;->a(ILjava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z

    move-result p1

    return p1

    .line 33
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 34
    iget p2, p0, Lcom/alibaba/mtl/appmonitor/d/f;->o:I

    if-ge p1, p2, :cond_1

    move v3, v4

    :cond_1
    return v3

    .line 36
    :cond_2
    iget p2, p0, Lcom/alibaba/mtl/appmonitor/d/f;->p:I

    if-ge p1, p2, :cond_3

    move v3, v4

    :cond_3
    return v3
.end method

.method public bridge synthetic a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 0

    .line 12
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/d/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 6

    .line 42
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/d/f;->a(Lorg/json/JSONObject;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/d/f;->c(Lorg/json/JSONObject;)V

    .line 44
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/f;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :try_start_0
    const-string v0, "metrics"

    .line 46
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 48
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 49
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "module"

    .line 50
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-static {v2}, Lcom/alibaba/mtl/appmonitor/f/b;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/d/f;->o:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/mtl/appmonitor/d/h;

    if-nez v3, :cond_0

    .line 55
    new-instance v3, Lcom/alibaba/mtl/appmonitor/d/d;

    iget v4, p0, Lcom/alibaba/mtl/appmonitor/d/f;->o:I

    iget v5, p0, Lcom/alibaba/mtl/appmonitor/d/f;->p:I

    invoke-direct {v3, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/d/d;-><init>(Ljava/lang/String;II)V

    .line 56
    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/d/f;->o:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    invoke-virtual {v3, v1}, Lcom/alibaba/mtl/appmonitor/d/h;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return-void
.end method

.method public setSampling(I)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Lcom/alibaba/mtl/appmonitor/d/g;->setSampling(I)V

    .line 91
    iput p1, p0, Lcom/alibaba/mtl/appmonitor/d/f;->o:I

    .line 92
    iput p1, p0, Lcom/alibaba/mtl/appmonitor/d/f;->p:I

    return-void
.end method
