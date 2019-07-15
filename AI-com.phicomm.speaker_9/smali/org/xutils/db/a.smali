.class final Lorg/xutils/db/a;
.super Ljava/lang/Object;
.source "CursorUtils.java"


# direct methods
.method public static a(Lorg/xutils/db/table/TableEntity;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/db/table/TableEntity<",
            "TT;>;",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lorg/xutils/db/table/TableEntity;->createEntity()Ljava/lang/Object;

    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lorg/xutils/db/table/TableEntity;->getColumnMap()Ljava/util/LinkedHashMap;

    move-result-object p0

    .line 31
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 33
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xutils/db/table/ColumnEntity;

    if-eqz v3, :cond_0

    .line 36
    invoke-virtual {v3, v0, p1, v2}, Lorg/xutils/db/table/ColumnEntity;->setValueFromCursor(Ljava/lang/Object;Landroid/database/Cursor;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a(Landroid/database/Cursor;)Lorg/xutils/db/table/DbModel;
    .locals 5

    .line 43
    new-instance v0, Lorg/xutils/db/table/DbModel;

    invoke-direct {v0}, Lorg/xutils/db/table/DbModel;-><init>()V

    .line 44
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 46
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/xutils/db/table/DbModel;->add(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
