.class Lcom/lzy/okgo/cache/a;
.super Lcom/lzy/okgo/cache/c;
.source "CacheDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lzy/okgo/cache/c<",
        "Lcom/lzy/okgo/cache/CacheEntity<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/lzy/okgo/cache/b;

    invoke-direct {v0}, Lcom/lzy/okgo/cache/b;-><init>()V

    invoke-direct {p0, v0}, Lcom/lzy/okgo/cache/c;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/lzy/okgo/cache/CacheEntity;)Landroid/content/ContentValues;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 37
    invoke-static {p1}, Lcom/lzy/okgo/cache/CacheEntity;->getContentValues(Lcom/lzy/okgo/cache/CacheEntity;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 0

    .line 8
    check-cast p1, Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/cache/a;->a(Lcom/lzy/okgo/cache/CacheEntity;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/database/Cursor;)Lcom/lzy/okgo/cache/CacheEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation

    .line 32
    invoke-static {p1}, Lcom/lzy/okgo/cache/CacheEntity;->parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/lzy/okgo/cache/CacheEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "key=?"

    const/4 v1, 0x1

    .line 17
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/lzy/okgo/cache/a;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/cache/CacheEntity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "cache_table"

    return-object v0
.end method

.method public synthetic b(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/cache/a;->a(Landroid/database/Cursor;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "key=?"

    const/4 v1, 0x1

    .line 25
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 26
    invoke-virtual {p0, v0, v2}, Lcom/lzy/okgo/cache/a;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1
.end method
