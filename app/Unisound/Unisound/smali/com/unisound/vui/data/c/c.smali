.class public Lcom/unisound/vui/data/c/c;
.super Lorg/greenrobot/greendao/AbstractDaoMaster;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/data/c/c$a;,
        Lcom/unisound/vui/data/c/c$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    new-instance v0, Lorg/greenrobot/greendao/database/StandardDatabase;

    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/database/StandardDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, v0}, Lcom/unisound/vui/data/c/c;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;I)V

    const-class v0, Lcom/unisound/vui/data/c/a;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/data/c/c;->registerDaoClass(Ljava/lang/Class;)V

    const-class v0, Lcom/unisound/vui/data/c/b;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/data/c/c;->registerDaoClass(Ljava/lang/Class;)V

    const-class v0, Lcom/unisound/vui/data/c/e;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/data/c/c;->registerDaoClass(Ljava/lang/Class;)V

    const-class v0, Lcom/unisound/vui/data/c/f;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/data/c/c;->registerDaoClass(Ljava/lang/Class;)V

    const-class v0, Lcom/unisound/vui/data/c/a/e;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/data/c/c;->registerDaoClass(Ljava/lang/Class;)V

    const-class v0, Lcom/unisound/vui/data/c/a/f;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/data/c/c;->registerDaoClass(Ljava/lang/Class;)V

    const-class v0, Lcom/unisound/vui/data/c/a/b;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/data/c/c;->registerDaoClass(Ljava/lang/Class;)V

    const-class v0, Lcom/unisound/vui/data/c/a/a;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/data/c/c;->registerDaoClass(Ljava/lang/Class;)V

    const-class v0, Lcom/unisound/vui/data/c/a/g;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/data/c/c;->registerDaoClass(Ljava/lang/Class;)V

    const-class v0, Lcom/unisound/vui/data/c/a/d;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/data/c/c;->registerDaoClass(Ljava/lang/Class;)V

    const-class v0, Lcom/unisound/vui/data/c/a/c;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/data/c/c;->registerDaoClass(Ljava/lang/Class;)V

    return-void
.end method

.method public static a(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/unisound/vui/data/c/a;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/unisound/vui/data/c/b;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/unisound/vui/data/c/e;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/unisound/vui/data/c/f;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/unisound/vui/data/c/a/e;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/unisound/vui/data/c/a/f;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/unisound/vui/data/c/a/b;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/unisound/vui/data/c/a/a;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/unisound/vui/data/c/a/g;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/unisound/vui/data/c/a/d;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/unisound/vui/data/c/a/c;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method

.method public static b(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/unisound/vui/data/c/a;->b(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/unisound/vui/data/c/b;->b(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/unisound/vui/data/c/e;->b(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/unisound/vui/data/c/f;->b(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/unisound/vui/data/c/a/e;->b(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/unisound/vui/data/c/a/f;->b(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/unisound/vui/data/c/a/b;->b(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/unisound/vui/data/c/a/a;->b(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/unisound/vui/data/c/a/g;->b(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/unisound/vui/data/c/a/d;->b(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/unisound/vui/data/c/a/c;->b(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method


# virtual methods
.method public a()Lcom/unisound/vui/data/c/d;
    .locals 4

    new-instance v0, Lcom/unisound/vui/data/c/d;

    iget-object v1, p0, Lcom/unisound/vui/data/c/c;->db:Lorg/greenrobot/greendao/database/Database;

    sget-object v2, Lorg/greenrobot/greendao/identityscope/IdentityScopeType;->Session:Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lcom/unisound/vui/data/c/c;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/unisound/vui/data/c/d;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public a(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/unisound/vui/data/c/d;
    .locals 3

    new-instance v0, Lcom/unisound/vui/data/c/d;

    iget-object v1, p0, Lcom/unisound/vui/data/c/c;->db:Lorg/greenrobot/greendao/database/Database;

    iget-object v2, p0, Lcom/unisound/vui/data/c/c;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Lcom/unisound/vui/data/c/d;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public synthetic newSession()Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 1

    invoke-virtual {p0}, Lcom/unisound/vui/data/c/c;->a()Lcom/unisound/vui/data/c/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/unisound/vui/data/c/c;->a(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/unisound/vui/data/c/d;

    move-result-object v0

    return-object v0
.end method
