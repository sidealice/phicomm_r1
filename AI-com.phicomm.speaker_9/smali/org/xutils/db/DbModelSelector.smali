.class public final Lorg/xutils/db/DbModelSelector;
.super Ljava/lang/Object;
.source "DbModelSelector.java"


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lorg/xutils/db/sqlite/WhereBuilder;

.field private d:Lorg/xutils/db/Selector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/db/Selector<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/xutils/db/Selector;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/Selector<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    .line 49
    iput-object p2, p0, Lorg/xutils/db/DbModelSelector;->b:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lorg/xutils/db/Selector;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/Selector<",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    .line 54
    iput-object p2, p0, Lorg/xutils/db/DbModelSelector;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/DbModelSelector;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xutils/db/Selector;->and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    return-object p0
.end method

.method public and(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/DbModelSelector;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->and(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;

    return-object p0
.end method

.method public expr(Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->expr(Ljava/lang/String;)Lorg/xutils/db/Selector;

    return-object p0
.end method

.method public findAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/xutils/db/table/DbModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->getTable()Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 162
    :cond_0
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->getDb()Lorg/xutils/DbManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xutils/db/DbModelSelector;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 165
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    invoke-static {v0}, Lorg/xutils/db/a;->a(Landroid/database/Cursor;)Lorg/xutils/db/table/DbModel;

    move-result-object v1

    .line 168
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 173
    :cond_1
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 171
    :try_start_1
    new-instance v2, Lorg/xutils/ex/DbException;

    invoke-direct {v2, v1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :goto_1
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    throw v1

    :cond_2
    :goto_2
    return-object v2
.end method

.method public findFirst()Lorg/xutils/db/table/DbModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->getTable()Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x1

    .line 140
    invoke-virtual {p0, v1}, Lorg/xutils/db/DbModelSelector;->limit(I)Lorg/xutils/db/DbModelSelector;

    .line 141
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->getDb()Lorg/xutils/DbManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xutils/db/DbModelSelector;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 144
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    invoke-static {v0}, Lorg/xutils/db/a;->a(Landroid/database/Cursor;)Lorg/xutils/db/table/DbModel;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    return-object v1

    :cond_1
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 148
    :try_start_1
    new-instance v2, Lorg/xutils/ex/DbException;

    invoke-direct {v2, v1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :goto_0
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    throw v1

    :cond_2
    :goto_1
    return-object v2
.end method

.method public getTable()Lorg/xutils/db/table/TableEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/db/table/TableEntity<",
            "*>;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->getTable()Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    return-object v0
.end method

.method public groupBy(Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;
    .locals 0

    .line 98
    iput-object p1, p0, Lorg/xutils/db/DbModelSelector;->b:Ljava/lang/String;

    return-object p0
.end method

.method public having(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/DbModelSelector;
    .locals 0

    .line 103
    iput-object p1, p0, Lorg/xutils/db/DbModelSelector;->c:Lorg/xutils/db/sqlite/WhereBuilder;

    return-object p0
.end method

.method public limit(I)Lorg/xutils/db/DbModelSelector;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    return-object p0
.end method

.method public offset(I)Lorg/xutils/db/DbModelSelector;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->offset(I)Lorg/xutils/db/Selector;

    return-object p0
.end method

.method public or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/DbModelSelector;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xutils/db/Selector;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    return-object p0
.end method

.method public or(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/DbModelSelector;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->or(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;

    return-object p0
.end method

.method public orderBy(Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;

    return-object p0
.end method

.method public orderBy(Ljava/lang/String;Z)Lorg/xutils/db/DbModelSelector;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1, p2}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;Z)Lorg/xutils/db/Selector;

    return-object p0
.end method

.method public varargs select([Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;
    .locals 0

    .line 108
    iput-object p1, p0, Lorg/xutils/db/DbModelSelector;->a:[Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT "

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget-object v1, p0, Lorg/xutils/db/DbModelSelector;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/xutils/db/DbModelSelector;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 184
    iget-object v1, p0, Lorg/xutils/db/DbModelSelector;->a:[Ljava/lang/String;

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 185
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    .line 186
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 190
    :cond_1
    iget-object v1, p0, Lorg/xutils/db/DbModelSelector;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 191
    iget-object v1, p0, Lorg/xutils/db/DbModelSelector;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, "*"

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, " FROM "

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v1}, Lorg/xutils/db/Selector;->getTable()Lorg/xutils/db/table/TableEntity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xutils/db/table/TableEntity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v1, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v1}, Lorg/xutils/db/Selector;->getWhereBuilder()Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 198
    invoke-virtual {v1}, Lorg/xutils/db/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, " WHERE "

    .line 199
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_3
    iget-object v1, p0, Lorg/xutils/db/DbModelSelector;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, " GROUP BY "

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xutils/db/DbModelSelector;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v1, p0, Lorg/xutils/db/DbModelSelector;->c:Lorg/xutils/db/sqlite/WhereBuilder;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/xutils/db/DbModelSelector;->c:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v1}, Lorg/xutils/db/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, " HAVING "

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xutils/db/DbModelSelector;->c:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v1}, Lorg/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_4
    iget-object v1, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v1}, Lorg/xutils/db/Selector;->getOrderByList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 208
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 209
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    const-string v3, " ORDER BY "

    .line 210
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xutils/db/Selector$OrderBy;

    invoke-virtual {v3}, Lorg/xutils/db/Selector$OrderBy;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 212
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 214
    :cond_6
    iget-object v1, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v1}, Lorg/xutils/db/Selector;->getLimit()I

    move-result v1

    if-lez v1, :cond_7

    const-string v1, " LIMIT "

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v1}, Lorg/xutils/db/Selector;->getLimit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " OFFSET "

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v1}, Lorg/xutils/db/Selector;->getOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/DbModelSelector;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    return-object p0
.end method

.method public where(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/DbModelSelector;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->where(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;

    return-object p0
.end method
