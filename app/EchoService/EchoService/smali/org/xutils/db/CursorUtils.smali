.class final Lorg/xutils/db/CursorUtils;
.super Ljava/lang/Object;
.source "CursorUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDbModel(Landroid/database/Cursor;)Lorg/xutils/db/table/DbModel;
    .locals 5
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 43
    new-instance v2, Lorg/xutils/db/table/DbModel;

    invoke-direct {v2}, Lorg/xutils/db/table/DbModel;-><init>()V

    .line 44
    .local v2, "result":Lorg/xutils/db/table/DbModel;
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    .line 45
    .local v0, "columnCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 46
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/xutils/db/table/DbModel;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-object v2
.end method

.method public static getEntity(Lorg/xutils/db/table/TableEntity;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/db/table/TableEntity",
            "<TT;>;",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<TT;>;"
    invoke-virtual {p0}, Lorg/xutils/db/table/TableEntity;->createEntity()Ljava/lang/Object;

    move-result-object v4

    .line 30
    .local v4, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lorg/xutils/db/table/TableEntity;->getColumnMap()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 31
    .local v2, "columnMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/xutils/db/table/ColumnEntity;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 32
    .local v1, "columnCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 33
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "columnName":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/db/table/ColumnEntity;

    .line 35
    .local v0, "column":Lorg/xutils/db/table/ColumnEntity;
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0, v4, p1, v5}, Lorg/xutils/db/table/ColumnEntity;->setValueFromCursor(Ljava/lang/Object;Landroid/database/Cursor;I)V

    .line 32
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 39
    .end local v0    # "column":Lorg/xutils/db/table/ColumnEntity;
    .end local v3    # "columnName":Ljava/lang/String;
    :cond_1
    return-object v4
.end method
