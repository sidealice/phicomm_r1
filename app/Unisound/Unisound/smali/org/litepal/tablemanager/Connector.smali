.class public Lorg/litepal/tablemanager/Connector;
.super Ljava/lang/Object;
.source "Connector.java"


# static fields
.field private static mLitePalAttr:Lorg/litepal/parser/LitePalAttr;

.field private static mLitePalHelper:Lorg/litepal/tablemanager/LitePalOpenHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildConnection()Lorg/litepal/tablemanager/LitePalOpenHelper;
    .locals 3

    .prologue
    .line 111
    sget-object v0, Lorg/litepal/tablemanager/Connector;->mLitePalAttr:Lorg/litepal/parser/LitePalAttr;

    if-nez v0, :cond_0

    .line 112
    invoke-static {}, Lorg/litepal/parser/LitePalParser;->parseLitePalConfiguration()V

    .line 113
    invoke-static {}, Lorg/litepal/parser/LitePalAttr;->getInstance()Lorg/litepal/parser/LitePalAttr;

    move-result-object v0

    sput-object v0, Lorg/litepal/tablemanager/Connector;->mLitePalAttr:Lorg/litepal/parser/LitePalAttr;

    .line 115
    :cond_0
    sget-object v0, Lorg/litepal/tablemanager/Connector;->mLitePalAttr:Lorg/litepal/parser/LitePalAttr;

    invoke-virtual {v0}, Lorg/litepal/parser/LitePalAttr;->checkSelfValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    sget-object v0, Lorg/litepal/tablemanager/Connector;->mLitePalHelper:Lorg/litepal/tablemanager/LitePalOpenHelper;

    if-nez v0, :cond_1

    .line 117
    new-instance v0, Lorg/litepal/tablemanager/LitePalOpenHelper;

    sget-object v1, Lorg/litepal/tablemanager/Connector;->mLitePalAttr:Lorg/litepal/parser/LitePalAttr;

    invoke-virtual {v1}, Lorg/litepal/parser/LitePalAttr;->getDbName()Ljava/lang/String;

    move-result-object v1

    .line 118
    sget-object v2, Lorg/litepal/tablemanager/Connector;->mLitePalAttr:Lorg/litepal/parser/LitePalAttr;

    invoke-virtual {v2}, Lorg/litepal/parser/LitePalAttr;->getVersion()I

    move-result v2

    .line 117
    invoke-direct {v0, v1, v2}, Lorg/litepal/tablemanager/LitePalOpenHelper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/litepal/tablemanager/Connector;->mLitePalHelper:Lorg/litepal/tablemanager/LitePalOpenHelper;

    .line 120
    :cond_1
    sget-object v0, Lorg/litepal/tablemanager/Connector;->mLitePalHelper:Lorg/litepal/tablemanager/LitePalOpenHelper;

    return-object v0

    .line 122
    :cond_2
    new-instance v0, Lorg/litepal/exceptions/InvalidAttributesException;

    const-string v1, "Uncaught invalid attributes exception happened"

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/InvalidAttributesException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 79
    const-class v2, Lorg/litepal/tablemanager/Connector;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lorg/litepal/tablemanager/Connector;->buildConnection()Lorg/litepal/tablemanager/LitePalOpenHelper;

    move-result-object v0

    .line 80
    .local v0, "litePalHelper":Lorg/litepal/tablemanager/LitePalOpenHelper;
    invoke-virtual {v0}, Lorg/litepal/tablemanager/LitePalOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 61
    const-class v2, Lorg/litepal/tablemanager/Connector;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lorg/litepal/tablemanager/Connector;->buildConnection()Lorg/litepal/tablemanager/LitePalOpenHelper;

    move-result-object v0

    .line 62
    .local v0, "litePalHelper":Lorg/litepal/tablemanager/LitePalOpenHelper;
    invoke-virtual {v0}, Lorg/litepal/tablemanager/LitePalOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
