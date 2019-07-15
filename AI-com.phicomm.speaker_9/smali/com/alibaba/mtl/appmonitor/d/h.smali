.class Lcom/alibaba/mtl/appmonitor/d/h;
.super Lcom/alibaba/mtl/appmonitor/d/a;
.source "ModuleSampling.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/mtl/appmonitor/d/a<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private o:Ljava/lang/String;

.field protected p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/mtl/appmonitor/d/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p2}, Lcom/alibaba/mtl/appmonitor/d/a;-><init>(I)V

    .line 29
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/d/h;->o:Ljava/lang/String;

    .line 30
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/d/h;->p:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/h;->p:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/h;->p:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/mtl/appmonitor/d/i;

    if-eqz p2, :cond_0

    .line 38
    invoke-virtual {p2, p1, p3}, Lcom/alibaba/mtl/appmonitor/d/i;->a(ILjava/util/Map;)Z

    move-result p1

    return p1

    .line 42
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/d/h;->a(I)Z

    move-result p1

    return p1
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 13

    .line 47
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/d/h;->a(Lorg/json/JSONObject;)V

    :try_start_0
    const-string v0, "monitorPoints"

    .line 49
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    move v1, v0

    .line 51
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 52
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "monitorPoint"

    .line 53
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "metric_comment_detail"

    .line 54
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-static {v3}, Lcom/alibaba/mtl/appmonitor/f/b;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 57
    iget-object v5, p0, Lcom/alibaba/mtl/appmonitor/d/h;->p:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/mtl/appmonitor/d/i;

    if-nez v5, :cond_0

    .line 59
    new-instance v5, Lcom/alibaba/mtl/appmonitor/d/i;

    iget v6, p0, Lcom/alibaba/mtl/appmonitor/d/h;->n:I

    invoke-direct {v5, v3, v6}, Lcom/alibaba/mtl/appmonitor/d/i;-><init>(Ljava/lang/String;I)V

    .line 60
    iget-object v6, p0, Lcom/alibaba/mtl/appmonitor/d/h;->p:Ljava/util/Map;

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_0
    invoke-virtual {v5, v2}, Lcom/alibaba/mtl/appmonitor/d/i;->b(Lorg/json/JSONObject;)V

    .line 63
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MetricRepo;->getRepo()Lcom/alibaba/mtl/appmonitor/model/MetricRepo;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/mtl/appmonitor/d/h;->o:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Lcom/alibaba/mtl/appmonitor/model/MetricRepo;->getMetric(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/Metric;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 65
    invoke-virtual {v5, v4}, Lcom/alibaba/mtl/appmonitor/model/Metric;->setCommitDetailFromConfig(Ljava/lang/String;)V

    :cond_1
    const-string v4, "measures"

    .line 68
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 69
    instance-of v4, v2, Lorg/json/JSONArray;

    if-eqz v4, :cond_5

    .line 70
    check-cast v2, Lorg/json/JSONArray;

    .line 71
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    .line 72
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v6, v0

    :goto_1
    if-ge v6, v5, :cond_3

    .line 73
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v8, "name"

    .line 75
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "min"

    .line 76
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const-string v10, "max"

    .line 77
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    if-eqz v7, :cond_2

    .line 79
    new-instance v10, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-direct {v10, v8, v11, v9, v7}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 80
    invoke-virtual {v4, v10}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 85
    :cond_3
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MetricRepo;->getRepo()Lcom/alibaba/mtl/appmonitor/model/MetricRepo;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "config_prefix"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/alibaba/mtl/appmonitor/d/h;->o:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "config_prefix"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MetricRepo;->getMetric(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/Metric;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 87
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MetricRepo;->getRepo()Lcom/alibaba/mtl/appmonitor/model/MetricRepo;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/alibaba/mtl/appmonitor/model/MetricRepo;->remove(Lcom/alibaba/mtl/appmonitor/model/Metric;)Z

    .line 89
    :cond_4
    new-instance v2, Lcom/alibaba/mtl/appmonitor/model/ConfigMetric;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "config_prefix"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/alibaba/mtl/appmonitor/d/h;->o:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "config_prefix"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/ConfigMetric;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 90
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MetricRepo;->getRepo()Lcom/alibaba/mtl/appmonitor/model/MetricRepo;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alibaba/mtl/appmonitor/model/MetricRepo;->add(Lcom/alibaba/mtl/appmonitor/model/Metric;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    :cond_6
    return-void
.end method
