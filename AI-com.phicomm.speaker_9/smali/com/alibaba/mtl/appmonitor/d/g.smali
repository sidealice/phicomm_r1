.class Lcom/alibaba/mtl/appmonitor/d/g;
.super Lcom/alibaba/mtl/appmonitor/d/a;
.source "EventTypeSampling.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/mtl/appmonitor/d/a<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Lcom/alibaba/mtl/appmonitor/a/f;

.field protected o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/mtl/appmonitor/d/h;",
            ">;"
        }
    .end annotation
.end field

.field protected q:I


# direct methods
.method public constructor <init>(Lcom/alibaba/mtl/appmonitor/a/f;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p2}, Lcom/alibaba/mtl/appmonitor/d/a;-><init>(I)V

    const/4 p2, -0x1

    .line 26
    iput p2, p0, Lcom/alibaba/mtl/appmonitor/d/g;->q:I

    .line 30
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/d/g;->e:Lcom/alibaba/mtl/appmonitor/a/f;

    .line 31
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/d/g;->o:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/g;->o:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/g;->o:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/mtl/appmonitor/d/h;

    if-eqz p2, :cond_0

    .line 39
    invoke-virtual {p2, p1, p3, p4}, Lcom/alibaba/mtl/appmonitor/d/h;->a(ILjava/lang/String;Ljava/util/Map;)Z

    move-result p1

    return p1

    .line 43
    :cond_0
    iget p2, p0, Lcom/alibaba/mtl/appmonitor/d/g;->n:I

    if-ge p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 5

    .line 52
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/d/g;->a(Lorg/json/JSONObject;)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/d/g;->c(Lorg/json/JSONObject;)V

    .line 54
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/g;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :try_start_0
    const-string v0, "metrics"

    .line 56
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 58
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 59
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "module"

    .line 60
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-static {v2}, Lcom/alibaba/mtl/appmonitor/f/b;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/d/g;->o:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/mtl/appmonitor/d/h;

    if-nez v3, :cond_0

    .line 65
    new-instance v3, Lcom/alibaba/mtl/appmonitor/d/h;

    iget v4, p0, Lcom/alibaba/mtl/appmonitor/d/g;->n:I

    invoke-direct {v3, v2, v4}, Lcom/alibaba/mtl/appmonitor/d/h;-><init>(Ljava/lang/String;I)V

    .line 66
    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/d/g;->o:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
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

.method protected c(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "EventTypeSampling"

    const/4 v1, 0x3

    .line 79
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[updateEventTypeTriggerCount]"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "cacheCount"

    .line 85
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/g;->e:Lcom/alibaba/mtl/appmonitor/a/f;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/g;->e:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0, p1}, Lcom/alibaba/mtl/appmonitor/a/f;->b(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "EventTypeSampling"

    const-string v1, "updateTriggerCount"

    .line 92
    invoke-static {v0, v1, p1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSampling(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/alibaba/mtl/appmonitor/d/g;->n:I

    return-void
.end method
