.class abstract Lorg/greenrobot/greendao/query/AbstractQuery;
.super Ljava/lang/Object;
.source "AbstractQuery.java"


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
.field protected final dao:Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TT;*>;"
        }
    .end annotation
.end field

.field protected final daoAccess:Lorg/greenrobot/greendao/InternalQueryDaoAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/InternalQueryDaoAccess",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final ownerThread:Ljava/lang/Thread;

.field protected final parameters:[Ljava/lang/String;

.field protected final sql:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "parameters"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TT;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lorg/greenrobot/greendao/query/AbstractQuery;, "Lorg/greenrobot/greendao/query/AbstractQuery<TT;>;"
    .local p1, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 56
    new-instance v0, Lorg/greenrobot/greendao/InternalQueryDaoAccess;

    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/InternalQueryDaoAccess;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    iput-object v0, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->daoAccess:Lorg/greenrobot/greendao/InternalQueryDaoAccess;

    .line 57
    iput-object p2, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->sql:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    .line 59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->ownerThread:Ljava/lang/Thread;

    .line 60
    return-void
.end method

.method protected static toStringArray([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 5
    .param p0, "values"    # [Ljava/lang/Object;

    .prologue
    .line 41
    array-length v1, p0

    .line 42
    .local v1, "length":I
    new-array v3, v1, [Ljava/lang/String;

    .line 43
    .local v3, "strings":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 44
    aget-object v2, p0, v0

    .line 45
    .local v2, "object":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 43
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    const/4 v4, 0x0

    aput-object v4, v3, v0

    goto :goto_1

    .line 51
    .end local v2    # "object":Ljava/lang/Object;
    :cond_1
    return-object v3
.end method


# virtual methods
.method protected checkThread()V
    .locals 2

    .prologue
    .line 80
    .local p0, "this":Lorg/greenrobot/greendao/query/AbstractQuery;, "Lorg/greenrobot/greendao/query/AbstractQuery<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->ownerThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 81
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    const-string v1, "Method may be called only in owner thread, use forCurrentThread to get an instance for this thread"

    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    return-void
.end method

.method public setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .locals 2
    .param p1, "index"    # I
    .param p2, "parameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Lorg/greenrobot/greendao/query/AbstractQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lorg/greenrobot/greendao/query/AbstractQuery;, "Lorg/greenrobot/greendao/query/AbstractQuery<TT;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/AbstractQuery;->checkThread()V

    .line 71
    if-eqz p2, :cond_0

    .line 72
    iget-object v0, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 76
    :goto_0
    return-object p0

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    goto :goto_0
.end method
