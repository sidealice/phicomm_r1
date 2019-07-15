.class public Lcom/alibaba/mtl/appmonitor/a/g;
.super Lcom/alibaba/mtl/appmonitor/a/d;
.source "StatEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/appmonitor/a/g$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/mtl/appmonitor/model/Metric;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;",
            "Lcom/alibaba/mtl/appmonitor/a/g$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/alibaba/mtl/appmonitor/a/d;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/mtl/appmonitor/a/g;)Lcom/alibaba/mtl/appmonitor/model/Metric;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/alibaba/mtl/appmonitor/a/g;->a:Lcom/alibaba/mtl/appmonitor/model/Metric;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a()Lorg/json/JSONObject;
    .locals 14

    monitor-enter p0

    .line 77
    :try_start_0
    invoke-super {p0}, Lcom/alibaba/mtl/appmonitor/a/d;->a()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/g;->a:Lcom/alibaba/mtl/appmonitor/model/Metric;

    if-eqz v1, :cond_0

    const-string v1, "isCommitDetail"

    .line 80
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a/g;->a:Lcom/alibaba/mtl/appmonitor/model/Metric;

    invoke-virtual {v2}, Lcom/alibaba/mtl/appmonitor/model/Metric;->isCommitDetail()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v1

    const-class v2, Lcom/alibaba/mtl/appmonitor/c/d;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 83
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a/g;->j:Ljava/util/Map;

    if-eqz v2, :cond_5

    .line 84
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a/g;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 85
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v5

    const-class v6, Lcom/alibaba/mtl/appmonitor/c/e;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 86
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 87
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/mtl/appmonitor/a/g$a;

    .line 88
    invoke-static {v4}, Lcom/alibaba/mtl/appmonitor/a/g$a;->a(Lcom/alibaba/mtl/appmonitor/a/g$a;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 89
    invoke-static {v4}, Lcom/alibaba/mtl/appmonitor/a/g$a;->b(Lcom/alibaba/mtl/appmonitor/a/g$a;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "count"

    .line 90
    invoke-virtual {v5, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "noise"

    .line 91
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "dimensions"

    if-eqz v6, :cond_1

    .line 93
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    const-string v8, ""

    :goto_1
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    invoke-virtual {v4}, Lcom/alibaba/mtl/appmonitor/a/g$a;->a()Ljava/util/List;

    move-result-object v4

    .line 95
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    move v7, v3

    .line 96
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 97
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 98
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    if-eqz v9, :cond_3

    .line 100
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 102
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 103
    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 104
    new-instance v12, Lorg/json/JSONObject;

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    invoke-direct {v12, v13}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v8, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_2
    const-string v12, ""

    .line 106
    invoke-virtual {v8, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 111
    :cond_3
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    const-string v4, "measures"

    .line 113
    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    :cond_5
    const-string v2, "values"

    .line 118
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :catch_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 76
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 44
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v1

    const-class v2, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 45
    invoke-virtual {v1, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->addValues(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-object p1, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 49
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/g;->j:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/g;->j:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/a/g$a;

    goto :goto_1

    .line 52
    :cond_1
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v1

    const-class v2, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 53
    invoke-virtual {v1, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->addValues(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 54
    new-instance v2, Lcom/alibaba/mtl/appmonitor/a/g$a;

    invoke-direct {v2, p0}, Lcom/alibaba/mtl/appmonitor/a/g$a;-><init>(Lcom/alibaba/mtl/appmonitor/a/g;)V

    .line 55
    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/a/g;->j:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 58
    :goto_1
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a/g;->a:Lcom/alibaba/mtl/appmonitor/model/Metric;

    if-eqz v2, :cond_2

    .line 59
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a/g;->a:Lcom/alibaba/mtl/appmonitor/model/Metric;

    invoke-virtual {v2, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/Metric;->valid(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)Z

    move-result p1

    goto :goto_2

    :cond_2
    move p1, v0

    :goto_2
    if-eqz p1, :cond_3

    .line 62
    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/a/g$a;->i()V

    .line 63
    invoke-virtual {v1, p2}, Lcom/alibaba/mtl/appmonitor/a/g$a;->a(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto :goto_3

    .line 65
    :cond_3
    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/a/g$a;->j()V

    .line 67
    iget-object p1, p0, Lcom/alibaba/mtl/appmonitor/a/g;->a:Lcom/alibaba/mtl/appmonitor/model/Metric;

    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/Metric;->isCommitDetail()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 68
    invoke-virtual {v1, p2}, Lcom/alibaba/mtl/appmonitor/a/g$a;->a(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    :cond_4
    :goto_3
    const-string p1, "StatEvent"

    const/4 p2, 0x4

    .line 72
    new-array p2, p2, [Ljava/lang/Object;

    const-string v2, "entity  count:"

    aput-object v2, p2, v0

    const/4 v0, 0x1

    invoke-static {v1}, Lcom/alibaba/mtl/appmonitor/a/g$a;->a(Lcom/alibaba/mtl/appmonitor/a/g$a;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    const/4 v0, 0x2

    const-string v2, " noise:"

    aput-object v2, p2, v0

    const/4 v0, 0x3

    invoke-static {v1}, Lcom/alibaba/mtl/appmonitor/a/g$a;->b(Lcom/alibaba/mtl/appmonitor/a/g$a;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 36
    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clean()V
    .locals 3

    monitor-enter p0

    .line 135
    :try_start_0
    invoke-super {p0}, Lcom/alibaba/mtl/appmonitor/a/d;->clean()V

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g;->a:Lcom/alibaba/mtl/appmonitor/model/Metric;

    .line 137
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 143
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Lcom/alibaba/mtl/appmonitor/c/b;)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 134
    monitor-exit p0

    throw v0
.end method

.method public varargs fill([Ljava/lang/Object;)V
    .locals 2

    .line 150
    invoke-super {p0, p1}, Lcom/alibaba/mtl/appmonitor/a/d;->fill([Ljava/lang/Object;)V

    .line 151
    iget-object p1, p0, Lcom/alibaba/mtl/appmonitor/a/g;->j:Ljava/util/Map;

    if-nez p1, :cond_0

    .line 152
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/a/g;->j:Ljava/util/Map;

    .line 154
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MetricRepo;->getRepo()Lcom/alibaba/mtl/appmonitor/model/MetricRepo;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/g;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MetricRepo;->getMetric(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/Metric;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/a/g;->a:Lcom/alibaba/mtl/appmonitor/model/Metric;

    return-void
.end method
