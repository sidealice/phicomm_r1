.class Lorg/litepal/crud/SaveHandler;
.super Lorg/litepal/crud/DataHandler;
.source "SaveHandler.java"


# instance fields
.field ignoreAssociations:Z


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/litepal/crud/DataHandler;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/litepal/crud/SaveHandler;->ignoreAssociations:Z

    .line 58
    iput-object p1, p0, Lorg/litepal/crud/SaveHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    return-void
.end method

.method private afterSave(Lorg/litepal/crud/DataSupport;Ljava/util/List;J)V
    .locals 1
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p3, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/DataSupport;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p2, "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-direct {p0, p3, p4}, Lorg/litepal/crud/SaveHandler;->throwIfSaveFailed(J)V

    .line 237
    invoke-direct {p0, p2}, Lorg/litepal/crud/SaveHandler;->getIdField(Ljava/util/List;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lorg/litepal/crud/SaveHandler;->assignIdValue(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;J)V

    .line 238
    iget-boolean v0, p0, Lorg/litepal/crud/SaveHandler;->ignoreAssociations:Z

    if-nez v0, :cond_0

    .line 239
    invoke-direct {p0, p1}, Lorg/litepal/crud/SaveHandler;->updateAssociatedTableWithFK(Lorg/litepal/crud/DataSupport;)V

    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/litepal/crud/SaveHandler;->insertIntermediateJoinTableValue(Lorg/litepal/crud/DataSupport;Z)V

    .line 242
    :cond_0
    return-void
.end method

.method private afterUpdate(Lorg/litepal/crud/DataSupport;)V
    .locals 1
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;

    .prologue
    .line 316
    iget-boolean v0, p0, Lorg/litepal/crud/SaveHandler;->ignoreAssociations:Z

    if-nez v0, :cond_0

    .line 317
    invoke-direct {p0, p1}, Lorg/litepal/crud/SaveHandler;->updateAssociatedTableWithFK(Lorg/litepal/crud/DataSupport;)V

    .line 318
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/litepal/crud/SaveHandler;->insertIntermediateJoinTableValue(Lorg/litepal/crud/DataSupport;Z)V

    .line 319
    invoke-direct {p0, p1}, Lorg/litepal/crud/SaveHandler;->clearFKValueInAssociatedTable(Lorg/litepal/crud/DataSupport;)V

    .line 321
    :cond_0
    return-void
.end method

.method private assignIdValue(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;J)V
    .locals 7
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "idField"    # Ljava/lang/reflect/Field;
    .param p3, "id"    # J

    .prologue
    .line 368
    :try_start_0
    invoke-virtual {p0, p1, p3, p4}, Lorg/litepal/crud/SaveHandler;->giveBaseObjIdValue(Lorg/litepal/crud/DataSupport;J)V

    .line 369
    if-eqz p2, :cond_0

    .line 370
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/litepal/crud/SaveHandler;->giveModelIdValue(Lorg/litepal/crud/DataSupport;Ljava/lang/String;Ljava/lang/Class;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :cond_0
    return-void

    .line 372
    :catch_0
    move-exception v6

    .line 373
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private beforeSave(Lorg/litepal/crud/DataSupport;Ljava/util/List;Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p3, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/DataSupport;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 205
    .local p2, "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/litepal/crud/SaveHandler;->putFieldsValue(Lorg/litepal/crud/DataSupport;Ljava/util/List;Landroid/content/ContentValues;)V

    .line 206
    iget-boolean v0, p0, Lorg/litepal/crud/SaveHandler;->ignoreAssociations:Z

    if-nez v0, :cond_0

    .line 207
    invoke-direct {p0, p3, p1}, Lorg/litepal/crud/SaveHandler;->putForeignKeyValue(Landroid/content/ContentValues;Lorg/litepal/crud/DataSupport;)V

    .line 209
    :cond_0
    return-void
.end method

.method private beforeUpdate(Lorg/litepal/crud/DataSupport;Ljava/util/List;Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p3, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/DataSupport;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 285
    .local p2, "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/litepal/crud/SaveHandler;->putFieldsValue(Lorg/litepal/crud/DataSupport;Ljava/util/List;Landroid/content/ContentValues;)V

    .line 286
    iget-boolean v1, p0, Lorg/litepal/crud/SaveHandler;->ignoreAssociations:Z

    if-nez v1, :cond_0

    .line 287
    invoke-direct {p0, p3, p1}, Lorg/litepal/crud/SaveHandler;->putForeignKeyValue(Landroid/content/ContentValues;Lorg/litepal/crud/DataSupport;)V

    .line 288
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getListToClearSelfFK()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 292
    :cond_0
    return-void

    .line 288
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 289
    .local v0, "fkName":Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private clearFKValueInAssociatedTable(Lorg/litepal/crud/DataSupport;)V
    .locals 10
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;

    .prologue
    .line 453
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getListToClearAssociatedFK()Ljava/util/List;

    move-result-object v1

    .line 454
    .local v1, "associatedTableNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 461
    return-void

    .line 454
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 455
    .local v0, "associatedTableName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/litepal/crud/SaveHandler;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, "fkColumnName":Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 457
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 458
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getBaseObjId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 459
    .local v4, "whereClause":Ljava/lang/String;
    iget-object v6, p0, Lorg/litepal/crud/SaveHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v3, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doSaveAction(Lorg/litepal/crud/DataSupport;Ljava/util/List;)V
    .locals 3
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/DataSupport;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 179
    .local p2, "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 180
    .local v2, "values":Landroid/content/ContentValues;
    invoke-direct {p0, p1, p2, v2}, Lorg/litepal/crud/SaveHandler;->beforeSave(Lorg/litepal/crud/DataSupport;Ljava/util/List;Landroid/content/ContentValues;)V

    .line 181
    invoke-direct {p0, p1, v2}, Lorg/litepal/crud/SaveHandler;->saving(Lorg/litepal/crud/DataSupport;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 182
    .local v0, "id":J
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/litepal/crud/SaveHandler;->afterSave(Lorg/litepal/crud/DataSupport;Ljava/util/List;J)V

    .line 183
    return-void
.end method

.method private doUpdateAction(Lorg/litepal/crud/DataSupport;Ljava/util/List;)V
    .locals 1
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/DataSupport;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 258
    .local p2, "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 259
    .local v0, "values":Landroid/content/ContentValues;
    invoke-direct {p0, p1, p2, v0}, Lorg/litepal/crud/SaveHandler;->beforeUpdate(Lorg/litepal/crud/DataSupport;Ljava/util/List;Landroid/content/ContentValues;)V

    .line 260
    invoke-direct {p0, p1, v0}, Lorg/litepal/crud/SaveHandler;->updating(Lorg/litepal/crud/DataSupport;Landroid/content/ContentValues;)V

    .line 261
    invoke-direct {p0, p1}, Lorg/litepal/crud/SaveHandler;->afterUpdate(Lorg/litepal/crud/DataSupport;)V

    .line 262
    return-void
.end method

.method private getIdField(Ljava/util/List;)Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 336
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 331
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 332
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/litepal/crud/SaveHandler;->isIdColumn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private getWhereForJoinTableToDelete(Lorg/litepal/crud/DataSupport;)Ljava/lang/String;
    .locals 2
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;

    .prologue
    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    .local v0, "where":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/litepal/crud/SaveHandler;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private giveModelIdValue(Lorg/litepal/crud/DataSupport;Ljava/lang/String;Ljava/lang/Class;J)V
    .locals 4
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "idName"    # Ljava/lang/String;
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/DataSupport;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 397
    .local p3, "idType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/litepal/crud/SaveHandler;->shouldGiveModelIdValue(Ljava/lang/String;Ljava/lang/Class;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p3, v1, :cond_0

    const-class v1, Ljava/lang/Integer;

    if-ne p3, v1, :cond_2

    .line 400
    :cond_0
    long-to-int v1, p4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 406
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lorg/litepal/crud/DynamicExecutor;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 408
    :cond_1
    return-void

    .line 401
    :cond_2
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p3, v1, :cond_3

    const-class v1, Ljava/lang/Long;

    if-ne p3, v1, :cond_4

    .line 402
    :cond_3
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 403
    .local v0, "value":Ljava/lang/Long;
    goto :goto_0

    .line 404
    .end local v0    # "value":Ljava/lang/Long;
    :cond_4
    new-instance v1, Lorg/litepal/exceptions/DataSupportException;

    const-string v2, "id type is not supported. Only int or long is acceptable for id"

    invoke-direct {v1, v2}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private insertIntermediateJoinTableValue(Lorg/litepal/crud/DataSupport;Z)V
    .locals 14
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "isUpdate"    # Z

    .prologue
    .line 473
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getAssociatedModelsMapForJoinTable()Ljava/util/Map;

    move-result-object v2

    .line 474
    .local v2, "associatedIdsM2M":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Long;>;>;"
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 475
    .local v6, "values":Landroid/content/ContentValues;
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 489
    return-void

    .line 475
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 476
    .local v4, "associatedTableName":Ljava/lang/String;
    invoke-virtual {p0, p1, v4}, Lorg/litepal/crud/SaveHandler;->getIntermediateTableName(Lorg/litepal/crud/DataSupport;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 477
    .local v5, "joinTableName":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 478
    iget-object v7, p0, Lorg/litepal/crud/SaveHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lorg/litepal/crud/SaveHandler;->getWhereForJoinTableToDelete(Lorg/litepal/crud/DataSupport;)Ljava/lang/String;

    move-result-object v9

    .line 479
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getBaseObjId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 478
    invoke-virtual {v7, v5, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 481
    :cond_2
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 482
    .local v3, "associatedIdsM2MSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 483
    .local v0, "associatedId":J
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 484
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/litepal/crud/SaveHandler;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getBaseObjId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 485
    invoke-virtual {p0, v4}, Lorg/litepal/crud/SaveHandler;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 486
    iget-object v7, p0, Lorg/litepal/crud/SaveHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v10, 0x0

    invoke-virtual {v7, v5, v10, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method private putForeignKeyValue(Landroid/content/ContentValues;Lorg/litepal/crud/DataSupport;)V
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "baseObj"    # Lorg/litepal/crud/DataSupport;

    .prologue
    .line 418
    invoke-virtual {p2}, Lorg/litepal/crud/DataSupport;->getAssociatedModelsMapWithoutFK()Ljava/util/Map;

    move-result-object v0

    .line 419
    .local v0, "associatedModelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 423
    return-void

    .line 419
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 420
    .local v1, "associatedTableName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/litepal/crud/SaveHandler;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 421
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 420
    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private saving(Lorg/litepal/crud/DataSupport;Landroid/content/ContentValues;)J
    .locals 3
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 222
    iget-object v0, p0, Lorg/litepal/crud/SaveHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method private shouldGiveModelIdValue(Ljava/lang/String;Ljava/lang/Class;J)Z
    .locals 3
    .param p1, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;J)Z"
        }
    .end annotation

    .prologue
    .line 521
    .local p2, "idType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private throwIfSaveFailed(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 346
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Lorg/litepal/exceptions/DataSupportException;

    const-string v1, "Save current model failed."

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_0
    return-void
.end method

.method private updateAssociatedTableWithFK(Lorg/litepal/crud/DataSupport;)V
    .locals 9
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;

    .prologue
    .line 432
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getAssociatedModelsMapWithFK()Ljava/util/Map;

    move-result-object v0

    .line 433
    .local v0, "associatedModelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Long;>;>;"
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 434
    .local v4, "values":Landroid/content/ContentValues;
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 443
    return-void

    .line 434
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 435
    .local v1, "associatedTableName":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 436
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/litepal/crud/SaveHandler;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, "fkName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getBaseObjId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 438
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 439
    .local v3, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 440
    iget-object v6, p0, Lorg/litepal/crud/SaveHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v3}, Lorg/litepal/crud/SaveHandler;->getWhereOfIdsWithOr(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v1, v4, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updating(Lorg/litepal/crud/DataSupport;Landroid/content/ContentValues;)V
    .locals 8
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 305
    iget-object v0, p0, Lorg/litepal/crud/SaveHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id = ?"

    .line 306
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getBaseObjId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 305
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 307
    return-void
.end method


# virtual methods
.method onSave(Lorg/litepal/crud/DataSupport;)V
    .locals 4
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/litepal/crud/SaveHandler;->getSupportedFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 81
    .local v2, "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0, v1}, Lorg/litepal/crud/SaveHandler;->getAssociationInfo(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 82
    .local v0, "associationInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/model/AssociationsInfo;>;"
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->isSaved()Z

    move-result v3

    if-nez v3, :cond_2

    .line 83
    iget-boolean v3, p0, Lorg/litepal/crud/SaveHandler;->ignoreAssociations:Z

    if-nez v3, :cond_0

    .line 84
    invoke-virtual {p0, p1, v0}, Lorg/litepal/crud/SaveHandler;->analyzeAssociatedModels(Lorg/litepal/crud/DataSupport;Ljava/util/Collection;)V

    .line 86
    :cond_0
    invoke-direct {p0, p1, v2}, Lorg/litepal/crud/SaveHandler;->doSaveAction(Lorg/litepal/crud/DataSupport;Ljava/util/List;)V

    .line 87
    iget-boolean v3, p0, Lorg/litepal/crud/SaveHandler;->ignoreAssociations:Z

    if-nez v3, :cond_1

    .line 88
    invoke-virtual {p0, p1, v0}, Lorg/litepal/crud/SaveHandler;->analyzeAssociatedModels(Lorg/litepal/crud/DataSupport;Ljava/util/Collection;)V

    .line 96
    :cond_1
    :goto_0
    return-void

    .line 91
    :cond_2
    iget-boolean v3, p0, Lorg/litepal/crud/SaveHandler;->ignoreAssociations:Z

    if-nez v3, :cond_3

    .line 92
    invoke-virtual {p0, p1, v0}, Lorg/litepal/crud/SaveHandler;->analyzeAssociatedModels(Lorg/litepal/crud/DataSupport;Ljava/util/Collection;)V

    .line 94
    :cond_3
    invoke-direct {p0, p1, v2}, Lorg/litepal/crud/SaveHandler;->doUpdateAction(Lorg/litepal/crud/DataSupport;Ljava/util/List;)V

    goto :goto_0
.end method

.method onSaveAll(Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/litepal/crud/DataSupport;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v6, 0x0

    .line 137
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 138
    new-array v7, v6, [Lorg/litepal/crud/DataSupport;

    invoke-interface {p1, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/litepal/crud/DataSupport;

    .line 139
    .local v0, "array":[Lorg/litepal/crud/DataSupport;
    aget-object v4, v0, v6

    .line 140
    .local v4, "firstObj":Lorg/litepal/crud/DataSupport;
    invoke-virtual {v4}, Lorg/litepal/crud/DataSupport;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "className":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/litepal/crud/SaveHandler;->getSupportedFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 142
    .local v5, "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0, v3}, Lorg/litepal/crud/SaveHandler;->getAssociationInfo(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 143
    .local v1, "associationInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/model/AssociationsInfo;>;"
    array-length v7, v0

    :goto_0
    if-lt v6, v7, :cond_1

    .line 155
    .end local v0    # "array":[Lorg/litepal/crud/DataSupport;
    .end local v1    # "associationInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/model/AssociationsInfo;>;"
    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "firstObj":Lorg/litepal/crud/DataSupport;
    .end local v5    # "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :cond_0
    return-void

    .line 143
    .restart local v0    # "array":[Lorg/litepal/crud/DataSupport;
    .restart local v1    # "associationInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/model/AssociationsInfo;>;"
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v4    # "firstObj":Lorg/litepal/crud/DataSupport;
    .restart local v5    # "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :cond_1
    aget-object v2, v0, v6

    .line 144
    .local v2, "baseObj":Lorg/litepal/crud/DataSupport;
    invoke-virtual {v2}, Lorg/litepal/crud/DataSupport;->isSaved()Z

    move-result v8

    if-nez v8, :cond_2

    .line 145
    invoke-virtual {p0, v2, v1}, Lorg/litepal/crud/SaveHandler;->analyzeAssociatedModels(Lorg/litepal/crud/DataSupport;Ljava/util/Collection;)V

    .line 146
    invoke-direct {p0, v2, v5}, Lorg/litepal/crud/SaveHandler;->doSaveAction(Lorg/litepal/crud/DataSupport;Ljava/util/List;)V

    .line 147
    invoke-virtual {p0, v2, v1}, Lorg/litepal/crud/SaveHandler;->analyzeAssociatedModels(Lorg/litepal/crud/DataSupport;Ljava/util/Collection;)V

    .line 152
    :goto_1
    invoke-virtual {v2}, Lorg/litepal/crud/DataSupport;->clearAssociatedData()V

    .line 143
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {p0, v2, v1}, Lorg/litepal/crud/SaveHandler;->analyzeAssociatedModels(Lorg/litepal/crud/DataSupport;Ljava/util/Collection;)V

    .line 150
    invoke-direct {p0, v2, v5}, Lorg/litepal/crud/SaveHandler;->doUpdateAction(Lorg/litepal/crud/DataSupport;Ljava/util/List;)V

    goto :goto_1
.end method

.method onSaveFast(Lorg/litepal/crud/DataSupport;)V
    .locals 1
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/litepal/crud/SaveHandler;->ignoreAssociations:Z

    .line 115
    invoke-virtual {p0, p1}, Lorg/litepal/crud/SaveHandler;->onSave(Lorg/litepal/crud/DataSupport;)V

    .line 116
    return-void
.end method
