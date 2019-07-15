.class public Lcom/alibaba/mtl/appmonitor/d/d;
.super Lcom/alibaba/mtl/appmonitor/d/h;
.source "AlarmModuleSampling.java"


# instance fields
.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    const/4 p2, 0x0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/d/h;-><init>(Ljava/lang/String;I)V

    .line 17
    iget p1, p0, Lcom/alibaba/mtl/appmonitor/d/d;->n:I

    iput p1, p0, Lcom/alibaba/mtl/appmonitor/d/d;->o:I

    .line 18
    iget p1, p0, Lcom/alibaba/mtl/appmonitor/d/d;->n:I

    iput p1, p0, Lcom/alibaba/mtl/appmonitor/d/d;->p:I

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)V
    .locals 5

    .line 67
    invoke-super {p0, p1}, Lcom/alibaba/mtl/appmonitor/d/h;->a(Lorg/json/JSONObject;)V

    .line 68
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/d/d;->n:I

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/d/d;->o:I

    .line 69
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/d/d;->n:I

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/d/d;->p:I

    :try_start_0
    const-string v0, "successSampling"

    .line 71
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/mtl/appmonitor/d/d;->o:I

    :cond_0
    const-string v1, "failSampling"

    .line 75
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/mtl/appmonitor/d/d;->p:I

    :cond_1
    const-string v1, "AlarmModuleSampling"

    const/4 v2, 0x5

    .line 79
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "[updateSelfSampling]"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    const-string v3, "successSampling:"

    aput-object v3, v2, p1

    const/4 p1, 0x3

    aput-object v0, v2, p1

    const/4 p1, 0x4

    const-string v0, "failSampling"

    aput-object v0, v2, p1

    invoke-static {v1, v2}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "AlarmModuleSampling"

    const/16 v1, 0x8

    .line 22
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "samplingSeed:"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "isSuccess:"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const-string v2, "successSampling:"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lcom/alibaba/mtl/appmonitor/d/d;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "failSampling:"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget v2, p0, Lcom/alibaba/mtl/appmonitor/d/d;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/d;->p:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/d;->p:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/mtl/appmonitor/d/i;

    if-eqz p2, :cond_0

    .line 25
    instance-of v0, p2, Lcom/alibaba/mtl/appmonitor/d/e;

    if-eqz v0, :cond_0

    .line 26
    check-cast p2, Lcom/alibaba/mtl/appmonitor/d/e;

    invoke-virtual {p2, p1, p3, p4}, Lcom/alibaba/mtl/appmonitor/d/e;->a(ILjava/lang/Boolean;Ljava/util/Map;)Z

    move-result p1

    return p1

    .line 30
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/d/d;->a(IZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(ILjava/lang/String;Ljava/util/Map;)Z
    .locals 0

    .line 11
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/d/h;->a(ILjava/lang/String;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method protected a(IZ)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 60
    iget p2, p0, Lcom/alibaba/mtl/appmonitor/d/d;->o:I

    if-ge p1, p2, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 62
    :cond_1
    iget p2, p0, Lcom/alibaba/mtl/appmonitor/d/d;->p:I

    if-ge p1, p2, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 6

    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/d/d;->a(Lorg/json/JSONObject;)V

    :try_start_0
    const-string v0, "monitorPoints"

    .line 37
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 39
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 40
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "monitorPoint"

    .line 41
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-static {v2}, Lcom/alibaba/mtl/appmonitor/f/b;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 44
    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/d/d;->p:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/mtl/appmonitor/d/i;

    if-nez v3, :cond_0

    .line 46
    new-instance v3, Lcom/alibaba/mtl/appmonitor/d/e;

    iget v4, p0, Lcom/alibaba/mtl/appmonitor/d/d;->o:I

    iget v5, p0, Lcom/alibaba/mtl/appmonitor/d/d;->p:I

    invoke-direct {v3, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/d/e;-><init>(Ljava/lang/String;II)V

    .line 47
    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/d/d;->p:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_0
    invoke-virtual {v3, v1}, Lcom/alibaba/mtl/appmonitor/d/i;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return-void
.end method
