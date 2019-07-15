.class final Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;
.super Lorg/greenrobot/greendao/query/AbstractQueryData;
.source "DeleteQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/greendao/query/DeleteQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueryData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/greenrobot/greendao/query/AbstractQueryData",
        "<TT2;",
        "Lorg/greenrobot/greendao/query/DeleteQuery",
        "<TT2;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "initialValues"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TT2;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;, "Lorg/greenrobot/greendao/query/DeleteQuery$QueryData<TT2;>;"
    .local p1, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT2;*>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/greenrobot/greendao/query/AbstractQueryData;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lorg/greenrobot/greendao/query/DeleteQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/greenrobot/greendao/AbstractDao;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # [Ljava/lang/String;
    .param p4, "x3"    # Lorg/greenrobot/greendao/query/DeleteQuery$1;

    .prologue
    .line 29
    .local p0, "this":Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;, "Lorg/greenrobot/greendao/query/DeleteQuery$QueryData<TT2;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createQuery()Lorg/greenrobot/greendao/query/AbstractQuery;
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;, "Lorg/greenrobot/greendao/query/DeleteQuery$QueryData<TT2;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;->createQuery()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v0

    return-object v0
.end method

.method protected createQuery()Lorg/greenrobot/greendao/query/DeleteQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/DeleteQuery",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;, "Lorg/greenrobot/greendao/query/DeleteQuery$QueryData<TT2;>;"
    new-instance v0, Lorg/greenrobot/greendao/query/DeleteQuery;

    iget-object v2, p0, Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;->dao:Lorg/greenrobot/greendao/AbstractDao;

    iget-object v3, p0, Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;->sql:Ljava/lang/String;

    iget-object v1, p0, Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;->initialValues:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/query/DeleteQuery;-><init>(Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lorg/greenrobot/greendao/query/DeleteQuery$1;)V

    return-object v0
.end method
