.class public abstract Lorg/greenrobot/greendao/AbstractDao;
.super Ljava/lang/Object;
.source "AbstractDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final config:Lorg/greenrobot/greendao/internal/DaoConfig;

.field protected final db:Lorg/greenrobot/greendao/database/Database;

.field protected identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/identityscope/IdentityScope",
            "<TK;TT;>;"
        }
    .end annotation
.end field

.field protected identityScopeLong:Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/identityscope/IdentityScopeLong",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final isStandardSQLite:Z

.field protected final pkOrdinal:I

.field protected final session:Lorg/greenrobot/greendao/AbstractDaoSession;

.field protected statements:Lorg/greenrobot/greendao/internal/TableStatements;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 1
    .param p1, "config"    # Lorg/greenrobot/greendao/internal/DaoConfig;

    .prologue
    .line 70
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V
    .locals 1
    .param p1, "config"    # Lorg/greenrobot/greendao/internal/DaoConfig;
    .param p2, "daoSession"    # Lorg/greenrobot/greendao/AbstractDaoSession;

    .prologue
    .line 74
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/greenrobot/greendao/AbstractDao;->config:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 76
    iput-object p2, p0, Lorg/greenrobot/greendao/AbstractDao;->session:Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 77
    iget-object v0, p1, Lorg/greenrobot/greendao/internal/DaoConfig;->db:Lorg/greenrobot/greendao/database/Database;

    iput-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 78
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->getRawDatabase()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/database/sqlite/SQLiteDatabase;

    iput-boolean v0, p0, Lorg/greenrobot/greendao/AbstractDao;->isStandardSQLite:Z

    .line 79
    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->getIdentityScope()Lorg/greenrobot/greendao/identityscope/IdentityScope;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 80
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    instance-of v0, v0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    check-cast v0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;

    iput-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScopeLong:Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;

    .line 83
    :cond_0
    iget-object v0, p1, Lorg/greenrobot/greendao/internal/DaoConfig;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    iput-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    .line 84
    iget-object v0, p1, Lorg/greenrobot/greendao/internal/DaoConfig;->pkProperty:Lorg/greenrobot/greendao/Property;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/greenrobot/greendao/internal/DaoConfig;->pkProperty:Lorg/greenrobot/greendao/Property;

    iget v0, v0, Lorg/greenrobot/greendao/Property;->ordinal:I

    :goto_0
    iput v0, p0, Lorg/greenrobot/greendao/AbstractDao;->pkOrdinal:I

    .line 85
    return-void

    .line 84
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private deleteByKeyInsideSynchronized(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;)V
    .locals 3
    .param p2, "stmt"    # Lorg/greenrobot/greendao/database/DatabaseStatement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/greenrobot/greendao/database/DatabaseStatement;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x1

    .line 581
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 582
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 588
    :goto_0
    invoke-interface {p2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->execute()V

    .line 589
    return-void

    .line 583
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    if-nez p1, :cond_1

    .line 584
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    const-string v1, "Cannot delete entity, key is null"

    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private deleteInTxInternal(Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/lang/Iterable",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 592
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p2, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TK;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->assertSinglePk()V

    .line 593
    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    invoke-virtual {v5}, Lorg/greenrobot/greendao/internal/TableStatements;->getDeleteStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v4

    .line 594
    .local v4, "stmt":Lorg/greenrobot/greendao/database/DatabaseStatement;
    const/4 v2, 0x0

    .line 595
    .local v2, "keysToRemoveFromIdentityScope":Ljava/util/List;, "Ljava/util/List<TK;>;"
    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v5}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 597
    :try_start_0
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 598
    :try_start_1
    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    if-eqz v5, :cond_0

    .line 599
    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    invoke-interface {v5}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->lock()V

    .line 600
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v2    # "keysToRemoveFromIdentityScope":Ljava/util/List;, "Ljava/util/List<TK;>;"
    .local v3, "keysToRemoveFromIdentityScope":Ljava/util/List;, "Ljava/util/List<TK;>;"
    move-object v2, v3

    .line 603
    .end local v3    # "keysToRemoveFromIdentityScope":Ljava/util/List;, "Ljava/util/List<TK;>;"
    .restart local v2    # "keysToRemoveFromIdentityScope":Ljava/util/List;, "Ljava/util/List<TK;>;"
    :cond_0
    if-eqz p1, :cond_3

    .line 604
    :try_start_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 605
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/AbstractDao;->getKeyVerified(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 606
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v1, v4}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKeyInsideSynchronized(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;)V

    .line 607
    if-eqz v2, :cond_1

    .line 608
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 621
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :catchall_0
    move-exception v5

    :try_start_3
    iget-object v6, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    if-eqz v6, :cond_2

    .line 622
    iget-object v6, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    invoke-interface {v6}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->unlock()V

    :cond_2
    throw v5

    .line 625
    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 631
    :catchall_2
    move-exception v5

    iget-object v6, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v6}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    throw v5

    .line 612
    :cond_3
    if-eqz p2, :cond_5

    .line 613
    :try_start_5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 614
    .restart local v1    # "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v1, v4}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKeyInsideSynchronized(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;)V

    .line 615
    if-eqz v2, :cond_4

    .line 616
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 621
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_5
    :try_start_6
    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    if-eqz v5, :cond_6

    .line 622
    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    invoke-interface {v5}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->unlock()V

    .line 625
    :cond_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 626
    :try_start_7
    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v5}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V

    .line 627
    if-eqz v2, :cond_7

    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    if-eqz v5, :cond_7

    .line 628
    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    invoke-interface {v5, v2}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->remove(Ljava/lang/Iterable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 631
    :cond_7
    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v5}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 633
    return-void
