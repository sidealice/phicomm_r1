.class public Lorg/greenrobot/greendao/query/DeleteQuery;
.super Lorg/greenrobot/greendao/query/AbstractQuery;
.source "DeleteQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/greenrobot/greendao/query/AbstractQuery",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final queryData:Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/query/DeleteQuery$QueryData",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p3, "sql"    # Ljava/lang/String;
    .param p4, "initialValues"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/DeleteQuery$QueryData",
            "<TT;>;",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TT;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lorg/greenrobot/greendao/query/DeleteQuery;, "Lorg/greenrobot/greendao/query/DeleteQuery<TT;>;"
    .local p1, "queryData":Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;, "Lorg/greenrobot/greendao/query/DeleteQuery$QueryData<TT;>;"
    .local p2, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;*>;"
    invoke-direct {p0, p2, p3, p4}, Lorg/greenrobot/greendao/query/AbstractQuery;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lorg/greenrobot/greendao/query/DeleteQuery;->queryData:Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lorg/greenrobot/greendao/query/DeleteQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;
    .param p2, "x1"    # Lorg/greenrobot/greendao/AbstractDao;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # [Ljava/lang/String;
    .param p5, "x4"    # Lorg/greenrobot/greendao/query/DeleteQuery$1;

    .prologue
    .line 28
    .local p0, "this":Lorg/greenrobot/greendao/query/DeleteQuery;, "Lorg/greenrobot/greendao/query/DeleteQuery<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/greenrobot/greendao/query/DeleteQuery;-><init>(Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static create(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lorg/greenrobot/greendao/query/DeleteQuery;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "initialValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TT2;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/greenrobot/greendao/query/DeleteQuery",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT2;*>;"
    new-instance v0, Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;

    invoke-static {p2}, Lorg/greenrobot/greendao/query/DeleteQuery;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lorg/greenrobot/greendao/query/DeleteQuery$1;)V

    .line 43
    .local v0, "queryData":Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;, "Lorg/greenrobot/greendao/query/DeleteQuery$QueryData<TT2;>;"
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;->forCurrentThread()Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/greendao/query/DeleteQuery;

    return-object v1
.end method


# virtual methods
.method public executeDeleteWithoutDetachingEntities()V
    .locals 4

    .prologue
    .line 64
    .local p0, "this":Lorg/greenrobot/greendao/query/DeleteQuery;, "Lorg/greenrobot/greendao/query/DeleteQuery<TT;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/DeleteQuery;->checkThread()V

    .line 65
    iget-object v1, p0, Lorg/greenrobot/greendao/query/DeleteQuery;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    .line 66
    .local v0, "db":Lorg/greenrobot/greendao/database/Database;
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->isDbLockedByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lorg/greenrobot/greendao/query/DeleteQuery;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v1

    iget-object v2, p0, Lorg/greenrobot/greendao/query/DeleteQuery;->sql:Ljava/lang/String;

    iget-object v3, p0, Lorg/greenrobot/greendao/query/DeleteQuery;->parameters:[Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 73
    :try_start_0
    iget-object v1, p0, Lorg/greenrobot/greendao/query/DeleteQuery;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v1

    iget-object v2, p0, Lorg/greenrobot/greendao/query/DeleteQuery;->sql:Ljava/lang/String;

    iget-object v3, p0, Lorg/greenrobot/greendao/query/DeleteQuery;->parameters:[Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    throw v1
.end method

.method public forCurrentThread()Lorg/greenrobot/greendao/query/DeleteQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/DeleteQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lorg/greenrobot/greendao/query/DeleteQuery;, "Lorg/greenrobot/greendao/query/DeleteQuery<TT;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/query/DeleteQuery;->queryData:Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;

    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;->forCurrentThread(Lorg/greenrobot/greendao/query/AbstractQuery;)Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/query/DeleteQuery;

    return-object v0
.end method

.method public bridge synthetic setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lorg/greenrobot/greendao/query/DeleteQuery;, "Lorg/greenrobot/greendao/query/DeleteQuery<TT;>;"
    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/AbstractQuery;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object v0

    return-object v0
.end method
