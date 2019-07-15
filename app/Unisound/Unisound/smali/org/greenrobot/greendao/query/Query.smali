.class public Lorg/greenrobot/greendao/query/Query;
.super Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;
.source "Query.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/greendao/query/Query$QueryData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/greenrobot/greendao/query/AbstractQueryWithLimit",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final queryData:Lorg/greenrobot/greendao/query/Query$QueryData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/query/Query$QueryData",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/greenrobot/greendao/query/Query$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V
    .locals 6
    .param p3, "sql"    # Ljava/lang/String;
    .param p4, "initialValues"    # [Ljava/lang/String;
    .param p5, "limitPosition"    # I
    .param p6, "offsetPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/Query$QueryData",
            "<TT;>;",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TT;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<TT;>;"
    .local p1, "queryData":Lorg/greenrobot/greendao/query/Query$QueryData;, "Lorg/greenrobot/greendao/query/Query$QueryData<TT;>;"
    .local p2, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;*>;"
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V

    .line 66
    iput-object p1, p0, Lorg/greenrobot/greendao/query/Query;->queryData:Lorg/greenrobot/greendao/query/Query$QueryData;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lorg/greenrobot/greendao/query/Query$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;IILorg/greenrobot/greendao/query/Query$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/greenrobot/greendao/query/Query$QueryData;
    .param p2, "x1"    # Lorg/greenrobot/greendao/AbstractDao;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # [Ljava/lang/String;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Lorg/greenrobot/greendao/query/Query$1;

    .prologue
    .line 31
    .local p0, "this":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<TT;>;"
    invoke-direct/range {p0 .. p6}, Lorg/greenrobot/greendao/query/Query;-><init>(Lorg/greenrobot/greendao/query/Query$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V

    return-void
.end method

.method static create(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lorg/greenrobot/greendao/query/Query;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "initialValues"    # [Ljava/lang/Object;
    .param p3, "limitPosition"    # I
    .param p4, "offsetPosition"    # I
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
            "II)",
            "Lorg/greenrobot/greendao/query/Query",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT2;*>;"
    new-instance v0, Lorg/greenrobot/greendao/query/Query$QueryData;

    invoke-static {p2}, Lorg/greenrobot/greendao/query/Query;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/query/Query$QueryData;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V

    .line 58
    .local v0, "queryData":Lorg/greenrobot/greendao/query/Query$QueryData;, "Lorg/greenrobot/greendao/query/Query$QueryData<TT2;>;"
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query$QueryData;->forCurrentThread()Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/greendao/query/Query;

    return-object v1
.end method

.method public static internalCreate(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lorg/greenrobot/greendao/query/Query;
    .locals 1
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
            "Lorg/greenrobot/greendao/query/Query",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .local p0, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT2;*>;"
    const/4 v0, -0x1

    .line 51
    invoke-static {p0, p1, p2, v0, v0}, Lorg/greenrobot/greendao/query/Query;->create(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public forCurrentThread()Lorg/greenrobot/greendao/query/Query;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<TT;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/query/Query;->queryData:Lorg/greenrobot/greendao/query/Query$QueryData;

    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/query/Query$QueryData;->forCurrentThread(Lorg/greenrobot/greendao/query/AbstractQuery;)Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/query/Query;

    return-object v0
.end method

.method public list()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<TT;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/Query;->checkThread()V

    .line 76
    iget-object v1, p0, Lorg/greenrobot/greendao/query/Query;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v1

    iget-object v2, p0, Lorg/greenrobot/greendao/query/Query;->sql:Ljava/lang/String;

    iget-object v3, p0, Lorg/greenrobot/greendao/query/Query;->parameters:[Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 77
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lorg/greenrobot/greendao/query/Query;->daoAccess:Lorg/greenrobot/greendao/InternalQueryDaoAccess;

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/InternalQueryDaoAccess;->loadAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    return-object v1
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
    .line 106
    .local p0, "this":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<TT;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/Query;->listLazyUncached()Lorg/greenrobot/greendao/query/LazyList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/LazyList;->listIteratorAutoClose()Lorg/greenrobot/greendao/query/CloseableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listLazy()Lorg/greenrobot/greendao/query/LazyList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/LazyList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<TT;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/Query;->checkThread()V

    .line 87
    iget-object v1, p0, Lorg/greenrobot/greendao/query/Query;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v1

    iget-object v2, p0, Lorg/greenrobot/greendao/query/Query;->sql:Ljava/lang/String;

    iget-object v3, p0, Lorg/greenrobot/greendao/query/Query;->parameters:[Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 88
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Lorg/greenrobot/greendao/query/LazyList;

    iget-object v2, p0, Lorg/greenrobot/greendao/query/Query;->daoAccess:Lorg/greenrobot/greendao/InternalQueryDaoAccess;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lorg/greenrobot/greendao/query/LazyList;-><init>(Lorg/greenrobot/greendao/InternalQueryDaoAccess;Landroid/database/Cursor;Z)V

    return-object v1
.end method

.method public listLazyUncached()Lorg/greenrobot/greendao/query/LazyList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/LazyList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<TT;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/Query;->checkThread()V

    .line 97
    iget-object v1, p0, Lorg/greenrobot/greendao/query/Query;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v1

    iget-object v2, p0, Lorg/greenrobot/greendao/query/Query;->sql:Ljava/lang/String;

    iget-object v3, p0, Lorg/greenrobot/greendao/query/Query;->parameters:[Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 98
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Lorg/greenrobot/greendao/query/LazyList;

    iget-object v2, p0, Lorg/greenrobot/greendao/query/Query;->daoAccess:Lorg/greenrobot/greendao/InternalQueryDaoAccess;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lorg/greenrobot/greendao/query/LazyList;-><init>(Lorg/greenrobot/greendao/InternalQueryDaoAccess;Landroid/database/Cursor;Z)V

    return-object v1
.end method

.method public bridge synthetic setLimit(I)V
    .locals 0

    .prologue
    .line 31
    .local p0, "this":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<TT;>;"
    invoke-super {p0, p1}, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;->setLimit(I)V

    return-void
.end method

.method public bridge synthetic setOffset(I)V
    .locals 0

    .prologue
    .line 31
    .local p0, "this":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<TT;>;"
    invoke-super {p0, p1}, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;->setOffset(I)V

    return-void
.end method

.method public bridge synthetic setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<TT;>;"
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/Query;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<TT;>;"
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/Query;->setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<TT;>;"
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/Query;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<TT;>;"
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/Query;->setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    return-object v0
.end method

.method public setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/Query;
    .locals 1
    .param p1, "index"    # I
    .param p2, "parameter"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Boolean;",
            ")",
            "Lorg/greenrobot/greendao/query/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<TT;>;"
    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;->setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/query/Query;

    return-object v0
.end method

.method public setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/Query;
    .locals 1
    .param p1, "index"    # I
    .param p2, "parameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Lorg/greenrobot/greendao/query/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<TT;>;"
    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/query/Query;

    return-object v0
.end method

.method public setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/Query;
    .locals 1
    .param p1, "index"    # I
    .param p2, "parameter"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Date;",
            ")",
            "Lorg/greenrobot/greendao/query/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<TT;>;"
    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;->setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/query/Query;

    return-object v0
.end method

.method public unique()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<TT;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/Query;->checkThread()V

    .line 117
    iget-object v1, p0, Lorg/greenrobot/greendao/query/Query;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v1

    iget-object v2, p0, Lorg/greenrobot/greendao/query/Query;->sql:Ljava/lang/String;

    iget-object v3, p0, Lorg/greenrobot/greendao/query/Query;->parameters:[Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 118
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lorg/greenrobot/greendao/query/Query;->daoAccess:Lorg/greenrobot/greendao/InternalQueryDaoAccess;

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/InternalQueryDaoAccess;->loadUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public uniqueOrThrow()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<TT;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    .line 129
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 130
    new-instance v1, Lorg/greenrobot/greendao/DaoException;

    const-string v2, "No entity found for query"

    invoke-direct {v1, v2}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_0
    return-object v0
.end method
