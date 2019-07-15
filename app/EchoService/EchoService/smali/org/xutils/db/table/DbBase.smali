.class public abstract Lorg/xutils/db/table/DbBase;
.super Ljava/lang/Object;
.source "DbBase.java"

# interfaces
.implements Lorg/xutils/DbManager;


# instance fields
.field private final tableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/xutils/db/table/TableEntity",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xutils/db/table/DbBase;->tableMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addColumn(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 5
    .param p2, "column"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/xutils/db/table/DbBase;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v2

    .line 81
    .local v2, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {v2}, Lorg/xutils/db/table/TableEntity;->getColumnMap()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/db/table/ColumnEntity;

    .line 82
    .local v1, "col":Lorg/xutils/db/table/ColumnEntity;
    if-eqz v1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v3, "ALTER TABLE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/xutils/db/table/TableEntity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ADD COLUMN "

    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/xutils/db/table/ColumnEntity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/xutils/db/table/ColumnEntity;->getColumnDbType()Lorg/xutils/db/sqlite/ColumnDbType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/xutils/db/table/ColumnEntity;->getProperty()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/xutils/db/table/DbBase;->execNonQuery(Ljava/lang/String;)V

    .line 90
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method protected createTableIfNotExist(Lorg/xutils/db/table/TableEntity;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z

    move-result v3

    if-nez v3, :cond_2

    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    monitor-enter v4

    .line 95
    :try_start_0
    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 96
    invoke-static {p1}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildCreateTableSqlInfo(Lorg/xutils/db/table/TableEntity;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v2

    .line 97
    .local v2, "sqlInfo":Lorg/xutils/db/sqlite/SqlInfo;
    invoke-virtual {p0, v2}, Lorg/xutils/db/table/DbBase;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 98
    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->getOnCreated()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "execAfterTableCreated":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    invoke-virtual {p0, v0}, Lorg/xutils/db/table/DbBase;->execNonQuery(Ljava/lang/String;)V

    .line 102
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lorg/xutils/db/table/TableEntity;->setCheckedDatabase(Z)V

    .line 103
    invoke-virtual {p0}, Lorg/xutils/db/table/DbBase;->getDaoConfig()Lorg/xutils/DbManager$DaoConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xutils/DbManager$DaoConfig;->getTableCreateListener()Lorg/xutils/DbManager$TableCreateListener;

    move-result-object v1

    .line 104
    .local v1, "listener":Lorg/xutils/DbManager$TableCreateListener;
    if-eqz v1, :cond_1

    .line 105
    invoke-interface {v1, p0, p1}, Lorg/xutils/DbManager$TableCreateListener;->onTableCreated(Lorg/xutils/DbManager;Lorg/xutils/db/table/TableEntity;)V

    .line 108
    .end local v0    # "execAfterTableCreated":Ljava/lang/String;
    .end local v1    # "listener":Lorg/xutils/DbManager$TableCreateListener;
    .end local v2    # "sqlInfo":Lorg/xutils/db/sqlite/SqlInfo;
    :cond_1
    monitor-exit v4

    .line 110
    :cond_2
    return-void

    .line 108
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public dropDb()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 52
    const-string v4, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name<>\'sqlite_sequence\'"

    invoke-virtual {p0, v4}, Lorg/xutils/db/table/DbBase;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 53
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 55
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "tableName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/table/DbBase;->execNonQuery(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    .end local v3    # "tableName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 70
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 71
    .restart local v1    # "e":Ljava/lang/Throwable;
    :try_start_3
    new-instance v4, Lorg/xutils/ex/DbException;

    invoke-direct {v4, v1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    throw v4

    .line 64
    :cond_0
    :try_start_4
    iget-object v5, p0, Lorg/xutils/db/table/DbBase;->tableMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 65
    :try_start_5
    iget-object v4, p0, Lorg/xutils/db/table/DbBase;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xutils/db/table/TableEntity;

    .line 66
    .local v2, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/xutils/db/table/TableEntity;->setCheckedDatabase(Z)V

    goto :goto_1

    .line 69
    .end local v2    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 68
    :cond_1
    :try_start_7
    iget-object v4, p0, Lorg/xutils/db/table/DbBase;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 69
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 73
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 76
    :cond_2
    return-void
.end method

.method public dropTable(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/xutils/db/table/DbBase;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 44
    .local v0, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xutils/db/table/DbBase;->execNonQuery(Ljava/lang/String;)V

    .line 46
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xutils/db/table/TableEntity;->setCheckedDatabase(Z)V

    .line 47
    invoke-virtual {p0, p1}, Lorg/xutils/db/table/DbBase;->removeTable(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/xutils/db/table/TableEntity",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v3, p0, Lorg/xutils/db/table/DbBase;->tableMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 27
    :try_start_0
    iget-object v2, p0, Lorg/xutils/db/table/DbBase;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/db/table/TableEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .local v1, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<TT;>;"
    if-nez v1, :cond_0

    .line 30
    :try_start_1
    new-instance v1, Lorg/xutils/db/table/TableEntity;

    .end local v1    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<TT;>;"
    invoke-direct {v1, p0, p1}, Lorg/xutils/db/table/TableEntity;-><init>(Lorg/xutils/DbManager;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .restart local v1    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<TT;>;"
    :try_start_2
    iget-object v2, p0, Lorg/xutils/db/table/DbBase;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_0
    monitor-exit v3

    return-object v1

    .line 31
    .end local v1    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<TT;>;"
    :catch_0
    move-exception v0

    .line 32
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v2, Lorg/xutils/ex/DbException;

    invoke-direct {v2, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 38
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method protected removeTable(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lorg/xutils/db/table/DbBase;->tableMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-object v0, p0, Lorg/xutils/db/table/DbBase;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    monitor-exit v1

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
