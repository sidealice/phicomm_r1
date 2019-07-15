.class public Lorg/greenrobot/greendao/query/Join;
.super Ljava/lang/Object;
.source "Join.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SRC:",
        "Ljava/lang/Object;",
        "DST:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final daoDestination:Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TDST;*>;"
        }
    .end annotation
.end field

.field final joinPropertyDestination:Lorg/greenrobot/greendao/Property;

.field final joinPropertySource:Lorg/greenrobot/greendao/Property;

.field final sourceTablePrefix:Ljava/lang/String;

.field final tablePrefix:Ljava/lang/String;

.field final whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/query/WhereCollector",
            "<TDST;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/greenrobot/greendao/Property;Lorg/greenrobot/greendao/AbstractDao;Lorg/greenrobot/greendao/Property;Ljava/lang/String;)V
    .locals 1
    .param p1, "sourceTablePrefix"    # Ljava/lang/String;
    .param p2, "sourceJoinProperty"    # Lorg/greenrobot/greendao/Property;
    .param p4, "destinationJoinProperty"    # Lorg/greenrobot/greendao/Property;
    .param p5, "joinTablePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/greenrobot/greendao/Property;",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TDST;*>;",
            "Lorg/greenrobot/greendao/Property;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lorg/greenrobot/greendao/query/Join;, "Lorg/greenrobot/greendao/query/Join<TSRC;TDST;>;"
    .local p3, "daoDestination":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TDST;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/greenrobot/greendao/query/Join;->sourceTablePrefix:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lorg/greenrobot/greendao/query/Join;->joinPropertySource:Lorg/greenrobot/greendao/Property;

    .line 40
    iput-object p3, p0, Lorg/greenrobot/greendao/query/Join;->daoDestination:Lorg/greenrobot/greendao/AbstractDao;

    .line 41
    iput-object p4, p0, Lorg/greenrobot/greendao/query/Join;->joinPropertyDestination:Lorg/greenrobot/greendao/Property;

    .line 42
    iput-object p5, p0, Lorg/greenrobot/greendao/query/Join;->tablePrefix:Ljava/lang/String;

    .line 43
    new-instance v0, Lorg/greenrobot/greendao/query/WhereCollector;

    invoke-direct {v0, p3, p5}, Lorg/greenrobot/greendao/query/WhereCollector;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/greenrobot/greendao/query/Join;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    .line 44
    return-void
.end method


# virtual methods
.method public varargs and(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;
    .locals 2
    .param p1, "cond1"    # Lorg/greenrobot/greendao/query/WhereCondition;
    .param p2, "cond2"    # Lorg/greenrobot/greendao/query/WhereCondition;
    .param p3, "condMore"    # [Lorg/greenrobot/greendao/query/WhereCondition;

    .prologue
    .line 80
    .local p0, "this":Lorg/greenrobot/greendao/query/Join;, "Lorg/greenrobot/greendao/query/Join<TSRC;TDST;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/query/Join;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    const-string v1, " AND "

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/greenrobot/greendao/query/WhereCollector;->combineWhereConditions(Ljava/lang/String;Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    return-object v0
.end method

.method public getTablePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    .local p0, "this":Lorg/greenrobot/greendao/query/Join;, "Lorg/greenrobot/greendao/query/Join<TSRC;TDST;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/query/Join;->tablePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public varargs or(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;
    .locals 2
    .param p1, "cond1"    # Lorg/greenrobot/greendao/query/WhereCondition;
    .param p2, "cond2"    # Lorg/greenrobot/greendao/query/WhereCondition;
    .param p3, "condMore"    # [Lorg/greenrobot/greendao/query/WhereCondition;

    .prologue
    .line 71
    .local p0, "this":Lorg/greenrobot/greendao/query/Join;, "Lorg/greenrobot/greendao/query/Join<TSRC;TDST;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/query/Join;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    const-string v1, " OR "

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/greenrobot/greendao/query/WhereCollector;->combineWhereConditions(Ljava/lang/String;Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    return-object v0
.end method

.method public varargs where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/Join;
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
            "Lorg/greenrobot/greendao/query/Join",
            "<TSRC;TDST;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lorg/greenrobot/greendao/query/Join;, "Lorg/greenrobot/greendao/query/Join<TSRC;TDST;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/query/Join;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    invoke-virtual {v0, p1, p2}, Lorg/greenrobot/greendao/query/WhereCollector;->add(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 53
    return-object p0
.end method

.method public varargs whereOr(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/Join;
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
            "Lorg/greenrobot/greendao/query/Join",
            "<TSRC;TDST;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lorg/greenrobot/greendao/query/Join;, "Lorg/greenrobot/greendao/query/Join<TSRC;TDST;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/query/Join;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    invoke-virtual {p0, p1, p2, p3}, Lorg/greenrobot/greendao/query/Join;->or(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/WhereCollector;->add(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 62
    return-object p0
.end method
