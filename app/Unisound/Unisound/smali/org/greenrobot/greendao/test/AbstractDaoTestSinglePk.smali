.class public abstract Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;
.super Lorg/greenrobot/greendao/test/AbstractDaoTest;
.source "AbstractDaoTestSinglePk.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/greenrobot/greendao/AbstractDao",
        "<TT;TK;>;T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/greenrobot/greendao/test/AbstractDaoTest",
        "<TD;TT;TK;>;"
    }
.end annotation


# instance fields
.field private pkColumn:Lorg/greenrobot/greendao/Property;

.field protected usedPks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    .local p1, "daoClass":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/test/AbstractDaoTest;-><init>(Ljava/lang/Class;)V

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->usedPks:Ljava/util/Set;

    .line 47
    return-void
.end method


# virtual methods
.method protected abstract createEntity(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TT;"
        }
    .end annotation
.end method

.method protected createEntityWithRandomPk()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createRandomPk()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

.method protected nextPk()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const v2, 0x186a0

    if-ge v0, v2, :cond_1

    .line 310
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createRandomPk()Ljava/lang/Object;

    move-result-object v1

    .line 311
    .local v1, "pk":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->usedPks:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    return-object v1

    .line 309
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    .end local v1    # "pk":Ljava/lang/Object;, "TK;"
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not find a new PK"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected queryWithDummyColumnsInFront(ILjava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 9
    .param p1, "dummyCount"    # I
    .param p2, "valueForColumn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TK;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    .local p3, "pk":Ljava/lang/Object;, "TK;"
    const/16 v8, 0x22

    const/4 v7, 0x1

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "SELECT "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_0

    .line 278
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 280
    :cond_0
    const-string v5, "T"

    iget-object v6, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v6}, Lorg/greenrobot/greendao/AbstractDao;->getAllColumns()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lorg/greenrobot/greendao/internal/SqlUtils;->appendColumns(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " FROM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v6}, Lorg/greenrobot/greendao/AbstractDao;->getTablename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " T"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    if-eqz p3, :cond_1

    .line 283
    const-string v5, " WHERE "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    iget-object v5, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v5}, Lorg/greenrobot/greendao/AbstractDao;->getPkColumns()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    invoke-static {v7, v5}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertEquals(II)V

    .line 286
    iget-object v5, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v5}, Lorg/greenrobot/greendao/AbstractDao;->getPkColumns()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-static {v0, p3}, Landroid/database/DatabaseUtils;->appendValueToSql(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 290
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, "select":Ljava/lang/String;
    iget-object v5, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->db:Lorg/greenrobot/greendao/database/Database;

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 292
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    invoke-static {v5}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertTrue(Z)V

    .line 294
    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_2

    .line 295
    :try_start_0
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 297
    :cond_2
    if-eqz p3, :cond_3

    .line 298
    const/4 v5, 0x1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-static {v5, v6}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertEquals(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :cond_3
    return-object v1

    .line 300
    :catch_0
    move-exception v2

    .line 301
    .local v2, "ex":Ljava/lang/RuntimeException;
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 302
    throw v2
.end method

.method protected runLoadPkTest(I)V
    .locals 5
    .param p1, "offset"    # I

    .prologue
    .line 262
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    move-result-object v2

    .line 263
    .local v2, "pk":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v2}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 264
    .local v1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v4, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 266
    const-string v4, "42"

    invoke-virtual {p0, p1, v4, v2}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->queryWithDummyColumnsInFront(ILjava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    .line 268
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    invoke-virtual {v4, v0, p1}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->readKey(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v3

    .line 269
    .local v3, "pk2":Ljava/lang/Object;, "TK;"
    invoke-static {v2, v3}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 273
    return-void

    .line 271
    .end local v3    # "pk2":Ljava/lang/Object;, "TK;"
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method protected setUp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    invoke-super {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTest;->setUp()V

    .line 52
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    invoke-virtual {v2}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getProperties()[Lorg/greenrobot/greendao/Property;

    move-result-object v1

    .line 53
    .local v1, "columns":[Lorg/greenrobot/greendao/Property;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 54
    .local v0, "column":Lorg/greenrobot/greendao/Property;
    iget-boolean v4, v0, Lorg/greenrobot/greendao/Property;->primaryKey:Z

    if-eqz v4, :cond_1

    .line 55
    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->pkColumn:Lorg/greenrobot/greendao/Property;

    if-eqz v4, :cond_0

    .line 56
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Test does not work with multiple PK columns"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_0
    iput-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->pkColumn:Lorg/greenrobot/greendao/Property;

    .line 53
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "column":Lorg/greenrobot/greendao/Property;
    :cond_2
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->pkColumn:Lorg/greenrobot/greendao/Property;

    if-nez v2, :cond_3

    .line 62
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Test does not work without a PK column"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_3
    return-void
.end method

.method public testCount()V
    .locals 4

    .prologue
    .line 87
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 88
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertEquals(JJ)V

    .line 89
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 90
    const-wide/16 v0, 0x1

    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertEquals(JJ)V

    .line 91
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 92
    const-wide/16 v0, 0x2

    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertEquals(JJ)V

    .line 93
    return-void
.end method

.method public testDelete()V
    .locals 3

    .prologue
    .line 133
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    move-result-object v1

    .line 134
    .local v1, "pk":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    .line 135
    invoke-virtual {p0, v1}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 136
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 137
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertNotNull(Ljava/lang/Object;)V

    .line 138
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    .line 139
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertNull(Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method public testDeleteAll()V
    .locals 8

    .prologue
    .line 143
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v1, "entityList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v4, 0xa

    if-ge v2, v4, :cond_0

    .line 145
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v0

    .line 146
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v4, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 149
    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v4}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 150
    const-wide/16 v4, 0x0

    iget-object v6, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v6}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertEquals(JJ)V

    .line 151
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 152
    .restart local v0    # "entity":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    invoke-virtual {v5, v0}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 153
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-static {v3}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertNotNull(Ljava/lang/Object;)V

    .line 154
    iget-object v5, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v5, v3}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertNull(Ljava/lang/Object;)V

    goto :goto_1

    .line 156
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    return-void
.end method

.method public testDeleteByKeyInTx()V
    .locals 10

    .prologue
    .line 180
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v1, "entityList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v5, 0xa

    if-ge v2, v5, :cond_0

    .line 182
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v0

    .line 183
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    iget-object v5, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v5, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 186
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v4, "keysToDelete":Ljava/util/List;, "Ljava/util/List<TK;>;"
    iget-object v5, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v5, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    const/4 v6, 0x3

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v5, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    const/4 v6, 0x4

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v5, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    const/16 v6, 0x8

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v5, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v5, v4}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKeyInTx(Ljava/lang/Iterable;)V

    .line 192
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-long v6, v5

    iget-object v5, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v5}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertEquals(JJ)V

    .line 193
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 194
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-static {v3}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertNotNull(Ljava/lang/Object;)V

    .line 195
    iget-object v6, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v6, v3}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertNull(Ljava/lang/Object;)V

    goto :goto_1

    .line 197
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    return-void
.end method

.method public testDeleteInTx()V
    .locals 10

    .prologue
    .line 159
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v3, "entityList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v6, 0xa

    if-ge v4, v6, :cond_0

    .line 161
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v2

    .line 162
    .local v2, "entity":Ljava/lang/Object;, "TT;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 164
    .end local v2    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    iget-object v6, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v6, v3}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v1, "entitiesToDelete":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    const/4 v6, 0x3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    const/4 v6, 0x4

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    const/16 v6, 0x8

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v6, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v6, v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTx(Ljava/lang/Iterable;)V

    .line 171
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-long v6, v6

    iget-object v8, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v8}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertEquals(JJ)V

    .line 172
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 173
    .local v0, "deletedEntity":Ljava/lang/Object;, "TT;"
    iget-object v7, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    invoke-virtual {v7, v0}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 174
    .local v5, "key":Ljava/lang/Object;, "TK;"
    invoke-static {v5}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertNotNull(Ljava/lang/Object;)V

    .line 175
    iget-object v7, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v7, v5}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertNull(Ljava/lang/Object;)V

    goto :goto_1

    .line 177
    .end local v0    # "deletedEntity":Ljava/lang/Object;, "TT;"
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    return-void
.end method

