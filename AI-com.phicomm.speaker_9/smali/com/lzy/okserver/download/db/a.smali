.class public Lcom/lzy/okserver/download/db/a;
.super Lcom/lzy/okgo/cache/c;
.source "DownloadInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okgo/cache/c<",
        "Lcom/lzy/okserver/download/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/lzy/okserver/download/db/b;

    invoke-direct {v0}, Lcom/lzy/okserver/download/db/b;-><init>()V

    invoke-direct {p0, v0}, Lcom/lzy/okgo/cache/c;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/lzy/okserver/download/a;)I
    .locals 4

    const-string v0, "taskKey=?"

    const/4 v1, 0x1

    .line 39
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lzy/okserver/download/a;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v0, v1}, Lcom/lzy/okserver/download/db/a;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 0

    .line 20
    check-cast p1, Lcom/lzy/okserver/download/a;

    invoke-virtual {p0, p1}, Lcom/lzy/okserver/download/db/a;->b(Lcom/lzy/okserver/download/a;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/database/Cursor;)Lcom/lzy/okserver/download/a;
    .locals 0

    .line 49
    invoke-static {p1}, Lcom/lzy/okserver/download/a;->a(Landroid/database/Cursor;)Lcom/lzy/okserver/download/a;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/lzy/okserver/download/a;
    .locals 3

    const-string v0, "taskKey=?"

    const/4 v1, 0x1

    .line 29
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 30
    invoke-virtual {p0, v0, v1}, Lcom/lzy/okserver/download/db/a;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lzy/okserver/download/a;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "download_table"

    return-object v0
.end method

.method public b(Lcom/lzy/okserver/download/a;)Landroid/content/ContentValues;
    .locals 0

    .line 54
    invoke-static {p1}, Lcom/lzy/okserver/download/a;->a(Lcom/lzy/okserver/download/a;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/lzy/okserver/download/db/a;->a(Landroid/database/Cursor;)Lcom/lzy/okserver/download/a;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "taskKey=?"

    const/4 v1, 0x1

    .line 35
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/lzy/okserver/download/db/a;->a(Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public e()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lzy/okserver/download/a;",
            ">;"
        }
    .end annotation

    const-string v6, "_id ASC"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 44
    invoke-virtual/range {v0 .. v7}, Lcom/lzy/okserver/download/db/a;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
