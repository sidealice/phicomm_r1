.class public Lorg/greenrobot/greendao/DbUtils;
.super Ljava/lang/Object;
.source "DbUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyAllBytes(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, "byteCount":I
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 101
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 102
    .local v2, "read":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 108
    return v1

    .line 105
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 106
    add-int/2addr v1, v2

    .line 107
    goto :goto_0
.end method

.method public static executeSqlScript(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "assetFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/greenrobot/greendao/DbUtils;->executeSqlScript(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static executeSqlScript(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "assetFilename"    # Ljava/lang/String;
    .param p3, "transactional"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {p0, p2}, Lorg/greenrobot/greendao/DbUtils;->readAsset(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    .line 57
    .local v0, "bytes":[B
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 58
    .local v3, "sql":Ljava/lang/String;
    const-string v4, ";(\\s)*[\n\r]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "lines":[Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 61
    invoke-static {p1, v2}, Lorg/greenrobot/greendao/DbUtils;->executeSqlStatementsInTx(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)I

    move-result v1

    .line 65
    .local v1, "count":I
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Executed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " statements from SQL script \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/greenrobot/greendao/DaoLog;->i(Ljava/lang/String;)I

    .line 66
    return v1

    .line 63
    .end local v1    # "count":I
    :cond_0
    invoke-static {p1, v2}, Lorg/greenrobot/greendao/DbUtils;->executeSqlStatements(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "count":I
    goto :goto_0
.end method

.method public static executeSqlStatements(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)I
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "statements"    # [Ljava/lang/String;

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "count":I
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p1, v2

    .line 83
    .local v1, "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 85
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    .line 82
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "line":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method public static executeSqlStatementsInTx(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)I
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "statements"    # [Ljava/lang/String;

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 72
    :try_start_0
    invoke-static {p0, p1}, Lorg/greenrobot/greendao/DbUtils;->executeSqlStatements(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)I

    move-result v0

    .line 73
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    .end local v0    # "count":I
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public static logTableDump(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 10
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tablename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 127
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 129
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {v8}, Landroid/database/DatabaseUtils;->dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    .line 130
    .local v9, "dump":Ljava/lang/String;
    invoke-static {v9}, Lorg/greenrobot/greendao/DaoLog;->d(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 134
    return-void

    .line 132
    .end local v9    # "dump":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static readAllBytes(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 113
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lorg/greenrobot/greendao/DbUtils;->copyAllBytes(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 114
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static readAsset(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 120
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Lorg/greenrobot/greendao/DbUtils;->readAllBytes(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 122
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method public static vacuum(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 34
    const-string v0, "VACUUM"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    return-void
.end method
