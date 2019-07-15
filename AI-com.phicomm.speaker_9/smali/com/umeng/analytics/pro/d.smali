.class Lcom/umeng/analytics/pro/d;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "UMDBCreater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/d$a;
    }
.end annotation


# static fields
.field private static b:Landroid/content/Context;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1

    .line 58
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "ua.db"

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/umeng/analytics/pro/d;->a:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/d;->a()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1

    .line 54
    new-instance v0, Lcom/umeng/analytics/pro/a;

    invoke-direct {v0, p1, p2}, Lcom/umeng/analytics/pro/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4, p5}, Lcom/umeng/analytics/pro/d;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/umeng/analytics/pro/d$1;)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/umeng/analytics/pro/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/d;
    .locals 1

    .line 38
    sget-object v0, Lcom/umeng/analytics/pro/d;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/d;->b:Landroid/content/Context;

    .line 41
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/pro/d$a;->a()Lcom/umeng/analytics/pro/d;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    :try_start_0
    const-string v0, "create table if not exists __dp(id INTEGER primary key autoincrement, __id INTEGER, __ii TEXT, __ty INTEGER, __ve TEXT, __io TEXT)"

    .line 108
    iput-object v0, p0, Lcom/umeng/analytics/pro/d;->a:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/umeng/analytics/pro/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    .line 23
    sget-object v0, Lcom/umeng/analytics/pro/d;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    :try_start_0
    const-string v0, "create table if not exists __er(id INTEGER primary key autoincrement, __i TEXT, __a TEXT, __t INTEGER)"

    .line 127
    iput-object v0, p0, Lcom/umeng/analytics/pro/d;->a:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/umeng/analytics/pro/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    :try_start_0
    const-string v0, "create table if not exists __et(id INTEGER primary key autoincrement, __i TEXT, __e TEXT, __s TEXT, __t INTEGER)"

    .line 142
    iput-object v0, p0, Lcom/umeng/analytics/pro/d;->a:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/umeng/analytics/pro/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    :try_start_0
    const-string v0, "create table if not exists __sd(id INTEGER primary key autoincrement, __ii TEXT unique, __a TEXT, __b TEXT, __c TEXT, __d TEXT, __e TEXT, __f TEXT, __g TEXT)"

    .line 159
    iput-object v0, p0, Lcom/umeng/analytics/pro/d;->a:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/umeng/analytics/pro/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "__sd"

    .line 67
    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/f;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/d;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    const-string v1, "__et"

    .line 70
    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/f;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/d;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    const-string v1, "__er"

    .line 73
    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/f;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 74
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/d;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    const-string v1, "__dp"

    .line 76
    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/f;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 77
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/d;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 87
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 88
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/d;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/d;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/d;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/d;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 92
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 100
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    if-eqz p1, :cond_0

    goto :goto_0

    .line 95
    :catch_1
    :try_start_2
    sget-object v0, Lcom/umeng/analytics/pro/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_0

    :catch_2
    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz p1, :cond_1

    .line 100
    :try_start_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 102
    :catch_3
    :cond_1
    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
