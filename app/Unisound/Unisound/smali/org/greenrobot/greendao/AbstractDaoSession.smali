.class public Lorg/greenrobot/greendao/AbstractDaoSession;
.super Ljava/lang/Object;
.source "AbstractDaoSession.java"


# instance fields
.field private final db:Lorg/greenrobot/greendao/database/Database;

.field private final entityToDao:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;)V
    .locals 1
    .param p1, "db"    # Lorg/greenrobot/greendao/database/Database;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->entityToDao:Ljava/util/Map;

    .line 55
    return-void
.end method


# virtual methods
.method public callInTx(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v1}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 159
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    .line 160
    .local v0, "result":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v1}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v1}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    return-object v0

    .end local v0    # "result":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v2}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    throw v1
.end method

.method public callInTxNoException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    iget-object v2, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v2}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 176
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 180
    .local v1, "result":Ljava/lang/Object;, "TV;"
    :try_start_1
    iget-object v2, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v2}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    iget-object v2, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v2}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    return-object v1

    .line 177
    .end local v1    # "result":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Lorg/greenrobot/greendao/DaoException;

    const-string v3, "Callable failed"

    invoke-direct {v2, v3, v0}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v3}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    throw v2
.end method

.method public delete(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    .line 93
    .local v0, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;*>;"
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public deleteAll(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    .line 100
    .local v0, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;*>;"
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 101
    return-void
.end method

.method public getAllDaos()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<**>;>;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->entityToDao:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->entityToDao:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/AbstractDao;

    .line 133
    .local v0, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<**>;"
    if-nez v0, :cond_0

    .line 134
    new-instance v1, Lorg/greenrobot/greendao/DaoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No DAO registered for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_0
    return-object v0
.end method

.method public getDatabase()Lorg/greenrobot/greendao/database/Database;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    return-object v0
.end method

.method public insert(Ljava/lang/Object;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)J"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    .line 65
    .local v0, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;*>;"
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    move-result-wide v2

    return-wide v2
.end method

.method public insertOrReplace(Ljava/lang/Object;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)J"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    .line 72
    .local v0, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;*>;"
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    move-result-wide v2

    return-wide v2
.end method

.method public load(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TK;)TT;"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    .line 107
    .local v0, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public loadAll(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    .line 114
    .local v0, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/greenrobot/greendao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    .line 128
    .local v0, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;*>;"
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    return-object v1
.end method

.method public varargs queryRaw(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    .line 121
    .local v0, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    invoke-virtual {v0, p2, p3}, Lorg/greenrobot/greendao/AbstractDao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public refresh(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    .line 79
    .local v0, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;*>;"
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->refresh(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method protected registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TT;*>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;*>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->entityToDao:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public runInTx(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 143
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 145
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 146
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 150
    return-void

    .line 148
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDaoSession;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v1}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    throw v0
.end method

.method public startAsyncSession()Lorg/greenrobot/greendao/async/AsyncSession;
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lorg/greenrobot/greendao/async/AsyncSession;

    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/async/AsyncSession;-><init>(Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-object v0
.end method

.method public update(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    .line 86
    .local v0, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;*>;"
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    .line 87
    return-void
.end method
