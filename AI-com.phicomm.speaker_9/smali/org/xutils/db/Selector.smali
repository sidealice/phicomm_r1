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
.field private final a:Lorg/xutils/db/table/TableEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/db/table/TableEntity<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Lorg/xutils/db/sqlite/WhereBuilder;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xutils/db/Selector$OrderBy;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>(Lorg/xutils/db/table/TableEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity<",
            "TT;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lorg/xutils/db/Selector;->d:I

    .line 41
    iput v0, p0, Lorg/xutils/db/Selector;->e:I

    .line 44
    iput-object p1, p0, Lorg/xutils/db/Selector;->a:Lorg/xutils/db/table/TableEntity;

    return-void
.end method

.method static a(Lorg/xutils/db/table/TableEntity;)Lorg/xutils/db/Selector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/db/table/TableEntity<",
            "TT;>;)",
            "Lorg/xutils/db/Selector<",
            "TT;>;"
        }
    .end annotation

    .line 49
    new-instance v0, Lorg/xutils/db/Selector;

    invoke-direct {v0, p0}, Lorg/xutils/db/Selector;-><init>(Lorg/xutils/db/table/TableEntity;)V

    return-object v0
.end method


# virtual methods
.method public and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/xutils/db/Selector<",
            "TT;>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/xutils/db/Selector;->b:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    return-object p0
.end method

