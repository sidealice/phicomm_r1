.class public Lorg/litepal/tablemanager/Dropper;
.super Lorg/litepal/tablemanager/AssociationUpdater;
.source "Dropper.java"


# instance fields
.field private mTableModels:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/tablemanager/model/TableModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/litepal/tablemanager/AssociationUpdater;-><init>()V

    return-void
.end method

.method private dropTables()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/litepal/tablemanager/Dropper;->findTablesToDrop()Ljava/util/List;

    move-result-object v0

    .line 66
    .local v0, "tableNamesToDrop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/litepal/tablemanager/Dropper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0, v1}, Lorg/litepal/tablemanager/Dropper;->dropTables(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 67
    invoke-virtual {p0, v0}, Lorg/litepal/tablemanager/Dropper;->clearCopyInTableSchema(Ljava/util/List;)V

    .line 68
    return-void
.end method

.method private findTablesToDrop()Ljava/util/List;
    .locals 13
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
    .line 77
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v9, "dropTableNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 80
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lorg/litepal/tablemanager/Dropper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_schema"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 81
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    :cond_0
    const-string v0, "name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 83
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 86
    .local v11, "tableName":Ljava/lang/String;
    const-string v0, "type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 85
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 87
    .local v12, "tableType":I
    invoke-direct {p0, v11, v12}, Lorg/litepal/tablemanager/Dropper;->shouldDropThisTable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    const-string v0, "AssociationUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "need to drop "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/litepal/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 97
    .end local v11    # "tableName":Ljava/lang/String;
    .end local v12    # "tableType":I
    :cond_2
    if-eqz v8, :cond_3

    .line 98
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 101
    :cond_3
    :goto_0
    return-object v9

    .line 94
    :catch_0
    move-exception v10

    .line 95
    .local v10, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    if-eqz v8, :cond_3

    .line 98
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 96
    .end local v10    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 97
    if-eqz v8, :cond_4

    .line 98
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_4
    throw v0
.end method

.method private pickTableNamesFromTableModels()Ljava/util/List;
    .locals 4
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
    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v1, "tableNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/litepal/tablemanager/Dropper;->mTableModels:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 114
    return-object v1

    .line 111
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/tablemanager/model/TableModel;

    .line 112
    .local v0, "tableModel":Lorg/litepal/tablemanager/model/TableModel;
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/TableModel;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private shouldDropThisTable(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "tableType"    # I

    .prologue
    .line 132
    invoke-direct {p0}, Lorg/litepal/tablemanager/Dropper;->pickTableNamesFromTableModels()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/litepal/util/BaseUtility;->containsIgnoreCases(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    if-nez p2, :cond_0

    .line 132
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected createOrUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "force"    # Z

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/litepal/tablemanager/Dropper;->getAllTableModels()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/litepal/tablemanager/Dropper;->mTableModels:Ljava/util/Collection;

    .line 56
    iput-object p1, p0, Lorg/litepal/tablemanager/Dropper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 57
    invoke-direct {p0}, Lorg/litepal/tablemanager/Dropper;->dropTables()V

    .line 58
    return-void
.end method
