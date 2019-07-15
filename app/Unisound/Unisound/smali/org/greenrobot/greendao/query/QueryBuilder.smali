.class public Lorg/greenrobot/greendao/query/QueryBuilder;
.super Ljava/lang/Object;
.source "QueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static LOG_SQL:Z

.field public static LOG_VALUES:Z


# instance fields
.field private final dao:Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TT;*>;"
        }
    .end annotation
.end field

.field private distinct:Z

.field private final joins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/greenrobot/greendao/query/Join",
            "<TT;*>;>;"
        }
    .end annotation
.end field

.field private limit:Ljava/lang/Integer;

.field private offset:Ljava/lang/Integer;

.field private orderBuilder:Ljava/lang/StringBuilder;

.field private stringOrderCollation:Ljava/lang/String;

.field private final tablePrefix:Ljava/lang/String;

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/query/WhereCollector",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/greenrobot/greendao/AbstractDao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TT;*>;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    .local p1, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;*>;"
    const-string v0, "T"

    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method protected constructor <init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;)V
    .locals 1
    .param p2, "tablePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TT;*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    .local p1, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 79
    iput-object p2, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->tablePrefix:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->values:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->joins:Ljava/util/List;

    .line 82
    new-instance v0, Lorg/greenrobot/greendao/query/WhereCollector;

    invoke-direct {v0, p1, p2}, Lorg/greenrobot/greendao/query/WhereCollector;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    .line 83
    const-string v0, " COLLATE NOCASE"

    iput-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->stringOrderCollation:Ljava/lang/String;

    .line 84
    return-void
.end method

