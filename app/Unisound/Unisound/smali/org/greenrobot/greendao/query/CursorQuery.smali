.class public Lorg/greenrobot/greendao/query/CursorQuery;
.super Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;
.source "CursorQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/greendao/query/CursorQuery$QueryData;
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
.field private final queryData:Lorg/greenrobot/greendao/query/CursorQuery$QueryData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/query/CursorQuery$QueryData",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/greenrobot/greendao/query/CursorQuery$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V
    .locals 6
    .param p3, "sql"    # Ljava/lang/String;
    .param p4, "initialValues"    # [Ljava/lang/String;
    .param p5, "limitPosition"    # I
    .param p6, "offsetPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/CursorQuery$QueryData",
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
    .line 63
    .local p0, "this":Lorg/greenrobot/greendao/query/CursorQuery;, "Lorg/greenrobot/greendao/query/CursorQuery<TT;>;"
    .local p1, "queryData":Lorg/greenrobot/greendao/query/CursorQuery$QueryData;, "Lorg/greenrobot/greendao/query/CursorQuery$QueryData<TT;>;"
    .local p2, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;*>;"
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V

    .line 64
    iput-object p1, p0, Lorg/greenrobot/greendao/query/CursorQuery;->queryData:Lorg/greenrobot/greendao/query/CursorQuery$QueryData;

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lorg/greenrobot/greendao/query/CursorQuery$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;IILorg/greenrobot/greendao/query/CursorQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/greenrobot/greendao/query/CursorQuery$QueryData;
    .param p2, "x1"    # Lorg/greenrobot/greendao/AbstractDao;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # [Ljava/lang/String;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Lorg/greenrobot/greendao/query/CursorQuery$1;

    .prologue
    .line 29
    .local p0, "this":Lorg/greenrobot/greendao/query/CursorQuery;, "Lorg/greenrobot/greendao/query/CursorQuery<TT;>;"
    invoke-direct/range {p0 .. p6}, Lorg/greenrobot/greendao/query/CursorQuery;-><init>(Lorg/greenrobot/greendao/query/CursorQuery$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V

    return-void
.end method

.method static create(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lorg/greenrobot/greendao/query/CursorQuery;
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
            "Lorg/greenrobot/greendao/query/CursorQuery",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT2;*>;"
    new-instance v0, Lorg/greenrobot/greendao/query/CursorQuery$QueryData;

    invoke-static {p2}, Lorg/greenrobot/greendao/query/CursorQuery;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/query/CursorQuery$QueryData;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V

    .line 56
    .local v0, "queryData":Lorg/greenrobot/greendao/query/CursorQuery$QueryData;, "Lorg/greenrobot/greendao/query/CursorQuery$QueryData<TT2;>;"
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/CursorQuery$QueryData;->forCurrentThread()Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/greendao/query/CursorQuery;

    return-object v1
.end method

.method public static internalCreate(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lorg/greenrobot/greendao/query/CursorQuery;
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
            "Lorg/greenrobot/greendao/query/CursorQuery",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .local p0, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT2;*>;"
    const/4 v0, -0x1

    .line 49
    invoke-static {p0, p1, p2, v0, v0}, Lorg/greenrobot/greendao/query/CursorQuery;->create(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lorg/greenrobot/greendao/query/CursorQuery;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public forCurrentThread()Lorg/greenrobot/greendao/query/CursorQuery;
    .locals 1

    .prologue
    .line 68
    .local p0, "this":Lorg/greenrobot/greendao/query/CursorQuery;, "Lorg/greenrobot/greendao/query/CursorQuery<TT;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/query/CursorQuery;->queryData:Lorg/greenrobot/greendao/query/CursorQuery$QueryData;

    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/query/CursorQuery$QueryData;->forCurrentThread(Lorg/greenrobot/greendao/query/AbstractQuery;)Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/query/CursorQuery;

    return-object v0
.end method

.method public query()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 73
    .local p0, "this":Lorg/greenrobot/greendao/query/CursorQuery;, "Lorg/greenrobot/greendao/query/CursorQuery<TT;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/CursorQuery;->checkThread()V

    .line 74
    iget-object v0, p0, Lorg/greenrobot/greendao/query/CursorQuery;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/query/CursorQuery;->sql:Ljava/lang/String;

    iget-object v2, p0, Lorg/greenrobot/greendao/query/CursorQuery;->parameters:[Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setLimit(I)V
    .locals 0

    .prologue
    .line 29
    .local p0, "this":Lorg/greenrobot/greendao/query/CursorQuery;, "Lorg/greenrobot/greendao/query/CursorQuery<TT;>;"
    invoke-super {p0, p1}, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;->setLimit(I)V

    return-void
.end method

.method public bridge synthetic setOffset(I)V
    .locals 0

    .prologue
    .line 29
    .local p0, "this":Lorg/greenrobot/greendao/query/CursorQuery;, "Lorg/greenrobot/greendao/query/CursorQuery<TT;>;"
    invoke-super {p0, p1}, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;->setOffset(I)V

    return-void
.end method

.method public bridge synthetic setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lorg/greenrobot/greendao/query/CursorQuery;, "Lorg/greenrobot/greendao/query/CursorQuery<TT;>;"
    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;->setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lorg/greenrobot/greendao/query/CursorQuery;, "Lorg/greenrobot/greendao/query/CursorQuery<TT;>;"
    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lorg/greenrobot/greendao/query/CursorQuery;, "Lorg/greenrobot/greendao/query/CursorQuery<TT;>;"
    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;->setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;

    move-result-object v0

    return-object v0
.end method
