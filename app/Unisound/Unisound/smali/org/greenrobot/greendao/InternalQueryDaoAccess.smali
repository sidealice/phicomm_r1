.class public final Lorg/greenrobot/greendao/InternalQueryDaoAccess;
.super Ljava/lang/Object;
.source "InternalQueryDaoAccess.java"


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


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TT;*>;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lorg/greenrobot/greendao/InternalQueryDaoAccess;, "Lorg/greenrobot/greendao/InternalQueryDaoAccess<TT;>;"
    .local p1, "abstractDao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/greenrobot/greendao/InternalQueryDaoAccess;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 14
    return-void
.end method

.method public static getStatements(Lorg/greenrobot/greendao/AbstractDao;)Lorg/greenrobot/greendao/internal/TableStatements;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TT2;*>;)",
            "Lorg/greenrobot/greendao/internal/TableStatements;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT2;*>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->getStatements()Lorg/greenrobot/greendao/internal/TableStatements;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getStatements()Lorg/greenrobot/greendao/internal/TableStatements;
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lorg/greenrobot/greendao/InternalQueryDaoAccess;, "Lorg/greenrobot/greendao/InternalQueryDaoAccess<TT;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/InternalQueryDaoAccess;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getStatements()Lorg/greenrobot/greendao/internal/TableStatements;

    move-result-object v0

    return-object v0
.end method

.method public loadAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lorg/greenrobot/greendao/InternalQueryDaoAccess;, "Lorg/greenrobot/greendao/InternalQueryDaoAccess<TT;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/InternalQueryDaoAccess;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->loadAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I
    .param p3, "lock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "IZ)TT;"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lorg/greenrobot/greendao/InternalQueryDaoAccess;, "Lorg/greenrobot/greendao/InternalQueryDaoAccess<TT;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/InternalQueryDaoAccess;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, p1, p2, p3}, Lorg/greenrobot/greendao/AbstractDao;->loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lorg/greenrobot/greendao/InternalQueryDaoAccess;, "Lorg/greenrobot/greendao/InternalQueryDaoAccess<TT;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/InternalQueryDaoAccess;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->loadUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
