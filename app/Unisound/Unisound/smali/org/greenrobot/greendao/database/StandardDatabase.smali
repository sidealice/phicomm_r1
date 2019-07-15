.class public Lorg/greenrobot/greendao/database/StandardDatabase;
.super Ljava/lang/Object;
.source "StandardDatabase.java"

# interfaces
.implements Lorg/greenrobot/greendao/database/Database;


# instance fields
.field private final delegate:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "delegate"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    .line 27
    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 42
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 77
    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Lorg/greenrobot/greendao/database/DatabaseStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Lorg/greenrobot/greendao/database/StandardDatabaseStatement;

    iget-object v1, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/database/StandardDatabaseStatement;-><init>(Landroid/database/sqlite/SQLiteStatement;)V

    return-object v0
.end method

.method public endTransaction()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 47
    return-void
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public getRawDatabase()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public inTransaction()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public isDbLockedByCurrentThread()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 57
    return-void
.end method
