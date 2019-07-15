.class public abstract Lorg/greenrobot/greendao/database/DatabaseOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private encryptedHelper:Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;

.field private final name:Ljava/lang/String;

.field private final version:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 40
    iput-object p1, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->name:Ljava/lang/String;

    .line 42
    iput p4, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->version:I

    .line 43
    return-void
.end method

.method private checkEncryptedHelper()Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->encryptedHelper:Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;

    iget-object v1, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->name:Ljava/lang/String;

    iget v3, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->version:I

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;-><init>(Lorg/greenrobot/greendao/database/DatabaseOpenHelper;Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->encryptedHelper:Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->encryptedHelper:Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;

    return-object v0
.end method


# virtual methods
.method public getEncryptedReadableDb(Ljava/lang/String;)Lorg/greenrobot/greendao/database/Database;
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->checkEncryptedHelper()Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;

    move-result-object v0

    .line 103
    .local v0, "encryptedHelper":Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;->getReadableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;->wrap(Lnet/sqlcipher/database/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object v1

    return-object v1
.end method

.method public getEncryptedReadableDb([C)Lorg/greenrobot/greendao/database/Database;
    .locals 2
    .param p1, "password"    # [C

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->checkEncryptedHelper()Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;

    move-result-object v0

    .line 108
    .local v0, "encryptedHelper":Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;->getReadableDatabase([C)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;->wrap(Lnet/sqlcipher/database/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object v1

    return-object v1
.end method

.method public getEncryptedWritableDb(Ljava/lang/String;)Lorg/greenrobot/greendao/database/Database;
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->checkEncryptedHelper()Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;

    move-result-object v0

    .line 93
    .local v0, "encryptedHelper":Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;->getReadableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;->wrap(Lnet/sqlcipher/database/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object v1

    return-object v1
.end method

.method public getEncryptedWritableDb([C)Lorg/greenrobot/greendao/database/Database;
    .locals 2
    .param p1, "password"    # [C

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->checkEncryptedHelper()Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;

    move-result-object v0

    .line 98
    .local v0, "encryptedHelper":Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;->getWritableDatabase([C)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;->wrap(Lnet/sqlcipher/database/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object v1

    return-object v1
.end method

.method public getReadableDb()Lorg/greenrobot/greendao/database/Database;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->wrap(Landroid/database/sqlite/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    return-object v0
.end method

.method public getWritableDb()Lorg/greenrobot/greendao/database/Database;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->wrap(Landroid/database/sqlite/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->wrap(Landroid/database/sqlite/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->onCreate(Lorg/greenrobot/greendao/database/Database;)V

    .line 60
    return-void
.end method

.method public onCreate(Lorg/greenrobot/greendao/database/Database;)V
    .locals 0
    .param p1, "db"    # Lorg/greenrobot/greendao/database/Database;

    .prologue
    .line 64
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->wrap(Landroid/database/sqlite/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->onOpen(Lorg/greenrobot/greendao/database/Database;)V

    .line 78
    return-void
.end method

.method public onOpen(Lorg/greenrobot/greendao/database/Database;)V
    .locals 0
    .param p1, "db"    # Lorg/greenrobot/greendao/database/Database;

    .prologue
    .line 82
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->wrap(Landroid/database/sqlite/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->onUpgrade(Lorg/greenrobot/greendao/database/Database;II)V

    .line 69
    return-void
.end method

.method public onUpgrade(Lorg/greenrobot/greendao/database/Database;II)V
    .locals 0
    .param p1, "db"    # Lorg/greenrobot/greendao/database/Database;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 73
    return-void
.end method

.method protected wrap(Landroid/database/sqlite/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;
    .locals 1
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 54
    new-instance v0, Lorg/greenrobot/greendao/database/StandardDatabase;

    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/database/StandardDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method
