.class public Lcom/alibaba/mtl/appmonitor/a/e;
.super Ljava/lang/Object;
.source "EventRepo.java"


# static fields
.field private static a:Lcom/alibaba/mtl/appmonitor/a/e;


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/mtl/appmonitor/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;",
            "Lcom/alibaba/mtl/appmonitor/model/MetricValueSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/e;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/e;->h:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/e;->g:Ljava/util/Map;

    return-void
.end method

.method private a(Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/mtl/appmonitor/a/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alibaba/mtl/appmonitor/a/d;",
            ">;)",
            "Lcom/alibaba/mtl/appmonitor/a/d;"
        }
    .end annotation

    .line 294
    invoke-static {p2}, Lcom/alibaba/mtl/appmonitor/f/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Lcom/alibaba/mtl/appmonitor/f/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;->getEventId()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 298
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/e;->h:Ljava/util/Map;

    monitor-enter v0

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/e;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/model/MetricValueSet;

    if-nez v1, :cond_0

    .line 301
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v1

    const-class v3, Lcom/alibaba/mtl/appmonitor/model/MetricValueSet;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/model/MetricValueSet;

    .line 302
    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/a/e;->h:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 305
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/mtl/appmonitor/model/MetricValueSet;->getEvent(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/mtl/appmonitor/a/d;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 304
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static declared-synchronized a()Lcom/alibaba/mtl/appmonitor/a/e;
    .locals 2

    const-class v0, Lcom/alibaba/mtl/appmonitor/a/e;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/e;->a:Lcom/alibaba/mtl/appmonitor/a/e;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/alibaba/mtl/appmonitor/a/e;

    invoke-direct {v1}, Lcom/alibaba/mtl/appmonitor/a/e;-><init>()V

    sput-object v1, Lcom/alibaba/mtl/appmonitor/a/e;->a:Lcom/alibaba/mtl/appmonitor/a/e;

    .line 57
    :cond_0
    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/e;->a:Lcom/alibaba/mtl/appmonitor/a/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 53
    monitor-exit v0

    throw v1
.end method

.method private a(I)Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;
    .locals 3

    .line 68
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;

    .line 69
    sget-object v1, Lcom/alibaba/mtl/log/model/LogField;->ACCESS:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/mtl/log/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 70
    sget-object v1, Lcom/alibaba/mtl/log/model/LogField;->ACCESS_SUBTYPE:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/mtl/log/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 71
    sget-object v1, Lcom/alibaba/mtl/log/model/LogField;->USERID:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/mtl/log/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 72
    sget-object v1, Lcom/alibaba/mtl/log/model/LogField;->USERNICK:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/mtl/log/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 73
    sget-object v1, Lcom/alibaba/mtl/log/model/LogField;->EVENTID:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 263
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MetricRepo;->getRepo()Lcom/alibaba/mtl/appmonitor/model/MetricRepo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MetricRepo;->getMetric(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/Metric;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 265
    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/Metric;->getTransactionId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 7

    .line 312
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const-string v1, "EventRepo"

    const/4 v2, 0x3

    .line 313
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/a/f;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, " EVENT size:"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 314
    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/a/f;->b()I

    move-result v1

    if-lt v0, v1, :cond_0

    const-string v0, "EventRepo"

    .line 315
    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/a/f;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, " event size exceed trigger count."

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    invoke-virtual {p2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 317
    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/a/f;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/a/e;->a(I)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 277
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MetricRepo;->getRepo()Lcom/alibaba/mtl/appmonitor/model/MetricRepo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MetricRepo;->getMetric(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/Metric;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 279
    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/Metric;->resetTransactionId()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;",
            "Ljava/util/List<",
            "Lcom/alibaba/mtl/appmonitor/a/d;",
            ">;>;"
        }
    .end annotation

    .line 328
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 329
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/e;->h:Ljava/util/Map;

    monitor-enter v1

    .line 330
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/a/e;->h:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 331
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 333
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;

    if-eqz v5, :cond_0

    .line 335
    invoke-virtual {v5}, Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;->getEventId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p1, :cond_0

    .line 336
    iget-object v6, p0, Lcom/alibaba/mtl/appmonitor/a/e;->h:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/mtl/appmonitor/model/MetricValueSet;

    invoke-virtual {v6}, Lcom/alibaba/mtl/appmonitor/model/MetricValueSet;->getEvents()Ljava/util/List;

    move-result-object v6

    .line 337
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v6, p0, Lcom/alibaba/mtl/appmonitor/a/e;->h:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 343
    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(I)V
    .locals 2

    .line 370
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/a/e;->a(I)Ljava/util/Map;

    move-result-object p1

    .line 371
    invoke-static {}, Lcom/alibaba/mtl/log/e/r;->a()Lcom/alibaba/mtl/log/e/r;

    move-result-object v0

    new-instance v1, Lcom/alibaba/mtl/appmonitor/a/e$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/mtl/appmonitor/a/e$1;-><init>(Lcom/alibaba/mtl/appmonitor/a/e;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/log/e/r;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V
    .locals 7

    .line 141
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MetricRepo;->getRepo()Lcom/alibaba/mtl/appmonitor/model/MetricRepo;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/alibaba/mtl/appmonitor/model/MetricRepo;->getMetric(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/Metric;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 143
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/model/Metric;->getDimensionSet()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/model/Metric;->getDimensionSet()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->setConstantValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V

    .line 146
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/model/Metric;->getMeasureSet()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/model/Metric;->getMeasureSet()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->setConstantValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 150
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/mtl/appmonitor/a/e;->a(I)Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;

    move-result-object v0

    const/4 v5, 0x0

    .line 151
    const-class v6, Lcom/alibaba/mtl/appmonitor/a/g;

    move-object v1, p0

    move-object v2, v0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/mtl/appmonitor/a/d;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/a/g;

    .line 152
    invoke-virtual {v1, p5, p4}, Lcom/alibaba/mtl/appmonitor/a/g;->a(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 154
    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v1

    const-class v2, Lcom/alibaba/mtl/appmonitor/a/g;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 p2, 0x2

    aput-object p3, v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object p2

    check-cast p2, Lcom/alibaba/mtl/appmonitor/a/g;

    .line 156
    invoke-virtual {p2, p5, p4}, Lcom/alibaba/mtl/appmonitor/a/g;->a(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 157
    invoke-static {v0, p2}, Lcom/alibaba/mtl/appmonitor/f/c;->a(Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;Lcom/alibaba/mtl/appmonitor/a/d;)V

    .line 159
    :cond_2
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/a/f;->a(I)Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/a/e;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/util/concurrent/atomic/AtomicInteger;)V

    goto :goto_0

    :cond_3
    const-string p1, "EventRepo"

    const-string p2, "metric is null"

    .line 161
    invoke-static {p1, p2}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 82
    invoke-direct {p0, p1}, Lcom/alibaba/mtl/appmonitor/a/e;->a(I)Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;

    move-result-object v6

    .line 83
    const-class v5, Lcom/alibaba/mtl/appmonitor/a/a;

    move-object v0, p0

    move-object v1, v6

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/mtl/appmonitor/a/d;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/a/a;

    .line 84
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/a;->f()V

    .line 85
    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/a/a;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 p2, 0x2

    aput-object p3, v2, p2

    const/4 p2, 0x3

    aput-object p4, v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object p2

    check-cast p2, Lcom/alibaba/mtl/appmonitor/a/a;

    .line 87
    invoke-virtual {p2}, Lcom/alibaba/mtl/appmonitor/a/a;->f()V

    .line 88
    invoke-static {v6, p2}, Lcom/alibaba/mtl/appmonitor/f/c;->a(Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;Lcom/alibaba/mtl/appmonitor/a/d;)V

    .line 90
    :cond_0
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/a/f;->a(I)Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/a/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 7

    .line 119
    invoke-direct {p0, p1}, Lcom/alibaba/mtl/appmonitor/a/e;->a(I)Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;

    move-result-object v6

    .line 120
    const-class v5, Lcom/alibaba/mtl/appmonitor/a/b;

    move-object v0, p0

    move-object v1, v6

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/mtl/appmonitor/a/d;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/a/b;

    .line 121
    invoke-virtual {v0, p5, p6}, Lcom/alibaba/mtl/appmonitor/a/b;->a(D)V

    .line 122
    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/a/b;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 p2, 0x2

    aput-object p3, v2, p2

    const/4 p2, 0x3

    aput-object p4, v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object p2

    check-cast p2, Lcom/alibaba/mtl/appmonitor/a/b;

    .line 124
    invoke-virtual {p2, p5, p6}, Lcom/alibaba/mtl/appmonitor/a/b;->a(D)V

    .line 125
    invoke-static {v6, p2}, Lcom/alibaba/mtl/appmonitor/f/c;->a(Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;Lcom/alibaba/mtl/appmonitor/a/d;)V

    .line 127
    :cond_0
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/a/f;->a(I)Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/a/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 97
    invoke-direct {p0, p1}, Lcom/alibaba/mtl/appmonitor/a/e;->a(I)Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;

    move-result-object v6

    .line 98
    const-class v5, Lcom/alibaba/mtl/appmonitor/a/a;

    move-object v0, p0

    move-object v1, v6

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/mtl/appmonitor/a/d;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/a/a;

    .line 99
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/a;->g()V

    .line 100
    invoke-virtual {v0, p5, p6}, Lcom/alibaba/mtl/appmonitor/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/a/a;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 p2, 0x2

    aput-object p3, v2, p2

    const/4 p2, 0x3

    aput-object p4, v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object p2

    check-cast p2, Lcom/alibaba/mtl/appmonitor/a/a;

    .line 103
    invoke-virtual {p2}, Lcom/alibaba/mtl/appmonitor/a/a;->g()V

    .line 104
    invoke-virtual {p2, p5, p6}, Lcom/alibaba/mtl/appmonitor/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {v6, p2}, Lcom/alibaba/mtl/appmonitor/f/c;->a(Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;Lcom/alibaba/mtl/appmonitor/a/d;)V

    .line 107
    :cond_0
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/a/f;->a(I)Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/a/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method

.method public a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 174
    invoke-direct {p0, p2, p3}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 176
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V
    .locals 5

    .line 245
    const-class v0, Lcom/alibaba/mtl/appmonitor/a/c;

    monitor-enter v0

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/e;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/a/c;

    if-nez v1, :cond_0

    .line 248
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v1

    const-class v2, Lcom/alibaba/mtl/appmonitor/a/c;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 p2, 0x1

    aput-object p3, v3, p2

    const/4 p2, 0x2

    aput-object p4, v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/alibaba/mtl/appmonitor/a/c;

    .line 249
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/a/e;->g:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-virtual {v1, p5}, Lcom/alibaba/mtl/appmonitor/a/c;->a(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V

    return-void

    :catchall_0
    move-exception p1

    .line 251
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 190
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MetricRepo;->getRepo()Lcom/alibaba/mtl/appmonitor/model/MetricRepo;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/alibaba/mtl/appmonitor/model/MetricRepo;->getMetric(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/Metric;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/model/Metric;->getMeasureSet()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/model/Metric;->getMeasureSet()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->getMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    const-class v0, Lcom/alibaba/mtl/appmonitor/a/c;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/e;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/a/c;

    if-nez v1, :cond_0

    .line 198
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v1

    const-class v2, Lcom/alibaba/mtl/appmonitor/a/c;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 p2, 0x1

    aput-object p3, v3, p2

    const/4 p2, 0x2

    aput-object p4, v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/alibaba/mtl/appmonitor/a/c;

    .line 199
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/a/e;->g:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-virtual {v1, p5}, Lcom/alibaba/mtl/appmonitor/a/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 201
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 215
    invoke-direct {p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 217
    invoke-virtual {p0, p1, p3, p2}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 228
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/e;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/a/c;

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {v0, p2}, Lcom/alibaba/mtl/appmonitor/a/c;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 232
    iget-object p2, p0, Lcom/alibaba/mtl/appmonitor/a/e;->g:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 234
    iget-object p1, v0, Lcom/alibaba/mtl/appmonitor/a/c;->o:Ljava/lang/String;

    iget-object p2, v0, Lcom/alibaba/mtl/appmonitor/a/c;->p:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_0
    iget v2, v0, Lcom/alibaba/mtl/appmonitor/a/c;->e:I

    iget-object v3, v0, Lcom/alibaba/mtl/appmonitor/a/c;->o:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/mtl/appmonitor/a/c;->p:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/c;->a()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/c;->a()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/mtl/appmonitor/a/e;->a(ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V

    .line 238
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Lcom/alibaba/mtl/appmonitor/c/b;)V

    :cond_1
    return-void
.end method

.method public h()V
    .locals 5

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/e;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 359
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 361
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 362
    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/a/e;->g:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/mtl/appmonitor/a/c;

    if-eqz v4, :cond_0

    .line 363
    invoke-virtual {v4}, Lcom/alibaba/mtl/appmonitor/a/c;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 364
    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/a/e;->g:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
