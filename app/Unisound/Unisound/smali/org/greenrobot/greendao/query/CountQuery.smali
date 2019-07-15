.class public Lorg/greenrobot/greendao/query/CountQuery;
.super Lorg/greenrobot/greendao/query/AbstractQuery;
.source "CountQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/greendao/query/CountQuery$QueryData;
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
.field private final queryData:Lorg/greenrobot/greendao/query/CountQuery$QueryData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/query/CountQuery$QueryData",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/greenrobot/greendao/query/CountQuery$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p3, "sql"    # Ljava/lang/String;
    .param p4, "initialValues"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/CountQuery$QueryData",
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
    .line 29
    .local p0, "this":Lorg/greenrobot/greendao/query/CountQuery;, "Lorg/greenrobot/greendao/query/CountQuery<TT;>;"
    .local p1, "queryData":Lorg/greenrobot/greendao/query/CountQuery$QueryData;, "Lorg/greenrobot/greendao/query/CountQuery$QueryData<TT;>;"
    .local p2, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;*>;"
    invoke-direct {p0, p2, p3, p4}, Lorg/greenrobot/greendao/query/AbstractQuery;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lorg/greenrobot/greendao/query/CountQuery;->queryData:Lorg/greenrobot/greendao/query/CountQuery$QueryData;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lorg/greenrobot/greendao/query/CountQuery$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lorg/greenrobot/greendao/query/CountQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/greenrobot/greendao/query/CountQuery$QueryData;
    .param p2, "x1"    # Lorg/greenrobot/greendao/AbstractDao;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # [Ljava/lang/String;
    .param p5, "x4"    # Lorg/greenrobot/greendao/query/CountQuery$1;

    .prologue
    .line 7
    .local p0, "this":Lorg/greenrobot/greendao/query/CountQuery;, "Lorg/greenrobot/greendao/query/CountQuery<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/greenrobot/greendao/query/CountQuery;-><init>(Lorg/greenrobot/greendao/query/CountQuery$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static create(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lorg/greenrobot/greendao/query/CountQuery;
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
            "Lorg/greenrobot/greendao/query/CountQuery",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT2;*>;"
    new-instance v0, Lorg/greenrobot/greendao/query/CountQuery$QueryData;

    invoke-static {p2}, Lorg/greenrobot/greendao/query/CountQuery;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/greenrobot/greendao/query/CountQuery$QueryData;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lorg/greenrobot/greendao/query/CountQuery$1;)V

    .line 23
    .local v0, "queryData":Lorg/greenrobot/greendao/query/CountQuery$QueryData;, "Lorg/greenrobot/greendao/query/CountQuery$QueryData<TT2;>;"
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/CountQuery$QueryData;->forCurrentThread()Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/greendao/query/CountQuery;

    return-object v1
.end method


# virtual methods
.method public count()J
    .locals 4

    .prologue
    .line 39
    .local p0, "this":Lorg/greenrobot/greendao/query/CountQuery;, "Lorg/greenrobot/greendao/query/CountQuery<TT;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/CountQuery;->checkThread()V

    .line 40
    iget-object v1, p0, Lorg/greenrobot/greendao/query/CountQuery;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v1

    iget-object v2, p0, Lorg/greenrobot/greendao/query/CountQuery;->sql:Ljava/lang/String;

    iget-object v3, p0, Lorg/greenrobot/greendao/query/CountQuery;->parameters:[Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 42
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lorg/greenrobot/greendao/DaoException;

    const-string v2, "No result for count"

    invoke-direct {v1, v2}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 44
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    new-instance v1, Lorg/greenrobot/greendao/DaoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected row count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 47
    new-instance v1, Lorg/greenrobot/greendao/DaoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected column count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 51
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-wide v2
.end method

.method public forCurrentThread()Lorg/greenrobot/greendao/query/CountQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/CountQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lorg/greenrobot/greendao/query/CountQuery;, "Lorg/greenrobot/greendao/query/CountQuery<TT;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/query/CountQuery;->queryData:Lorg/greenrobot/greendao/query/CountQuery$QueryData;

    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/query/CountQuery$QueryData;->forCurrentThread(Lorg/greenrobot/greendao/query/AbstractQuery;)Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/query/CountQuery;

    return-object v0
.end method

.method public bridge synthetic setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .locals 1

    .prologue
    .line 7
    .local p0, "this":Lorg/greenrobot/greendao/query/CountQuery;, "Lorg/greenrobot/greendao/query/CountQuery<TT;>;"
    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/AbstractQuery;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object v0

    return-object v0
.end method
