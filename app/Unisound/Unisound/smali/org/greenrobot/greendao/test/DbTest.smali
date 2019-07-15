.class public abstract Lorg/greenrobot/greendao/test/DbTest;
.super Landroid/test/AndroidTestCase;
.source "DbTest.java"


# static fields
.field public static final DB_NAME:Ljava/lang/String; = "greendao-unittest-db.temp"


# instance fields
.field private application:Landroid/app/Application;

.field protected db:Lorg/greenrobot/greendao/database/Database;

.field protected final inMemory:Z

.field protected final random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/test/DbTest;-><init>(Z)V

    .line 53
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "inMemory"    # Z

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    .line 56
    iput-boolean p1, p0, Lorg/greenrobot/greendao/test/DbTest;->inMemory:Z

    .line 57
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/test/DbTest;->random:Ljava/util/Random;

    .line 58
    return-void
.end method


# virtual methods
.method public createApplication(Ljava/lang/Class;)Landroid/app/Application;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Application;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "appClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v2, "Application already created"

    iget-object v3, p0, Lorg/greenrobot/greendao/test/DbTest;->application:Landroid/app/Application;

    invoke-static {v2, v3}, Lorg/greenrobot/greendao/test/DbTest;->assertNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/DbTest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 75
    .local v0, "app":Landroid/app/Application;, "TT;"
    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V

    .line 76
    iput-object v0, p0, Lorg/greenrobot/greendao/test/DbTest;->application:Landroid/app/Application;

    .line 77
    return-object v0

    .line 72
    .end local v0    # "app":Landroid/app/Application;, "TT;"
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create application "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected createDatabase()Lorg/greenrobot/greendao/database/Database;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 96
    iget-boolean v1, p0, Lorg/greenrobot/greendao/test/DbTest;->inMemory:Z

    if-eqz v1, :cond_0

    .line 97
    invoke-static {v4}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 103
    .local v0, "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    new-instance v1, Lorg/greenrobot/greendao/database/StandardDatabase;

    invoke-direct {v1, v0}, Lorg/greenrobot/greendao/database/StandardDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v1

    .line 100
    .end local v0    # "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/DbTest;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "greendao-unittest-db.temp"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 101
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/DbTest;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "greendao-unittest-db.temp"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .restart local v0    # "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Application;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 89
    const-string v0, "Application not yet created"

    iget-object v1, p0, Lorg/greenrobot/greendao/test/DbTest;->application:Landroid/app/Application;

    invoke-static {v0, v1}, Lorg/greenrobot/greendao/test/DbTest;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lorg/greenrobot/greendao/test/DbTest;->application:Landroid/app/Application;

    return-object v0
.end method

.method protected logTableDump(Ljava/lang/String;)V
    .locals 2
    .param p1, "tablename"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lorg/greenrobot/greendao/test/DbTest;->db:Lorg/greenrobot/greendao/database/Database;

    instance-of v0, v0, Lorg/greenrobot/greendao/database/StandardDatabase;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/greenrobot/greendao/test/DbTest;->db:Lorg/greenrobot/greendao/database/Database;

    check-cast v0, Lorg/greenrobot/greendao/database/StandardDatabase;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/database/StandardDatabase;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/greenrobot/greendao/DbUtils;->logTableDump(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Table dump unsupported for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/test/DbTest;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/greenrobot/greendao/DaoLog;->w(Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setUp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    invoke-super {p0}, Landroid/test/AndroidTestCase;->setUp()V

    .line 63
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/DbTest;->createDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/test/DbTest;->db:Lorg/greenrobot/greendao/database/Database;

    .line 64
    return-void
.end method

.method protected tearDown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lorg/greenrobot/greendao/test/DbTest;->application:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/DbTest;->terminateApplication()V

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/test/DbTest;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->close()V

    .line 113
    iget-boolean v0, p0, Lorg/greenrobot/greendao/test/DbTest;->inMemory:Z

    if-nez v0, :cond_1

    .line 114
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/DbTest;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "greendao-unittest-db.temp"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 116
    :cond_1
    invoke-super {p0}, Landroid/test/AndroidTestCase;->tearDown()V

    .line 117
    return-void
.end method

.method public terminateApplication()V
    .locals 2

    .prologue
    .line 82
    const-string v0, "Application not yet created"

    iget-object v1, p0, Lorg/greenrobot/greendao/test/DbTest;->application:Landroid/app/Application;

    invoke-static {v0, v1}, Lorg/greenrobot/greendao/test/DbTest;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lorg/greenrobot/greendao/test/DbTest;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onTerminate()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/greenrobot/greendao/test/DbTest;->application:Landroid/app/Application;

    .line 85
    return-void
.end method
