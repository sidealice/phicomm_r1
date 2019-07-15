.class public abstract Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk;
.super Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;
.source "AbstractDaoTestLongPk.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/greenrobot/greendao/AbstractDao",
        "<TT;",
        "Ljava/lang/Long;",
        ">;T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk",
        "<TD;TT;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk<TD;TT;>;"
    .local p1, "daoClass":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;-><init>(Ljava/lang/Class;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected createRandomPk()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 40
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk<TD;TT;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createRandomPk()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk<TD;TT;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk;->createRandomPk()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public testAssignPk()V
    .locals 6

    .prologue
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk<TD;TT;>;"
    const/4 v5, 0x0

    .line 44
    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    invoke-virtual {v4}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->isEntityUpdateable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    invoke-virtual {p0, v5}, Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    .local v0, "entity1":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0, v5}, Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 49
    .local v1, "entity2":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v4, v0}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 50
    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v4, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 52
    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    invoke-virtual {v4, v0}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 53
    .local v2, "pk1":Ljava/lang/Long;
    invoke-static {v2}, Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk;->assertNotNull(Ljava/lang/Object;)V

    .line 54
    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    invoke-virtual {v4, v1}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 55
    .local v3, "pk2":Ljava/lang/Long;
    invoke-static {v3}, Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk;->assertNotNull(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk;->assertFalse(Z)V

    .line 59
    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v4, v2}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk;->assertNotNull(Ljava/lang/Object;)V

    .line 60
    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v4, v3}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk;->assertNotNull(Ljava/lang/Object;)V

    .line 67
    .end local v0    # "entity1":Ljava/lang/Object;, "TT;"
    .end local v1    # "entity2":Ljava/lang/Object;, "TT;"
    .end local v2    # "pk1":Ljava/lang/Long;
    .end local v3    # "pk2":Ljava/lang/Long;
    :goto_0
    return-void

    .line 62
    .restart local v0    # "entity1":Ljava/lang/Object;, "TT;"
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping testAssignPk for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk;->daoClass:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (createEntity returned null for null key)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/greenrobot/greendao/DaoLog;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 65
    .end local v0    # "entity1":Ljava/lang/Object;, "TT;"
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping testAssignPk for not updateable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk;->daoClass:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/greenrobot/greendao/DaoLog;->d(Ljava/lang/String;)I

    goto :goto_0
.end method
