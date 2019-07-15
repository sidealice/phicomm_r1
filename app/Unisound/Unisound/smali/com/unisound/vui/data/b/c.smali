.class public Lcom/unisound/vui/data/b/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Lcom/unisound/vui/data/c/f;

.field private c:Lcom/unisound/vui/data/c/f;


# direct methods
.method public constructor <init>(Lcom/unisound/vui/data/c/c$a;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/unisound/vui/data/b/c;->a:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, p1}, Lcom/unisound/vui/data/b/c;->a(Lcom/unisound/vui/data/c/c$a;)Lcom/unisound/vui/data/c/f;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/data/b/c;->b:Lcom/unisound/vui/data/c/f;

    invoke-direct {p0, p1}, Lcom/unisound/vui/data/b/c;->b(Lcom/unisound/vui/data/c/c$a;)Lcom/unisound/vui/data/c/f;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/data/b/c;->c:Lcom/unisound/vui/data/c/f;

    return-void
.end method

.method private a(Lcom/unisound/vui/data/c/c$a;)Lcom/unisound/vui/data/c/f;
    .locals 2

    invoke-virtual {p1}, Lcom/unisound/vui/data/c/c$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Lcom/unisound/vui/data/c/c;

    invoke-direct {v1, v0}, Lcom/unisound/vui/data/c/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1}, Lcom/unisound/vui/data/c/c;->a()Lcom/unisound/vui/data/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/vui/data/c/d;->c()Lcom/unisound/vui/data/c/f;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/unisound/vui/data/c/c$a;)Lcom/unisound/vui/data/c/f;
    .locals 2

    invoke-virtual {p1}, Lcom/unisound/vui/data/c/c$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Lcom/unisound/vui/data/c/c;

    invoke-direct {v1, v0}, Lcom/unisound/vui/data/c/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1}, Lcom/unisound/vui/data/c/c;->a()Lcom/unisound/vui/data/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/vui/data/c/d;->c()Lcom/unisound/vui/data/c/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/data/entity/a/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/data/b/c;->b:Lcom/unisound/vui/data/c/f;

    invoke-virtual {v0}, Lcom/unisound/vui/data/c/f;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/unisound/vui/data/c/f$a;->b:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/data/c/f$a;->c:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->whereOr(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/b/c;->c:Lcom/unisound/vui/data/c/f;

    invoke-virtual {v0}, Lcom/unisound/vui/data/c/f;->deleteAll()V

    return-void
.end method

.method public a(Lcom/unisound/vui/data/entity/a/d;)V
    .locals 3

    iget-object v0, p0, Lcom/unisound/vui/data/b/c;->c:Lcom/unisound/vui/data/c/f;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/unisound/vui/data/entity/a/d;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/unisound/vui/data/c/f;->insertInTx([Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/unisound/vui/data/entity/a/d;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/data/b/c;->c:Lcom/unisound/vui/data/c/f;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/data/c/f;->update(Ljava/lang/Object;)V

    return-void
.end method
