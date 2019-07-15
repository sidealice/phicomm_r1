.class public Lcom/alibaba/mtl/appmonitor/a/g$a;
.super Ljava/lang/Object;
.source "StatEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/mtl/appmonitor/a/g;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;",
            ">;"
        }
    .end annotation
.end field

.field private count:I

.field private l:I


# direct methods
.method public constructor <init>(Lcom/alibaba/mtl/appmonitor/a/g;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->a:Lcom/alibaba/mtl/appmonitor/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 164
    iput p1, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->count:I

    .line 165
    iput p1, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->l:I

    .line 166
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/mtl/appmonitor/a/g$a;)I
    .locals 0

    .line 157
    iget p0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->count:I

    return p0
.end method

.method private a(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .locals 10

    .line 191
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 192
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->a:Lcom/alibaba/mtl/appmonitor/a/g;

    invoke-static {v1}, Lcom/alibaba/mtl/appmonitor/a/g;->a(Lcom/alibaba/mtl/appmonitor/a/g;)Lcom/alibaba/mtl/appmonitor/model/Metric;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->a:Lcom/alibaba/mtl/appmonitor/a/g;

    invoke-static {v1}, Lcom/alibaba/mtl/appmonitor/a/g;->a(Lcom/alibaba/mtl/appmonitor/a/g;)Lcom/alibaba/mtl/appmonitor/model/Metric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/Metric;->getMeasureSet()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 193
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->a:Lcom/alibaba/mtl/appmonitor/a/g;

    invoke-static {v1}, Lcom/alibaba/mtl/appmonitor/a/g;->a(Lcom/alibaba/mtl/appmonitor/a/g;)Lcom/alibaba/mtl/appmonitor/model/Metric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/Metric;->getMeasureSet()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->getMeasures()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 195
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    .line 197
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/mtl/appmonitor/model/Measure;

    if-eqz v5, :cond_1

    .line 199
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v6

    const-class v7, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v6

    check-cast v6, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    .line 200
    invoke-virtual {v5}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->getValue(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v7

    .line 201
    invoke-virtual {v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getOffset()Ljava/lang/Double;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 202
    invoke-virtual {v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getOffset()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->setOffset(D)V

    .line 204
    :cond_0
    invoke-virtual {v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getValue()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->setValue(D)V

    .line 205
    invoke-virtual {v5}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/mtl/appmonitor/a/g$a;)I
    .locals 0

    .line 157
    iget p0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->l:I

    return p0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;>;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->b:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 218
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    .line 222
    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    if-eqz v3, :cond_4

    .line 224
    invoke-virtual {v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->getMap()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 225
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 228
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 229
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 230
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 231
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 232
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    const-string v8, "value"

    .line 233
    invoke-virtual {v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getValue()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-virtual {v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getOffset()Ljava/lang/Double;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string v8, "offset"

    .line 235
    invoke-virtual {v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getOffset()Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v6, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_2
    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 239
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0

    :cond_6
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 171
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->a:Lcom/alibaba/mtl/appmonitor/a/g;

    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/a/g;->a(Lcom/alibaba/mtl/appmonitor/a/g;)Lcom/alibaba/mtl/appmonitor/model/Metric;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->a:Lcom/alibaba/mtl/appmonitor/a/g;

    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/a/g;->a(Lcom/alibaba/mtl/appmonitor/a/g;)Lcom/alibaba/mtl/appmonitor/model/Metric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/model/Metric;->isCommitDetail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->b:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/alibaba/mtl/appmonitor/a/g$a;->a(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->b:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/alibaba/mtl/appmonitor/a/g$a;->a(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-virtual {v0, p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->merge(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public i()V
    .locals 1

    .line 246
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->count:I

    return-void
.end method

.method public j()V
    .locals 1

    .line 250
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/a/g$a;->l:I

    return-void
.end method
