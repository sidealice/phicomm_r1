.class public final Lorg/xutils/db/sqlite/SqlInfoBuilder;
.super Ljava/lang/Object;
.source "SqlInfoBuilder.java"


# static fields
.field private static final INSERT_SQL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lorg/xutils/db/table/TableEntity",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final REPLACE_SQL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lorg/xutils/db/table/TableEntity",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/xutils/db/sqlite/SqlInfoBuilder;->INSERT_SQL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/xutils/db/sqlite/SqlInfoBuilder;->REPLACE_SQL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static buildCreateTableSqlInfo(Lorg/xutils/db/table/TableEntity;)Lorg/xutils/db/sqlite/SqlInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity",
            "<*>;)",
            "Lorg/xutils/db/sqlite/SqlInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .local p0, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    const/16 v7, 0x20

    .line 228
    invoke-virtual {p0}, Lorg/xutils/db/table/TableEntity;->getId()Lorg/xutils/db/table/ColumnEntity;

    move-result-object v3

    .line 230
    .local v3, "id":Lorg/xutils/db/table/ColumnEntity;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v4, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/xutils/db/table/TableEntity;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v4, " ( "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v3}, Lorg/xutils/db/table/ColumnEntity;->isAutoId()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 236
    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/xutils/db/table/ColumnEntity;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER PRIMARY KEY AUTOINCREMENT, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :goto_0
    invoke-virtual {p0}, Lorg/xutils/db/table/TableEntity;->getColumnMap()Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 242
    .local v2, "columns":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/xutils/db/table/ColumnEntity;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/db/table/ColumnEntity;

    .line 243
    .local v1, "column":Lorg/xutils/db/table/ColumnEntity;
    invoke-virtual {v1}, Lorg/xutils/db/table/ColumnEntity;->isId()Z

    move-result v5

    if-nez v5, :cond_0

    .line 244
    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/xutils/db/table/ColumnEntity;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/xutils/db/table/ColumnEntity;->getColumnDbType()Lorg/xutils/db/sqlite/ColumnDbType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/xutils/db/table/ColumnEntity;->getProperty()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 238
    .end local v1    # "column":Lorg/xutils/db/table/ColumnEntity;
    .end local v2    # "columns":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/xutils/db/table/ColumnEntity;>;"
    :cond_1
    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/xutils/db/table/ColumnEntity;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/xutils/db/table/ColumnEntity;->getColumnDbType()Lorg/xutils/db/sqlite/ColumnDbType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " PRIMARY KEY, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 250
    .restart local v2    # "columns":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/xutils/db/table/ColumnEntity;>;"
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 251
    const-string v4, " )"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    new-instance v4, Lorg/xutils/db/sqlite/SqlInfo;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xutils/db/sqlite/SqlInfo;-><init>(Ljava/lang/String;)V

    return-object v4
.end method

.method public static buildDeleteSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;
    .locals 7
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/xutils/db/sqlite/SqlInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    new-instance v3, Lorg/xutils/db/sqlite/SqlInfo;

    invoke-direct {v3}, Lorg/xutils/db/sqlite/SqlInfo;-><init>()V

    .line 124
    .local v3, "result":Lorg/xutils/db/sqlite/SqlInfo;
    invoke-virtual {p0}, Lorg/xutils/db/table/TableEntity;->getId()Lorg/xutils/db/table/ColumnEntity;

    move-result-object v1

    .line 125
    .local v1, "id":Lorg/xutils/db/table/ColumnEntity;
    invoke-virtual {v1, p1}, Lorg/xutils/db/table/ColumnEntity;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 127
    .local v2, "idValue":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 128
    new-instance v4, Lorg/xutils/ex/DbException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "this entity["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/xutils/db/table/TableEntity;->getEntityType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]\'s id value is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "DELETE FROM "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/xutils/db/table/TableEntity;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v4, " WHERE "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/xutils/db/table/ColumnEntity;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "="

    invoke-static {v5, v6, v2}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/xutils/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 136
    return-object v3
