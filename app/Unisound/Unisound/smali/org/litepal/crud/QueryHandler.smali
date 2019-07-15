.class Lorg/litepal/crud/QueryHandler;
.super Lorg/litepal/crud/DataHandler;
.source "QueryHandler.java"


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/litepal/crud/DataHandler;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/litepal/crud/QueryHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 43
    return-void
.end method


# virtual methods
.method onAverage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)D
    .locals 4
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "conditions"    # [Ljava/lang/String;

    .prologue
    .line 189
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "avg("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 190
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 189
    invoke-virtual {p0, p1, v0, p3, v1}, Lorg/litepal/crud/QueryHandler;->mathQuery(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method onCount(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "conditions"    # [Ljava/lang/String;

    .prologue
    .line 172
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "count(1)"

    aput-object v2, v0, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/litepal/crud/QueryHandler;->mathQuery(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method onFind(Ljava/lang/Class;JZ)Ljava/lang/Object;
    .locals 14
    .param p2, "id"    # J
    .param p4, "isEager"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;JZ)TT;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    const-string v4, "id = ?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 59
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {p0, v1, v0}, Lorg/litepal/crud/QueryHandler;->getForeignKeyAssociations(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    .line 58
    invoke-virtual/range {v1 .. v10}, Lorg/litepal/crud/QueryHandler;->query(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 60
    .local v11, "dataList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 61
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 63
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onFind(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 12
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "conditions"    # [Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;
    .param p5, "limit"    # Ljava/lang/String;
    .param p6, "isEager"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p3}, Lorg/litepal/util/BaseUtility;->checkConditionsCorrect([Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, p3}, Lorg/litepal/crud/QueryHandler;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-virtual {p0, p3}, Lorg/litepal/crud/QueryHandler;->getWhereArgs([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 156
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move/from16 v0, p6

    invoke-virtual {p0, v1, v0}, Lorg/litepal/crud/QueryHandler;->getForeignKeyAssociations(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 154
    invoke-virtual/range {v1 .. v10}, Lorg/litepal/crud/QueryHandler;->query(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 157
    .local v11, "dataList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    return-object v11
.end method

.method varargs onFindAll(Ljava/lang/Class;Z[J)Ljava/util/List;
    .locals 11
    .param p2, "isEager"    # Z
    .param p3, "ids"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;Z[J)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 118
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-virtual {p0, v0}, Lorg/litepal/crud/QueryHandler;->isAffectAllLines([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v7, "id"

    .line 120
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/litepal/crud/QueryHandler;->getForeignKeyAssociations(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v8, v2

    .line 119
    invoke-virtual/range {v0 .. v9}, Lorg/litepal/crud/QueryHandler;->query(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 125
    .local v10, "dataList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_0
    return-object v10

    .line 122
    .end local v10    # "dataList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    invoke-virtual {p0, p3}, Lorg/litepal/crud/QueryHandler;->getWhereOfIdsWithOr([J)Ljava/lang/String;

    move-result-object v3

    const-string v7, "id"

    .line 123
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/litepal/crud/QueryHandler;->getForeignKeyAssociations(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v8, v2

    .line 122
    invoke-virtual/range {v0 .. v9}, Lorg/litepal/crud/QueryHandler;->query(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .restart local v10    # "dataList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    goto :goto_0
.end method

.method onFindFirst(Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 11
    .param p2, "isEager"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;Z)TT;"
        }
    .end annotation

    .prologue
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 77
    const-string v7, "id"

    const-string v8, "1"

    .line 78
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/litepal/crud/QueryHandler;->getForeignKeyAssociations(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    .line 77
    invoke-virtual/range {v0 .. v9}, Lorg/litepal/crud/QueryHandler;->query(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 79
    .local v10, "dataList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 82
    :cond_0
    return-object v2
.end method

.method onFindLast(Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 11
    .param p2, "isEager"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;Z)TT;"
        }
    .end annotation

    .prologue
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 96
    const-string v7, "id desc"

    const-string v8, "1"

    .line 97
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/litepal/crud/QueryHandler;->getForeignKeyAssociations(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    .line 96
    invoke-virtual/range {v0 .. v9}, Lorg/litepal/crud/QueryHandler;->query(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 98
    .local v10, "dataList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 101
    :cond_0
    return-object v2
.end method

.method onMax(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "conditions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 209
    .local p4, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "max("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/litepal/crud/QueryHandler;->mathQuery(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method onMin(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "conditions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 228
    .local p4, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "min("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/litepal/crud/QueryHandler;->mathQuery(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method onSum(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "conditions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 247
    .local p4, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sum("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/litepal/crud/QueryHandler;->mathQuery(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
