.class public final Lorg/xutils/db/DbManagerImpl;
.super Lorg/xutils/db/table/DbBase;
.source "DbManagerImpl.java"


# static fields
.field private static final DAO_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/xutils/DbManager$DaoConfig;",
            "Lorg/xutils/db/DbManagerImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allowTransaction:Z

.field private daoConfig:Lorg/xutils/DbManager$DaoConfig;

.field private database:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/xutils/db/DbManagerImpl;->DAO_MAP:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lorg/xutils/DbManager$DaoConfig;)V
    .locals 3
    .param p1, "config"    # Lorg/xutils/DbManager$DaoConfig;

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/xutils/db/table/DbBase;-><init>()V

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "daoConfig may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_0
    iput-object p1, p0, Lorg/xutils/db/DbManagerImpl;->daoConfig:Lorg/xutils/DbManager$DaoConfig;

    .line 61
    invoke-virtual {p1}, Lorg/xutils/DbManager$DaoConfig;->isAllowTransaction()Z

    move-result v1

    iput-boolean v1, p0, Lorg/xutils/db/DbManagerImpl;->allowTransaction:Z

    .line 62
    invoke-direct {p0, p1}, Lorg/xutils/db/DbManagerImpl;->openOrCreateDatabase(Lorg/xutils/DbManager$DaoConfig;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 63
    invoke-virtual {p1}, Lorg/xutils/DbManager$DaoConfig;->getDbOpenListener()Lorg/xutils/DbManager$DbOpenListener;

    move-result-object v0

    .line 64
    .local v0, "dbOpenListener":Lorg/xutils/DbManager$DbOpenListener;
    if-eqz v0, :cond_1

    .line 65
    invoke-interface {v0, p0}, Lorg/xutils/DbManager$DbOpenListener;->onDbOpened(Lorg/xutils/DbManager;)V

    .line 67
    :cond_1
    return-void
.end method

.method private beginTransaction()V
    .locals 2

    .prologue
    .line 478
    iget-boolean v0, p0, Lorg/xutils/db/DbManagerImpl;->allowTransaction:Z

    if-eqz v0, :cond_0

    .line 479
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto :goto_0
.end method

.method private endTransaction()V
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Lorg/xutils/db/DbManagerImpl;->allowTransaction:Z

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 497
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;
    .locals 8
    .param p0, "daoConfig"    # Lorg/xutils/DbManager$DaoConfig;

    .prologue
    .line 71
    const-class v7, Lorg/xutils/db/DbManagerImpl;

    monitor-enter v7

    if-nez p0, :cond_0

    .line 72
    :try_start_0
    new-instance p0, Lorg/xutils/DbManager$DaoConfig;

    .end local p0    # "daoConfig":Lorg/xutils/DbManager$DaoConfig;
    invoke-direct {p0}, Lorg/xutils/DbManager$DaoConfig;-><init>()V

    .line 75
    .restart local p0    # "daoConfig":Lorg/xutils/DbManager$DaoConfig;
    :cond_0
    sget-object v6, Lorg/xutils/db/DbManagerImpl;->DAO_MAP:Ljava/util/HashMap;

    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/db/DbManagerImpl;

    .line 76
    .local v0, "dao":Lorg/xutils/db/DbManagerImpl;
    if-nez v0, :cond_3

    .line 77
    new-instance v0, Lorg/xutils/db/DbManagerImpl;

    .end local v0    # "dao":Lorg/xutils/db/DbManagerImpl;
    invoke-direct {v0, p0}, Lorg/xutils/db/DbManagerImpl;-><init>(Lorg/xutils/DbManager$DaoConfig;)V

    .line 78
    .restart local v0    # "dao":Lorg/xutils/db/DbManagerImpl;
    sget-object v6, Lorg/xutils/db/DbManagerImpl;->DAO_MAP:Ljava/util/HashMap;

    invoke-virtual {v6, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :goto_0
    iget-object v1, v0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 85
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    .line 86
    .local v4, "oldVersion":I
    invoke-virtual {p0}, Lorg/xutils/DbManager$DaoConfig;->getDbVersion()I

    move-result v3

    .line 87
    .local v3, "newVersion":I
    if-eq v4, v3, :cond_2

    .line 88
    if-eqz v4, :cond_1

    .line 89
    invoke-virtual {p0}, Lorg/xutils/DbManager$DaoConfig;->getDbUpgradeListener()Lorg/xutils/DbManager$DbUpgradeListener;

    move-result-object v5

    .line 90
    .local v5, "upgradeListener":Lorg/xutils/DbManager$DbUpgradeListener;
    if-eqz v5, :cond_4

    .line 91
    invoke-interface {v5, v0, v4, v3}, Lorg/xutils/DbManager$DbUpgradeListener;->onUpgrade(Lorg/xutils/DbManager;II)V

    .line 100
    .end local v5    # "upgradeListener":Lorg/xutils/DbManager$DbUpgradeListener;
    :cond_1
    :goto_1
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_2
    monitor-exit v7

    return-object v0

    .line 80
    .end local v1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "newVersion":I
    .end local v4    # "oldVersion":I
    :cond_3
    :try_start_1
    iput-object p0, v0, Lorg/xutils/db/DbManagerImpl;->daoConfig:Lorg/xutils/DbManager$DaoConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    .end local v0    # "dao":Lorg/xutils/db/DbManagerImpl;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 94
    .restart local v0    # "dao":Lorg/xutils/db/DbManagerImpl;
    .restart local v1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "newVersion":I
    .restart local v4    # "oldVersion":I
    .restart local v5    # "upgradeListener":Lorg/xutils/DbManager$DbUpgradeListener;
    :cond_4
    :try_start_2
    invoke-virtual {v0}, Lorg/xutils/db/DbManagerImpl;->dropDb()V
    :try_end_2
    .catch Lorg/xutils/ex/DbException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 95
    :catch_0
    move-exception v2

    .line 96
    .local v2, "e":Lorg/xutils/ex/DbException;
    :try_start_3
    invoke-virtual {v2}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private getLastAutoIncrementId(Ljava/lang/String;)J
    .locals 6
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 451
    const-wide/16 v2, -0x1

    .line 452
    .local v2, "id":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT seq FROM sqlite_sequence WHERE name=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' LIMIT 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 453
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 455
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 456
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 461
    :cond_0
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 464
    :cond_1
    return-wide v2

    .line 458
    :catch_0
    move-exception v1

    .line 459
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    new-instance v4, Lorg/xutils/ex/DbException;

    invoke-direct {v4, v1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    throw v4
.end method

.method private openOrCreateDatabase(Lorg/xutils/DbManager$DaoConfig;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 7
    .param p1, "config"    # Lorg/xutils/DbManager$DaoConfig;

    .prologue
    const/4 v6, 0x0

    .line 406
    const/4 v2, 0x0

    .line 408
    .local v2, "result":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Lorg/xutils/DbManager$DaoConfig;->getDbDir()Ljava/io/File;

    move-result-object v0

    .line 409
    .local v0, "dbDir":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 410
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lorg/xutils/DbManager$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 411
    .local v1, "dbFile":Ljava/io/File;
    invoke-static {v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 415
    .end local v1    # "dbFile":Ljava/io/File;
    :goto_0
    return-object v2

    .line 413
    :cond_1
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {p1}, Lorg/xutils/DbManager$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/Application;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    goto :goto_0
.end method

.method private saveBindingIdWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Z
    .locals 6
    .param p2, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .local p1, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    const/4 v1, 0x1

    .line 433
    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->getId()Lorg/xutils/db/table/ColumnEntity;

    move-result-object v0

    .line 434
    .local v0, "id":Lorg/xutils/db/table/ColumnEntity;
    invoke-virtual {v0}, Lorg/xutils/db/table/ColumnEntity;->isAutoId()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 435
    invoke-static {p1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 436
    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/xutils/db/DbManagerImpl;->getLastAutoIncrementId(Ljava/lang/String;)J

    move-result-wide v2

    .line 437
    .local v2, "idValue":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 438
    const/4 v1, 0x0

    .line 444
    .end local v2    # "idValue":J
    :goto_0
    return v1

    .line 440
    .restart local v2    # "idValue":J
    :cond_0
    invoke-virtual {v0, p2, v2, v3}, Lorg/xutils/db/table/ColumnEntity;->setAutoIdValue(Ljava/lang/Object;J)V

    goto :goto_0

    .line 443
    .end local v2    # "idValue":J
    :cond_1
    invoke-static {p1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    goto :goto_0
.end method

.method private saveOrUpdateWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)V
    .locals 2
    .param p2, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 420
    .local p1, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->getId()Lorg/xutils/db/table/ColumnEntity;

    move-result-object v0

    .line 421
    .local v0, "id":Lorg/xutils/db/table/ColumnEntity;
    invoke-virtual {v0}, Lorg/xutils/db/table/ColumnEntity;->isAutoId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    invoke-virtual {v0, p2}, Lorg/xutils/db/table/ColumnEntity;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 423
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;[Ljava/lang/String;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 430
    :goto_0
    return-void

    .line 425
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/xutils/db/DbManagerImpl;->saveBindingIdWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Z

    goto :goto_0

    .line 428
    :cond_1
    invoke-static {p1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildReplaceSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    goto :goto_0
.end method

.method private setTransactionSuccessful()V
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lorg/xutils/db/DbManagerImpl;->allowTransaction:Z

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 491
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 469
    sget-object v0, Lorg/xutils/db/DbManagerImpl;->DAO_MAP:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/xutils/db/DbManagerImpl;->daoConfig:Lorg/xutils/DbManager$DaoConfig;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    sget-object v0, Lorg/xutils/db/DbManagerImpl;->DAO_MAP:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/xutils/db/DbManagerImpl;->daoConfig:Lorg/xutils/DbManager$DaoConfig;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 473
    :cond_0
    return-void
.end method

.method public delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I
    .locals 3
    .param p2, "whereBuilder"    # Lorg/xutils/db/sqlite/WhereBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/xutils/db/sqlite/WhereBuilder;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v1

    .line 270
    .local v1, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {v1}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 281
    :goto_0
    return v0

    .line 271
    :cond_0
    const/4 v0, 0x0

    .line 273
    .local v0, "result":I
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 275
    invoke-static {v1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfo(Lorg/xutils/db/table/TableEntity;Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/xutils/db/DbManagerImpl;->executeUpdateDelete(Lorg/xutils/db/sqlite/SqlInfo;)I

    move-result v0

    .line 277
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    throw v2
.end method

.method public delete(Ljava/lang/Class;)V
    .locals 1
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
    .line 264
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/xutils/db/DbManagerImpl;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I

    .line 265
    return-void
.end method

.method public delete(Ljava/lang/Object;)V
    .locals 6
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 240
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 242
    instance-of v4, p1, Ljava/util/List;

    if-eqz v4, :cond_2

    .line 243
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 244
    .local v1, "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 258
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 260
    .end local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_0
    return-void

    .line 245
    .restart local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v3

    .line 246
    .local v3, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {v3}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 258
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_0

    .line 247
    :cond_1
    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 248
    .local v2, "item":Ljava/lang/Object;
    invoke-static {v3, v2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 258
    .end local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "item":Ljava/lang/Object;
    .end local v3    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    :catchall_0
    move-exception v4

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    throw v4

    .line 251
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v3

    .line 252
    .restart local v3    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {v3}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-nez v4, :cond_3

    .line 258
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_0

    .line 253
    :cond_3
    :try_start_4
    invoke-static {v3, p1}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 256
    :cond_4
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 258
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_0
.end method

.method public deleteById(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .param p2, "idValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 225
    .local v0, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 227
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 229
    invoke-static {v0, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfoById(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 231
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    throw v1
.end method

.method public execNonQuery(Ljava/lang/String;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 560
    :try_start_0
    iget-object v1, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    return-void

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-direct {v1, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V
    .locals 5
    .param p1, "sqlInfo"    # Lorg/xutils/db/sqlite/SqlInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 540
    const/4 v2, 0x0

    .line 542
    .local v2, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    iget-object v3, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v3}, Lorg/xutils/db/sqlite/SqlInfo;->buildStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 543
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    if-eqz v2, :cond_0

    .line 549
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 550
    :catch_0
    move-exception v1

    .line 551
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 544
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v3, Lorg/xutils/ex/DbException;

    invoke-direct {v3, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 547
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 549
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 552
    :cond_1
    :goto_1
    throw v3

    .line 550
    :catch_2
    move-exception v1

    .line 551
    .restart local v1    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public execQuery(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 578
    :try_start_0
    iget-object v1, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-direct {v1, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public execQuery(Lorg/xutils/db/sqlite/SqlInfo;)Landroid/database/Cursor;
    .locals 4
    .param p1, "sqlInfo"    # Lorg/xutils/db/sqlite/SqlInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 569
    :try_start_0
    iget-object v1, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lorg/xutils/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/xutils/db/sqlite/SqlInfo;->getBindArgsAsStrArray()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-direct {v1, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public executeUpdateDelete(Ljava/lang/String;)I
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 521
    const/4 v2, 0x0

    .line 523
    .local v2, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    iget-object v3, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 524
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 528
    if-eqz v2, :cond_0

    .line 530
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 533
    :cond_0
    :goto_0
    return v3

    .line 531
    :catch_0
    move-exception v1

    .line 532
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 525
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 526
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v3, Lorg/xutils/ex/DbException;

    invoke-direct {v3, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 528
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 530
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 533
    :cond_1
    :goto_1
    throw v3

    .line 531
    :catch_2
    move-exception v1

    .line 532
    .restart local v1    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public executeUpdateDelete(Lorg/xutils/db/sqlite/SqlInfo;)I
    .locals 5
    .param p1, "sqlInfo"    # Lorg/xutils/db/sqlite/SqlInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 502
    const/4 v2, 0x0

    .line 504
    .local v2, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    iget-object v3, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v3}, Lorg/xutils/db/sqlite/SqlInfo;->buildStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 505
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 509
    if-eqz v2, :cond_0

    .line 511
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 514
    :cond_0
    :goto_0
    return v3

    .line 512
    :catch_0
    move-exception v1

    .line 513
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 506
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v3, Lorg/xutils/ex/DbException;

    invoke-direct {v3, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 509
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 511
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 514
    :cond_1
    :goto_1
    throw v3

    .line 512
    :catch_2
    move-exception v1

    .line 513
    .restart local v1    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public findAll(Ljava/lang/Class;)Ljava/util/List;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 359
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findById(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p2, "idValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    .line 331
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v4

    .line 332
    .local v4, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<TT;>;"
    invoke-virtual {v4}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z

    move-result v6

    if-nez v6, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-object v5

    .line 334
    :cond_1
    invoke-static {v4}, Lorg/xutils/db/Selector;->from(Lorg/xutils/db/table/TableEntity;)Lorg/xutils/db/Selector;

    move-result-object v6

    invoke-virtual {v4}, Lorg/xutils/db/table/TableEntity;->getId()Lorg/xutils/db/table/ColumnEntity;

    move-result-object v7

    invoke-virtual {v7}, Lorg/xutils/db/table/ColumnEntity;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v6, v7, v8, p2}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v2

    .line 336
    .local v2, "selector":Lorg/xutils/db/Selector;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xutils/db/Selector;->toString()Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, "sql":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/xutils/db/DbManagerImpl;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 338
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 340
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 341
    invoke-static {v4, v0}, Lorg/xutils/db/CursorUtils;->getEntity(Lorg/xutils/db/table/TableEntity;Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 346
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    .line 343
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    new-instance v5, Lorg/xutils/ex/DbException;

    invoke-direct {v5, v1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    throw v5
.end method

.method public findDbModelAll(Lorg/xutils/db/sqlite/SqlInfo;)Ljava/util/List;
    .locals 4
    .param p1, "sqlInfo"    # Lorg/xutils/db/sqlite/SqlInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/sqlite/SqlInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/xutils/db/table/DbModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 386
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v1, "dbModelList":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/db/table/DbModel;>;"
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execQuery(Lorg/xutils/db/sqlite/SqlInfo;)Landroid/database/Cursor;

    move-result-object v0

    .line 389
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 391
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 392
    invoke-static {v0}, Lorg/xutils/db/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lorg/xutils/db/table/DbModel;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 394
    :catch_0
    move-exception v2

    .line 395
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    new-instance v3, Lorg/xutils/ex/DbException;

    invoke-direct {v3, v2}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    throw v3

    :cond_0
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 400
    :cond_1
    return-object v1
.end method

.method public findDbModelFirst(Lorg/xutils/db/sqlite/SqlInfo;)Lorg/xutils/db/table/DbModel;
    .locals 3
    .param p1, "sqlInfo"    # Lorg/xutils/db/sqlite/SqlInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execQuery(Lorg/xutils/db/sqlite/SqlInfo;)Landroid/database/Cursor;

    move-result-object v0

    .line 370
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 372
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    invoke-static {v0}, Lorg/xutils/db/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lorg/xutils/db/table/DbModel;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 378
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 381
    :goto_0
    return-object v2

    .line 378
    :cond_0
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 381
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 375
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    new-instance v2, Lorg/xutils/ex/DbException;

    invoke-direct {v2, v1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    throw v2
.end method

.method public findFirst(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 354
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDaoConfig()Lorg/xutils/DbManager$DaoConfig;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->daoConfig:Lorg/xutils/DbManager$DaoConfig;

    return-object v0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public replace(Ljava/lang/Object;)V
    .locals 6
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 146
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 148
    instance-of v4, p1, Ljava/util/List;

    if-eqz v4, :cond_1

    .line 149
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 150
    .local v1, "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 166
    .end local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_0
    return-void

    .line 151
    .restart local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v3

    .line 152
    .local v3, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {p0, v3}, Lorg/xutils/db/DbManagerImpl;->createTableIfNotExist(Lorg/xutils/db/table/TableEntity;)V

    .line 153
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 154
    .local v2, "item":Ljava/lang/Object;
    invoke-static {v3, v2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildReplaceSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 164
    .end local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "item":Ljava/lang/Object;
    .end local v3    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    :catchall_0
    move-exception v4

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    throw v4

    .line 157
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v3

    .line 158
    .restart local v3    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {p0, v3}, Lorg/xutils/db/DbManagerImpl;->createTableIfNotExist(Lorg/xutils/db/table/TableEntity;)V

    .line 159
    invoke-static {v3, p1}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildReplaceSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 162
    :cond_2
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_0
.end method

.method public save(Ljava/lang/Object;)V
    .locals 6
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 171
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 173
    instance-of v4, p1, Ljava/util/List;

    if-eqz v4, :cond_1

    .line 174
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 175
    .local v1, "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 191
    .end local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_0
    return-void

    .line 176
    .restart local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v3

    .line 177
    .local v3, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {p0, v3}, Lorg/xutils/db/DbManagerImpl;->createTableIfNotExist(Lorg/xutils/db/table/TableEntity;)V

    .line 178
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 179
    .local v2, "item":Ljava/lang/Object;
    invoke-static {v3, v2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 189
    .end local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "item":Ljava/lang/Object;
    .end local v3    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    :catchall_0
    move-exception v4

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    throw v4

    .line 182
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v3

    .line 183
    .restart local v3    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {p0, v3}, Lorg/xutils/db/DbManagerImpl;->createTableIfNotExist(Lorg/xutils/db/table/TableEntity;)V

    .line 184
    invoke-static {v3, p1}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 187
    :cond_2
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_0
.end method

.method public saveBindingId(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 195
    const/4 v3, 0x0

    .line 197
    .local v3, "result":Z
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 199
    instance-of v6, p1, Ljava/util/List;

    if-eqz v6, :cond_2

    .line 200
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 201
    .local v1, "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    .line 217
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 219
    .end local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_0
    return v5

    .line 202
    .restart local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v4

    .line 203
    .local v4, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->createTableIfNotExist(Lorg/xutils/db/table/TableEntity;)V

    .line 204
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 205
    .local v2, "item":Ljava/lang/Object;
    invoke-direct {p0, v4, v2}, Lorg/xutils/db/DbManagerImpl;->saveBindingIdWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 206
    new-instance v5, Lorg/xutils/ex/DbException;

    const-string v6, "saveBindingId error, transaction will not commit!"

    invoke-direct {v5, v6}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    .end local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "item":Ljava/lang/Object;
    .end local v4    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    :catchall_0
    move-exception v5

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    throw v5

    .line 210
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v4

    .line 211
    .restart local v4    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->createTableIfNotExist(Lorg/xutils/db/table/TableEntity;)V

    .line 212
    invoke-direct {p0, v4, p1}, Lorg/xutils/db/DbManagerImpl;->saveBindingIdWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Z

    move-result v3

    .line 215
    :cond_3
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    move v5, v3

    .line 219
    goto :goto_0
.end method

.method public saveOrUpdate(Ljava/lang/Object;)V
    .locals 6
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 121
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 123
    instance-of v4, p1, Ljava/util/List;

    if-eqz v4, :cond_1

    .line 124
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 125
    .local v1, "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 141
    .end local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_0
    return-void

    .line 126
    .restart local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v3

    .line 127
    .local v3, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {p0, v3}, Lorg/xutils/db/DbManagerImpl;->createTableIfNotExist(Lorg/xutils/db/table/TableEntity;)V

    .line 128
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 129
    .local v2, "item":Ljava/lang/Object;
    invoke-direct {p0, v3, v2}, Lorg/xutils/db/DbManagerImpl;->saveOrUpdateWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 139
    .end local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "item":Ljava/lang/Object;
    .end local v3    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    :catchall_0
    move-exception v4

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    throw v4

    .line 132
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v3

    .line 133
    .restart local v3    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {p0, v3}, Lorg/xutils/db/DbManagerImpl;->createTableIfNotExist(Lorg/xutils/db/table/TableEntity;)V

    .line 134
    invoke-direct {p0, v3, p1}, Lorg/xutils/db/DbManagerImpl;->saveOrUpdateWithoutTransaction(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)V

    .line 137
    :cond_2
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_0
.end method

.method public selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/xutils/db/Selector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/db/Selector;->from(Lorg/xutils/db/table/TableEntity;)Lorg/xutils/db/Selector;

    move-result-object v0

    return-object v0
.end method

.method public varargs update(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;[Lorg/xutils/common/util/KeyValue;)I
    .locals 3
    .param p2, "whereBuilder"    # Lorg/xutils/db/sqlite/WhereBuilder;
    .param p3, "nameValuePairs"    # [Lorg/xutils/common/util/KeyValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/xutils/db/sqlite/WhereBuilder;",
            "[",
            "Lorg/xutils/common/util/KeyValue;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 311
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v1

    .line 312
    .local v1, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {v1}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 325
    :goto_0
    return v0

    .line 314
    :cond_0
    const/4 v0, 0x0

    .line 316
    .local v0, "result":I
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 318
    invoke-static {v1, p2, p3}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lorg/xutils/db/table/TableEntity;Lorg/xutils/db/sqlite/WhereBuilder;[Lorg/xutils/common/util/KeyValue;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/xutils/db/DbManagerImpl;->executeUpdateDelete(Lorg/xutils/db/sqlite/SqlInfo;)I

    move-result v0

    .line 320
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    throw v2
.end method

.method public varargs update(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 6
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "updateColumnNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 287
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->beginTransaction()V

    .line 289
    instance-of v4, p1, Ljava/util/List;

    if-eqz v4, :cond_2

    .line 290
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 291
    .local v1, "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 305
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    .line 307
    .end local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_0
    return-void

    .line 292
    .restart local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v3

    .line 293
    .local v3, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {v3}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 305
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_0

    .line 294
    :cond_1
    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 295
    .local v2, "item":Ljava/lang/Object;
    invoke-static {v3, v2, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;[Ljava/lang/String;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 305
    .end local v1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "item":Ljava/lang/Object;
    .end local v3    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    :catchall_0
    move-exception v4

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    throw v4

    .line 298
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v3

    .line 299
    .restart local v3    # "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {v3}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-nez v4, :cond_3

    .line 305
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_0

    .line 300
    :cond_3
    :try_start_4
    invoke-static {v3, p1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;[Ljava/lang/String;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 303
    :cond_4
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 305
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->endTransaction()V

    goto :goto_0
.end method
