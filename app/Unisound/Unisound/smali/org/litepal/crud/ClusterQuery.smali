.class public Lorg/litepal/crud/ClusterQuery;
.super Ljava/lang/Object;
.source "ClusterQuery.java"


# instance fields
.field mColumns:[Ljava/lang/String;

.field mConditions:[Ljava/lang/String;

.field mLimit:Ljava/lang/String;

.field mOffset:Ljava/lang/String;

.field mOrderBy:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method


# virtual methods
.method public declared-synchronized average(Ljava/lang/Class;Ljava/lang/String;)D
    .locals 2
    .param p2, "column"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")D"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/litepal/crud/ClusterQuery;->average(Ljava/lang/String;Ljava/lang/String;)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized average(Ljava/lang/String;Ljava/lang/String;)D
    .locals 4
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/litepal/crud/QueryHandler;

    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/litepal/crud/QueryHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 304
    .local v0, "queryHandler":Lorg/litepal/crud/QueryHandler;
    iget-object v1, p0, Lorg/litepal/crud/ClusterQuery;->mConditions:[Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lorg/litepal/crud/QueryHandler;->onAverage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit p0

    return-wide v2

    .line 303
    .end local v0    # "queryHandler":Lorg/litepal/crud/QueryHandler;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized count(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/litepal/crud/ClusterQuery;->count(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized count(Ljava/lang/String;)I
    .locals 2
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/litepal/crud/QueryHandler;

    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/litepal/crud/QueryHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 257
    .local v0, "queryHandler":Lorg/litepal/crud/QueryHandler;
    iget-object v1, p0, Lorg/litepal/crud/ClusterQuery;->mConditions:[Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/litepal/crud/QueryHandler;->onCount(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 256
    .end local v0    # "queryHandler":Lorg/litepal/crud/QueryHandler;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public find(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/litepal/crud/ClusterQuery;->find(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized find(Ljava/lang/Class;Z)Ljava/util/List;
    .locals 7
    .param p2, "isEager"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;Z)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/litepal/crud/QueryHandler;

    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/litepal/crud/QueryHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 204
    .local v0, "queryHandler":Lorg/litepal/crud/QueryHandler;
    iget-object v1, p0, Lorg/litepal/crud/ClusterQuery;->mOffset:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 205
    iget-object v5, p0, Lorg/litepal/crud/ClusterQuery;->mLimit:Ljava/lang/String;

    .line 212
    .local v5, "limit":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lorg/litepal/crud/ClusterQuery;->mColumns:[Ljava/lang/String;

    iget-object v3, p0, Lorg/litepal/crud/ClusterQuery;->mConditions:[Ljava/lang/String;

    iget-object v4, p0, Lorg/litepal/crud/ClusterQuery;->mOrderBy:Ljava/lang/String;

    move-object v1, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lorg/litepal/crud/QueryHandler;->onFind(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 207
    .end local v5    # "limit":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/litepal/crud/ClusterQuery;->mLimit:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 208
    const-string v1, "0"

    iput-object v1, p0, Lorg/litepal/crud/ClusterQuery;->mLimit:Ljava/lang/String;

    .line 210
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/litepal/crud/ClusterQuery;->mOffset:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/litepal/crud/ClusterQuery;->mLimit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .restart local v5    # "limit":Ljava/lang/String;
    goto :goto_0

    .line 202
    .end local v0    # "queryHandler":Lorg/litepal/crud/QueryHandler;
    .end local v5    # "limit":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public limit(I)Lorg/litepal/crud/ClusterQuery;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 139
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/litepal/crud/ClusterQuery;->mLimit:Ljava/lang/String;

    .line 140
    return-object p0
.end method

.method public declared-synchronized max(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p2, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "columnType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/litepal/crud/ClusterQuery;->max(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized max(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 356
    .local p3, "columnType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/litepal/crud/QueryHandler;

    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/litepal/crud/QueryHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 357
    .local v0, "queryHandler":Lorg/litepal/crud/QueryHandler;
    iget-object v1, p0, Lorg/litepal/crud/ClusterQuery;->mConditions:[Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1, p3}, Lorg/litepal/crud/QueryHandler;->onMax(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 356
    .end local v0    # "queryHandler":Lorg/litepal/crud/QueryHandler;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized min(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p2, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "columnType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/litepal/crud/ClusterQuery;->min(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized min(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 409
    .local p3, "columnType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/litepal/crud/QueryHandler;

    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/litepal/crud/QueryHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 410
    .local v0, "queryHandler":Lorg/litepal/crud/QueryHandler;
    iget-object v1, p0, Lorg/litepal/crud/ClusterQuery;->mConditions:[Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1, p3}, Lorg/litepal/crud/QueryHandler;->onMin(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 409
    .end local v0    # "queryHandler":Lorg/litepal/crud/QueryHandler;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public offset(I)Lorg/litepal/crud/ClusterQuery;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 158
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/litepal/crud/ClusterQuery;->mOffset:Ljava/lang/String;

    .line 159
    return-object p0
.end method

.method public order(Ljava/lang/String;)Lorg/litepal/crud/ClusterQuery;
    .locals 0
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lorg/litepal/crud/ClusterQuery;->mOrderBy:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public varargs select([Ljava/lang/String;)Lorg/litepal/crud/ClusterQuery;
    .locals 0
    .param p1, "columns"    # [Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/litepal/crud/ClusterQuery;->mColumns:[Ljava/lang/String;

    .line 80
    return-object p0
.end method

.method public declared-synchronized sum(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p2, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "columnType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/litepal/crud/ClusterQuery;->sum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 462
    .local p3, "columnType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/litepal/crud/QueryHandler;

    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/litepal/crud/QueryHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 463
    .local v0, "queryHandler":Lorg/litepal/crud/QueryHandler;
    iget-object v1, p0, Lorg/litepal/crud/ClusterQuery;->mConditions:[Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1, p3}, Lorg/litepal/crud/QueryHandler;->onSum(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 462
    .end local v0    # "queryHandler":Lorg/litepal/crud/QueryHandler;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public varargs where([Ljava/lang/String;)Lorg/litepal/crud/ClusterQuery;
    .locals 0
    .param p1, "conditions"    # [Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lorg/litepal/crud/ClusterQuery;->mConditions:[Ljava/lang/String;

    .line 100
    return-object p0
.end method