.method public and(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/sqlite/WhereBuilder;",
            ")",
            "Lorg/xutils/db/Selector<",
            "TT;>;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/xutils/db/Selector;->b:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v0, p1}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/sqlite/WhereBuilder;

    return-object p0
.end method

.method public count()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lorg/xutils/db/Selector;->a:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    const/4 v0, 0x1

    .line 187
    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/xutils/db/Selector;->a:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v5}, Lorg/xutils/db/table/TableEntity;->getId()Lorg/xutils/db/table/ColumnEntity;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xutils/db/table/ColumnEntity;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\") as count"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-virtual {p0, v0}, Lorg/xutils/db/Selector;->select([Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lorg/xutils/db/DbModelSelector;->findFirst()Lorg/xutils/db/table/DbModel;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "count"

    .line 190
    invoke-virtual {v0, v1}, Lorg/xutils/db/table/DbModel;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide v1
.end method

.method public expr(Ljava/lang/String;)Lorg/xutils/db/Selector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/xutils/db/Selector<",
            "TT;>;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/xutils/db/Selector;->b:Lorg/xutils/db/sqlite/WhereBuilder;

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Lorg/xutils/db/sqlite/WhereBuilder;->b()Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/db/Selector;->b:Lorg/xutils/db/sqlite/WhereBuilder;

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/xutils/db/Selector;->b:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v0, p1}, Lorg/xutils/db/sqlite/WhereBuilder;->expr(Ljava/lang/String;)Lorg/xutils/db/sqlite/WhereBuilder;

    return-object p0
.end method

.method public findAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lorg/xutils/db/Selector;->a:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 167
    :cond_0
    iget-object v0, p0, Lorg/xutils/db/Selector;->a:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->getDb()Lorg/xutils/DbManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xutils/db/Selector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xutils/DbManager;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 170
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    iget-object v2, p0, Lorg/xutils/db/Selector;->a:Lorg/xutils/db/table/TableEntity;

    invoke-static {v2, v0}, Lorg/xutils/db/a;->a(Lorg/xutils/db/table/TableEntity;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v2

    .line 173
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 178
    :cond_1
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 176
    :try_start_1
    new-instance v2, Lorg/xutils/ex/DbException;

    invoke-direct {v2, v1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :goto_1
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    throw v1

    :cond_2
    :goto_2
    return-object v1
.end method

.method public findFirst()Ljava/lang/Object;
    .locals 3
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

    .line 145
    iget-object v0, p0, Lorg/xutils/db/Selector;->a:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExist()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    .line 147
    invoke-virtual {p0, v0}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    .line 148
    iget-object v0, p0, Lorg/xutils/db/Selector;->a:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->getDb()Lorg/xutils/DbManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xutils/db/Selector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xutils/DbManager;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 151
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    iget-object v1, p0, Lorg/xutils/db/Selector;->a:Lorg/xutils/db/table/TableEntity;

    invoke-static {v1, v0}, Lorg/xutils/db/a;->a(Lorg/xutils/db/table/TableEntity;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
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

    .line 155
    :try_start_1
    new-instance v2, Lorg/xutils/ex/DbException;

    invoke-direct {v2, v1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :goto_0
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    throw v1

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getLimit()I
    .locals 1

    .line 137
    iget v0, p0, Lorg/xutils/db/Selector;->d:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .line 141
    iget v0, p0, Lorg/xutils/db/Selector;->e:I

    return v0
.end method

.method public getOrderByList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/xutils/db/Selector$OrderBy;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/xutils/db/Selector;->c:Ljava/util/List;

    return-object v0
.end method

.method public getTable()Lorg/xutils/db/table/TableEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/db/table/TableEntity<",
            "TT;>;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lorg/xutils/db/Selector;->a:Lorg/xutils/db/table/TableEntity;

    return-object v0
.end method

.method public getWhereBuilder()Lorg/xutils/db/sqlite/WhereBuilder;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/xutils/db/Selector;->b:Lorg/xutils/db/sqlite/WhereBuilder;

    return-object v0
.end method

.method public groupBy(Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;
    .locals 1

    .line 91
    new-instance v0, Lorg/xutils/db/DbModelSelector;

    invoke-direct {v0, p0, p1}, Lorg/xutils/db/DbModelSelector;-><init>(Lorg/xutils/db/Selector;Ljava/lang/String;)V

    return-object v0
.end method

.method public limit(I)Lorg/xutils/db/Selector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/xutils/db/Selector<",
            "TT;>;"
        }
    .end annotation

    .line 115
    iput p1, p0, Lorg/xutils/db/Selector;->d:I

    return-object p0
.end method

.method public offset(I)Lorg/xutils/db/Selector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/xutils/db/Selector<",
            "TT;>;"
        }
    .end annotation

    .line 120
    iput p1, p0, Lorg/xutils/db/Selector;->e:I

    return-object p0
.end method

.method public or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/xutils/db/Selector<",
            "TT;>;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/xutils/db/Selector;->b:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xutils/db/sqlite/WhereBuilder;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    return-object p0
.end method

.method public or(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/xutils/db/Selector;->b:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v0, p1}, Lorg/xutils/db/sqlite/WhereBuilder;->or(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/sqlite/WhereBuilder;

    return-object p0
.end method

.method public orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/xutils/db/Selector<",
            "TT;>;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/xutils/db/Selector;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xutils/db/Selector;->c:Ljava/util/List;

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/xutils/db/Selector;->c:Ljava/util/List;

    new-instance v1, Lorg/xutils/db/Selector$OrderBy;

    invoke-direct {v1, p1}, Lorg/xutils/db/Selector$OrderBy;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public orderBy(Ljava/lang/String;Z)Lorg/xutils/db/Selector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/xutils/db/Selector<",
            "TT;>;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/xutils/db/Selector;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xutils/db/Selector;->c:Ljava/util/List;

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/xutils/db/Selector;->c:Ljava/util/List;

    new-instance v1, Lorg/xutils/db/Selector$OrderBy;

    invoke-direct {v1, p1, p2}, Lorg/xutils/db/Selector$OrderBy;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs select([Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;
    .locals 1

    .line 95
    new-instance v0, Lorg/xutils/db/DbModelSelector;

    invoke-direct {v0, p0, p1}, Lorg/xutils/db/DbModelSelector;-><init>(Lorg/xutils/db/Selector;[Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT "

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "*"

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FROM "

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xutils/db/Selector;->a:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v1}, Lorg/xutils/db/table/TableEntity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v1, p0, Lorg/xutils/db/Selector;->b:Lorg/xutils/db/sqlite/WhereBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/xutils/db/Selector;->b:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v1}, Lorg/xutils/db/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, " WHERE "

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xutils/db/Selector;->b:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v1}, Lorg/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_0
    iget-object v1, p0, Lorg/xutils/db/Selector;->c:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/xutils/db/Selector;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, " ORDER BY "

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-object v1, p0, Lorg/xutils/db/Selector;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xutils/db/Selector$OrderBy;

    .line 207
    invoke-virtual {v2}, Lorg/xutils/db/Selector$OrderBy;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 211
    :cond_2
    iget v1, p0, Lorg/xutils/db/Selector;->d:I

    if-lez v1, :cond_3

    const-string v1, " LIMIT "

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/xutils/db/Selector;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " OFFSET "

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/xutils/db/Selector;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/xutils/db/Selector<",
            "TT;>;"
        }
    .end annotation

    .line 58
    invoke-static {p1, p2, p3}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/db/Selector;->b:Lorg/xutils/db/sqlite/WhereBuilder;

    return-object p0
.end method

.method public where(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/sqlite/WhereBuilder;",
            ")",
            "Lorg/xutils/db/Selector<",
            "TT;>;"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lorg/xutils/db/Selector;->b:Lorg/xutils/db/sqlite/WhereBuilder;

    return-object p0
.end method