.end method

.method public static buildDeleteSqlInfo(Lorg/xutils/db/table/TableEntity;Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/sqlite/SqlInfo;
    .locals 3
    .param p1, "whereBuilder"    # Lorg/xutils/db/sqlite/WhereBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity",
            "<*>;",
            "Lorg/xutils/db/sqlite/WhereBuilder;",
            ")",
            "Lorg/xutils/db/sqlite/SqlInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/xutils/db/table/TableEntity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/xutils/db/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result v1

    if-lez v1, :cond_0

    .line 161
    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_0
    new-instance v1, Lorg/xutils/db/sqlite/SqlInfo;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xutils/db/sqlite/SqlInfo;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static buildDeleteSqlInfoById(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;
    .locals 6
    .param p1, "idValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/xutils/db/sqlite/SqlInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    new-instance v2, Lorg/xutils/db/sqlite/SqlInfo;

    invoke-direct {v2}, Lorg/xutils/db/sqlite/SqlInfo;-><init>()V

    .line 142
    .local v2, "result":Lorg/xutils/db/sqlite/SqlInfo;
    invoke-virtual {p0}, Lorg/xutils/db/table/TableEntity;->getId()Lorg/xutils/db/table/ColumnEntity;

    move-result-object v1

    .line 144
    .local v1, "id":Lorg/xutils/db/table/ColumnEntity;
    if-nez p1, :cond_0

    .line 145
    new-instance v3, Lorg/xutils/ex/DbException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "this entity["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/xutils/db/table/TableEntity;->getEntityType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]\'s id value is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "DELETE FROM "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/xutils/db/table/TableEntity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v3, " WHERE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/xutils/db/table/ColumnEntity;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    invoke-static {v4, v5, p1}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xutils/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 153
    return-object v2
.end method

.method public static buildInsertSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;
    .locals 10
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/xutils/db/sqlite/SqlInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-static {p0, p1}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->entity2KeyValueList(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 46
    .local v2, "keyValueList":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/common/util/KeyValue;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    const/4 v5, 0x0

    .line 77
    :goto_0
    return-object v5

    .line 48
    :cond_0
    new-instance v5, Lorg/xutils/db/sqlite/SqlInfo;

    invoke-direct {v5}, Lorg/xutils/db/sqlite/SqlInfo;-><init>()V

    .line 49
    .local v5, "result":Lorg/xutils/db/sqlite/SqlInfo;
    sget-object v7, Lorg/xutils/db/sqlite/SqlInfoBuilder;->INSERT_SQL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 50
    .local v6, "sql":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v7, "INSERT INTO "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v7, "\""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lorg/xutils/db/table/TableEntity;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v7, " ("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xutils/common/util/KeyValue;

    .line 56
    .local v3, "kv":Lorg/xutils/common/util/KeyValue;
    const-string v8, "\""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 58
    .end local v3    # "kv":Lorg/xutils/common/util/KeyValue;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 59
    const-string v7, ") VALUES ("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 62
    .local v4, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v4, :cond_2

    .line 63
    const-string v7, "?,"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v7, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 69
    invoke-virtual {v5, v6}, Lorg/xutils/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v5, v2}, Lorg/xutils/db/sqlite/SqlInfo;->addBindArgs(Ljava/util/List;)V

    .line 71
    sget-object v7, Lorg/xutils/db/sqlite/SqlInfoBuilder;->INSERT_SQL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, p0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 73
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    .end local v4    # "length":I
    :cond_3
    invoke-virtual {v5, v6}, Lorg/xutils/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v5, v2}, Lorg/xutils/db/sqlite/SqlInfo;->addBindArgs(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public static buildReplaceSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;
    .locals 10
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/xutils/db/sqlite/SqlInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-static {p0, p1}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->entity2KeyValueList(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 85
    .local v2, "keyValueList":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/common/util/KeyValue;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    const/4 v5, 0x0

    .line 116
    :goto_0
    return-object v5

    .line 87
    :cond_0
    new-instance v5, Lorg/xutils/db/sqlite/SqlInfo;

    invoke-direct {v5}, Lorg/xutils/db/sqlite/SqlInfo;-><init>()V

    .line 88
    .local v5, "result":Lorg/xutils/db/sqlite/SqlInfo;
    sget-object v7, Lorg/xutils/db/sqlite/SqlInfoBuilder;->REPLACE_SQL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 89
    .local v6, "sql":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v7, "REPLACE INTO "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v7, "\""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lorg/xutils/db/table/TableEntity;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v7, " ("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xutils/common/util/KeyValue;

    .line 95
    .local v3, "kv":Lorg/xutils/common/util/KeyValue;
    const-string v8, "\""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 97
    .end local v3    # "kv":Lorg/xutils/common/util/KeyValue;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 98
    const-string v7, ") VALUES ("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 101
    .local v4, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v4, :cond_2

    .line 102
    const-string v7, "?,"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 104
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 105
    const-string v7, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 108
    invoke-virtual {v5, v6}, Lorg/xutils/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v5, v2}, Lorg/xutils/db/sqlite/SqlInfo;->addBindArgs(Ljava/util/List;)V

    .line 110
    sget-object v7, Lorg/xutils/db/sqlite/SqlInfoBuilder;->REPLACE_SQL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, p0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 112
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    .end local v4    # "length":I
    :cond_3
    invoke-virtual {v5, v6}, Lorg/xutils/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v5, v2}, Lorg/xutils/db/sqlite/SqlInfo;->addBindArgs(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public static varargs buildUpdateSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;[Ljava/lang/String;)Lorg/xutils/db/sqlite/SqlInfo;
    .locals 10
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "updateColumnNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity",
            "<*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lorg/xutils/db/sqlite/SqlInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-static {p0, p1}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->entity2KeyValueList(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 172
    .local v3, "keyValueList":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/common/util/KeyValue;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    const/4 v5, 0x0

    .line 201
    :goto_0
    return-object v5

    .line 174
    :cond_0
    const/4 v6, 0x0

    .line 175
    .local v6, "updateColumnNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    array-length v7, p2

    if-lez v7, :cond_1

    .line 176
    new-instance v6, Ljava/util/HashSet;

    .end local v6    # "updateColumnNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v7, p2

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 177
    .restart local v6    # "updateColumnNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v6, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 180
    :cond_1
    invoke-virtual {p0}, Lorg/xutils/db/table/TableEntity;->getId()Lorg/xutils/db/table/ColumnEntity;

    move-result-object v1

    .line 181
    .local v1, "id":Lorg/xutils/db/table/ColumnEntity;
    invoke-virtual {v1, p1}, Lorg/xutils/db/table/ColumnEntity;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 183
    .local v2, "idValue":Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 184
    new-instance v7, Lorg/xutils/ex/DbException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "this entity["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lorg/xutils/db/table/TableEntity;->getEntityType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]\'s id value is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 187
    :cond_2
    new-instance v5, Lorg/xutils/db/sqlite/SqlInfo;

    invoke-direct {v5}, Lorg/xutils/db/sqlite/SqlInfo;-><init>()V

    .line 188
    .local v5, "result":Lorg/xutils/db/sqlite/SqlInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "UPDATE "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v7, "\""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lorg/xutils/db/table/TableEntity;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v7, " SET "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xutils/common/util/KeyValue;

    .line 192
    .local v4, "kv":Lorg/xutils/common/util/KeyValue;
    if-eqz v6, :cond_4

    iget-object v8, v4, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 193
    :cond_4
    const-string v8, "\""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=?,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v5, v4}, Lorg/xutils/db/sqlite/SqlInfo;->addBindArg(Lorg/xutils/common/util/KeyValue;)V

    goto :goto_1

    .line 197
    .end local v4    # "kv":Lorg/xutils/common/util/KeyValue;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 198
    const-string v7, " WHERE "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/xutils/db/table/ColumnEntity;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "="

    invoke-static {v8, v9, v2}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/xutils/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static varargs buildUpdateSqlInfo(Lorg/xutils/db/table/TableEntity;Lorg/xutils/db/sqlite/WhereBuilder;[Lorg/xutils/common/util/KeyValue;)Lorg/xutils/db/sqlite/SqlInfo;
    .locals 7
    .param p1, "whereBuilder"    # Lorg/xutils/db/sqlite/WhereBuilder;
    .param p2, "nameValuePairs"    # [Lorg/xutils/common/util/KeyValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity",
            "<*>;",
            "Lorg/xutils/db/sqlite/WhereBuilder;",
            "[",
            "Lorg/xutils/common/util/KeyValue;",
            ")",
            "Lorg/xutils/db/sqlite/SqlInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    if-eqz p2, :cond_0

    array-length v3, p2

    if-nez v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 222
    :goto_0
    return-object v2

    .line 208
    :cond_1
    new-instance v2, Lorg/xutils/db/sqlite/SqlInfo;

    invoke-direct {v2}, Lorg/xutils/db/sqlite/SqlInfo;-><init>()V

    .line 209
    .local v2, "result":Lorg/xutils/db/sqlite/SqlInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "UPDATE "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/xutils/db/table/TableEntity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v3, " SET "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    array-length v4, p2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, p2, v3

    .line 213
    .local v1, "kv":Lorg/xutils/common/util/KeyValue;
    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v2, v1}, Lorg/xutils/db/sqlite/SqlInfo;->addBindArg(Lorg/xutils/common/util/KeyValue;)V

    .line 212
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 216
    .end local v1    # "kv":Lorg/xutils/common/util/KeyValue;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 217
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/xutils/db/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result v3

    if-lez v3, :cond_3

    .line 218
    const-string v3, " WHERE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xutils/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static column2KeyValue(Ljava/lang/Object;Lorg/xutils/db/table/ColumnEntity;)Lorg/xutils/common/util/KeyValue;
    .locals 3
    .param p0, "entity"    # Ljava/lang/Object;
    .param p1, "column"    # Lorg/xutils/db/table/ColumnEntity;

    .prologue
    .line 270
    invoke-virtual {p1}, Lorg/xutils/db/table/ColumnEntity;->isAutoId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    const/4 v2, 0x0

    .line 276
    :goto_0
    return-object v2

    .line 274
    :cond_0
    invoke-virtual {p1}, Lorg/xutils/db/table/ColumnEntity;->getName()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, p0}, Lorg/xutils/db/table/ColumnEntity;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 276
    .local v1, "value":Ljava/lang/Object;
    new-instance v2, Lorg/xutils/common/util/KeyValue;

    invoke-direct {v2, v0, v1}, Lorg/xutils/common/util/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static entity2KeyValueList(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {p0}, Lorg/xutils/db/table/TableEntity;->getColumnMap()Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 258
    .local v1, "columns":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/xutils/db/table/ColumnEntity;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 259
    .local v2, "keyValueList":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/common/util/KeyValue;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/db/table/ColumnEntity;

    .line 260
    .local v0, "column":Lorg/xutils/db/table/ColumnEntity;
    invoke-static {p1, v0}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->column2KeyValue(Ljava/lang/Object;Lorg/xutils/db/table/ColumnEntity;)Lorg/xutils/common/util/KeyValue;

    move-result-object v3

    .line 261
    .local v3, "kv":Lorg/xutils/common/util/KeyValue;
    if-eqz v3, :cond_0

    .line 262
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 266
    .end local v0    # "column":Lorg/xutils/db/table/ColumnEntity;
    .end local v3    # "kv":Lorg/xutils/common/util/KeyValue;
    :cond_1
    return-object v2
.end method
