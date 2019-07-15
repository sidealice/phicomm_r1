.class public final Lorg/xutils/db/Selector;
.super Ljava/lang/Object;
.source "Selector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/db/Selector$OrderBy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private limit:I

.field private offset:I

.field private orderByList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/xutils/db/Selector$OrderBy;",
            ">;"
        }
    .end annotation
.end field

.field private final table:Lorg/xutils/db/table/TableEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/db/table/TableEntity",
            "<TT;>;"
        }
    .end annotation
.end field

.field private whereBuilder:Lorg/xutils/db/sqlite/WhereBuilder;


# direct methods
.method private constructor <init>(Lorg/xutils/db/table/TableEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/xutils/db/Selector;, "Lorg/xutils/db/Selector<TT;>;"
    .local p1, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<TT;>;"
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lorg/xutils/db/Selector;->limit:I

    .line 41
    iput v0, p0, Lorg/xutils/db/Selector;->offset:I

    .line 44
    iput-object p1, p0, Lorg/xutils/db/Selector;->table:Lorg/xutils/db/table/TableEntity;

    .line 45
    return-void
.end method

.method static from(Lorg/xutils/db/table/TableEntity;)Lorg/xutils/db/Selector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/db/table/TableEntity",
            "<TT;>;)",
            "Lorg/xutils/db/Selector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<TT;>;"
    new-instance v0, Lorg/xutils/db/Selector;

    invoke-direct {v0, p0}, Lorg/xutils/db/Selector;-><init>(Lorg/xutils/db/table/TableEntity;)V

    return-object v0
.end method


# virtual methods
.method public and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/xutils/db/Selector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lorg/xutils/db/Selector;, "Lorg/xutils/db/Selector<TT;>;"
    iget-object v0, p0, Lorg/xutils/db/Selector;->whereBuilder:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 64
    return-object p0
.end method

.method public and(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;
    .locals 1
    .param p1, "where"    # Lorg/xutils/db/sqlite/WhereBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/sqlite/WhereBuilder;",
            ")",
            "Lorg/xutils/db/Selector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lorg/xutils/db/Selector;, "Lorg/xutils/db/Selector<TT;>;"
    iget-object v0, p0, Lorg/xutils/db/Selector;->whereBuilder:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v0, p1}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 69
    return-object p0
.end method

.method public count()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/xutils/db/Selector;, "Lorg/xutils/db/Selector<TT;>;"
    const-wide/16 v2, 0x0

    .line 185
    iget-object v4, p0, Lorg/xutils/db/Selector;->table:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v4}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z

    move-result v4

    if-nez v4, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-wide v2

    .line 187
    :cond_1
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "count(\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/xutils/db/Selector;->table:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v7}, Lorg/xutils/db/table/TableEntity;->getId()Lorg/xutils/db/table/ColumnEntity;

    move-result-object v7

    invoke-virtual {v7}, Lorg/xutils/db/table/ColumnEntity;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\") as count"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lorg/xutils/db/Selector;->select([Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;

    move-result-object v0

    .line 188
    .local v0, "dmSelector":Lorg/xutils/db/DbModelSelector;
    invoke-virtual {v0}, Lorg/xutils/db/DbModelSelector;->findFirst()Lorg/xutils/db/table/DbModel;

    move-result-object v1

    .line 189
    .local v1, "firstModel":Lorg/xutils/db/table/DbModel;
    if-eqz v1, :cond_0

    .line 190
    const-string v2, "count"

    invoke-virtual {v1, v2}, Lorg/xutils/db/table/DbModel;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public expr(Ljava/lang/String;)Lorg/xutils/db/Selector;
    .locals 1
    .param p1, "expr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/xutils/db/Selector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lorg/xutils/db/Selector;, "Lorg/xutils/db/Selector<TT;>;"
    iget-object v0, p0, Lorg/xutils/db/Selector;->whereBuilder:Lorg/xutils/db/sqlite/WhereBuilder;

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Lorg/xutils/db/sqlite/WhereBuilder;->b()Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/db/Selector;->whereBuilder:Lorg/xutils/db/sqlite/WhereBuilder;

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/xutils/db/Selector;->whereBuilder:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v0, p1}, Lorg/xutils/db/sqlite/WhereBuilder;->expr(Ljava/lang/String;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 87
    return-object p0
.end method

.method public findAll()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lorg/xutils/db/Selector;, "Lorg/xutils/db/Selector<TT;>;"
    iget-object v5, p0, Lorg/xutils/db/Selector;->table:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v5}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x0

    .line 181
    :cond_0
    :goto_0
    return-object v3

    .line 166
    :cond_1
    const/4 v3, 0x0

    .line 167
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v5, p0, Lorg/xutils/db/Selector;->table:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v5}, Lorg/xutils/db/table/TableEntity;->getDb()Lorg/xutils/DbManager;

    move-result-object v5

    invoke-virtual {p0}, Lorg/xutils/db/Selector;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/xutils/DbManager;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 168
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 170
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 172
    iget-object v5, p0, Lorg/xutils/db/Selector;->table:Lorg/xutils/db/table/TableEntity;

    invoke-static {v5, v0}, Lorg/xutils/db/CursorUtils;->getEntity(Lorg/xutils/db/table/TableEntity;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v2

    .line 173
    .local v2, "entity":Ljava/lang/Object;, "TT;"
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 175
    .end local v2    # "entity":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 176
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local v1, "e":Ljava/lang/Throwable;
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_2
    :try_start_2
    new-instance v5, Lorg/xutils/ex/DbException;

    invoke-direct {v5, v1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    :goto_3
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    throw v5

    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_2
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    move-object v3, v4

    .line 179
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    goto :goto_0

    .line 178
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    goto :goto_3

    .line 175
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public findFirst()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/xutils/db/Selector;, "Lorg/xutils/db/Selector<TT;>;"
    const/4 v2, 0x0

    .line 145
    iget-object v3, p0, Lorg/xutils/db/Selector;->table:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v3}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-object v2

    .line 147
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    .line 148
    iget-object v3, p0, Lorg/xutils/db/Selector;->table:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v3}, Lorg/xutils/db/table/TableEntity;->getDb()Lorg/xutils/DbManager;

    move-result-object v3

    invoke-virtual {p0}, Lorg/xutils/db/Selector;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/xutils/DbManager;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 149
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 152
    iget-object v2, p0, Lorg/xutils/db/Selector;->table:Lorg/xutils/db/table/TableEntity;

    invoke-static {v2, v0}, Lorg/xutils/db/CursorUtils;->getEntity(Lorg/xutils/db/table/TableEntity;Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 157
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    new-instance v2, Lorg/xutils/ex/DbException;

    invoke-direct {v2, v1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    throw v2
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 137
    .local p0, "this":Lorg/xutils/db/Selector;, "Lorg/xutils/db/Selector<TT;>;"
    iget v0, p0, Lorg/xutils/db/Selector;->limit:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 141
    .local p0, "this":Lorg/xutils/db/Selector;, "Lorg/xutils/db/Selector<TT;>;"
    iget v0, p0, Lorg/xutils/db/Selector;->offset:I

    return v0
.end method

.method public getOrderByList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/xutils/db/Selector$OrderBy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lorg/xutils/db/Selector;, "Lorg/xutils/db/Selector<TT;>;"
    iget-object v0, p0, Lorg/xutils/db/Selector;->orderByList:Ljava/util/List;

    return-object v0
.end method

.method public getTable()Lorg/xutils/db/table/TableEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/db/table/TableEntity",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lorg/xutils/db/Selector;, "Lorg/xutils/db/Selector<TT;>;"
    iget-object v0, p0, Lorg/xutils/db/Selector;->table:Lorg/xutils/db/table/TableEntity;

    return-object v0
.end method

.method public getWhereBuilder()Lorg/xutils/db/sqlite/WhereBuilder;
    .locals 1

    .prologue
    .line 129
    .local p0, "this":Lorg/xutils/db/Selector;, "Lorg/xutils/db/Selector<TT;>;"
    iget-object v0, p0, Lorg/xutils/db/Selector;->whereBuilder:Lorg/xutils/db/sqlite/WhereBuilder;

    return-object v0
.end method

.method public groupBy(Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 91
    .local p0, "this":Lorg/xutils/db/Selector;, "Lorg/xutils/db/Selector<TT;>;"
    new-instance v0, Lorg/xutils/db/DbModelSelector;

    invoke-direct {v0, p0, p1}, Lorg/xutils/db/DbModelSelector;-><init>(Lorg/xutils/db/Selector;Ljava/lang/String;)V

    return-object v0
.end method

.method public limit(I)Lorg/xutils/db/Selector;
    .locals 0
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/xutils/db/Selector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lorg/xutils/db/Selector;, "Lorg/xutils/db/Selector<TT;>;"
    iput p1, p0, Lorg/xutils/db/Selector;->limit:I

    .line 116
    return-object p0
.end method

.method public offset(I)Lorg/xutils/db/Selector;
    .locals 0
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/xutils/db/Selector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lorg/xutils/db/Selector;, "Lorg/xutils/db/Selector<TT;>;"
    iput p1, p0, Lorg/xutils/db/Selector;->offset:I

    .line 121
    return-object p0
.end method

.method public or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/xutils/db/Selector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lorg/xutils/db/Selector;, "Lorg/xutils/db/Selector<TT;>;"
    iget-object v0, p0, Lorg/xutils/db/Selector;->whereBuilder:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xutils/db/sqlite/WhereBuilder;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 74
    return-object p0
.end method

.method public or(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;
    .locals 1
    .param p1, "where"    # Lorg/xutils/db/sqlite/WhereBuilder;

    .prologue
    .line 78
    .local p0, "this":Lorg/xutils/db/Selector;, "Lorg/xutils/db/Selector<TT;>;"
    iget-object v0, p0, Lorg/xutils/db/Selector;->whereBuilder:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v0, p1}, Lorg/xutils/db/sqlite/WhereBuilder;->or(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 79
    return-object p0
.end method

.method public orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/xutils/db/Selector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lorg/xutils/db/Selector;, "Lorg/xutils/db/Selector<TT;>;"
    iget-object v0, p0, Lorg/xutils/db/Selector;->orderByList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xutils/db/Selector;->orderByList:Ljava/util/List;

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/xutils/db/Selector;->orderByList:Ljava/util/List;

    new-instance v1, Lorg/xutils/db/Selector$OrderBy;

    invoke-direct {v1, p1}, Lorg/xutils/db/Selector$OrderBy;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-object p0
.end method

.method public orderBy(Ljava/lang/String;Z)Lorg/xutils/db/Selector;
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "desc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/xutils/db/Selector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lorg/xutils/db/Selector;, "Lorg/xutils/db/Selector<TT;>;"
    iget-object v0, p0, Lorg/xutils/db/Selector;->orderByList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xutils/db/Selector;->orderByList:Ljava/util/List;

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/xutils/db/Selector;->orderByList:Ljava/util/List;

    new-instance v1, Lorg/xutils/db/Selector$OrderBy;

    invoke-direct {v1, p1, p2}, Lorg/xutils/db/Selector$OrderBy;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-object p0
.end method

.method public varargs select([Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;
    .locals 1
    .param p1, "columnExpressions"    # [Ljava/lang/String;

    .prologue
    .line 95
    .local p0, "this":Lorg/xutils/db/Selector;, "Lorg/xutils/db/Selector<TT;>;"
    new-instance v0, Lorg/xutils/db/DbModelSelector;

    invoke-direct {v0, p0, p1}, Lorg/xutils/db/DbModelSelector;-><init>(Lorg/xutils/db/Selector;[Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 197
    .local p0, "this":Lorg/xutils/db/Selector;, "Lorg/xutils/db/Selector<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .local v1, "result":Ljava/lang/StringBuilder;
    const-string v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/xutils/db/Selector;->table:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v3}, Lorg/xutils/db/table/TableEntity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v2, p0, Lorg/xutils/db/Selector;->whereBuilder:Lorg/xutils/db/sqlite/WhereBuilder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/xutils/db/Selector;->whereBuilder:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v2}, Lorg/xutils/db/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result v2

    if-lez v2, :cond_0

    .line 202
    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/xutils/db/Selector;->whereBuilder:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v3}, Lorg/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_0
    iget-object v2, p0, Lorg/xutils/db/Selector;->orderByList:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/xutils/db/Selector;->orderByList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 205
    const-string v2, " ORDER BY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-object v2, p0, Lorg/xutils/db/Selector;->orderByList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/db/Selector$OrderBy;

    .line 207
    .local v0, "orderBy":Lorg/xutils/db/Selector$OrderBy;
    invoke-virtual {v0}, Lorg/xutils/db/Selector$OrderBy;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 209
    .end local v0    # "orderBy":Lorg/xutils/db/Selector$OrderBy;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 211
    :cond_2
    iget v2, p0, Lorg/xutils/db/Selector;->limit:I

    if-lez v2, :cond_3

    .line 212
    const-string v2, " LIMIT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/xutils/db/Selector;->limit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    const-string v2, " OFFSET "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/xutils/db/Selector;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/xutils/db/Selector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lorg/xutils/db/Selector;, "Lorg/xutils/db/Selector<TT;>;"
    invoke-static {p1, p2, p3}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/db/Selector;->whereBuilder:Lorg/xutils/db/sqlite/WhereBuilder;

    .line 59
    return-object p0
.end method

.method public where(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;
    .locals 0
    .param p1, "whereBuilder"    # Lorg/xutils/db/sqlite/WhereBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/sqlite/WhereBuilder;",
            ")",
            "Lorg/xutils/db/Selector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lorg/xutils/db/Selector;, "Lorg/xutils/db/Selector<TT;>;"
    iput-object p1, p0, Lorg/xutils/db/Selector;->whereBuilder:Lorg/xutils/db/sqlite/WhereBuilder;

    .line 54
    return-object p0
.end method