.method public testInsertAndLoad()V
    .locals 5

    .prologue
    .line 67
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    move-result-object v2

    .line 68
    .local v2, "pk":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v2}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v3, v0}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 70
    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    invoke-virtual {v3, v0}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v3, v2}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 72
    .local v1, "entity2":Ljava/lang/Object;, "TT;"
    invoke-static {v1}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertNotNull(Ljava/lang/Object;)V

    .line 73
    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    invoke-virtual {v3, v0}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    invoke-virtual {v4, v1}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public testInsertInTx()V
    .locals 6

    .prologue
    .line 77
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    .line 80
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 83
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v4}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertEquals(JJ)V

    .line 84
    return-void
.end method

.method public testInsertOrReplaceInTx()V
    .locals 8

    .prologue
    .line 117
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v4}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 118
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v3, "listPartial":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v2, "listAll":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0x14

    if-ge v1, v4, :cond_1

    .line 121
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v0

    .line 122
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_0

    .line 123
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_1
    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v4, v3}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    .line 128
    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v4, v2}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    .line 129
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v6}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertEquals(JJ)V

    .line 130
    return-void
.end method

.method public testInsertOrReplaceTwice()V
    .locals 7

    .prologue
    .line 108
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    move-result-wide v2

    .line 110
    .local v2, "rowId1":J
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    move-result-wide v4

    .line 111
    .local v4, "rowId2":J
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->getPkProperty()Lorg/greenrobot/greendao/Property;

    move-result-object v1

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->type:Ljava/lang/Class;

    const-class v6, Ljava/lang/Long;

    if-ne v1, v6, :cond_0

    .line 112
    invoke-static {v2, v3, v4, v5}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertEquals(JJ)V

    .line 114
    :cond_0
    return-void
