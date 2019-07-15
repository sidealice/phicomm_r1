.class public abstract Lorg/litepal/tablemanager/AssociationUpdater;
.super Lorg/litepal/tablemanager/Creator;
.source "AssociationUpdater.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AssociationUpdater"


# instance fields
.field private mAssociationModels:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/tablemanager/model/AssociationsModel;",
            ">;"
        }
    .end annotation
.end field

.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/litepal/tablemanager/Creator;-><init>()V

    return-void
.end method

.method private findForeignKeyToRemove(Lorg/litepal/tablemanager/model/TableModel;)Ljava/util/List;
    .locals 8
    .param p1, "tableModel"    # Lorg/litepal/tablemanager/model/TableModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/tablemanager/model/TableModel;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v3, "removeRelations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lorg/litepal/tablemanager/AssociationUpdater;->getForeignKeyColumns(Lorg/litepal/tablemanager/model/TableModel;)Ljava/util/List;

    move-result-object v2

    .line 235
    .local v2, "foreignKeyColumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/litepal/tablemanager/model/TableModel;->getTableName()Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, "selfTableName":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 242
    const-string v5, "AssociationUpdater"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "findForeignKeyToRemove >> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/litepal/tablemanager/model/TableModel;->getTableName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 243
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 242
    invoke-static {v5, v6}, Lorg/litepal/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-object v3

    .line 236
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 237
    .local v1, "foreignKeyColumn":Ljava/lang/String;
    invoke-static {v1}, Lorg/litepal/util/DBUtility;->getTableNameByForeignColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "associatedTableName":Ljava/lang/String;
    invoke-direct {p0, v4, v0}, Lorg/litepal/tablemanager/AssociationUpdater;->shouldDropForeignKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 239
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private findIntermediateTablesToDrop()Ljava/util/List;
    .locals 9
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
    .line 256
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v3, "intermediateTables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lorg/litepal/tablemanager/AssociationUpdater;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v5}, Lorg/litepal/util/DBUtility;->findAllTableNames(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 276
    const-string v5, "AssociationUpdater"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "findIntermediateTablesToDrop >> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/litepal/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-object v3

    .line 257
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 258
    .local v4, "tableName":Ljava/lang/String;
    iget-object v6, p0, Lorg/litepal/tablemanager/AssociationUpdater;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v4, v6}, Lorg/litepal/util/DBUtility;->isIntermediateTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 259
    const/4 v1, 0x1

    .line 260
    .local v1, "dropIntermediateTable":Z
    iget-object v6, p0, Lorg/litepal/tablemanager/AssociationUpdater;->mAssociationModels:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 270
    if-eqz v1, :cond_0

    .line 272
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/tablemanager/model/AssociationsModel;

    .line 261
    .local v0, "associationModel":Lorg/litepal/tablemanager/model/AssociationsModel;
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/AssociationsModel;->getAssociationType()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 263
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/AssociationsModel;->getTableName()Ljava/lang/String;

    move-result-object v7

    .line 264
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/AssociationsModel;->getAssociatedTableName()Ljava/lang/String;

    move-result-object v8

    .line 262
    invoke-static {v7, v8}, Lorg/litepal/util/DBUtility;->getIntermediateTableName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "intermediateTableName":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 266
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private generateCreateNewTableSQL(Ljava/util/Collection;Lorg/litepal/tablemanager/model/TableModel;)Ljava/lang/String;
    .locals 3
    .param p2, "tableModel"    # Lorg/litepal/tablemanager/model/TableModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/litepal/tablemanager/model/TableModel;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, "removeColumnNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 308
    invoke-virtual {p0, p2}, Lorg/litepal/tablemanager/AssociationUpdater;->generateCreateTableSQL(Lorg/litepal/tablemanager/model/TableModel;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 305
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 306
    .local v0, "removeColumnName":Ljava/lang/String;
    invoke-virtual {p2, v0}, Lorg/litepal/tablemanager/model/TableModel;->removeColumnModelByName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getRemoveColumnSQLs(Ljava/util/Collection;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, "removeColumnNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lorg/litepal/tablemanager/AssociationUpdater;->getTableModelFromDB(Ljava/lang/String;)Lorg/litepal/tablemanager/model/TableModel;

    move-result-object v5

    .line 384
    .local v5, "tableModelFromDB":Lorg/litepal/tablemanager/model/TableModel;
    invoke-virtual {p0, p2}, Lorg/litepal/tablemanager/AssociationUpdater;->generateAlterToTempTableSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "alterToTempTableSQL":Ljava/lang/String;
    const-string v6, "AssociationUpdater"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "generateRemoveColumnSQL >> "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/litepal/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-direct {p0, p1, v5}, Lorg/litepal/tablemanager/AssociationUpdater;->generateCreateNewTableSQL(Ljava/util/Collection;Lorg/litepal/tablemanager/model/TableModel;)Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "createNewTableSQL":Ljava/lang/String;
    const-string v6, "AssociationUpdater"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "generateRemoveColumnSQL >> "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/litepal/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0, v5}, Lorg/litepal/tablemanager/AssociationUpdater;->generateDataMigrationSQL(Lorg/litepal/tablemanager/model/TableModel;)Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, "dataMigrationSQL":Ljava/lang/String;
    const-string v6, "AssociationUpdater"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "generateRemoveColumnSQL >> "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/litepal/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0, p2}, Lorg/litepal/tablemanager/AssociationUpdater;->generateDropTempTableSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, "dropTempTableSQL":Ljava/lang/String;
    const-string v6, "AssociationUpdater"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "generateRemoveColumnSQL >> "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/litepal/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const/4 v6, 0x4

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v6, 0x1

    aput-object v1, v4, v6

    const/4 v6, 0x2

    aput-object v2, v4, v6

    const/4 v6, 0x3

    .line 393
    aput-object v3, v4, v6

    .line 394
    .local v4, "sqls":[Ljava/lang/String;
    return-object v4
.end method

.method private isRelationCorrect(Lorg/litepal/tablemanager/model/AssociationsModel;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "associationModel"    # Lorg/litepal/tablemanager/model/AssociationsModel;
    .param p2, "tableName1"    # Ljava/lang/String;
    .param p3, "tableName2"    # Ljava/lang/String;

    .prologue
    .line 450
    invoke-virtual {p1}, Lorg/litepal/tablemanager/model/AssociationsModel;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {p1}, Lorg/litepal/tablemanager/model/AssociationsModel;->getAssociatedTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeAssociations()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Lorg/litepal/tablemanager/AssociationUpdater;->removeForeignKeyColumns()V

    .line 199
    invoke-direct {p0}, Lorg/litepal/tablemanager/AssociationUpdater;->removeIntermediateTables()V

    .line 200
    return-void
.end method

.method private removeForeignKeyColumns()V
    .locals 5

    .prologue
    .line 207
    invoke-static {}, Lorg/litepal/parser/LitePalAttr;->getInstance()Lorg/litepal/parser/LitePalAttr;

    move-result-object v2

    invoke-virtual {v2}, Lorg/litepal/parser/LitePalAttr;->getClassNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 211
    return-void

    .line 207
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/litepal/tablemanager/AssociationUpdater;->getTableModel(Ljava/lang/String;)Lorg/litepal/tablemanager/model/TableModel;

    move-result-object v1

    .line 209
    .local v1, "tableModel":Lorg/litepal/tablemanager/model/TableModel;
    invoke-direct {p0, v1}, Lorg/litepal/tablemanager/AssociationUpdater;->findForeignKeyToRemove(Lorg/litepal/tablemanager/model/TableModel;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lorg/litepal/tablemanager/model/TableModel;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/litepal/tablemanager/AssociationUpdater;->removeColumns(Ljava/util/Collection;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeIntermediateTables()V
    .locals 2

    .prologue
    .line 218
    invoke-direct {p0}, Lorg/litepal/tablemanager/AssociationUpdater;->findIntermediateTablesToDrop()Ljava/util/List;

    move-result-object v0

    .line 219
    .local v0, "tableNamesToDrop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/litepal/tablemanager/AssociationUpdater;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0, v1}, Lorg/litepal/tablemanager/AssociationUpdater;->dropTables(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 220
    invoke-virtual {p0, v0}, Lorg/litepal/tablemanager/AssociationUpdater;->clearCopyInTableSchema(Ljava/util/List;)V

    .line 221
    return-void
.end method

.method private shouldDropForeignKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "selfTableName"    # Ljava/lang/String;
    .param p2, "associatedTableName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 411
    iget-object v3, p0, Lorg/litepal/tablemanager/AssociationUpdater;->mAssociationModels:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    .line 431
    :goto_0
    return v1

    .line 411
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/tablemanager/model/AssociationsModel;

    .line 412
    .local v0, "associationModel":Lorg/litepal/tablemanager/model/AssociationsModel;
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/AssociationsModel;->getAssociationType()I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 413
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/AssociationsModel;->getTableHoldsForeignKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 414
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/AssociationsModel;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 415
    invoke-direct {p0, v0, p1, p2}, Lorg/litepal/tablemanager/AssociationUpdater;->isRelationCorrect(Lorg/litepal/tablemanager/model/AssociationsModel;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 418
    :cond_2
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/AssociationsModel;->getAssociatedTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 419
    if-eqz v4, :cond_0

    .line 420
    invoke-direct {p0, v0, p2, p1}, Lorg/litepal/tablemanager/AssociationUpdater;->isRelationCorrect(Lorg/litepal/tablemanager/model/AssociationsModel;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 425
    :cond_3
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/AssociationsModel;->getAssociationType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 426
    invoke-direct {p0, v0, p2, p1}, Lorg/litepal/tablemanager/AssociationUpdater;->isRelationCorrect(Lorg/litepal/tablemanager/model/AssociationsModel;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0
.end method


# virtual methods
.method protected addOrUpdateAssociation(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "force"    # Z

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/litepal/tablemanager/AssociationUpdater;->getAllAssociations()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/litepal/tablemanager/AssociationUpdater;->mAssociationModels:Ljava/util/Collection;

    .line 73
    iput-object p1, p0, Lorg/litepal/tablemanager/AssociationUpdater;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 74
    invoke-direct {p0}, Lorg/litepal/tablemanager/AssociationUpdater;->removeAssociations()V

    .line 75
    return-void
.end method

.method protected clearCopyInTableSchema(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "tableNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "delete from "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "deleteData":Ljava/lang/StringBuilder;
    const-string v4, "table_schema"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " where"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const/4 v1, 0x0

    .line 178
    .local v1, "needOr":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 186
    const-string v4, "AssociationUpdater"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "clear table schema value sql is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/litepal/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 188
    .local v2, "sqls":[Ljava/lang/String;
    iget-object v4, p0, Lorg/litepal/tablemanager/AssociationUpdater;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v2, v4}, Lorg/litepal/tablemanager/AssociationUpdater;->execute([Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 190
    .end local v0    # "deleteData":Ljava/lang/StringBuilder;
    .end local v1    # "needOr":Z
    .end local v2    # "sqls":[Ljava/lang/String;
    :cond_0
    return-void

    .line 178
    .restart local v0    # "deleteData":Ljava/lang/StringBuilder;
    .restart local v1    # "needOr":Z
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 179
    .local v3, "tableName":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 180
    const-string v5, " or "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_2
    const/4 v1, 0x1

    .line 183
    const-string v5, " lower("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lower(\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected abstract createOrUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
.end method

.method protected dropTables(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "dropTableNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 143
    .local v0, "dropTableSQLS":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 146
    invoke-virtual {p0, v0, p2}, Lorg/litepal/tablemanager/AssociationUpdater;->execute([Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 148
    .end local v0    # "dropTableSQLS":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 144
    .restart local v0    # "dropTableSQLS":[Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/litepal/tablemanager/AssociationUpdater;->generateDropTableSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected generateAlterToTempTableSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .local v0, "sql":Ljava/lang/StringBuilder;
    const-string v1, "alter table "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rename to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 290
    invoke-virtual {p0, p1}, Lorg/litepal/tablemanager/AssociationUpdater;->getTempTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected generateDataMigrationSQL(Lorg/litepal/tablemanager/model/TableModel;)Ljava/lang/String;
    .locals 7
    .param p1, "tableModel"    # Lorg/litepal/tablemanager/model/TableModel;

    .prologue
    .line 319
    invoke-virtual {p1}, Lorg/litepal/tablemanager/model/TableModel;->getTableName()Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, "tableName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/litepal/tablemanager/model/TableModel;->getColumnModels()Ljava/util/List;

    move-result-object v1

    .line 321
    .local v1, "columnModels":Ljava/util/List;, "Ljava/util/List<Lorg/litepal/tablemanager/model/ColumnModel;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .local v3, "sql":Ljava/lang/StringBuilder;
    const-string v5, "insert into "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const/4 v2, 0x0

    .line 325
    .local v2, "needComma":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 332
    const-string v5, ") "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    const-string v5, "select "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const/4 v2, 0x0

    .line 335
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 342
    const-string v5, " from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v4}, Lorg/litepal/tablemanager/AssociationUpdater;->getTempTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 345
    .end local v2    # "needComma":Z
    .end local v3    # "sql":Ljava/lang/StringBuilder;
    :goto_2
    return-object v5

    .line 325
    .restart local v2    # "needComma":Z
    .restart local v3    # "sql":Ljava/lang/StringBuilder;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/tablemanager/model/ColumnModel;

    .line 326
    .local v0, "columnModel":Lorg/litepal/tablemanager/model/ColumnModel;
    if-eqz v2, :cond_1

    .line 327
    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_1
    const/4 v2, 0x1

    .line 330
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/ColumnModel;->getColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 335
    .end local v0    # "columnModel":Lorg/litepal/tablemanager/model/ColumnModel;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/tablemanager/model/ColumnModel;

    .line 336
    .restart local v0    # "columnModel":Lorg/litepal/tablemanager/model/ColumnModel;
    if-eqz v2, :cond_3

    .line 337
    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :cond_3
    const/4 v2, 0x1

    .line 340
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/ColumnModel;->getColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 345
    .end local v0    # "columnModel":Lorg/litepal/tablemanager/model/ColumnModel;
    .end local v2    # "needComma":Z
    .end local v3    # "sql":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method protected generateDropTempTableSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 357
    invoke-virtual {p0, p1}, Lorg/litepal/tablemanager/AssociationUpdater;->getTempTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/litepal/tablemanager/AssociationUpdater;->generateDropTableSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getForeignKeyColumns(Lorg/litepal/tablemanager/model/TableModel;)Ljava/util/List;
    .locals 8
    .param p1, "tableModel"    # Lorg/litepal/tablemanager/model/TableModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/tablemanager/model/TableModel;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v3, "foreignKeyColumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/litepal/tablemanager/model/TableModel;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/litepal/tablemanager/AssociationUpdater;->getTableModelFromDB(Ljava/lang/String;)Lorg/litepal/tablemanager/model/TableModel;

    move-result-object v4

    invoke-virtual {v4}, Lorg/litepal/tablemanager/model/TableModel;->getColumnModels()Ljava/util/List;

    move-result-object v1

    .line 89
    .local v1, "columnModelList":Ljava/util/List;, "Ljava/util/List<Lorg/litepal/tablemanager/model/ColumnModel;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 99
    return-object v3

    .line 89
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/tablemanager/model/ColumnModel;

    .line 90
    .local v0, "columnModel":Lorg/litepal/tablemanager/model/ColumnModel;
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/ColumnModel;->getColumnName()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "columnName":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/ColumnModel;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/litepal/tablemanager/AssociationUpdater;->isForeignKeyColumnFormat(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 92
    invoke-virtual {p1, v2}, Lorg/litepal/tablemanager/model/TableModel;->containsColumn(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 94
    const-string v5, "AssociationUpdater"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getForeignKeyColumnNames >> foreign key column is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/litepal/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected getTableModelFromDB(Ljava/lang/String;)Lorg/litepal/tablemanager/model/TableModel;
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lorg/litepal/tablemanager/AssociationUpdater;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v0}, Lorg/litepal/util/DBUtility;->findPragmaTableInfo(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Lorg/litepal/tablemanager/model/TableModel;

    move-result-object v0

    return-object v0
.end method

.method protected getTempTableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isForeignKeyColumn(Lorg/litepal/tablemanager/model/TableModel;Ljava/lang/String;)Z
    .locals 1
    .param p1, "tableModel"    # Lorg/litepal/tablemanager/model/TableModel;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lorg/litepal/tablemanager/AssociationUpdater;->getForeignKeyColumns(Lorg/litepal/tablemanager/model/TableModel;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/litepal/util/BaseUtility;->containsIgnoreCases(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected removeColumns(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 2
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "removeColumnNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-direct {p0, p1, p2}, Lorg/litepal/tablemanager/AssociationUpdater;->getRemoveColumnSQLs(Ljava/util/Collection;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/litepal/tablemanager/AssociationUpdater;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0, v1}, Lorg/litepal/tablemanager/AssociationUpdater;->execute([Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 163
    :cond_0
    return-void
.end method
