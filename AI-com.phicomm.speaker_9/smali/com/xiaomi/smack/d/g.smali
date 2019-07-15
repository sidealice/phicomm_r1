.class public Lcom/xiaomi/smack/d/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/smack/d/g$a;
    }
.end annotation


# static fields
.field private static a:Lcom/xiaomi/channel/commonutils/c/h; = null

.field private static b:I = -0x1

.field private static final c:Ljava/lang/Object;

.field private static d:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/smack/d/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/lang/String; = ""

.field private static f:Lcom/xiaomi/push/providers/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/channel/commonutils/c/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaomi/channel/commonutils/c/h;-><init>(Z)V

    sput-object v0, Lcom/xiaomi/smack/d/g;->a:Lcom/xiaomi/channel/commonutils/c/h;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/smack/d/g;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/d/g;->d:Ljava/util/List;

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 2

    sget v0, Lcom/xiaomi/smack/d/g;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/xiaomi/smack/d/g;->b(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/xiaomi/smack/d/g;->b:I

    :cond_0
    sget p0, Lcom/xiaomi/smack/d/g;->b:I

    return p0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method private static a(IJ)J
    .locals 2

    if-nez p0, :cond_0

    const/16 p0, 0xd

    goto :goto_0

    :cond_0
    const/16 p0, 0xb

    :goto_0
    int-to-long v0, p0

    mul-long/2addr p1, v0

    const-wide/16 v0, 0xa

    div-long/2addr p1, v0

    return-wide p1
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/xiaomi/smack/d/g;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JZJ)V
    .locals 14

    move-object v1, p0

    if-eqz v1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "com.xiaomi.xmsf"

    move-object v4, p1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-static {v1}, Lcom/xiaomi/smack/d/g;->a(Landroid/content/Context;)I

    move-result v7

    const/4 v2, -0x1

    if-ne v2, v7, :cond_1

    return-void

    :cond_1
    sget-object v2, Lcom/xiaomi/smack/d/g;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/xiaomi/smack/d/g;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    new-instance v13, Lcom/xiaomi/smack/d/g$a;

    if-nez v7, :cond_2

    invoke-static {v1}, Lcom/xiaomi/smack/d/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string v3, ""

    :goto_0
    move-wide/from16 v5, p2

    move-object v9, v3

    invoke-static {v7, v5, v6}, Lcom/xiaomi/smack/d/g;->a(IJ)J

    move-result-wide v10

    move-object v3, v13

    move-wide/from16 v5, p5

    move/from16 v8, p4

    invoke-direct/range {v3 .. v11}, Lcom/xiaomi/smack/d/g$a;-><init>(Ljava/lang/String;JIILjava/lang/String;J)V

    invoke-static {v13}, Lcom/xiaomi/smack/d/g;->a(Lcom/xiaomi/smack/d/g$a;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v12, :cond_3

    sget-object v2, Lcom/xiaomi/smack/d/g;->a:Lcom/xiaomi/channel/commonutils/c/h;

    new-instance v3, Lcom/xiaomi/smack/d/h;

    invoke-direct {v3, v1}, Lcom/xiaomi/smack/d/h;-><init>(Landroid/content/Context;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/xiaomi/channel/commonutils/c/h;->a(Lcom/xiaomi/channel/commonutils/c/h$b;J)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_4
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/smack/d/g;->b(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private static a(Lcom/xiaomi/smack/d/g$a;)V
    .locals 8

    sget-object v0, Lcom/xiaomi/smack/d/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/smack/d/g$a;

    invoke-virtual {v1, p0}, Lcom/xiaomi/smack/d/g$a;->a(Lcom/xiaomi/smack/d/g$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, v1, Lcom/xiaomi/smack/d/g$a;->f:J

    iget-wide v4, p0, Lcom/xiaomi/smack/d/g$a;->f:J

    add-long v6, v2, v4

    iput-wide v6, v1, Lcom/xiaomi/smack/d/g$a;->f:J

    return-void

    :cond_1
    sget-object v0, Lcom/xiaomi/smack/d/g;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static b(Landroid/content/Context;)I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    return p0

    :catch_0
    return v0
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/xiaomi/smack/d/g;->d:Ljava/util/List;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/xiaomi/smack/d/g$a;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/xiaomi/push/providers/a;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0}, Lcom/xiaomi/smack/d/g;->d(Landroid/content/Context;)Lcom/xiaomi/push/providers/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/push/providers/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/smack/d/g$a;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "package_name"

    iget-object v4, v1, Lcom/xiaomi/smack/d/g$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "message_ts"

    iget-wide v4, v1, Lcom/xiaomi/smack/d/g$a;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "network_type"

    iget v4, v1, Lcom/xiaomi/smack/d/g$a;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "bytes"

    iget-wide v4, v1, Lcom/xiaomi/smack/d/g$a;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "rcv"

    iget v4, v1, Lcom/xiaomi/smack/d/g$a;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "imsi"

    iget-object v1, v1, Lcom/xiaomi/smack/d/g$a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "traffic"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static declared-synchronized c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/xiaomi/smack/d/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/smack/d/g;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Lcom/xiaomi/smack/d/g;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/smack/d/g;->e:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_1
    :try_start_2
    sget-object p0, Lcom/xiaomi/smack/d/g;->e:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static d(Landroid/content/Context;)Lcom/xiaomi/push/providers/a;
    .locals 1

    sget-object v0, Lcom/xiaomi/smack/d/g;->f:Lcom/xiaomi/push/providers/a;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/xiaomi/smack/d/g;->f:Lcom/xiaomi/push/providers/a;

    return-object p0

    :cond_0
    new-instance v0, Lcom/xiaomi/push/providers/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/providers/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/smack/d/g;->f:Lcom/xiaomi/push/providers/a;

    sget-object p0, Lcom/xiaomi/smack/d/g;->f:Lcom/xiaomi/push/providers/a;

    return-object p0
.end method
