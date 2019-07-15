.class public Lcom/alibaba/mtl/appmonitor/d/e;
.super Lcom/alibaba/mtl/appmonitor/d/i;
.source "AlarmMonitorPointSampling.java"


# instance fields
.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/alibaba/mtl/appmonitor/d/i;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p2, p0, Lcom/alibaba/mtl/appmonitor/d/e;->o:I

    .line 18
    iput p3, p0, Lcom/alibaba/mtl/appmonitor/d/e;->p:I

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Boolean;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "AlarmMonitorPointSampling"

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

    aput-object p2, v1, v2

    const-string v2, "successSampling:"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lcom/alibaba/mtl/appmonitor/d/e;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "failSampling:"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget v2, p0, Lcom/alibaba/mtl/appmonitor/d/e;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/e;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 24
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/d/c;

    .line 25
    invoke-virtual {v1, p1, p3}, Lcom/alibaba/mtl/appmonitor/d/c;->a(ILjava/util/Map;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 31
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/d/e;->a(IZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(ILjava/util/Map;)Z
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/d/i;->a(ILjava/util/Map;)Z

    move-result p1

    return p1
.end method

.method protected a(IZ)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 36
    iget p2, p0, Lcom/alibaba/mtl/appmonitor/d/e;->o:I

    if-ge p1, p2, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 38
    :cond_1
    iget p2, p0, Lcom/alibaba/mtl/appmonitor/d/e;->p:I

    if-ge p1, p2, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 6

    .line 44
    invoke-super {p0, p1}, Lcom/alibaba/mtl/appmonitor/d/i;->b(Lorg/json/JSONObject;)V

    .line 45
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/d/e;->n:I

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/d/e;->o:I

    .line 46
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/d/e;->n:I

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/d/e;->p:I

    :try_start_0
    const-string v0, "successSampling"

    .line 48
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/mtl/appmonitor/d/e;->o:I

    :cond_0
    const-string v1, "failSampling"

    .line 52
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/alibaba/mtl/appmonitor/d/e;->p:I

    :cond_1
    const-string v2, "AlarmMonitorPointSampling"

    const/4 v3, 0x6

    .line 56
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "[updateSelfSampling]"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 p1, 0x2

    const-string v4, "successSampling:"

    aput-object v4, v3, p1

    const/4 p1, 0x3

    aput-object v0, v3, p1

    const/4 p1, 0x4

    const-string v0, "failSampling"

    aput-object v0, v3, p1

    const/4 p1, 0x5

    aput-object v1, v3, p1

    invoke-static {v2, v3}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
