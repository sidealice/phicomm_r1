.class Lorg/greenrobot/greendao/query/WhereCollector;
.super Ljava/lang/Object;
.source "WhereCollector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final dao:Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TT;*>;"
        }
    .end annotation
.end field

.field private final tablePrefix:Ljava/lang/String;

.field private final whereConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/greenrobot/greendao/query/WhereCondition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;)V
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
    .line 33
    .local p0, "this":Lorg/greenrobot/greendao/query/WhereCollector;, "Lorg/greenrobot/greendao/query/WhereCollector<TT;>;"
    .local p1, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/greenrobot/greendao/query/WhereCollector;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 35
    iput-object p2, p0, Lorg/greenrobot/greendao/query/WhereCollector;->tablePrefix:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/query/WhereCollector;->whereConditions:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method varargs add(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V
    .locals 4
    .param p1, "cond"    # Lorg/greenrobot/greendao/query/WhereCondition;
    .param p2, "condMore"    # [Lorg/greenrobot/greendao/query/WhereCondition;

    .prologue
    .line 40
    .local p0, "this":Lorg/greenrobot/greendao/query/WhereCollector;, "Lorg/greenrobot/greendao/query/WhereCollector<TT;>;"
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/query/WhereCollector;->checkCondition(Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 41
    iget-object v1, p0, Lorg/greenrobot/greendao/query/WhereCollector;->whereConditions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p2, v1

    .line 43
    .local v0, "whereCondition":Lorg/greenrobot/greendao/query/WhereCondition;
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/query/WhereCollector;->checkCondition(Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 44
    iget-object v3, p0, Lorg/greenrobot/greendao/query/WhereCollector;->whereConditions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "whereCondition":Lorg/greenrobot/greendao/query/WhereCondition;
    :cond_0
    return-void
.end method

.method addCondition(Ljava/lang/StringBuilder;Ljava/util/List;Lorg/greenrobot/greendao/query/WhereCondition;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p3, "condition"    # Lorg/greenrobot/greendao/query/WhereCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/greenrobot/greendao/query/WhereCondition;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lorg/greenrobot/greendao/query/WhereCollector;, "Lorg/greenrobot/greendao/query/WhereCollector<TT;>;"
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p3}, Lorg/greenrobot/greendao/query/WhereCollector;->checkCondition(Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 67
    iget-object v0, p0, Lorg/greenrobot/greendao/query/WhereCollector;->tablePrefix:Ljava/lang/String;

    invoke-interface {p3, p1, v0}, Lorg/greenrobot/greendao/query/WhereCondition;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 68
    invoke-interface {p3, p2}, Lorg/greenrobot/greendao/query/WhereCondition;->appendValuesTo(Ljava/util/List;)V

    .line 69
    return-void
.end method

.method appendWhereClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "tablePrefixOrNull"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lorg/greenrobot/greendao/query/WhereCollector;, "Lorg/greenrobot/greendao/query/WhereCollector<TT;>;"
    .local p3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v2, p0, Lorg/greenrobot/greendao/query/WhereCollector;->whereConditions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 95
    .local v1, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/greenrobot/greendao/query/WhereCondition;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    const-string v2, " AND "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/query/WhereCondition;

    .line 100
    .local v0, "condition":Lorg/greenrobot/greendao/query/WhereCondition;
    invoke-interface {v0, p1, p2}, Lorg/greenrobot/greendao/query/WhereCondition;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 101
    invoke-interface {v0, p3}, Lorg/greenrobot/greendao/query/WhereCondition;->appendValuesTo(Ljava/util/List;)V

    goto :goto_0

    .line 103
    .end local v0    # "condition":Lorg/greenrobot/greendao/query/WhereCondition;
    :cond_1
    return-void
.end method

.method checkCondition(Lorg/greenrobot/greendao/query/WhereCondition;)V
    .locals 1
    .param p1, "whereCondition"    # Lorg/greenrobot/greendao/query/WhereCondition;

    .prologue
    .line 72
    .local p0, "this":Lorg/greenrobot/greendao/query/WhereCollector;, "Lorg/greenrobot/greendao/query/WhereCollector<TT;>;"
    instance-of v0, p1, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    if-eqz v0, :cond_0

    .line 73
    check-cast p1, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .end local p1    # "whereCondition":Lorg/greenrobot/greendao/query/WhereCondition;
    iget-object v0, p1, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->property:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/query/WhereCollector;->checkProperty(Lorg/greenrobot/greendao/Property;)V

    .line 75
    :cond_0
    return-void
.end method

.method checkProperty(Lorg/greenrobot/greendao/Property;)V
    .locals 6
    .param p1, "property"    # Lorg/greenrobot/greendao/Property;

    .prologue
    .line 78
    .local p0, "this":Lorg/greenrobot/greendao/query/WhereCollector;, "Lorg/greenrobot/greendao/query/WhereCollector<TT;>;"
    iget-object v3, p0, Lorg/greenrobot/greendao/query/WhereCollector;->dao:Lorg/greenrobot/greendao/AbstractDao;

    if-eqz v3, :cond_2

    .line 79
    iget-object v3, p0, Lorg/greenrobot/greendao/query/WhereCollector;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v3}, Lorg/greenrobot/greendao/AbstractDao;->getProperties()[Lorg/greenrobot/greendao/Property;

    move-result-object v1

    .line 80
    .local v1, "properties":[Lorg/greenrobot/greendao/Property;
    const/4 v0, 0x0

    .line 81
    .local v0, "found":Z
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 82
    .local v2, "property2":Lorg/greenrobot/greendao/Property;
    if-ne p1, v2, :cond_1

    .line 83
    const/4 v0, 0x1

    .line 87
    .end local v2    # "property2":Lorg/greenrobot/greendao/Property;
    :cond_0
    if-nez v0, :cond_2

    .line 88
    new-instance v3, Lorg/greenrobot/greendao/DaoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Property \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lorg/greenrobot/greendao/Property;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is not part of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/greenrobot/greendao/query/WhereCollector;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 81
    .restart local v2    # "property2":Lorg/greenrobot/greendao/Property;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "found":Z
    .end local v1    # "properties":[Lorg/greenrobot/greendao/Property;
    .end local v2    # "property2":Lorg/greenrobot/greendao/Property;
    :cond_2
    return-void
.end method

.method varargs combineWhereConditions(Ljava/lang/String;Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;
    .locals 6
    .param p1, "combineOp"    # Ljava/lang/String;
    .param p2, "cond1"    # Lorg/greenrobot/greendao/query/WhereCondition;
    .param p3, "cond2"    # Lorg/greenrobot/greendao/query/WhereCondition;
    .param p4, "condMore"    # [Lorg/greenrobot/greendao/query/WhereCondition;

    .prologue
    .line 50
    .local p0, "this":Lorg/greenrobot/greendao/query/WhereCollector;, "Lorg/greenrobot/greendao/query/WhereCollector<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v1, "combinedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, v0, v1, p2}, Lorg/greenrobot/greendao/query/WhereCollector;->addCondition(Ljava/lang/StringBuilder;Ljava/util/List;Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p0, v0, v1, p3}, Lorg/greenrobot/greendao/query/WhereCollector;->addCondition(Ljava/lang/StringBuilder;Ljava/util/List;Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 57
    array-length v4, p4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, p4, v3

    .line 58
    .local v2, "cond":Lorg/greenrobot/greendao/query/WhereCondition;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p0, v0, v1, v2}, Lorg/greenrobot/greendao/query/WhereCollector;->addCondition(Ljava/lang/StringBuilder;Ljava/util/List;Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    .end local v2    # "cond":Lorg/greenrobot/greendao/query/WhereCondition;
    :cond_0
    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    new-instance v3, Lorg/greenrobot/greendao/query/WhereCondition$StringCondition;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/greenrobot/greendao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 106
    .local p0, "this":Lorg/greenrobot/greendao/query/WhereCollector;, "Lorg/greenrobot/greendao/query/WhereCollector<TT;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/query/WhereCollector;->whereConditions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