.end method

.method private executeInsert(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;Z)J
    .locals 4
    .param p2, "stmt"    # Lorg/greenrobot/greendao/database/DatabaseStatement;
    .param p3, "setKeyAndAttach"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/greenrobot/greendao/database/DatabaseStatement;",
            "Z)J"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v2}, Lorg/greenrobot/greendao/database/Database;->isDbLockedByCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->insertInsideTx(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;)J

    move-result-wide v0

    .line 348
    .local v0, "rowId":J
    :goto_0
    if-eqz p3, :cond_0

    .line 349
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->updateKeyAfterInsertAndAttach(Ljava/lang/Object;JZ)V

    .line 351
    :cond_0
    return-wide v0

    .line 340
    .end local v0    # "rowId":J
    :cond_1
    iget-object v2, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v2}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 342
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->insertInsideTx(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;)J

    move-result-wide v0

    .line 343
    .restart local v0    # "rowId":J
    iget-object v2, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v2}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    iget-object v2, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v2}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    goto :goto_0

    .end local v0    # "rowId":J
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v3}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    throw v2
.end method

.method private executeInsertInTx(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Iterable;Z)V
    .locals 6
    .param p1, "stmt"    # Lorg/greenrobot/greendao/database/DatabaseStatement;
    .param p3, "setPrimaryKey"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/DatabaseStatement;",
            "Ljava/lang/Iterable",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p2, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    iget-object v4, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v4}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 265
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 266
    :try_start_1
    iget-object v4, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    if-eqz v4, :cond_0

    .line 267
    iget-object v4, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    invoke-interface {v4}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 270
    :cond_0
    :try_start_2
    iget-boolean v4, p0, Lorg/greenrobot/greendao/AbstractDao;->isStandardSQLite:Z

    if-eqz v4, :cond_3

    .line 271
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->getRawStatement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteStatement;

    .line 272
    .local v1, "rawStmt":Landroid/database/sqlite/SQLiteStatement;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 273
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 274
    if-eqz p3, :cond_2

    .line 275
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v2

    .line 276
    .local v2, "rowId":J
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v2, v3, v5}, Lorg/greenrobot/greendao/AbstractDao;->updateKeyAfterInsertAndAttach(Ljava/lang/Object;JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 293
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    .end local v1    # "rawStmt":Landroid/database/sqlite/SQLiteStatement;
    .end local v2    # "rowId":J
    :catchall_0
    move-exception v4

    :try_start_3
    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    if-eqz v5, :cond_1

    .line 294
    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    invoke-interface {v5}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->unlock()V

    :cond_1
    throw v4

    .line 297
    :catchall_1
    move-exception v4

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 300
    :catchall_2
    move-exception v4

    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v5}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    throw v4

    .line 278
    .restart local v0    # "entity":Ljava/lang/Object;, "TT;"
    .restart local v1    # "rawStmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_2
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0

    .line 282
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    .end local v1    # "rawStmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 283
    .restart local v0    # "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V

    .line 284
    if-eqz p3, :cond_4

    .line 285
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->executeInsert()J

    move-result-wide v2

    .line 286
    .restart local v2    # "rowId":J
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v2, v3, v5}, Lorg/greenrobot/greendao/AbstractDao;->updateKeyAfterInsertAndAttach(Ljava/lang/Object;JZ)V

    goto :goto_1

    .line 288
    .end local v2    # "rowId":J
    :cond_4
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->execute()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 293
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_5
    :try_start_6
    iget-object v4, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    if-eqz v4, :cond_6

    .line 294
    iget-object v4, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    invoke-interface {v4}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->unlock()V

    .line 297
    :cond_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 298
    :try_start_7
    iget-object v4, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v4}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 300
    iget-object v4, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v4}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 302
    return-void