.method private addJoin(Ljava/lang/String;Lorg/greenrobot/greendao/Property;Lorg/greenrobot/greendao/AbstractDao;Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/Join;
    .locals 6
    .param p1, "sourceTablePrefix"    # Ljava/lang/String;
    .param p2, "sourceProperty"    # Lorg/greenrobot/greendao/Property;
    .param p4, "destinationProperty"    # Lorg/greenrobot/greendao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<J:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/greenrobot/greendao/Property;",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TJ;*>;",
            "Lorg/greenrobot/greendao/Property;",
            ")",
            "Lorg/greenrobot/greendao/query/Join",
            "<TT;TJ;>;"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    .local p3, "destinationDao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TJ;*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "J"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->joins:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 208
    .local v5, "joinTablePrefix":Ljava/lang/String;
    new-instance v0, Lorg/greenrobot/greendao/query/Join;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/query/Join;-><init>(Ljava/lang/String;Lorg/greenrobot/greendao/Property;Lorg/greenrobot/greendao/AbstractDao;Lorg/greenrobot/greendao/Property;Ljava/lang/String;)V

    .line 210
    .local v0, "join":Lorg/greenrobot/greendao/query/Join;, "Lorg/greenrobot/greendao/query/Join<TT;TJ;>;"
    iget-object v1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->joins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    return-object v0
.end method

.method private appendJoinsAndWheres(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "tablePrefixOrNull"    # Ljava/lang/String;

    .prologue
    .line 393
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    iget-object v2, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 394
    iget-object v2, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->joins:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/query/Join;

    .line 395
    .local v0, "join":Lorg/greenrobot/greendao/query/Join;, "Lorg/greenrobot/greendao/query/Join<TT;*>;"
    const-string v3, " JOIN "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lorg/greenrobot/greendao/query/Join;->daoDestination:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v4}, Lorg/greenrobot/greendao/AbstractDao;->getTablename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 396
    iget-object v3, v0, Lorg/greenrobot/greendao/query/Join;->tablePrefix:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ON "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    iget-object v3, v0, Lorg/greenrobot/greendao/query/Join;->sourceTablePrefix:Ljava/lang/String;

    iget-object v4, v0, Lorg/greenrobot/greendao/query/Join;->joinPropertySource:Lorg/greenrobot/greendao/Property;

    invoke-static {p1, v3, v4}, Lorg/greenrobot/greendao/internal/SqlUtils;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/greenrobot/greendao/Property;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 398
    iget-object v3, v0, Lorg/greenrobot/greendao/query/Join;->tablePrefix:Ljava/lang/String;

    iget-object v4, v0, Lorg/greenrobot/greendao/query/Join;->joinPropertyDestination:Lorg/greenrobot/greendao/Property;

    invoke-static {p1, v3, v4}, Lorg/greenrobot/greendao/internal/SqlUtils;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/greenrobot/greendao/Property;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 400
    .end local v0    # "join":Lorg/greenrobot/greendao/query/Join;, "Lorg/greenrobot/greendao/query/Join<TT;*>;"
    :cond_0
    iget-object v2, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/WhereCollector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    .line 401
    .local v1, "whereAppended":Z
    :goto_1
    if-eqz v1, :cond_1

    .line 402
    const-string v2, " WHERE "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    iget-object v2, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    iget-object v3, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-virtual {v2, p1, p2, v3}, Lorg/greenrobot/greendao/query/WhereCollector;->appendWhereClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V

    .line 405
    :cond_1
    iget-object v2, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->joins:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/query/Join;

    .line 406
    .restart local v0    # "join":Lorg/greenrobot/greendao/query/Join;, "Lorg/greenrobot/greendao/query/Join<TT;*>;"
    iget-object v3, v0, Lorg/greenrobot/greendao/query/Join;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/WhereCollector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 407
    if-nez v1, :cond_4

    .line 408
    const-string v3, " WHERE "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    const/4 v1, 0x1

    .line 413
    :goto_3
    iget-object v3, v0, Lorg/greenrobot/greendao/query/Join;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    iget-object v4, v0, Lorg/greenrobot/greendao/query/Join;->tablePrefix:Ljava/lang/String;

    iget-object v5, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-virtual {v3, p1, v4, v5}, Lorg/greenrobot/greendao/query/WhereCollector;->appendWhereClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2

    .line 400
    .end local v0    # "join":Lorg/greenrobot/greendao/query/Join;, "Lorg/greenrobot/greendao/query/Join<TT;*>;"
    .end local v1    # "whereAppended":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 411
    .restart local v0    # "join":Lorg/greenrobot/greendao/query/Join;, "Lorg/greenrobot/greendao/query/Join<TT;*>;"
    .restart local v1    # "whereAppended":Z
    :cond_4
    const-string v3, " AND "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 416
    .end local v0    # "join":Lorg/greenrobot/greendao/query/Join;, "Lorg/greenrobot/greendao/query/Join<TT;*>;"
    :cond_5
    return-void
.end method

.method private checkAddLimit(Ljava/lang/StringBuilder;)I
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 320
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    const/4 v0, -0x1

    .line 321
    .local v0, "limitPosition":I
    iget-object v1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->limit:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 322
    const-string v1, " LIMIT ?"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    iget-object v1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->values:Ljava/util/List;

    iget-object v2, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->limit:Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 326
    :cond_0
    return v0
.end method

.method private checkAddOffset(Ljava/lang/StringBuilder;)I
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 330
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    const/4 v0, -0x1

    .line 331
    .local v0, "offsetPosition":I
    iget-object v1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->offset:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 332
    iget-object v1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->limit:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 333
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Offset cannot be set without limit"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    :cond_0
    const-string v1, " OFFSET ?"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    iget-object v1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->values:Ljava/util/List;

    iget-object v2, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->offset:Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 339
    :cond_1
    return v0
.end method

.method private checkLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 384
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    sget-boolean v0, Lorg/greenrobot/greendao/query/QueryBuilder;->LOG_SQL:Z

    if-eqz v0, :cond_0

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Built SQL for query: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/greenrobot/greendao/DaoLog;->d(Ljava/lang/String;)I

    .line 387
    :cond_0
    sget-boolean v0, Lorg/greenrobot/greendao/query/QueryBuilder;->LOG_VALUES:Z

    if-eqz v0, :cond_1

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Values for query: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/greenrobot/greendao/DaoLog;->d(Ljava/lang/String;)I

    .line 390
    :cond_1
    return-void
.end method

.method private checkOrderBuilder()V
    .locals 2

    .prologue
    .line 87
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private createSelectBuilder()Ljava/lang/StringBuilder;
    .locals 6

    .prologue
    .line 308
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    iget-object v2, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->getTablename()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->tablePrefix:Ljava/lang/String;

    iget-object v4, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v4}, Lorg/greenrobot/greendao/AbstractDao;->getAllColumns()[Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->distinct:Z

    invoke-static {v2, v3, v4, v5}, Lorg/greenrobot/greendao/internal/SqlUtils;->createSqlSelect(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "select":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->tablePrefix:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->appendJoinsAndWheres(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 313
    iget-object v2, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 314
    const-string v2, " ORDER BY "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 316
    :cond_0
    return-object v0
.end method

.method public static internalCreate(Lorg/greenrobot/greendao/AbstractDao;)Lorg/greenrobot/greendao/query/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TT2;*>;)",
            "Lorg/greenrobot/greendao/query/QueryBuilder",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT2;*>;"
    new-instance v0, Lorg/greenrobot/greendao/query/QueryBuilder;

    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/query/QueryBuilder;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    return-object v0
.end method

.method private varargs orderAscOrDesc(Ljava/lang/String;[Lorg/greenrobot/greendao/Property;)V
    .locals 5
    .param p1, "ascOrDescWithLeadingSpace"    # Ljava/lang/String;
    .param p2, "properties"    # [Lorg/greenrobot/greendao/Property;

    .prologue
    .line 227
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p2, v1

    .line 228
    .local v0, "property":Lorg/greenrobot/greendao/Property;
    invoke-direct {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->checkOrderBuilder()V

    .line 229
    iget-object v3, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->append(Ljava/lang/StringBuilder;Lorg/greenrobot/greendao/Property;)Ljava/lang/StringBuilder;

    .line 230
    const-class v3, Ljava/lang/String;

    iget-object v4, v0, Lorg/greenrobot/greendao/Property;->type:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->stringOrderCollation:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 231
    iget-object v3, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->stringOrderCollation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_0
    iget-object v3, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    .end local v0    # "property":Lorg/greenrobot/greendao/Property;
    :cond_1
    return-void
.end method


# virtual methods
.method public varargs and(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;
    .locals 2
    .param p1, "cond1"    # Lorg/greenrobot/greendao/query/WhereCondition;
    .param p2, "cond2"    # Lorg/greenrobot/greendao/query/WhereCondition;
    .param p3, "condMore"    # [Lorg/greenrobot/greendao/query/WhereCondition;

    .prologue
    .line 163
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    const-string v1, " AND "

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/greenrobot/greendao/query/WhereCollector;->combineWhereConditions(Ljava/lang/String;Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    return-object v0
.end method

.method protected append(Ljava/lang/StringBuilder;Lorg/greenrobot/greendao/Property;)Ljava/lang/StringBuilder;
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "property"    # Lorg/greenrobot/greendao/Property;

    .prologue
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    const/16 v2, 0x27

    .line 256
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/query/WhereCollector;->checkProperty(Lorg/greenrobot/greendao/Property;)V

    .line 257
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->tablePrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    return-object p1
.end method

.method public build()Lorg/greenrobot/greendao/query/Query;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    invoke-direct {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->createSelectBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 283
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->checkAddLimit(Ljava/lang/StringBuilder;)I

    move-result v1

    .line 284
    .local v1, "limitPosition":I
    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->checkAddOffset(Ljava/lang/StringBuilder;)I

    move-result v2

    .line 286
    .local v2, "offsetPosition":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, "sql":Ljava/lang/String;
    invoke-direct {p0, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->checkLog(Ljava/lang/String;)V

    .line 289
    iget-object v4, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    iget-object v5, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v3, v5, v1, v2}, Lorg/greenrobot/greendao/query/Query;->create(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lorg/greenrobot/greendao/query/Query;

    move-result-object v4

    return-object v4
.end method

.method public buildCount()Lorg/greenrobot/greendao/query/CountQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/CountQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    iget-object v4, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v4}, Lorg/greenrobot/greendao/AbstractDao;->getTablename()Ljava/lang/String;

    move-result-object v3

    .line 373
    .local v3, "tablename":Ljava/lang/String;
    iget-object v4, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->tablePrefix:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/greenrobot/greendao/internal/SqlUtils;->createSqlSelectCountStar(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "baseSql":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->tablePrefix:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->appendJoinsAndWheres(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 377
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "sql":Ljava/lang/String;
    invoke-direct {p0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->checkLog(Ljava/lang/String;)V

    .line 380
    iget-object v4, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    iget-object v5, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lorg/greenrobot/greendao/query/CountQuery;->create(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lorg/greenrobot/greendao/query/CountQuery;

    move-result-object v4

    return-object v4
.end method

.method public buildCursor()Lorg/greenrobot/greendao/query/CursorQuery;
    .locals 6

    .prologue
    .line 297
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    invoke-direct {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->createSelectBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 298
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->checkAddLimit(Ljava/lang/StringBuilder;)I

    move-result v1

    .line 299
    .local v1, "limitPosition":I
    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->checkAddOffset(Ljava/lang/StringBuilder;)I

    move-result v2

    .line 301
    .local v2, "offsetPosition":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, "sql":Ljava/lang/String;
    invoke-direct {p0, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->checkLog(Ljava/lang/String;)V

    .line 304
    iget-object v4, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    iget-object v5, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v3, v5, v1, v2}, Lorg/greenrobot/greendao/query/CursorQuery;->create(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lorg/greenrobot/greendao/query/CursorQuery;

    move-result-object v4

    return-object v4
.end method

.method public buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/DeleteQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    iget-object v4, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->joins:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 348
    new-instance v4, Lorg/greenrobot/greendao/DaoException;

    const-string v5, "JOINs are not supported for DELETE queries"

    invoke-direct {v4, v5}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 350
    :cond_0
    iget-object v4, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v4}, Lorg/greenrobot/greendao/AbstractDao;->getTablename()Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, "tablename":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/greenrobot/greendao/internal/SqlUtils;->createSqlDelete(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "baseSql":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->tablePrefix:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->appendJoinsAndWheres(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 358
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, "sql":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->tablePrefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\".\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-direct {p0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->checkLog(Ljava/lang/String;)V

    .line 364
    iget-object v4, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    iget-object v5, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->values:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lorg/greenrobot/greendao/query/DeleteQuery;->create(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v4

    return-object v4
.end method

.method public count()J
    .locals 2

    .prologue
    .line 479
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildCount()Lorg/greenrobot/greendao/query/CountQuery;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/CountQuery;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public distinct()Lorg/greenrobot/greendao/query/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->distinct:Z

    .line 97
    return-object p0
.end method

.method public join(Ljava/lang/Class;Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/Join;
    .locals 1
    .param p2, "destinationProperty"    # Lorg/greenrobot/greendao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<J:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TJ;>;",
            "Lorg/greenrobot/greendao/Property;",
            ")",
            "Lorg/greenrobot/greendao/query/Join",
            "<TT;TJ;>;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    .local p1, "destinationEntityClass":Ljava/lang/Class;, "Ljava/lang/Class<TJ;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getPkProperty()Lorg/greenrobot/greendao/Property;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->join(Lorg/greenrobot/greendao/Property;Ljava/lang/Class;Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/Join;

    move-result-object v0

    return-object v0
.end method

.method public join(Lorg/greenrobot/greendao/Property;Ljava/lang/Class;)Lorg/greenrobot/greendao/query/Join;
    .locals 3
    .param p1, "sourceProperty"    # Lorg/greenrobot/greendao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<J:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/greenrobot/greendao/Property;",
            "Ljava/lang/Class",
            "<TJ;>;)",
            "Lorg/greenrobot/greendao/query/Join",
            "<TT;TJ;>;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    .local p2, "destinationEntityClass":Ljava/lang/Class;, "Ljava/lang/Class<TJ;>;"
    iget-object v2, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->getSession()Lorg/greenrobot/greendao/AbstractDaoSession;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    .line 180
    .local v0, "destinationDao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TJ;*>;"
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getPkProperty()Lorg/greenrobot/greendao/Property;

    move-result-object v1

    .line 181
    .local v1, "destinationProperty":Lorg/greenrobot/greendao/Property;
    iget-object v2, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->tablePrefix:Ljava/lang/String;

    invoke-direct {p0, v2, p1, v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->addJoin(Ljava/lang/String;Lorg/greenrobot/greendao/Property;Lorg/greenrobot/greendao/AbstractDao;Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/Join;

    move-result-object v2

    return-object v2
.end method

.method public join(Lorg/greenrobot/greendao/Property;Ljava/lang/Class;Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/Join;
    .locals 2
    .param p1, "sourceProperty"    # Lorg/greenrobot/greendao/Property;
    .param p3, "destinationProperty"    # Lorg/greenrobot/greendao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<J:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/greenrobot/greendao/Property;",
            "Ljava/lang/Class",
            "<TJ;>;",
            "Lorg/greenrobot/greendao/Property;",
            ")",
            "Lorg/greenrobot/greendao/query/Join",
            "<TT;TJ;>;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    .local p2, "destinationEntityClass":Ljava/lang/Class;, "Ljava/lang/Class<TJ;>;"
    iget-object v1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->getSession()Lorg/greenrobot/greendao/AbstractDaoSession;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    .line 190
    .local v0, "destinationDao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TJ;*>;"
    iget-object v1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->tablePrefix:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v0, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->addJoin(Ljava/lang/String;Lorg/greenrobot/greendao/Property;Lorg/greenrobot/greendao/AbstractDao;Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/Join;

    move-result-object v1

    return-object v1
.end method

.method public join(Lorg/greenrobot/greendao/query/Join;Lorg/greenrobot/greendao/Property;Ljava/lang/Class;Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/Join;
    .locals 2
    .param p2, "sourceProperty"    # Lorg/greenrobot/greendao/Property;
    .param p4, "destinationProperty"    # Lorg/greenrobot/greendao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<J:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/greenrobot/greendao/query/Join",
            "<*TT;>;",
            "Lorg/greenrobot/greendao/Property;",
            "Ljava/lang/Class",
            "<TJ;>;",
            "Lorg/greenrobot/greendao/Property;",
            ")",
            "Lorg/greenrobot/greendao/query/Join",
            "<TT;TJ;>;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    .local p1, "sourceJoin":Lorg/greenrobot/greendao/query/Join;, "Lorg/greenrobot/greendao/query/Join<*TT;>;"
    .local p3, "destinationEntityClass":Ljava/lang/Class;, "Ljava/lang/Class<TJ;>;"
    iget-object v1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->getSession()Lorg/greenrobot/greendao/AbstractDaoSession;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    .line 202
    .local v0, "destinationDao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TJ;*>;"
    iget-object v1, p1, Lorg/greenrobot/greendao/query/Join;->tablePrefix:Ljava/lang/String;

    invoke-direct {p0, v1, p2, v0, p4}, Lorg/greenrobot/greendao/query/QueryBuilder;->addJoin(Ljava/lang/String;Lorg/greenrobot/greendao/Property;Lorg/greenrobot/greendao/AbstractDao;Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/Join;

    move-result-object v1

    return-object v1
.end method

.method public limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;
    .locals 1
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/greenrobot/greendao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->limit:Ljava/lang/Integer;

    .line 265
    return-object p0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Lorg/greenrobot/greendao/query/CloseableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/CloseableListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 451
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->listIterator()Lorg/greenrobot/greendao/query/CloseableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listLazy()Lorg/greenrobot/greendao/query/LazyList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/LazyList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->listLazy()Lorg/greenrobot/greendao/query/LazyList;

    move-result-object v0

    return-object v0
.end method

.method public listLazyUncached()Lorg/greenrobot/greendao/query/LazyList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/LazyList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->listLazyUncached()Lorg/greenrobot/greendao/query/LazyList;

    move-result-object v0

    return-object v0
.end method

.method public offset(I)Lorg/greenrobot/greendao/query/QueryBuilder;
    .locals 1
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/greenrobot/greendao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->offset:Ljava/lang/Integer;

    .line 274
    return-object p0
.end method

.method public varargs or(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;
    .locals 2
    .param p1, "cond1"    # Lorg/greenrobot/greendao/query/WhereCondition;
    .param p2, "cond2"    # Lorg/greenrobot/greendao/query/WhereCondition;
    .param p3, "condMore"    # [Lorg/greenrobot/greendao/query/WhereCondition;

    .prologue
    .line 154
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    const-string v1, " OR "

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/greenrobot/greendao/query/WhereCollector;->combineWhereConditions(Ljava/lang/String;Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    return-object v0
.end method

.method public varargs orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;
    .locals 1
    .param p1, "properties"    # [Lorg/greenrobot/greendao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/greenrobot/greendao/Property;",
            ")",
            "Lorg/greenrobot/greendao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    const-string v0, " ASC"

    invoke-direct {p0, v0, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAscOrDesc(Ljava/lang/String;[Lorg/greenrobot/greendao/Property;)V

    .line 217
    return-object p0
.end method

.method public orderCustom(Lorg/greenrobot/greendao/Property;Ljava/lang/String;)Lorg/greenrobot/greendao/query/QueryBuilder;
    .locals 2
    .param p1, "property"    # Lorg/greenrobot/greendao/Property;
    .param p2, "customOrderForProperty"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/Property;",
            "Ljava/lang/String;",
            ")",
            "Lorg/greenrobot/greendao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    invoke-direct {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->checkOrderBuilder()V

    .line 240
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->append(Ljava/lang/StringBuilder;Lorg/greenrobot/greendao/Property;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    return-object p0
.end method

.method public varargs orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;
    .locals 1
    .param p1, "properties"    # [Lorg/greenrobot/greendao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/greenrobot/greendao/Property;",
            ")",
            "Lorg/greenrobot/greendao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    const-string v0, " DESC"

    invoke-direct {p0, v0, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAscOrDesc(Ljava/lang/String;[Lorg/greenrobot/greendao/Property;)V

    .line 223
    return-object p0
.end method

.method public orderRaw(Ljava/lang/String;)Lorg/greenrobot/greendao/query/QueryBuilder;
    .locals 1
    .param p1, "rawOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/greenrobot/greendao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    invoke-direct {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->checkOrderBuilder()V

    .line 251
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    return-object p0
.end method

.method public preferLocalizedStringOrder()Lorg/greenrobot/greendao/query/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->getRawDatabase()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 110
    const-string v0, " COLLATE LOCALIZED"

    iput-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->stringOrderCollation:Ljava/lang/String;

    .line 112
    :cond_0
    return-object p0
.end method

.method public stringOrderCollation(Ljava/lang/String;)Lorg/greenrobot/greendao/query/QueryBuilder;
    .locals 2
    .param p1, "stringOrderCollation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/greenrobot/greendao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->getRawDatabase()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 124
    if-eqz p1, :cond_0

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .end local p1    # "stringOrderCollation":Ljava/lang/String;
    :cond_0
    :goto_0
    iput-object p1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->stringOrderCollation:Ljava/lang/String;

    .line 127
    :cond_1
    return-object p0

    .line 124
    .restart local p1    # "stringOrderCollation":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public unique()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 460
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public uniqueOrThrow()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 470
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->uniqueOrThrow()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;
    .locals 1
    .param p1, "cond"    # Lorg/greenrobot/greendao/query/WhereCondition;
    .param p2, "condMore"    # [Lorg/greenrobot/greendao/query/WhereCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/WhereCondition;",
            "[",
            "Lorg/greenrobot/greendao/query/WhereCondition;",
            ")",
            "Lorg/greenrobot/greendao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    invoke-virtual {v0, p1, p2}, Lorg/greenrobot/greendao/query/WhereCollector;->add(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 136
    return-object p0
.end method

.method public varargs whereOr(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;
    .locals 3
    .param p1, "cond1"    # Lorg/greenrobot/greendao/query/WhereCondition;
    .param p2, "cond2"    # Lorg/greenrobot/greendao/query/WhereCondition;
    .param p3, "condMore"    # [Lorg/greenrobot/greendao/query/WhereCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/WhereCondition;",
            "Lorg/greenrobot/greendao/query/WhereCondition;",
            "[",
            "Lorg/greenrobot/greendao/query/WhereCondition;",
            ")",
            "Lorg/greenrobot/greendao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lorg/greenrobot/greendao/query/QueryBuilder;, "Lorg/greenrobot/greendao/query/QueryBuilder<TT;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    invoke-virtual {p0, p1, p2, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->or(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/WhereCollector;->add(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 145
    return-object p0
.end method
