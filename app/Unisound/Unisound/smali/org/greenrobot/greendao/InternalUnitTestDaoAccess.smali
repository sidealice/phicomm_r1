.class public Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;
.super Ljava/lang/Object;
.source "InternalUnitTestDaoAccess.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
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
            "<TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/Class;Lorg/greenrobot/greendao/identityscope/IdentityScope;)V
    .locals 6
    .param p1, "db"    # Lorg/greenrobot/greendao/database/Database;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Ljava/lang/Class",
            "<",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TT;TK;>;>;",
            "Lorg/greenrobot/greendao/identityscope/IdentityScope",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;, "Lorg/greenrobot/greendao/InternalUnitTestDaoAccess<TT;TK;>;"
    .local p2, "daoClass":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;>;"
    .local p3, "identityScope":Lorg/greenrobot/greendao/identityscope/IdentityScope;, "Lorg/greenrobot/greendao/identityscope/IdentityScope<**>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {v1, p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;-><init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/Class;)V

    .line 33
    .local v1, "daoConfig":Lorg/greenrobot/greendao/internal/DaoConfig;
    invoke-virtual {v1, p3}, Lorg/greenrobot/greendao/internal/DaoConfig;->setIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScope;)V

    .line 34
    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Lorg/greenrobot/greendao/internal/DaoConfig;

    aput-object v3, v2, v4

    invoke-virtual {p2, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 35
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lorg/greenrobot/greendao/AbstractDao<TT;TK;>;>;"
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/greenrobot/greendao/AbstractDao;

    iput-object v2, p0, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 36
    return-void
.end method


# virtual methods
.method public getDao()Lorg/greenrobot/greendao/AbstractDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TT;TK;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;, "Lorg/greenrobot/greendao/InternalUnitTestDaoAccess<TT;TK;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->dao:Lorg/greenrobot/greendao/AbstractDao;

    return-object v0
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TK;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;, "Lorg/greenrobot/greendao/InternalUnitTestDaoAccess<TT;TK;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getProperties()[Lorg/greenrobot/greendao/Property;
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;, "Lorg/greenrobot/greendao/InternalUnitTestDaoAccess<TT;TK;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getProperties()[Lorg/greenrobot/greendao/Property;

    move-result-object v0

    return-object v0
.end method

.method public isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;, "Lorg/greenrobot/greendao/InternalUnitTestDaoAccess<TT;TK;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->isEntityUpdateable()Z

    move-result v0

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;, "Lorg/greenrobot/greendao/InternalUnitTestDaoAccess<TT;TK;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)TK;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;, "Lorg/greenrobot/greendao/InternalUnitTestDaoAccess<TT;TK;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