.end method

.method private insertInsideTx(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;)J
    .locals 4
    .param p2, "stmt"    # Lorg/greenrobot/greendao/database/DatabaseStatement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/greenrobot/greendao/database/DatabaseStatement;",
            ")J"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    monitor-enter p2

    .line 356
    :try_start_0
    iget-boolean v1, p0, Lorg/greenrobot/greendao/AbstractDao;->isStandardSQLite:Z

    if-eqz v1, :cond_0

    .line 357
    invoke-interface {p2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->getRawStatement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteStatement;

    .line 358
    .local v0, "rawStmt":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p0, v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 359
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v2

    monitor-exit p2

    .line 362
    .end local v0    # "rawStmt":Landroid/database/sqlite/SQLiteStatement;
    :goto_0
    return-wide v2

    .line 361
    :cond_0
    invoke-virtual {p0, p2, p1}, Lorg/greenrobot/greendao/AbstractDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V

    .line 362
    invoke-interface {p2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->executeInsert()J

    move-result-wide v2

    monitor-exit p2

    goto :goto_0

    .line 364
    :catchall_0
    move-exception v1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadAllUnlockOnWindowBounds(Landroid/database/Cursor;Landroid/database/CursorWindow;Ljava/util/List;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "window"    # Landroid/database/CursorWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/database/CursorWindow;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v4, 0x0

    .line 422
    invoke-virtual {p2}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v2

    invoke-virtual {p2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    add-int v1, v2, v3

    .line 423
    .local v1, "windowEnd":I
    const/4 v0, 0x0

    .line 424
    .local v0, "row":I
    :goto_0
    invoke-virtual {p0, p1, v4, v4}, Lorg/greenrobot/greendao/AbstractDao;->loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    add-int/lit8 v0, v0, 0x1

    .line 426
    if-lt v0, v1, :cond_2

    .line 427
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->moveToNextUnlocked(Landroid/database/Cursor;)Landroid/database/CursorWindow;

    move-result-object p2

    .line 428
    if-nez p2, :cond_0

    .line 438
    :goto_1
    return-void

    .line 431
    :cond_0
    invoke-virtual {p2}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v2

    invoke-virtual {p2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    add-int v1, v2, v3

    .line 423
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1
.end method

.method private moveToNextUnlocked(Landroid/database/Cursor;)Landroid/database/CursorWindow;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 445
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    invoke-interface {v0}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->unlock()V

    .line 447
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    check-cast p1, Landroid/database/CrossProcessCursor;

    .end local p1    # "cursor":Landroid/database/Cursor;
    invoke-interface {p1}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 453
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    invoke-interface {v1}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->lock()V

    :goto_0
    return-object v0

    .line 450
    .restart local p1    # "cursor":Landroid/database/Cursor;
    :cond_0
    const/4 v0, 0x0

    .line 453
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    invoke-interface {v1}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->lock()V

    goto :goto_0

    .end local p1    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    invoke-interface {v1}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->lock()V

    throw v0
.end method


# virtual methods
.method protected assertSinglePk()V
    .locals 3

    .prologue
    .line 838
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->config:Lorg/greenrobot/greendao/internal/DaoConfig;

    iget-object v0, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->pkColumns:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 839
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/greenrobot/greendao/AbstractDao;->config:Lorg/greenrobot/greendao/internal/DaoConfig;

    iget-object v2, v2, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") does not have a single-column primary key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 841
    :cond_0
    return-void
.end method

.method protected attachEntity(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 778
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method protected final attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 1
    .param p3, "lock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;Z)V"
        }
    .end annotation

    .prologue
    .line 761
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2}, Lorg/greenrobot/greendao/AbstractDao;->attachEntity(Ljava/lang/Object;)V

    .line 762
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 763
    if-eqz p3, :cond_1

    .line 764
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    invoke-interface {v0, p1, p2}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    invoke-interface {v0, p1, p2}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->putNoLock(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteStatement;",
            "TT;)V"
        }
    .end annotation
.end method

.method protected abstract bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/DatabaseStatement;",
            "TT;)V"
        }
    .end annotation
.end method

.method public count()J
    .locals 2

    .prologue
    .line 844
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/TableStatements;->getCountStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v0

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public delete(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 550
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->assertSinglePk()V

    .line 551
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->getKeyVerified(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 552
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    .line 553
    return-void
.end method

.method public deleteAll()V
    .locals 3

    .prologue
    .line 542
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/greenrobot/greendao/AbstractDao;->config:Lorg/greenrobot/greendao/internal/DaoConfig;

    iget-object v2, v2, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    invoke-interface {v0}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->clear()V

    .line 546
    :cond_0
    return-void
.end method

.method public deleteByKey(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 557
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->assertSinglePk()V

    .line 558
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/internal/TableStatements;->getDeleteStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v0

    .line 559
    .local v0, "stmt":Lorg/greenrobot/greendao/database/DatabaseStatement;
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v1}, Lorg/greenrobot/greendao/database/Database;->isDbLockedByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    monitor-enter v0

    .line 561
    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKeyInsideSynchronized(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;)V

    .line 562
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    :goto_0
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    if-eqz v1, :cond_0

    .line 576
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    invoke-interface {v1, p1}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->remove(Ljava/lang/Object;)V

    .line 578
    :cond_0
    return-void

    .line 562
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 565
    :cond_1
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v1}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 567
    :try_start_2
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 568
    :try_start_3
    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKeyInsideSynchronized(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;)V

    .line 569
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 570
    :try_start_4
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v1}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 572
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v1}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    goto :goto_0

    .line 569
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 572
    :catchall_2
    move-exception v1

    iget-object v2, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v2}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    throw v1
.end method

.method public deleteByKeyInTx(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 659
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TK;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTxInternal(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 660
    return-void
.end method

.method public varargs deleteByKeyInTx([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)V"
        }
    .end annotation

    .prologue
    .line 668
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "keys":[Ljava/lang/Object;, "[TK;"
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTxInternal(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 669
    return-void
.end method

.method public deleteInTx(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 641
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTxInternal(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 642
    return-void
.end method

.method public varargs deleteInTx([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 650
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTxInternal(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 651
    return-void
.end method

.method public detach(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->getKeyVerified(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 176
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    invoke-interface {v1, v0, p1}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->detach(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 178
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public detachAll()V
    .locals 1

    .prologue
    .line 187
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    invoke-interface {v0}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->clear()V

    .line 190
    :cond_0
    return-void
.end method

.method public getAllColumns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->config:Lorg/greenrobot/greendao/internal/DaoConfig;

    iget-object v0, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getDatabase()Lorg/greenrobot/greendao/database/Database;
    .locals 1

    .prologue
    .line 863
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    return-object v0
.end method

.method protected abstract getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TK;"
        }
    .end annotation
.end method

.method protected getKeyVerified(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TK;"
        }
    .end annotation

    .prologue
    .line 849
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 850
    .local v0, "key":Ljava/lang/Object;, "TK;"
    if-nez v0, :cond_1

    .line 851
    if-nez p1, :cond_0

    .line 852
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Entity may not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 854
    :cond_0
    new-instance v1, Lorg/greenrobot/greendao/DaoException;

    const-string v2, "Entity has no key"

    invoke-direct {v1, v2}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 857
    :cond_1
    return-object v0
.end method

.method public getNonPkColumns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->config:Lorg/greenrobot/greendao/internal/DaoConfig;

    iget-object v0, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->nonPkColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getPkColumns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->config:Lorg/greenrobot/greendao/internal/DaoConfig;

    iget-object v0, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->pkColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getPkProperty()Lorg/greenrobot/greendao/Property;
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->config:Lorg/greenrobot/greendao/internal/DaoConfig;

    iget-object v0, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->pkProperty:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method public getProperties()[Lorg/greenrobot/greendao/Property;
    .locals 1

    .prologue
    .line 100
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->config:Lorg/greenrobot/greendao/internal/DaoConfig;

    iget-object v0, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->properties:[Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method public getSession()Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->session:Lorg/greenrobot/greendao/AbstractDaoSession;

    return-object v0
.end method

.method getStatements()Lorg/greenrobot/greendao/internal/TableStatements;
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->config:Lorg/greenrobot/greendao/internal/DaoConfig;

    iget-object v0, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    return-object v0
.end method

.method public getTablename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->config:Lorg/greenrobot/greendao/internal/DaoConfig;

    iget-object v0, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    return-object v0
.end method

.method public insert(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/TableStatements;->getInsertStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->executeInsert(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertInTx(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->isEntityUpdateable()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;Z)V

    .line 207
    return-void
.end method

.method public insertInTx(Ljava/lang/Iterable;Z)V
    .locals 2
    .param p2, "setPrimaryKey"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/internal/TableStatements;->getInsertStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v0

    .line 228
    .local v0, "stmt":Lorg/greenrobot/greendao/database/DatabaseStatement;
    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->executeInsertInTx(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Iterable;Z)V

    .line 229
    return-void
.end method

.method public varargs insertInTx([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->isEntityUpdateable()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;Z)V

    .line 216
    return-void
.end method

.method public insertOrReplace(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/TableStatements;->getInsertOrReplaceStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->executeInsert(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertOrReplaceInTx(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->isEntityUpdateable()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;Z)V

    .line 251
    return-void
.end method

.method public insertOrReplaceInTx(Ljava/lang/Iterable;Z)V
    .locals 2
    .param p2, "setPrimaryKey"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/internal/TableStatements;->getInsertOrReplaceStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v0

    .line 241
    .local v0, "stmt":Lorg/greenrobot/greendao/database/DatabaseStatement;
    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->executeInsertInTx(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Iterable;Z)V

    .line 242
    return-void
.end method

.method public varargs insertOrReplaceInTx([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->isEntityUpdateable()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;Z)V

    .line 260
    return-void
.end method

.method public insertWithoutSettingPk(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    .line 322
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/TableStatements;->getInsertOrReplaceStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->executeInsert(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract isEntityUpdateable()Z
.end method

.method public load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TT;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->assertSinglePk()V

    .line 127
    if-nez p1, :cond_1

    .line 128
    const/4 v1, 0x0

    .line 139
    :cond_0
    :goto_0
    return-object v1

    .line 130
    :cond_1
    iget-object v4, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    if-eqz v4, :cond_2

    .line 131
    iget-object v4, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    invoke-interface {v4, p1}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 132
    .local v1, "entity":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_0

    .line 136
    .end local v1    # "entity":Ljava/lang/Object;, "TT;"
    :cond_2
    iget-object v4, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    invoke-virtual {v4}, Lorg/greenrobot/greendao/internal/TableStatements;->getSelectByKey()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "sql":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 138
    .local v2, "keyArray":[Ljava/lang/String;
    iget-object v4, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v4, v3, v2}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 139
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/AbstractDao;->loadUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public loadAll()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    iget-object v2, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    invoke-virtual {v2}, Lorg/greenrobot/greendao/internal/TableStatements;->getSelectAll()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 169
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/AbstractDao;->loadAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected loadAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->loadAllFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 196
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected loadAllFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 380
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 381
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 418
    :cond_0
    :goto_0
    return-object v1

    .line 383
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 384
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v3, 0x0

    .line 385
    .local v3, "window":Landroid/database/CursorWindow;
    const/4 v2, 0x0

    .line 386
    .local v2, "useFastCursor":Z
    instance-of v4, p1, Landroid/database/CrossProcessCursor;

    if-eqz v4, :cond_2

    move-object v4, p1

    .line 387
    check-cast v4, Landroid/database/CrossProcessCursor;

    invoke-interface {v4}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v3

    .line 388
    if-eqz v3, :cond_2

    .line 389
    invoke-virtual {v3}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v4

    if-ne v4, v0, :cond_4

    .line 390
    new-instance p1, Lorg/greenrobot/greendao/internal/FastCursor;

    .end local p1    # "cursor":Landroid/database/Cursor;
    invoke-direct {p1, v3}, Lorg/greenrobot/greendao/internal/FastCursor;-><init>(Landroid/database/CursorWindow;)V

    .line 391
    .restart local p1    # "cursor":Landroid/database/Cursor;
    const/4 v2, 0x1

    .line 398
    :cond_2
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 399
    iget-object v4, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    if-eqz v4, :cond_3

    .line 400
    iget-object v4, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    invoke-interface {v4}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->lock()V

    .line 401
    iget-object v4, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    invoke-interface {v4, v0}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->reserveRoom(I)V

    .line 405
    :cond_3
    if-nez v2, :cond_5

    if-eqz v3, :cond_5

    :try_start_0
    iget-object v4, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    if-eqz v4, :cond_5

    .line 406
    invoke-direct {p0, p1, v3, v1}, Lorg/greenrobot/greendao/AbstractDao;->loadAllUnlockOnWindowBounds(Landroid/database/Cursor;Landroid/database/CursorWindow;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :goto_2
    iget-object v4, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    if-eqz v4, :cond_0

    .line 414
    iget-object v4, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    invoke-interface {v4}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->unlock()V

    goto :goto_0

    .line 393
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Window vs. result size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/greenrobot/greendao/DaoLog;->d(Ljava/lang/String;)I

    goto :goto_1

    .line 409
    :cond_5
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v4, v5}, Lorg/greenrobot/greendao/AbstractDao;->loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    .line 413
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    if-eqz v5, :cond_6

    .line 414
    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    invoke-interface {v5}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->unlock()V

    :cond_6
    throw v4
.end method

.method public loadByRowId(J)Ljava/lang/Object;
    .locals 5
    .param p1, "rowId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 144
    .local v1, "idArray":[Ljava/lang/String;
    iget-object v2, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    iget-object v3, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    invoke-virtual {v3}, Lorg/greenrobot/greendao/internal/TableStatements;->getSelectByRowId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 145
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/AbstractDao;->loadUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method protected final loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I
    .param p3, "lock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "IZ)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    const/4 v0, 0x0

    .line 459
    iget-object v4, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScopeLong:Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;

    if-eqz v4, :cond_4

    .line 460
    if-eqz p2, :cond_1

    .line 462
    iget v4, p0, Lorg/greenrobot/greendao/AbstractDao;->pkOrdinal:I

    add-int/2addr v4, p2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-object v0

    .line 467
    :cond_1
    iget v4, p0, Lorg/greenrobot/greendao/AbstractDao;->pkOrdinal:I

    add-int/2addr v4, p2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 468
    .local v2, "key":J
    if-eqz p3, :cond_2

    iget-object v4, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScopeLong:Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;

    invoke-virtual {v4, v2, v3}, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->get2(J)Ljava/lang/Object;

    move-result-object v0

    .line 469
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    :goto_1
    if-nez v0, :cond_0

    .line 472
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v0

    .line 473
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/AbstractDao;->attachEntity(Ljava/lang/Object;)V

    .line 474
    if-eqz p3, :cond_3

    .line 475
    iget-object v4, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScopeLong:Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;

    invoke-virtual {v4, v2, v3, v0}, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->put2(JLjava/lang/Object;)V

    goto :goto_0

    .line 468
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_2
    iget-object v4, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScopeLong:Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;

    invoke-virtual {v4, v2, v3}, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->get2NoLock(J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 477
    .restart local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_3
    iget-object v4, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScopeLong:Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;

    invoke-virtual {v4, v2, v3, v0}, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->put2NoLock(JLjava/lang/Object;)V

    goto :goto_0

    .line 481
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    .end local v2    # "key":J
    :cond_4
    iget-object v4, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    if-eqz v4, :cond_7

    .line 482
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v1

    .line 483
    .local v1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p2, :cond_5

    if-eqz v1, :cond_0

    .line 487
    :cond_5
    if-eqz p3, :cond_6

    iget-object v4, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    invoke-interface {v4, v1}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 488
    .restart local v0    # "entity":Ljava/lang/Object;, "TT;"
    :goto_2
    if-nez v0, :cond_0

    .line 491
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v0

    .line 492
    invoke-virtual {p0, v1, v0, p3}, Lorg/greenrobot/greendao/AbstractDao;->attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 487
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_6
    iget-object v4, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    invoke-interface {v4, v1}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->getNoLock(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 497
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_7
    if-eqz p2, :cond_8

    .line 498
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v1

    .line 499
    .restart local v1    # "key":Ljava/lang/Object;, "TK;"
    if-eqz v1, :cond_0

    .line 504
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_8
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v0

    .line 505
    .restart local v0    # "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/AbstractDao;->attachEntity(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final loadCurrentOther(Lorg/greenrobot/greendao/AbstractDao;Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TO;*>;",
            "Landroid/database/Cursor;",
            "I)TO;"
        }
    .end annotation

    .prologue
    .line 512
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TO;*>;"
    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lorg/greenrobot/greendao/AbstractDao;->loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected loadUnique(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 158
    .local v0, "available":Z
    if-nez v0, :cond_0

    .line 159
    const/4 v1, 0x0

    .line 163
    :goto_0
    return-object v1

    .line 160
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    new-instance v1, Lorg/greenrobot/greendao/DaoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected unique result, but count was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected loadUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->loadUnique(Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 152
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 719
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    invoke-static {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->internalCreate(Lorg/greenrobot/greendao/AbstractDao;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs queryRaw(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "selectionArg"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 517
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    invoke-virtual {v3}, Lorg/greenrobot/greendao/internal/TableStatements;->getSelectAll()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 518
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/AbstractDao;->loadAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public varargs queryRawCreate(Ljava/lang/String;[Ljava/lang/Object;)Lorg/greenrobot/greendao/query/Query;
    .locals 2
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "selectionArg"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/greenrobot/greendao/query/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 526
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 527
    .local v0, "argList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->queryRawCreateListArgs(Ljava/lang/String;Ljava/util/Collection;)Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    return-object v1
.end method

.method public queryRawCreateListArgs(Ljava/lang/String;Ljava/util/Collection;)Lorg/greenrobot/greendao/query/Query;
    .locals 2
    .param p1, "where"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/greenrobot/greendao/query/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 535
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p2, "selectionArg":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/internal/TableStatements;->getSelectAll()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/greenrobot/greendao/query/Query;->internalCreate(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    return-object v0
.end method

.method protected abstract readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)TT;"
        }
    .end annotation
.end method

.method protected abstract readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "TT;I)V"
        }
    .end annotation
.end method

.method protected abstract readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)TK;"
        }
    .end annotation
.end method

.method public refresh(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 673
    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->assertSinglePk()V

    .line 674
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->getKeyVerified(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 675
    .local v2, "key":Ljava/lang/Object;, "TK;"
    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    invoke-virtual {v5}, Lorg/greenrobot/greendao/internal/TableStatements;->getSelectByKey()Ljava/lang/String;

    move-result-object v4

    .line 676
    .local v4, "sql":Ljava/lang/String;
    new-array v3, v7, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    .line 677
    .local v3, "keyArray":[Ljava/lang/String;
    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v5, v4, v3}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 679
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 680
    .local v0, "available":Z
    if-nez v0, :cond_0

    .line 681
    new-instance v5, Lorg/greenrobot/greendao/DaoException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Entity does not exist in the database anymore: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    .end local v0    # "available":Z
    :catchall_0
    move-exception v5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v5

    .line 683
    .restart local v0    # "available":Z
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v5

    if-nez v5, :cond_1

    .line 684
    new-instance v5, Lorg/greenrobot/greendao/DaoException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected unique result, but count was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 686
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0, v1, p1, v5}, Lorg/greenrobot/greendao/AbstractDao;->readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V

    .line 687
    const/4 v5, 0x1

    invoke-virtual {p0, v2, p1, v5}, Lorg/greenrobot/greendao/AbstractDao;->attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 689
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 691
    return-void
.end method

.method public update(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 694
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->assertSinglePk()V

    .line 695
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/internal/TableStatements;->getUpdateStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v0

    .line 696
    .local v0, "stmt":Lorg/greenrobot/greendao/database/DatabaseStatement;
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v1}, Lorg/greenrobot/greendao/database/Database;->isDbLockedByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 697
    monitor-enter v0

    .line 698
    :try_start_0
    iget-boolean v1, p0, Lorg/greenrobot/greendao/AbstractDao;->isStandardSQLite:Z

    if-eqz v1, :cond_0

    .line 699
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->getRawStatement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->updateInsideSynchronized(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;Z)V

    .line 703
    :goto_0
    monitor-exit v0

    .line 716
    :goto_1
    return-void

    .line 701
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->updateInsideSynchronized(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;Z)V

    goto :goto_0

    .line 703
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 706
    :cond_1
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v1}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 708
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 709
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {p0, p1, v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->updateInsideSynchronized(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;Z)V

    .line 710
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 711
    :try_start_3
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v1}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 713
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v1}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    goto :goto_1

    .line 710
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 713
    :catchall_2
    move-exception v1

    iget-object v2, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v2}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    throw v1
.end method

.method public updateInTx(Ljava/lang/Iterable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 786
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    invoke-virtual {v5}, Lorg/greenrobot/greendao/internal/TableStatements;->getUpdateStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v3

    .line 787
    .local v3, "stmt":Lorg/greenrobot/greendao/database/DatabaseStatement;
    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v5}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 788
    const/4 v4, 0x0

    .line 790
    .local v4, "txEx":Ljava/lang/RuntimeException;
    :try_start_0
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 791
    :try_start_1
    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    if-eqz v5, :cond_0

    .line 792
    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    invoke-interface {v5}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 795
    :cond_0
    :try_start_2
    iget-boolean v5, p0, Lorg/greenrobot/greendao/AbstractDao;->isStandardSQLite:Z

    if-eqz v5, :cond_2

    .line 796
    invoke-interface {v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->getRawStatement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteStatement;

    .line 797
    .local v2, "rawStmt":Landroid/database/sqlite/SQLiteStatement;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 798
    .local v1, "entity":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x0

    invoke-virtual {p0, v1, v2, v6}, Lorg/greenrobot/greendao/AbstractDao;->updateInsideSynchronized(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 806
    .end local v1    # "entity":Ljava/lang/Object;, "TT;"
    .end local v2    # "rawStmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_0
    move-exception v5

    :try_start_3
    iget-object v6, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    if-eqz v6, :cond_1

    .line 807
    iget-object v6, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    invoke-interface {v6}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->unlock()V

    :cond_1
    throw v5

    .line 810
    :catchall_1
    move-exception v5

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 812
    :catch_0
    move-exception v0

    .line 813
    .local v0, "e":Ljava/lang/RuntimeException;
    move-object v4, v0

    .line 816
    :try_start_5
    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v5}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 826
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-void

    .line 801
    :cond_2
    :try_start_6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 802
    .restart local v1    # "entity":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x0

    invoke-virtual {p0, v1, v3, v6}, Lorg/greenrobot/greendao/AbstractDao;->updateInsideSynchronized(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 806
    .end local v1    # "entity":Ljava/lang/Object;, "TT;"
    :cond_3
    :try_start_7
    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    if-eqz v5, :cond_4

    .line 807
    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    invoke-interface {v5}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->unlock()V

    .line 810
    :cond_4
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 811
    :try_start_8
    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v5}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 816
    :try_start_9
    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v5}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1

    .line 817
    :catch_1
    move-exception v0

    .line 818
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    if-eqz v4, :cond_5

    .line 819
    const-string v5, "Could not end transaction (rethrowing initial exception)"

    invoke-static {v5, v0}, Lorg/greenrobot/greendao/DaoLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 820
    throw v4

    .line 822
    :cond_5
    throw v0

    .line 817
    :catch_2
    move-exception v0

    .line 818
    if-eqz v4, :cond_6

    .line 819
    const-string v5, "Could not end transaction (rethrowing initial exception)"

    invoke-static {v5, v0}, Lorg/greenrobot/greendao/DaoLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 820
    throw v4

    .line 822
    :cond_6
    throw v0

    .line 815
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v5

    .line 816
    :try_start_a
    iget-object v6, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v6}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3

    .line 822
    throw v5

    .line 817
    :catch_3
    move-exception v0

    .line 818
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    if-eqz v4, :cond_7

    .line 819
    const-string v5, "Could not end transaction (rethrowing initial exception)"

    invoke-static {v5, v0}, Lorg/greenrobot/greendao/DaoLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 820
    throw v4

    .line 822
    :cond_7
    throw v0
.end method

.method public varargs updateInTx([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 834
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/AbstractDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 835
    return-void
.end method

.method protected updateInsideSynchronized(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;Z)V
    .locals 4
    .param p2, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p3, "lock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteStatement;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 740
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2, p1}, Lorg/greenrobot/greendao/AbstractDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 741
    iget-object v2, p0, Lorg/greenrobot/greendao/AbstractDao;->config:Lorg/greenrobot/greendao/internal/DaoConfig;

    iget-object v2, v2, Lorg/greenrobot/greendao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v0, v2, 0x1

    .line 742
    .local v0, "index":I
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 743
    .local v1, "key":Ljava/lang/Object;, "TK;"
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 744
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 750
    :goto_0
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 751
    invoke-virtual {p0, v1, p1, p3}, Lorg/greenrobot/greendao/AbstractDao;->attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 752
    return-void

    .line 745
    :cond_0
    if-nez v1, :cond_1

    .line 746
    new-instance v2, Lorg/greenrobot/greendao/DaoException;

    const-string v3, "Cannot update entity without key - was it inserted before?"

    invoke-direct {v2, v3}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 748
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected updateInsideSynchronized(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;Z)V
    .locals 4
    .param p2, "stmt"    # Lorg/greenrobot/greendao/database/DatabaseStatement;
    .param p3, "lock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/greenrobot/greendao/database/DatabaseStatement;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 724
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2, p1}, Lorg/greenrobot/greendao/AbstractDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V

    .line 725
    iget-object v2, p0, Lorg/greenrobot/greendao/AbstractDao;->config:Lorg/greenrobot/greendao/internal/DaoConfig;

    iget-object v2, v2, Lorg/greenrobot/greendao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v0, v2, 0x1

    .line 726
    .local v0, "index":I
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 727
    .local v1, "key":Ljava/lang/Object;, "TK;"
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 728
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p2, v0, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 734
    :goto_0
    invoke-interface {p2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->execute()V

    .line 735
    invoke-virtual {p0, v1, p1, p3}, Lorg/greenrobot/greendao/AbstractDao;->attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 736
    return-void

    .line 729
    :cond_0
    if-nez v1, :cond_1

    .line 730
    new-instance v2, Lorg/greenrobot/greendao/DaoException;

    const-string v3, "Cannot update entity without key - was it inserted before?"

    invoke-direct {v2, v3}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 732
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)TK;"
        }
    .end annotation
.end method

.method protected updateKeyAfterInsertAndAttach(Ljava/lang/Object;JZ)V
    .locals 4
    .param p2, "rowId"    # J
    .param p4, "lock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JZ)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "this":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    const-wide/16 v2, -0x1

    cmp-long v1, p2, v2

    if-eqz v1, :cond_0

    .line 369
    invoke-virtual {p0, p1, p2, p3}, Lorg/greenrobot/greendao/AbstractDao;->updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 370
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v0, p1, p4}, Lorg/greenrobot/greendao/AbstractDao;->attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 375
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    :goto_0
    return-void

    .line 373
    :cond_0
    const-string v1, "Could not insert row (executeInsert returned -1)"

    invoke-static {v1}, Lorg/greenrobot/greendao/DaoLog;->w(Ljava/lang/String;)I

    goto :goto_0
.end method
