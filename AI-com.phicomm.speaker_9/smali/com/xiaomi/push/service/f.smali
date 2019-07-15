.class public Lcom/xiaomi/push/service/f;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/Object;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "TEXT NOT NULL"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "appId"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "INTEGER NOT NULL"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "package_name"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "TEXT NOT NULL"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "create_time"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "INTEGER NOT NULL"

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-string v1, "type"

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const-string v1, "TEXT NOT NULL"

    const/16 v11, 0x9

    aput-object v1, v0, v11

    const-string v1, "center_longtitude"

    const/16 v12, 0xa

    aput-object v1, v0, v12

    const-string v1, "TEXT"

    const/16 v13, 0xb

    aput-object v1, v0, v13

    const-string v1, "center_lantitude"

    const/16 v13, 0xc

    aput-object v1, v0, v13

    const-string v1, "TEXT"

    const/16 v13, 0xd

    aput-object v1, v0, v13

    const-string v1, "circle_radius"

    const/16 v13, 0xe

    aput-object v1, v0, v13

    const-string v1, "REAL"

    const/16 v13, 0xf

    aput-object v1, v0, v13

    const-string v1, "polygon_point"

    const/16 v13, 0x10

    aput-object v1, v0, v13

    const-string v1, "TEXT"

    const/16 v13, 0x11

    aput-object v1, v0, v13

    const-string v1, "coordinate_provider"

    const/16 v13, 0x12

    aput-object v1, v0, v13

    const-string v1, "TEXT NOT NULL"

    const/16 v13, 0x13

    aput-object v1, v0, v13

    const-string v1, "current_status"

    const/16 v13, 0x14

    aput-object v1, v0, v13

    const-string v1, "TEXT NOT NULL"

    const/16 v13, 0x15

    aput-object v1, v0, v13

    sput-object v0, Lcom/xiaomi/push/service/f;->c:[Ljava/lang/String;

    new-array v0, v12, [Ljava/lang/String;

    const-string v1, "message_id"

    aput-object v1, v0, v2

    const-string v1, "TEXT NOT NULL"

    aput-object v1, v0, v3

    const-string v1, "geo_id"

    aput-object v1, v0, v4

    const-string v1, "TEXT NOT NULL"

    aput-object v1, v0, v5

    const-string v1, "content"

    aput-object v1, v0, v6

    const-string v1, "BLOB NOT NULL"

    aput-object v1, v0, v7

    const-string v1, "action"

    aput-object v1, v0, v8

    const-string v1, "INTEGER NOT NULL"

    aput-object v1, v0, v9

    const-string v1, "deadline"

    aput-object v1, v0, v10

    const-string v1, "INTEGER NOT NULL"

    aput-object v1, v0, v11

    sput-object v0, Lcom/xiaomi/push/service/f;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "geofencing.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string p1, "GeoFenceDatabaseHelper."

    iput-object p1, p0, Lcom/xiaomi/push/service/f;->b:Ljava/lang/String;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/service/f;->a:Ljava/lang/Object;

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE geofence(id TEXT PRIMARY KEY ,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/xiaomi/push/service/f;->c:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v2, Lcom/xiaomi/push/service/f;->c:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaomi/push/service/f;->c:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE geoMessage("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/xiaomi/push/service/f;->d:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v2, Lcom/xiaomi/push/service/f;->d:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaomi/push/service/f;->c:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    const-string v1, ",PRIMARY KEY(message_id,geo_id));"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/f;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/f;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/f;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string p1, "GeoFenceDatabaseHelper. create tables"

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
