.class public final Lorg/xutils/db/DbModelSelector;
.super Ljava/lang/Object;
.source "DbModelSelector.java"


# instance fields
.field private columnExpressions:[Ljava/lang/String;

.field private groupByColumnName:Ljava/lang/String;

.field private having:Lorg/xutils/db/sqlite/WhereBuilder;

.field private selector:Lorg/xutils/db/Selector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/db/Selector",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/xutils/db/Selector;Ljava/lang/String;)V
    .locals 0
    .param p2, "groupByColumnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/Selector",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "selector":Lorg/xutils/db/Selector;, "Lorg/xutils/db/Selector<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    .line 49
    iput-object p2, p0, Lorg/xutils/db/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method protected constructor <init>(Lorg/xutils/db/Selector;[Ljava/lang/String;)V
    .locals 0
    .param p2, "columnExpressions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/Selector",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "selector":Lorg/xutils/db/Selector;, "Lorg/xutils/db/Selector<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    .line 54
    iput-object p2, p0, Lorg/xutils/db/DbModelSelector;->columnExpressions:[Ljava/lang/String;

    .line 55
    return-void
.end method

.method private constructor <init>(Lorg/xutils/db/table/TableEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lorg/xutils/db/Selector;->from(Lorg/xutils/db/table/TableEntity;)Lorg/xutils/db/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    .line 45
    return-void
.end method

.method static from(Lorg/xutils/db/table/TableEntity;)Lorg/xutils/db/DbModelSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity",
            "<*>;)",
            "Lorg/xutils/db/DbModelSelector;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    new-instance v0, Lorg/xutils/db/DbModelSelector;

    invoke-direct {v0, p0}, Lorg/xutils/db/DbModelSelector;-><init>(Lorg/xutils/db/table/TableEntity;)V

    return-object v0
.end method


# virtual methods
.method public and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/DbModelSelector;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xutils/db/Selector;->and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    .line 74
    return-object p0
.end method

.method public and(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/DbModelSelector;
    .locals 1
    .param p1, "where"    # Lorg/xutils/db/sqlite/WhereBuilder;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->and(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;

    .line 79
    return-object p0
.end method

.method public expr(Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;
    .locals 1
    .param p1, "expr"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->expr(Ljava/lang/String;)Lorg/xutils/db/Selector;

    .line 94
    return-object p0
.end method

.method public findAll()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/xutils/db/table/DbModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v6, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v6}, Lorg/xutils/db/Selector;->getTable()Lorg/xutils/db/table/TableEntity;

    move-result-object v5

    .line 158
    .local v5, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {v5}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v3, 0x0

    .line 176
    :cond_0
    :goto_0
    return-object v3

    .line 160
    :cond_1
    const/4 v3, 0x0

    .line 162
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/db/table/DbModel;>;"
    invoke-virtual {v5}, Lorg/xutils/db/table/TableEntity;->getDb()Lorg/xutils/DbManager;

    move-result-object v6

    invoke-virtual {p0}, Lorg/xutils/db/DbModelSelector;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/xutils/DbManager;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 163
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 165
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/db/table/DbModel;>;"
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/db/table/DbModel;>;"
    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 167
    invoke-static {v0}, Lorg/xutils/db/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lorg/xutils/db/table/DbModel;

    move-result-object v2

    .line 168
    .local v2, "entity":Lorg/xutils/db/table/DbModel;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 170
    .end local v2    # "entity":Lorg/xutils/db/table/DbModel;
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 171
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/db/table/DbModel;>;"
    .local v1, "e":Ljava/lang/Throwable;
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/db/table/DbModel;>;"
    :goto_2
    :try_start_2
    new-instance v6, Lorg/xutils/ex/DbException;

    invoke-direct {v6, v1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    :goto_3
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    throw v6

    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/db/table/DbModel;>;"
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/db/table/DbModel;>;"
    :cond_2
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    move-object v3, v4

    .line 174
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/db/table/DbModel;>;"
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/db/table/DbModel;>;"
    goto :goto_0

    .line 173
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/db/table/DbModel;>;"
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/db/table/DbModel;>;"
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/db/table/DbModel;>;"
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/db/table/DbModel;>;"
    goto :goto_3

    .line 170
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public findFirst()Lorg/xutils/db/table/DbModel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 137
    iget-object v4, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v4}, Lorg/xutils/db/Selector;->getTable()Lorg/xutils/db/table/TableEntity;

    move-result-object v2

    .line 138
    .local v2, "table":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<*>;"
    invoke-virtual {v2}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z

    move-result v4

    if-nez v4, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-object v3

    .line 140
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lorg/xutils/db/DbModelSelector;->limit(I)Lorg/xutils/db/DbModelSelector;

    .line 141
    invoke-virtual {v2}, Lorg/xutils/db/table/TableEntity;->getDb()Lorg/xutils/DbManager;

    move-result-object v4

    invoke-virtual {p0}, Lorg/xutils/db/DbModelSelector;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xutils/DbManager;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 142
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 144
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    invoke-static {v0}, Lorg/xutils/db/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lorg/xutils/db/table/DbModel;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 150
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    new-instance v3, Lorg/xutils/ex/DbException;

    invoke-direct {v3, v1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    throw v3
.end method

.method public getTable()Lorg/xutils/db/table/TableEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/db/table/TableEntity",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->getTable()Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    return-object v0
.end method

.method public groupBy(Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;
    .locals 0
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/xutils/db/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public having(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/DbModelSelector;
    .locals 0
    .param p1, "whereBuilder"    # Lorg/xutils/db/sqlite/WhereBuilder;

    .prologue
    .line 103
    iput-object p1, p0, Lorg/xutils/db/DbModelSelector;->having:Lorg/xutils/db/sqlite/WhereBuilder;

    .line 104
    return-object p0
.end method

.method public limit(I)Lorg/xutils/db/DbModelSelector;
    .locals 1
    .param p1, "limit"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    .line 124
    return-object p0
.end method

.method public offset(I)Lorg/xutils/db/DbModelSelector;
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->offset(I)Lorg/xutils/db/Selector;

    .line 129
    return-object p0
.end method

.method public or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/DbModelSelector;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xutils/db/Selector;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    .line 84
    return-object p0
.end method

.method public or(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/DbModelSelector;
    .locals 1
    .param p1, "where"    # Lorg/xutils/db/sqlite/WhereBuilder;

    .prologue
    .line 88
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->or(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;

    .line 89
    return-object p0
.end method

.method public orderBy(Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;

    .line 114
    return-object p0
.end method

.method public orderBy(Ljava/lang/String;Z)Lorg/xutils/db/DbModelSelector;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "desc"    # Z

    .prologue
    .line 118
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1, p2}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;Z)Lorg/xutils/db/Selector;

    .line 119
    return-object p0
.end method

.method public varargs select([Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;
    .locals 0
    .param p1, "columnExpressions"    # [Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lorg/xutils/db/DbModelSelector;->columnExpressions:[Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v3, "result":Ljava/lang/StringBuilder;
    const-string v5, "SELECT "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget-object v5, p0, Lorg/xutils/db/DbModelSelector;->columnExpressions:[Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/xutils/db/DbModelSelector;->columnExpressions:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_3

    .line 184
    iget-object v6, p0, Lorg/xutils/db/DbModelSelector;->columnExpressions:[Ljava/lang/String;

    array-length v7, v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v0, v6, v5

    .line 185
    .local v0, "columnExpression":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 188
    .end local v0    # "columnExpression":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 196
    :goto_1
    const-string v5, " FROM "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v6}, Lorg/xutils/db/Selector;->getTable()Lorg/xutils/db/table/TableEntity;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xutils/db/table/TableEntity;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v5, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v5}, Lorg/xutils/db/Selector;->getWhereBuilder()Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v4

    .line 198
    .local v4, "whereBuilder":Lorg/xutils/db/sqlite/WhereBuilder;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/xutils/db/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result v5

    if-lez v5, :cond_1

    .line 199
    const-string v5, " WHERE "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lorg/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_1
    iget-object v5, p0, Lorg/xutils/db/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 202
    const-string v5, " GROUP BY "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/xutils/db/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v5, p0, Lorg/xutils/db/DbModelSelector;->having:Lorg/xutils/db/sqlite/WhereBuilder;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/xutils/db/DbModelSelector;->having:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v5}, Lorg/xutils/db/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result v5

    if-lez v5, :cond_2

    .line 204
    const-string v5, " HAVING "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/xutils/db/DbModelSelector;->having:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v6}, Lorg/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_2
    iget-object v5, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v5}, Lorg/xutils/db/Selector;->getOrderByList()Ljava/util/List;

    move-result-object v2

    .line 208
    .local v2, "orderByList":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/db/Selector$OrderBy;>;"
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 209
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 210
    const-string v5, " ORDER BY "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/xutils/db/Selector$OrderBy;

    invoke-virtual {v5}, Lorg/xutils/db/Selector$OrderBy;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 190
    .end local v1    # "i":I
    .end local v2    # "orderByList":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/db/Selector$OrderBy;>;"
    .end local v4    # "whereBuilder":Lorg/xutils/db/sqlite/WhereBuilder;
    :cond_3
    iget-object v5, p0, Lorg/xutils/db/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 191
    iget-object v5, p0, Lorg/xutils/db/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 193
    :cond_4
    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 212
    .restart local v1    # "i":I
    .restart local v2    # "orderByList":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/db/Selector$OrderBy;>;"
    .restart local v4    # "whereBuilder":Lorg/xutils/db/sqlite/WhereBuilder;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 214
    .end local v1    # "i":I
    :cond_6
    iget-object v5, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v5}, Lorg/xutils/db/Selector;->getLimit()I

    move-result v5

    if-lez v5, :cond_7

    .line 215
    const-string v5, " LIMIT "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v6}, Lorg/xutils/db/Selector;->getLimit()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    const-string v5, " OFFSET "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v6}, Lorg/xutils/db/Selector;->getOffset()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/DbModelSelector;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    .line 69
    return-object p0
.end method

.method public where(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/DbModelSelector;
    .locals 1
    .param p1, "whereBuilder"    # Lorg/xutils/db/sqlite/WhereBuilder;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->where(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;

    .line 64
    return-object p0
.end method
