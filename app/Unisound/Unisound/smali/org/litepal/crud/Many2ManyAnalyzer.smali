.class public Lorg/litepal/crud/Many2ManyAnalyzer;
.super Lorg/litepal/crud/AssociationsAnalyzer;
.source "Many2ManyAnalyzer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/litepal/crud/AssociationsAnalyzer;-><init>()V

    return-void
.end method

.method private addNewModelForAssociatedModel(Ljava/util/Collection;Lorg/litepal/crud/DataSupport;)V
    .locals 1
    .param p2, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/crud/DataSupport;",
            ">;",
            "Lorg/litepal/crud/DataSupport;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "associatedModelCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/DataSupport;>;"
    invoke-interface {p1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    return-void
.end method

.method private dealAssociatedModel(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/DataSupport;)V
    .locals 4
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "associatedModel"    # Lorg/litepal/crud/DataSupport;

    .prologue
    .line 121
    invoke-virtual {p2}, Lorg/litepal/crud/DataSupport;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p2}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p2}, Lorg/litepal/crud/DataSupport;->getBaseObjId()J

    move-result-wide v2

    .line 122
    invoke-virtual {p1, v0, v2, v3}, Lorg/litepal/crud/DataSupport;->addAssociatedModelForJoinTable(Ljava/lang/String;J)V

    .line 125
    :cond_0
    return-void
.end method

.method private declareAssociations(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)V
    .locals 1
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "associationInfo"    # Lorg/litepal/crud/model/AssociationsInfo;

    .prologue
    .line 89
    invoke-direct {p0, p2}, Lorg/litepal/crud/Many2ManyAnalyzer;->getAssociatedTableName(Lorg/litepal/crud/model/AssociationsInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/litepal/crud/DataSupport;->addEmptyModelForJoinTable(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private getAssociatedTableName(Lorg/litepal/crud/model/AssociationsInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "associationInfo"    # Lorg/litepal/crud/model/AssociationsInfo;

    .prologue
    .line 136
    .line 137
    invoke-virtual {p1}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociatedClassName()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getJoinTableName(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/DataSupport;)Ljava/lang/String;
    .locals 1
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "associatedModel"    # Lorg/litepal/crud/DataSupport;

    .prologue
    .line 217
    invoke-virtual {p2}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/litepal/crud/Many2ManyAnalyzer;->getIntermediateTableName(Lorg/litepal/crud/DataSupport;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelection(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/DataSupport;)Ljava/lang/String;
    .locals 2
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "associatedModel"    # Lorg/litepal/crud/DataSupport;

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v0, "where":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/litepal/crud/Many2ManyAnalyzer;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, " = ? and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p2}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/litepal/crud/Many2ManyAnalyzer;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSelectionArgs(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/DataSupport;)[Ljava/lang/String;
    .locals 4
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "associatedModel"    # Lorg/litepal/crud/DataSupport;

    .prologue
    .line 203
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getBaseObjId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 204
    invoke-virtual {p2}, Lorg/litepal/crud/DataSupport;->getBaseObjId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 203
    return-object v0
.end method

.method private isDataExists(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/DataSupport;)Z
    .locals 12
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "associatedModel"    # Lorg/litepal/crud/DataSupport;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 156
    const/4 v10, 0x0

    .line 157
    .local v10, "exists":Z
    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 158
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 160
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/litepal/crud/Many2ManyAnalyzer;->getJoinTableName(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/DataSupport;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 161
    invoke-direct {p0, p1, p2}, Lorg/litepal/crud/Many2ManyAnalyzer;->getSelection(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/DataSupport;)Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-direct {p0, p1, p2}, Lorg/litepal/crud/Many2ManyAnalyzer;->getSelectionArgs(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/DataSupport;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 160
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 163
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_0

    move v10, v11

    .line 168
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v11, v10

    .line 170
    :goto_1
    return v11

    .line 163
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v9

    .line 165
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 167
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 168
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 169
    throw v1
.end method


# virtual methods
.method analyze(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)V
    .locals 6
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "associationInfo"    # Lorg/litepal/crud/model/AssociationsInfo;
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
    .line 63
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/Many2ManyAnalyzer;->getAssociatedModels(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)Ljava/util/Collection;

    move-result-object v1

    .line 64
    .local v1, "associatedModels":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/DataSupport;>;"
    invoke-direct {p0, p1, p2}, Lorg/litepal/crud/Many2ManyAnalyzer;->declareAssociations(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)V

    .line 65
    if-eqz v1, :cond_0

    .line 66
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 77
    :cond_0
    return-void

    .line 66
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/crud/DataSupport;

    .line 67
    .local v0, "associatedModel":Lorg/litepal/crud/DataSupport;
    invoke-virtual {p0, v0, p2}, Lorg/litepal/crud/Many2ManyAnalyzer;->getReverseAssociatedModels(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)Ljava/util/Collection;

    move-result-object v3

    .line 70
    .local v3, "tempCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/DataSupport;>;"
    invoke-virtual {p2}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociateSelfFromOtherModel()Ljava/lang/reflect/Field;

    move-result-object v5

    .line 69
    invoke-virtual {p0, v3, v5}, Lorg/litepal/crud/Many2ManyAnalyzer;->checkAssociatedModelCollection(Ljava/util/Collection;Ljava/lang/reflect/Field;)Ljava/util/Collection;

    move-result-object v2

    .line 71
    .local v2, "reverseAssociatedModels":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/DataSupport;>;"
    invoke-direct {p0, v2, p1}, Lorg/litepal/crud/Many2ManyAnalyzer;->addNewModelForAssociatedModel(Ljava/util/Collection;Lorg/litepal/crud/DataSupport;)V

    .line 72
    invoke-virtual {p0, v0, p2, v2}, Lorg/litepal/crud/Many2ManyAnalyzer;->setReverseAssociatedModels(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;Ljava/util/Collection;)V

    .line 74
    invoke-direct {p0, p1, v0}, Lorg/litepal/crud/Many2ManyAnalyzer;->dealAssociatedModel(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/DataSupport;)V

    goto :goto_0
.end method
