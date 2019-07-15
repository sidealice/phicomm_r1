.class public Lcom/unisound/vui/data/e/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/unisound/vui/data/e/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/unisound/vui/data/e/a;
    .locals 1

    sget-object v0, Lcom/unisound/vui/data/e/a;->a:Lcom/unisound/vui/data/e/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unisound/vui/data/e/a;

    invoke-direct {v0}, Lcom/unisound/vui/data/e/a;-><init>()V

    sput-object v0, Lcom/unisound/vui/data/e/a;->a:Lcom/unisound/vui/data/e/a;

    :cond_0
    sget-object v0, Lcom/unisound/vui/data/e/a;->a:Lcom/unisound/vui/data/e/a;

    return-object v0
.end method

.method private a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TEXT"

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "INTEGER"

    goto :goto_0

    :cond_2
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "BOOLEAN"

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "MIGRATION HELPER - CLASS DOESN\'T MATCH WITH THE CURRENT PARAMETERS"

    const-string v2, " - Class: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " limit 1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {p0, v1, v3}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/unisound/vui/util/LogMgr;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private varargs b(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<**>;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_3

    new-instance v5, Lorg/greenrobot/greendao/internal/DaoConfig;

    aget-object v2, p2, v0

    invoke-direct {v5, p1, v2}, Lorg/greenrobot/greendao/internal/DaoConfig;-><init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/Class;)V

    const-string v2, ""

    iget-object v6, v5, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    iget-object v3, v5, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    const-string v4, "_TEMP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v1

    :goto_1
    iget-object v4, v5, Lorg/greenrobot/greendao/internal/DaoConfig;->properties:[Lorg/greenrobot/greendao/Property;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    iget-object v4, v5, Lorg/greenrobot/greendao/internal/DaoConfig;->properties:[Lorg/greenrobot/greendao/Property;

    aget-object v4, v4, v3

    iget-object v10, v4, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/unisound/vui/data/e/a;->a(Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    :try_start_0
    iget-object v11, v5, Lorg/greenrobot/greendao/internal/DaoConfig;->properties:[Lorg/greenrobot/greendao/Property;

    aget-object v11, v11, v3

    iget-object v11, v11, Lorg/greenrobot/greendao/Property;->type:Ljava/lang/Class;

    invoke-direct {p0, v11}, Lcom/unisound/vui/data/e/a;->a(Ljava/lang/Class;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_2
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lorg/greenrobot/greendao/internal/DaoConfig;->properties:[Lorg/greenrobot/greendao/Property;

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lorg/greenrobot/greendao/Property;->primaryKey:Z

    if-eqz v2, :cond_0

    const-string v2, " PRIMARY KEY"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, ","

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string v2, ");"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-static {v3, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-static {v3, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return-void

    :catch_0
    move-exception v11

    goto :goto_2
.end method

.method private varargs c(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<**>;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_2

    new-instance v3, Lorg/greenrobot/greendao/internal/DaoConfig;

    aget-object v2, p2, v0

    invoke-direct {v3, p1, v2}, Lorg/greenrobot/greendao/internal/DaoConfig;-><init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/Class;)V

    iget-object v4, v3, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    iget-object v2, v3, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    const-string v5, "_TEMP"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_1
    iget-object v7, v3, Lorg/greenrobot/greendao/internal/DaoConfig;->properties:[Lorg/greenrobot/greendao/Property;

    array-length v7, v7

    if-ge v2, v7, :cond_1

    iget-object v7, v3, Lorg/greenrobot/greendao/internal/DaoConfig;->properties:[Lorg/greenrobot/greendao/Property;

    aget-object v7, v7, v2

    iget-object v7, v7, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/unisound/vui/data/e/a;->a(Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-static {v3, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-static {v3, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DROP TABLE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public varargs a(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<**>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/unisound/vui/data/e/a;->b(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/unisound/vui/data/c/c;->b(Lorg/greenrobot/greendao/database/Database;Z)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/unisound/vui/data/c/c;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-direct {p0, p1, p2}, Lcom/unisound/vui/data/e/a;->c(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    return-void
.end method
