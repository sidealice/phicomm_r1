.class public Lorg/litepal/crud/DeleteHandler;
.super Lorg/litepal/crud/DataHandler;
.source "DeleteHandler.java"


# instance fields
.field private foreignKeyTableToDelete:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/litepal/crud/DataHandler;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/litepal/crud/DeleteHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 60
    return-void
.end method

.method private analyzeAssociations(Lorg/litepal/crud/DataSupport;)Ljava/util/Collection;
    .locals 4
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/DataSupport;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    .line 228
    :try_start_0
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-virtual {p0, v2}, Lorg/litepal/crud/DeleteHandler;->getAssociationInfo(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 229
    .local v0, "associationInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/model/AssociationsInfo;>;"
    invoke-virtual {p0, p1, v0}, Lorg/litepal/crud/DeleteHandler;->analyzeAssociatedModels(Lorg/litepal/crud/DataSupport;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    return-object v0

    .line 231
    .end local v0    # "associationInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/model/AssociationsInfo;>;"
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private analyzeAssociations(Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 145
    .line 146
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 145
    invoke-virtual {p0, v5}, Lorg/litepal/crud/DeleteHandler;->getAssociationInfo(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 147
    .local v2, "associationInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/model/AssociationsInfo;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 165
    return-void

    .line 147
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/litepal/crud/model/AssociationsInfo;

    .line 150
    .local v1, "associationInfo":Lorg/litepal/crud/model/AssociationsInfo;
    invoke-virtual {v1}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociatedClassName()Ljava/lang/String;

    move-result-object v6

    .line 149
    invoke-static {v6}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "associatedTableName":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 152
    invoke-virtual {v1}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 154
    :cond_2
    invoke-virtual {v1}, Lorg/litepal/crud/model/AssociationsInfo;->getClassHoldsForeignKey()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "classHoldsForeignKey":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 156
    invoke-direct {p0}, Lorg/litepal/crud/DeleteHandler;->getForeignKeyTableToDelete()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    .end local v3    # "classHoldsForeignKey":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 160
    invoke-virtual {p0, p1}, Lorg/litepal/crud/DeleteHandler;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    .line 159
    invoke-static {v6, v0}, Lorg/litepal/util/DBUtility;->getIntermediateTableName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, "joinTableName":Ljava/lang/String;
    invoke-static {v4}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 162
    invoke-direct {p0}, Lorg/litepal/crud/DeleteHandler;->getForeignKeyTableToDelete()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private varargs buildConditionString([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "conditions"    # [Ljava/lang/String;

    .prologue
    .line 210
    array-length v3, p1

    add-int/lit8 v0, v3, -0x1

    .line 211
    .local v0, "argCount":I
    const/4 v3, 0x0

    aget-object v2, p1, v3

    .line 212
    .local v2, "whereClause":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 215
    return-object v2

    .line 213
    :cond_0
    const-string v3, "\\?"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v1, 0x1

    aget-object v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private clearAssociatedModelSaveState(Lorg/litepal/crud/DataSupport;Ljava/util/Collection;)V
    .locals 7
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/DataSupport;",
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p2, "associationInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/model/AssociationsInfo;>;"
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 273
    return-void

    .line 249
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/litepal/crud/model/AssociationsInfo;

    .line 250
    .local v1, "associationInfo":Lorg/litepal/crud/model/AssociationsInfo;
    invoke-virtual {v1}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 251
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 252
    invoke-virtual {v1}, Lorg/litepal/crud/model/AssociationsInfo;->getClassHoldsForeignKey()Ljava/lang/String;

    move-result-object v6

    .line 251
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 252
    if-nez v5, :cond_3

    .line 253
    invoke-virtual {p0, p1, v1}, Lorg/litepal/crud/DeleteHandler;->getAssociatedModels(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)Ljava/util/Collection;

    move-result-object v0

    .line 255
    .local v0, "associatedModels":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/DataSupport;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 256
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/litepal/crud/DataSupport;

    .line 257
    .local v3, "model":Lorg/litepal/crud/DataSupport;
    if-eqz v3, :cond_2

    .line 258
    invoke-virtual {v3}, Lorg/litepal/crud/DataSupport;->clearSavedState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 270
    .end local v0    # "associatedModels":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/DataSupport;>;"
    .end local v1    # "associationInfo":Lorg/litepal/crud/model/AssociationsInfo;
    .end local v3    # "model":Lorg/litepal/crud/DataSupport;
    :catch_0
    move-exception v2

    .line 271
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 262
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "associationInfo":Lorg/litepal/crud/model/AssociationsInfo;
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 263
    invoke-virtual {p0, p1, v1}, Lorg/litepal/crud/DeleteHandler;->getAssociatedModel(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)Lorg/litepal/crud/DataSupport;

    move-result-object v3

    .line 265
    .restart local v3    # "model":Lorg/litepal/crud/DataSupport;
    if-eqz v3, :cond_0

    .line 266
    invoke-virtual {v3}, Lorg/litepal/crud/DataSupport;->clearSavedState()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private varargs deleteAllCascade(Ljava/lang/Class;[Ljava/lang/String;)I
    .locals 9
    .param p2, "conditions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 193
    .local v2, "rowsAffected":I
    invoke-direct {p0}, Lorg/litepal/crud/DeleteHandler;->getForeignKeyTableToDelete()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 206
    return v2

    .line 193
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    .local v0, "associatedTableName":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/litepal/crud/DeleteHandler;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "tableName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/litepal/crud/DeleteHandler;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "fkName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v4, "whereClause":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in (select id from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    if-eqz p2, :cond_1

    array-length v6, p2

    if-lez v6, :cond_1

    .line 200
    const-string v6, " where "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p2}, Lorg/litepal/crud/DeleteHandler;->buildConditionString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_1
    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v6, p0, Lorg/litepal/crud/DeleteHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 204
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v2, v6

    goto :goto_0
.end method

.method private deleteAssociatedForeignKeyRows(Lorg/litepal/crud/DataSupport;)I
    .locals 10
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;

    .prologue
    .line 303
    const/4 v3, 0x0

    .line 305
    .local v3, "rowsAffected":I
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getAssociatedModelsMapWithFK()Ljava/util/Map;

    move-result-object v0

    .line 306
    .local v0, "associatedModelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Long;>;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 311
    return v3

    .line 306
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 307
    .local v1, "associatedTableName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/litepal/crud/DeleteHandler;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "fkName":Ljava/lang/String;
    iget-object v5, p0, Lorg/litepal/crud/DeleteHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getBaseObjId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0
.end method

.method private deleteAssociatedJoinTableRows(Lorg/litepal/crud/DataSupport;)I
    .locals 10
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;

    .prologue
    .line 323
    const/4 v4, 0x0

    .line 325
    .local v4, "rowsAffected":I
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getAssociatedModelsMapForJoinTable()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 326
    .local v1, "associatedTableNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 333
    return v4

    .line 326
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 328
    .local v0, "associatedTableName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v6

    .line 327
    invoke-static {v6, v0}, Lorg/litepal/util/DBUtility;->getIntermediateTableName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, "joinTableName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/litepal/crud/DeleteHandler;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "fkName":Ljava/lang/String;
    iget-object v6, p0, Lorg/litepal/crud/DeleteHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 331
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getBaseObjId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_0
.end method

.method private deleteCascade(Ljava/lang/Class;J)I
    .locals 8
    .param p2, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;J)I"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 183
    .local v2, "rowsAffected":I
    invoke-direct {p0}, Lorg/litepal/crud/DeleteHandler;->getForeignKeyTableToDelete()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 188
    return v2

    .line 183
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    .local v0, "associatedTableName":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/litepal/crud/DeleteHandler;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/litepal/crud/DeleteHandler;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "fkName":Ljava/lang/String;
    iget-object v4, p0, Lorg/litepal/crud/DeleteHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0
.end method

.method private deleteCascade(Lorg/litepal/crud/DataSupport;)I
    .locals 2
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lorg/litepal/crud/DeleteHandler;->deleteAssociatedForeignKeyRows(Lorg/litepal/crud/DataSupport;)I

    move-result v0

    .line 290
    .local v0, "rowsAffected":I
    invoke-direct {p0, p1}, Lorg/litepal/crud/DeleteHandler;->deleteAssociatedJoinTableRows(Lorg/litepal/crud/DataSupport;)I

    move-result v1

    add-int/2addr v0, v1

    .line 291
    return v0
.end method

.method private getForeignKeyTableToDelete()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lorg/litepal/crud/DeleteHandler;->foreignKeyTableToDelete:Ljava/util/List;

    if-nez v0, :cond_0

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/litepal/crud/DeleteHandler;->foreignKeyTableToDelete:Ljava/util/List;

    .line 346
    :cond_0
    iget-object v0, p0, Lorg/litepal/crud/DeleteHandler;->foreignKeyTableToDelete:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method onDelete(Ljava/lang/Class;J)I
    .locals 6
    .param p2, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;J)I"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lorg/litepal/crud/DeleteHandler;->analyzeAssociations(Ljava/lang/Class;)V

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lorg/litepal/crud/DeleteHandler;->deleteCascade(Ljava/lang/Class;J)I

    move-result v0

    .line 102
    .local v0, "rowsAffected":I
    iget-object v1, p0, Lorg/litepal/crud/DeleteHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1}, Lorg/litepal/crud/DeleteHandler;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    invoke-direct {p0}, Lorg/litepal/crud/DeleteHandler;->getForeignKeyTableToDelete()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 105
    return v0
.end method

.method onDelete(Lorg/litepal/crud/DataSupport;)I
    .locals 8
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;

    .prologue
    .line 75
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-direct {p0, p1}, Lorg/litepal/crud/DeleteHandler;->analyzeAssociations(Lorg/litepal/crud/DataSupport;)Ljava/util/Collection;

    move-result-object v0

    .line 77
    .local v0, "associationInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/model/AssociationsInfo;>;"
    invoke-direct {p0, p1}, Lorg/litepal/crud/DeleteHandler;->deleteCascade(Lorg/litepal/crud/DataSupport;)I

    move-result v1

    .line 78
    .local v1, "rowsAffected":I
    iget-object v2, p0, Lorg/litepal/crud/DeleteHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getBaseObjId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 80
    invoke-direct {p0, p1, v0}, Lorg/litepal/crud/DeleteHandler;->clearAssociatedModelSaveState(Lorg/litepal/crud/DataSupport;Ljava/util/Collection;)V

    .line 83
    .end local v0    # "associationInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/model/AssociationsInfo;>;"
    .end local v1    # "rowsAffected":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method varargs onDeleteAll(Ljava/lang/Class;[Ljava/lang/String;)I
    .locals 5
    .param p2, "conditions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lorg/litepal/util/BaseUtility;->checkConditionsCorrect([Ljava/lang/String;)V

    .line 128
    invoke-direct {p0, p1}, Lorg/litepal/crud/DeleteHandler;->analyzeAssociations(Ljava/lang/Class;)V

    .line 129
    invoke-direct {p0, p1, p2}, Lorg/litepal/crud/DeleteHandler;->deleteAllCascade(Ljava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    .line 130
    .local v0, "rowsAffected":I
    iget-object v1, p0, Lorg/litepal/crud/DeleteHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1}, Lorg/litepal/crud/DeleteHandler;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2}, Lorg/litepal/crud/DeleteHandler;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {p0, p2}, Lorg/litepal/crud/DeleteHandler;->getWhereArgs([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    invoke-direct {p0}, Lorg/litepal/crud/DeleteHandler;->getForeignKeyTableToDelete()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 133
    return v0
.end method

.method varargs onDeleteAll(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "conditions"    # [Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {p2}, Lorg/litepal/util/BaseUtility;->checkConditionsCorrect([Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lorg/litepal/crud/DeleteHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p2}, Lorg/litepal/crud/DeleteHandler;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {p0, p2}, Lorg/litepal/crud/DeleteHandler;->getWhereArgs([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
