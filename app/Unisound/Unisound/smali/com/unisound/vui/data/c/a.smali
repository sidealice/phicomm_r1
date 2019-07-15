.class public Lcom/unisound/vui/data/c/a;
.super Lorg/greenrobot/greendao/AbstractDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao",
        "<",
        "Lcom/unisound/vui/data/entity/a/a;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/unisound/vui/data/c/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static a(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "IF NOT EXISTS "

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"APP\" (\"_id\" INTEGER PRIMARY KEY ,\"PACKAGE_NAME\" TEXT NOT NULL ,\"APP_LABEL\" TEXT,\"APP_PY_LABEL\" TEXT,\"CLASS_NAME\" TEXT,\"NICK_NAME\" TEXT);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static b(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string v0, "IF EXISTS "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"APP\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 2

    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/unisound/vui/data/entity/a/a;)Ljava/lang/Long;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/unisound/vui/data/entity/a/a;->a()Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Lcom/unisound/vui/data/entity/a/a;J)Ljava/lang/Long;
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/unisound/vui/data/entity/a/a;->a(Ljava/lang/Long;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;Lcom/unisound/vui/data/entity/a/a;I)V
    .locals 4

    const/4 v1, 0x0

    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/unisound/vui/data/entity/a/a;->a(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/unisound/vui/data/entity/a/a;->a(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Lcom/unisound/vui/data/entity/a/a;->b(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    invoke-virtual {p2, v0}, Lcom/unisound/vui/data/entity/a/a;->c(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_3
    invoke-virtual {p2, v0}, Lcom/unisound/vui/data/entity/a/a;->d(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p2, v1}, Lcom/unisound/vui/data/entity/a/a;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

.method protected final a(Landroid/database/sqlite/SQLiteStatement;Lcom/unisound/vui/data/entity/a/a;)V
    .locals 4

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a;->a()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method protected final a(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/unisound/vui/data/entity/a/a;)V
    .locals 4

    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a;->a()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x6

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public b(Landroid/database/Cursor;I)Lcom/unisound/vui/data/entity/a/a;
    .locals 8

    const/4 v6, 0x0

    new-instance v0, Lcom/unisound/vui/data/entity/a/a;

    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v6

    :goto_0
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, p2, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v6

    :goto_1
    add-int/lit8 v4, p2, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v6

    :goto_2
    add-int/lit8 v5, p2, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v6

    :goto_3
    add-int/lit8 v7, p2, 0x5

    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_4
    invoke-direct/range {v0 .. v6}, Lcom/unisound/vui/data/entity/a/a;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, p2, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    add-int/lit8 v4, p2, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    add-int/lit8 v5, p2, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_4
    add-int/lit8 v6, p2, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4
.end method

.method protected synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    check-cast p2, Lcom/unisound/vui/data/entity/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/data/c/a;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/unisound/vui/data/entity/a/a;)V

    return-void
.end method

.method protected synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    check-cast p2, Lcom/unisound/vui/data/entity/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/data/c/a;->a(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/unisound/vui/data/entity/a/a;)V

    return-void
.end method

.method public synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    check-cast p1, Lcom/unisound/vui/data/entity/a/a;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/data/c/a;->a(Lcom/unisound/vui/data/entity/a/a;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/data/c/a;->b(Landroid/database/Cursor;I)Lcom/unisound/vui/data/entity/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    check-cast p2, Lcom/unisound/vui/data/entity/a/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/unisound/vui/data/c/a;->a(Landroid/database/Cursor;Lcom/unisound/vui/data/entity/a/a;I)V

    return-void
.end method

.method public synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/data/c/a;->a(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .prologue
    check-cast p1, Lcom/unisound/vui/data/entity/a/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/unisound/vui/data/c/a;->a(Lcom/unisound/vui/data/entity/a/a;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
