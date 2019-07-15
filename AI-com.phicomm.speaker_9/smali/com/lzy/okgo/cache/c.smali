.class public abstract Lcom/lzy/okgo/cache/c;
.super Ljava/lang/Object;
.source "DataBaseDao.java"


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
.field private a:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/lzy/okgo/cache/c;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/c;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 164
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 165
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/cache/c;->a(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {v0, v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 166
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 172
    invoke-virtual {p0, v0, v1}, Lcom/lzy/okgo/cache/c;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 169
    :try_start_1
    invoke-static {p1}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 172
    invoke-virtual {p0, v0, v1}, Lcom/lzy/okgo/cache/c;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    const/4 p1, 0x0

    return p1

    .line 171
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 172
    invoke-virtual {p0, v0, v1}, Lcom/lzy/okgo/cache/c;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    throw p1
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 72
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/c;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 74
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 75
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 76
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 82
    invoke-virtual {p0, v0, v1}, Lcom/lzy/okgo/cache/c;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 79
    :try_start_1
    invoke-static {p1}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 82
    invoke-virtual {p0, v0, v1}, Lcom/lzy/okgo/cache/c;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    const/4 p1, 0x0

    return p1

    .line 81
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 82
    invoke-virtual {p0, v0, v1}, Lcom/lzy/okgo/cache/c;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    throw p1
.end method

.method public abstract a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method public a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    move-object v1, p0

    .line 99
    invoke-virtual {v1}, Lcom/lzy/okgo/cache/c;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 100
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    .line 103
    :try_start_0
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 104
    invoke-virtual {v1}, Lcom/lzy/okgo/cache/c;->a()Ljava/lang/String;

    move-result-object v3

    move-object v2, v11

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/cache/c;->b(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 113
    invoke-virtual {v1, v11, v2}, Lcom/lzy/okgo/cache/c;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v13, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v13, v2

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_1
    move-object v2, v0

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_2
    move-object v2, v0

    .line 110
    :try_start_2
    invoke-static {v2}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 112
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 113
    invoke-virtual {v1, v11, v13}, Lcom/lzy/okgo/cache/c;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    :goto_3
    return-object v12

    .line 112
    :goto_4
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 113
    invoke-virtual {v1, v11, v13}, Lcom/lzy/okgo/cache/c;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    throw v2
.end method

.method protected final a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 30
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz p1, :cond_1

    .line 31
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/Object;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/c;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 130
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 131
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/cache/c;->a(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {v0, v2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 132
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 138
    invoke-virtual {p0, v0, v1}, Lcom/lzy/okgo/cache/c;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    return-wide v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    :try_start_1
    invoke-static {p1}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 138
    invoke-virtual {p0, v0, v1}, Lcom/lzy/okgo/cache/c;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 137
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 138
    invoke-virtual {p0, v0, v1}, Lcom/lzy/okgo/cache/c;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    throw p1
.end method

.method protected final b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/lzy/okgo/cache/c;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public abstract b(Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method public b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 94
    invoke-virtual/range {v0 .. v7}, Lcom/lzy/okgo/cache/c;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/c;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 147
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 148
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/cache/c;->a(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {v0, v2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 149
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 155
    invoke-virtual {p0, v0, v1}, Lcom/lzy/okgo/cache/c;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    return-wide v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 152
    :try_start_1
    invoke-static {p1}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 155
    invoke-virtual {p0, v0, v1}, Lcom/lzy/okgo/cache/c;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 154
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 155
    invoke-virtual {p0, v0, v1}, Lcom/lzy/okgo/cache/c;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    throw p1
.end method

.method protected final c()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/lzy/okgo/cache/c;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, v0, v0}, Lcom/lzy/okgo/cache/c;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, v0, v0}, Lcom/lzy/okgo/cache/c;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
