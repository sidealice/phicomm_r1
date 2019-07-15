.class public Lorg/greenrobot/greendao/Property;
.super Ljava/lang/Object;
.source "Property.java"


# instance fields
.field public final columnName:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final ordinal:I

.field public final primaryKey:Z

.field public final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "ordinal"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "primaryKey"    # Z
    .param p5, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lorg/greenrobot/greendao/Property;->ordinal:I

    .line 39
    iput-object p2, p0, Lorg/greenrobot/greendao/Property;->type:Ljava/lang/Class;

    .line 40
    iput-object p3, p0, Lorg/greenrobot/greendao/Property;->name:Ljava/lang/String;

    .line 41
    iput-boolean p4, p0, Lorg/greenrobot/greendao/Property;->primaryKey:Z

    .line 42
    iput-object p5, p0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public between(Ljava/lang/Object;Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;
    .locals 3
    .param p1, "value1"    # Ljava/lang/Object;
    .param p2, "value2"    # Ljava/lang/Object;

    .prologue
    .line 62
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 63
    .local v0, "values":[Ljava/lang/Object;
    new-instance v1, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    const-string v2, " BETWEEN ? AND ?"

    invoke-direct {v1, p0, v2, v0}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 47
    new-instance v0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    const-string v1, "=?"

    invoke-direct {v0, p0, v1, p1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 102
    new-instance v0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    const-string v1, ">=?"

    invoke-direct {v0, p0, v1, p1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 92
    new-instance v0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    const-string v1, ">?"

    invoke-direct {v0, p0, v1, p1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public in(Ljava/util/Collection;)Lorg/greenrobot/greendao/query/WhereCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Lorg/greenrobot/greendao/query/WhereCondition;"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "inValues":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/Property;->in([Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    return-object v0
.end method

.method public varargs in([Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;
    .locals 3
    .param p1, "inValues"    # [Ljava/lang/Object;

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "condition":Ljava/lang/StringBuilder;
    array-length v1, p1

    invoke-static {v0, v1}, Lorg/greenrobot/greendao/internal/SqlUtils;->appendPlaceholders(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    new-instance v1, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public isNotNull()Lorg/greenrobot/greendao/query/WhereCondition;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    const-string v1, " IS NOT NULL"

    invoke-direct {v0, p0, v1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;)V

    return-object v0
.end method

.method public isNull()Lorg/greenrobot/greendao/query/WhereCondition;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    const-string v1, " IS NULL"

    invoke-direct {v0, p0, v1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;)V

    return-object v0
.end method

.method public le(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 107
    new-instance v0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    const-string v1, "<=?"

    invoke-direct {v0, p0, v1, p1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    const-string v1, " LIKE ?"

    invoke-direct {v0, p0, v1, p1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 97
    new-instance v0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    const-string v1, "<?"

    invoke-direct {v0, p0, v1, p1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public notEq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 52
    new-instance v0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    const-string v1, "<>?"

    invoke-direct {v0, p0, v1, p1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public notIn(Ljava/util/Collection;)Lorg/greenrobot/greendao/query/WhereCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Lorg/greenrobot/greendao/query/WhereCondition;"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "notInValues":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/Property;->notIn([Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    return-object v0
.end method

.method public varargs notIn([Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;
    .locals 3
    .param p1, "notInValues"    # [Ljava/lang/Object;

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " NOT IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "condition":Ljava/lang/StringBuilder;
    array-length v1, p1

    invoke-static {v0, v1}, Lorg/greenrobot/greendao/internal/SqlUtils;->appendPlaceholders(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    new-instance v1, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method
