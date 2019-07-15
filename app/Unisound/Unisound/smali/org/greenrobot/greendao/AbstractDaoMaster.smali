.class public abstract Lorg/greenrobot/greendao/AbstractDaoMaster;
.super Ljava/lang/Object;
.source "AbstractDaoMaster.java"


# instance fields
.field protected final daoConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<**>;>;",
            "Lorg/greenrobot/greendao/internal/DaoConfig;",
            ">;"
        }
    .end annotation
.end field

.field protected final db:Lorg/greenrobot/greendao/database/Database;

.field protected final schemaVersion:I


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;I)V
    .locals 1
    .param p1, "db"    # Lorg/greenrobot/greendao/database/Database;
    .param p2, "schemaVersion"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    .line 38
    iput p2, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->schemaVersion:I

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->daoConfigMap:Ljava/util/Map;

    .line 41
    return-void
.end method


# virtual methods
.method public getDatabase()Lorg/greenrobot/greendao/database/Database;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    return-object v0
.end method

.method public getSchemaVersion()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->schemaVersion:I

    return v0
.end method

.method public abstract newSession()Lorg/greenrobot/greendao/AbstractDaoSession;
.end method

.method public abstract newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lorg/greenrobot/greendao/AbstractDaoSession;
.end method

.method protected registerDaoClass(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "daoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/greenrobot/greendao/AbstractDao<**>;>;"
    new-instance v0, Lorg/greenrobot/greendao/internal/DaoConfig;

    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-direct {v0, v1, p1}, Lorg/greenrobot/greendao/internal/DaoConfig;-><init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/Class;)V

    .line 45
    .local v0, "daoConfig":Lorg/greenrobot/greendao/internal/DaoConfig;
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method
