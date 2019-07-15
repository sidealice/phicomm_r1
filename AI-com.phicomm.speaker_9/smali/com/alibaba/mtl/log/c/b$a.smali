.class Lcom/alibaba/mtl/log/c/b$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LogSqliteStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/log/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic a:Lcom/alibaba/mtl/log/c/b;

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lcom/alibaba/mtl/log/c/b;Landroid/content/Context;)V
    .locals 2

    .line 245
    iput-object p1, p0, Lcom/alibaba/mtl/log/c/b$a;->a:Lcom/alibaba/mtl/log/c/b;

    const-string p1, "ut.db"

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 246
    invoke-direct {p0, p2, p1, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 242
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/alibaba/mtl/log/c/b$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    .line 292
    monitor-exit p0

    return-void

    .line 295
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/mtl/log/c/b$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_1

    .line 296
    iget-object p1, p0, Lcom/alibaba/mtl/log/c/b$a;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_1

    .line 297
    iget-object p1, p0, Lcom/alibaba/mtl/log/c/b$a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 p1, 0x0

    .line 298
    iput-object p1, p0, Lcom/alibaba/mtl/log/c/b$a;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 290
    monitor-exit p0

    throw p1

    .line 303
    :catch_0
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    monitor-enter p0

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/b$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 281
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/log/c/b$a;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "TAG"

    const-string v2, "e"

    .line 284
    invoke-static {v1, v2, v0}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 285
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/b/b;->a(Ljava/lang/Throwable;)V

    .line 287
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/b$a;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 279
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS log (_id INTEGER PRIMARY KEY AUTOINCREMENT, eventId TEXT,priority TEXT, streamId TEXT, time TEXT, content TEXT, _index TEXT )"

    .line 263
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "PRAGMA journal_mode=DELETE"

    .line 253
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/b$a;->a:Lcom/alibaba/mtl/log/c/b;

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/c/b;->a(Lcom/alibaba/mtl/log/c/b;Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/alibaba/mtl/log/c/b$a;->a:Lcom/alibaba/mtl/log/c/b;

    invoke-static {v1, v0}, Lcom/alibaba/mtl/log/c/b;->a(Lcom/alibaba/mtl/log/c/b;Landroid/database/Cursor;)V

    throw p1

    :catch_0
    iget-object v1, p0, Lcom/alibaba/mtl/log/c/b$a;->a:Lcom/alibaba/mtl/log/c/b;

    invoke-static {v1, v0}, Lcom/alibaba/mtl/log/c/b;->a(Lcom/alibaba/mtl/log/c/b;Landroid/database/Cursor;)V

    .line 258
    :goto_0
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    :try_start_0
    const-string p2, "ALTER TABLE log ADD COLUMN _index TEXT "

    .line 270
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "UTSqliteLogStore"

    const-string p3, "DB Upgrade Error"

    .line 272
    invoke-static {p2, p3, p1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
