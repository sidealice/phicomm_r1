.class final Lorg/xutils/db/table/TableUtils;
.super Ljava/lang/Object;
.source "TableUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private static addColumns2Map(Ljava/lang/Class;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/xutils/db/table/ColumnEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "columnMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/xutils/db/table/ColumnEntity;>;"
    const-class v6, Ljava/lang/Object;

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 64
    :goto_0
    return-void

    .line 43
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 44
    .local v4, "fields":[Ljava/lang/reflect/Field;
    array-length v7, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v3, v4, v6

    .line 45
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    .line 46
    .local v5, "modify":I
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 44
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 49
    :cond_2
    const-class v8, Lorg/xutils/db/annotation/Column;

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/xutils/db/annotation/Column;

    .line 50
    .local v1, "columnAnn":Lorg/xutils/db/annotation/Column;
    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lorg/xutils/db/converter/ColumnConverterFactory;->isSupportColumnConverter(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 52
    new-instance v0, Lorg/xutils/db/table/ColumnEntity;

    invoke-direct {v0, p0, v3, v1}, Lorg/xutils/db/table/ColumnEntity;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Lorg/xutils/db/annotation/Column;)V

    .line 53
    .local v0, "column":Lorg/xutils/db/table/ColumnEntity;
    invoke-virtual {v0}, Lorg/xutils/db/table/ColumnEntity;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 54
    invoke-virtual {v0}, Lorg/xutils/db/table/ColumnEntity;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 61
    .end local v0    # "column":Lorg/xutils/db/table/ColumnEntity;
    .end local v1    # "columnAnn":Lorg/xutils/db/annotation/Column;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "fields":[Ljava/lang/reflect/Field;
    .end local v5    # "modify":I
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 60
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v4    # "fields":[Ljava/lang/reflect/Field;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, p1}, Lorg/xutils/db/table/TableUtils;->addColumns2Map(Ljava/lang/Class;Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static declared-synchronized findColumnMap(Ljava/lang/Class;)Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/xutils/db/table/ColumnEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lorg/xutils/db/table/TableUtils;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 35
    .local v0, "columnMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/xutils/db/table/ColumnEntity;>;"
    invoke-static {p0, v0}, Lorg/xutils/db/table/TableUtils;->addColumns2Map(Ljava/lang/Class;Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit v2

    return-object v0

    .line 34
    .end local v0    # "columnMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/xutils/db/table/ColumnEntity;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
