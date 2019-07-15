.class public Lcom/alibaba/mtl/appmonitor/d/j;
.super Ljava/lang/Object;
.source "SampleRules.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static a:Lcom/alibaba/mtl/appmonitor/d/j;


# instance fields
.field private A:Ljava/lang/String;

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/alibaba/mtl/appmonitor/a/f;",
            "Lcom/alibaba/mtl/appmonitor/d/g;",
            ">;"
        }
    .end annotation
.end field

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/j;->q:Ljava/util/Map;

    .line 29
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/f;->a()[Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 30
    sget-object v4, Lcom/alibaba/mtl/appmonitor/a/f;->a:Lcom/alibaba/mtl/appmonitor/a/f;

    if-ne v3, v4, :cond_0

    .line 31
    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/d/j;->q:Ljava/util/Map;

    new-instance v5, Lcom/alibaba/mtl/appmonitor/d/f;

    invoke-virtual {v3}, Lcom/alibaba/mtl/appmonitor/a/f;->e()I

    move-result v6

    invoke-direct {v5, v3, v6}, Lcom/alibaba/mtl/appmonitor/d/f;-><init>(Lcom/alibaba/mtl/appmonitor/a/f;I)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 33
    :cond_0
    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/d/j;->q:Ljava/util/Map;

    new-instance v5, Lcom/alibaba/mtl/appmonitor/d/g;

    invoke-virtual {v3}, Lcom/alibaba/mtl/appmonitor/a/f;->e()I

    move-result v6

    invoke-direct {v5, v3, v6}, Lcom/alibaba/mtl/appmonitor/d/g;-><init>(Lcom/alibaba/mtl/appmonitor/a/f;I)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a()Lcom/alibaba/mtl/appmonitor/d/j;
    .locals 2

    .line 41
    sget-object v0, Lcom/alibaba/mtl/appmonitor/d/j;->a:Lcom/alibaba/mtl/appmonitor/d/j;

    if-nez v0, :cond_1

    .line 42
    const-class v0, Lcom/alibaba/mtl/appmonitor/d/j;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/alibaba/mtl/appmonitor/d/j;->a:Lcom/alibaba/mtl/appmonitor/d/j;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/alibaba/mtl/appmonitor/d/j;

    invoke-direct {v1}, Lcom/alibaba/mtl/appmonitor/d/j;-><init>()V

    sput-object v1, Lcom/alibaba/mtl/appmonitor/d/j;->a:Lcom/alibaba/mtl/appmonitor/d/j;

    .line 46
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 48
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/d/j;->a:Lcom/alibaba/mtl/appmonitor/d/j;

    return-object v0
.end method

.method public static a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 56
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/d/j;->a()Lcom/alibaba/mtl/appmonitor/d/j;

    move-result-object v0

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/alibaba/mtl/appmonitor/d/j;->b(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/mtl/appmonitor/a/f;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 61
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/d/j;->a()Lcom/alibaba/mtl/appmonitor/d/j;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/d/j;->b(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 66
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/d/j;->a()Lcom/alibaba/mtl/appmonitor/d/j;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/d/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/alibaba/mtl/appmonitor/a/f;I)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/j;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/mtl/appmonitor/d/g;

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1, p2}, Lcom/alibaba/mtl/appmonitor/d/g;->setSampling(I)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 12

    const-string v0, "SampleRules"

    const/4 v1, 0x2

    .line 113
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "config:"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/f/b;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/j;->A:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/j;->A:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/f;->a()[Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object v2

    array-length v5, v2

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v2, v6

    .line 122
    invoke-virtual {v7}, Lcom/alibaba/mtl/appmonitor/a/f;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 123
    iget-object v9, p0, Lcom/alibaba/mtl/appmonitor/d/j;->q:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/mtl/appmonitor/d/g;

    if-eqz v8, :cond_1

    if-eqz v9, :cond_1

    .line 125
    sget-object v10, Lcom/alibaba/mtl/appmonitor/d/j;->TAG:Ljava/lang/String;

    new-array v11, v1, [Ljava/lang/Object;

    aput-object v7, v11, v4

    aput-object v8, v11, v3

    invoke-static {v10, v11}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-virtual {v9, v8}, Lcom/alibaba/mtl/appmonitor/d/g;->b(Lorg/json/JSONObject;)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 130
    :cond_2
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/d/j;->A:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    .line 116
    :cond_3
    :goto_1
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 118
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public b(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/mtl/appmonitor/a/f;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/j;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/mtl/appmonitor/d/g;

    if-eqz p1, :cond_0

    .line 81
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/d/j;->r:I

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/d/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/j;->q:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->a:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/d/g;

    if-eqz v0, :cond_0

    .line 97
    instance-of v1, v0, Lcom/alibaba/mtl/appmonitor/d/f;

    if-eqz v1, :cond_0

    .line 98
    move-object v2, v0

    check-cast v2, Lcom/alibaba/mtl/appmonitor/d/f;

    iget v3, p0, Lcom/alibaba/mtl/appmonitor/d/j;->r:I

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/mtl/appmonitor/d/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/mtl/appmonitor/d/j;->k()V

    return-void
.end method

.method public k()V
    .locals 3

    .line 107
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const/16 v1, 0x2710

    .line 108
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/d/j;->r:I

    return-void
.end method
