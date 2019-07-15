.class public Lorg/litepal/util/DBUtility;
.super Ljava/lang/Object;
.source "DBUtility.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static findAllTableNames(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 8
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v3, "tableNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 245
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "select * from sqlite_master where type = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "table"

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 246
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 248
    :cond_0
    const-string v4, "tbl_name"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "tableName":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 250
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 258
    .end local v2    # "tableName":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 259
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 262
    :cond_3
    return-object v3

    .line 254
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    new-instance v4, Lorg/litepal/exceptions/DatabaseGenerateException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/litepal/exceptions/DatabaseGenerateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 258
    if-eqz v0, :cond_4

    .line 259
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 261
    :cond_4
    throw v4
.end method

.method public static findPragmaTableInfo(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Lorg/litepal/tablemanager/model/TableModel;
    .locals 14
    .param p0, "tableName"    # Ljava/lang/String;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v11, 0x1

    .line 279
    invoke-static {p0, p1}, Lorg/litepal/util/DBUtility;->isTableExists(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 280
    invoke-static {p0, p1}, Lorg/litepal/util/DBUtility;->findUniqueColumns(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v10

    .line 281
    .local v10, "uniqueColumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Lorg/litepal/tablemanager/model/TableModel;

    invoke-direct {v7}, Lorg/litepal/tablemanager/model/TableModel;-><init>()V

    .line 282
    .local v7, "tableModelDB":Lorg/litepal/tablemanager/model/TableModel;
    invoke-virtual {v7, p0}, Lorg/litepal/tablemanager/model/TableModel;->setTableName(Ljava/lang/String;)V

    .line 283
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "pragma table_info("

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "checkingColumnSQL":Ljava/lang/String;
    const/4 v2, 0x0

    .line 286
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    :try_start_0
    invoke-virtual {p1, v0, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 287
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 289
    :cond_0
    new-instance v1, Lorg/litepal/tablemanager/model/ColumnModel;

    invoke-direct {v1}, Lorg/litepal/tablemanager/model/ColumnModel;-><init>()V

    .line 290
    .local v1, "columnModel":Lorg/litepal/tablemanager/model/ColumnModel;
    const-string v12, "name"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 291
    .local v5, "name":Ljava/lang/String;
    const-string v12, "type"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 292
    .local v8, "type":Ljava/lang/String;
    const-string v12, "notnull"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eq v12, v11, :cond_3

    move v6, v11

    .line 293
    .local v6, "nullable":Z
    :goto_0
    invoke-interface {v10, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 294
    .local v9, "unique":Z
    const-string v12, "dflt_value"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, "defaultValue":Ljava/lang/String;
    invoke-virtual {v1, v5}, Lorg/litepal/tablemanager/model/ColumnModel;->setColumnName(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v1, v8}, Lorg/litepal/tablemanager/model/ColumnModel;->setColumnType(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v1, v6}, Lorg/litepal/tablemanager/model/ColumnModel;->setIsNullable(Z)V

    .line 298
    invoke-virtual {v1, v9}, Lorg/litepal/tablemanager/model/ColumnModel;->setIsUnique(Z)V

    .line 299
    if-eqz v3, :cond_4

    .line 300
    const-string v12, "\'"

    const-string v13, ""

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 304
    :goto_1
    invoke-virtual {v1, v3}, Lorg/litepal/tablemanager/model/ColumnModel;->setDefaultValue(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v7, v1}, Lorg/litepal/tablemanager/model/TableModel;->addColumnModel(Lorg/litepal/tablemanager/model/ColumnModel;)V

    .line 306
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-nez v12, :cond_0

    .line 312
    .end local v1    # "columnModel":Lorg/litepal/tablemanager/model/ColumnModel;
    .end local v3    # "defaultValue":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "nullable":Z
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "unique":Z
    :cond_1
    if-eqz v2, :cond_2

    .line 313
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 316
    :cond_2
    return-object v7

    .line 292
    .restart local v1    # "columnModel":Lorg/litepal/tablemanager/model/ColumnModel;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v8    # "type":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 302
    .restart local v3    # "defaultValue":Ljava/lang/String;
    .restart local v6    # "nullable":Z
    .restart local v9    # "unique":Z
    :cond_4
    :try_start_1
    const-string v3, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 308
    .end local v1    # "columnModel":Lorg/litepal/tablemanager/model/ColumnModel;
    .end local v3    # "defaultValue":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "nullable":Z
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "unique":Z
    :catch_0
    move-exception v4

    .line 309
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 310
    new-instance v11, Lorg/litepal/exceptions/DatabaseGenerateException;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/litepal/exceptions/DatabaseGenerateException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 312
    if-eqz v2, :cond_5

    .line 313
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 315
    :cond_5
    throw v11

    .line 318
    .end local v0    # "checkingColumnSQL":Ljava/lang/String;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v7    # "tableModelDB":Lorg/litepal/tablemanager/model/TableModel;
    .end local v10    # "uniqueColumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    new-instance v11, Lorg/litepal/exceptions/DatabaseGenerateException;

    .line 319
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Table doesn\'t exist when executing "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 318
    invoke-direct {v11, v12}, Lorg/litepal/exceptions/DatabaseGenerateException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method public static findUniqueColumns(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 9
    .param p0, "tableName"    # Ljava/lang/String;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v1, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 334
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 336
    .local v4, "innerCursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "pragma index_list("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 337
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 339
    :cond_0
    const-string v7, "unique"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 340
    .local v6, "unique":I
    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 341
    const-string v7, "name"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 342
    .local v5, "name":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "pragma index_info("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 343
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 344
    const-string v7, "name"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "columnName":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    .end local v0    # "columnName":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 354
    .end local v6    # "unique":I
    :cond_2
    if-eqz v2, :cond_3

    .line 355
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 357
    :cond_3
    if-eqz v4, :cond_4

    .line 358
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_4
    return-object v1

    .line 350
    :catch_0
    move-exception v3

    .line 351
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 352
    new-instance v7, Lorg/litepal/exceptions/DatabaseGenerateException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/litepal/exceptions/DatabaseGenerateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 354
    if-eqz v2, :cond_5

    .line 355
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 357
    :cond_5
    if-eqz v4, :cond_6

    .line 358
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 360
    :cond_6
    throw v7
.end method

.method public static getIntermediateTableName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "tableName"    # Ljava/lang/String;
    .param p1, "associatedTableName"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "intermediateTableName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .end local v0    # "intermediateTableName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 122
    .restart local v0    # "intermediateTableName":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 126
    .end local v0    # "intermediateTableName":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    const/16 v1, 0x2e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-object v0

    .line 61
    :cond_1
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTableNameByForeignColumn(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "foreignColumnName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "_id"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_0
    return-object v0
.end method

.method public static getTableNameListByClassNameList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "classNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v1, "tableNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 83
    :cond_0
    return-object v1

    .line 79
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static isColumnExists(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 7
    .param p0, "columnName"    # Ljava/lang/String;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 204
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 205
    :cond_0
    const/4 v3, 0x0

    .line 229
    :cond_1
    :goto_0
    return v3

    .line 207
    :cond_2
    const/4 v3, 0x0

    .line 208
    .local v3, "exist":Z
    const/4 v1, 0x0

    .line 210
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pragma table_info("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "checkingColumnSQL":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p2, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 212
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 214
    :cond_3
    const-string v5, "name"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_5

    .line 216
    const/4 v3, 0x1

    .line 225
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    :goto_1
    if-eqz v1, :cond_1

    .line 226
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 219
    .restart local v4    # "name":Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 221
    .end local v0    # "checkingColumnSQL":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 222
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    const/4 v3, 0x0

    .line 225
    if-eqz v1, :cond_1

    .line 226
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 224
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 225
    if-eqz v1, :cond_6

    .line 226
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_6
    throw v5
.end method

.method public static isIntermediateTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 13
    .param p0, "tableName"    # Ljava/lang/String;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v12, 0x1

    .line 138
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 139
    const-string v0, "[0-9a-zA-Z]+_[0-9a-zA-Z]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    const/4 v8, 0x0

    .line 142
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "table_schema"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 143
    const/4 v7, 0x0

    move-object v0, p1

    .line 142
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 144
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    :cond_0
    const-string v0, "name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 146
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 148
    .local v10, "tableNameDB":Ljava/lang/String;
    invoke-virtual {p0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    const-string v0, "type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 149
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    .line 151
    .local v11, "tableType":I
    if-ne v11, v12, :cond_3

    .line 161
    if-eqz v8, :cond_1

    .line 162
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v12

    .line 167
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "tableNameDB":Ljava/lang/String;
    .end local v11    # "tableType":I
    :goto_0
    return v0

    .line 156
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "tableNameDB":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 161
    .end local v10    # "tableNameDB":Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_4

    .line 162
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 167
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_4
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 158
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 159
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    if-eqz v8, :cond_4

    .line 162
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 160
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 161
    if-eqz v8, :cond_5

    .line 162
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_5
    throw v0
.end method

.method public static isTableExists(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3
    .param p0, "tableName"    # Ljava/lang/String;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 182
    :try_start_0
    invoke-static {p1}, Lorg/litepal/util/DBUtility;->findAllTableNames(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, p0}, Lorg/litepal/util/BaseUtility;->containsIgnoreCases(Ljava/util/Collection;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 187
    .local v1, "exist":Z
    :goto_0
    return v1

    .line 183
    .end local v1    # "exist":Z
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    const/4 v1, 0x0

    .restart local v1    # "exist":Z
    goto :goto_0
.end method