.end method

.method public testInsertTwice()V
    .locals 3

    .prologue
    .line 96
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    move-result-object v1

    .line 97
    .local v1, "pk":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v1}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 100
    :try_start_0
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 101
    const-string v2, "Inserting twice should not work"

    invoke-static {v2}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->fail(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public testLoadAll()V
    .locals 6

    .prologue
    .line 208
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v4}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 209
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0xf

    if-ge v1, v4, :cond_0

    .line 211
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 212
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v4, v2}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 215
    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v4}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object v3

    .line 216
    .local v3, "loaded":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertEquals(II)V

    .line 217
    return-void
.end method

.method public testLoadPk()V
    .locals 1

    .prologue
    .line 258
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->runLoadPkTest(I)V

    .line 259
    return-void
.end method

.method public testLoadPkWithOffset()V
    .locals 1

    .prologue
    .line 254
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->runLoadPkTest(I)V

    .line 255
    return-void
.end method

.method public testQuery()V
    .locals 8

    .prologue
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 220
    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 221
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    move-result-object v1

    .line 222
    .local v1, "pkForQuery":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0, v1}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 223
    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v4}, Lorg/greenrobot/greendao/AbstractDao;->getPkColumns()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "where":Ljava/lang/String;
    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    new-array v4, v7, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v2, v4}, Lorg/greenrobot/greendao/AbstractDao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 227
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v7, v3}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertEquals(II)V

    .line 228
    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    return-void
.end method

.method public testReadWithOffset()V
    .locals 6

    .prologue
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    const/4 v5, 0x5

    .line 240
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    move-result-object v3

    .line 241
    .local v3, "pk":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v3}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 242
    .local v1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v4, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 244
    const-string v4, "42"

    invoke-virtual {p0, v5, v4, v3}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->queryWithDummyColumnsInFront(ILjava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    .line 246
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    const/4 v5, 0x5

    invoke-virtual {v4, v0, v5}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v2

    .line 247
    .local v2, "entity2":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    invoke-virtual {v4, v2}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 251
    return-void

    .line 249
    .end local v2    # "entity2":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method public testRowId()V
    .locals 7

    .prologue
    .line 200
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v0

    .line 201
    .local v0, "entity1":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v1

    .line 202
    .local v1, "entity2":Ljava/lang/Object;, "TT;"
    iget-object v6, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v6, v0}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    move-result-wide v2

    .line 203
    .local v2, "rowId1":J
    iget-object v6, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v6, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    move-result-wide v4

    .line 204
    .local v4, "rowId2":J
    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertTrue(Z)V

    .line 205
    return-void

    .line 204
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public testUpdate()V
    .locals 6

    .prologue
    .line 232
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk<TD;TT;TK;>;"
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 233
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    move-result-object v0

    .line 234
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 235
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    .line 236
    const-wide/16 v2, 0x1

    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->assertEquals(JJ)V

    .line 237
    return-void
.end method
