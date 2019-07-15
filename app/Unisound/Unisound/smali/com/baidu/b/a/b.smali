.class public Lcom/baidu/b/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static d:Lcom/baidu/b/a/o;

.field private static e:I

.field private static f:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/b/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Lcom/baidu/b/a/b;


# instance fields
.field private b:Lcom/baidu/b/a/f;

.field private c:Lcom/baidu/b/a/h;

.field private final h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/b/a/b;->d:Lcom/baidu/b/a/o;

    const/4 v0, 0x0

    sput v0, Lcom/baidu/b/a/b;->e:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/baidu/b/a/b;->f:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/baidu/b/a/b;->b:Lcom/baidu/b/a/f;

    iput-object v2, p0, Lcom/baidu/b/a/b;->c:Lcom/baidu/b/a/h;

    new-instance v0, Lcom/baidu/b/a/k;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/b/a/k;-><init>(Lcom/baidu/b/a/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/b/a/b;->h:Landroid/os/Handler;

    sput-object p1, Lcom/baidu/b/a/b;->a:Landroid/content/Context;

    sget-object v0, Lcom/baidu/b/a/b;->d:Lcom/baidu/b/a/o;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/b/a/b;->d:Lcom/baidu/b/a/o;

    invoke-virtual {v0}, Lcom/baidu/b/a/o;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    sput-object v2, Lcom/baidu/b/a/b;->d:Lcom/baidu/b/a/o;

    :cond_0
    const-string v0, "BaiduApiAuth SDK Version:1.0.20"

    invoke-static {v0}, Lcom/baidu/b/a/d;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/baidu/b/a/b;->e()V

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 13

    const/4 v1, -0x1

    const/16 v0, 0x259

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "status"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "current"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    const-string v3, "current"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v6, v4

    long-to-double v8, v8

    const-wide v10, 0x414b774000000000L    # 3600000.0

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4038000000000000L    # 24.0

    cmpl-double v3, v8, v10

    if-ltz v3, :cond_2

    move v1, v0

    :cond_1
    :goto_0
    const-string v3, "current"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x25a

    if-ne v1, v3, :cond_3

    const-string v3, "current"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    :goto_1
    return v0

    :cond_2
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd"

    invoke-direct {v3, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v12, v0

    move v0, v1

    move-object v1, v12

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/b/a/b;
    .locals 2

    sget-object v0, Lcom/baidu/b/a/b;->g:Lcom/baidu/b/a/b;

    if-nez v0, :cond_2

    const-class v1, Lcom/baidu/b/a/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/b/a/b;->g:Lcom/baidu/b/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/b/a/b;

    invoke-direct {v0, p0}, Lcom/baidu/b/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/b/a/b;->g:Lcom/baidu/b/a/b;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    sget-object v0, Lcom/baidu/b/a/b;->g:Lcom/baidu/b/a/b;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    if-nez p0, :cond_3

    sget-boolean v0, Lcom/baidu/b/a/d;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "input context is null"

    invoke-static {v0}, Lcom/baidu/b/a/d;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    :cond_3
    sput-object p0, Lcom/baidu/b/a/b;->a:Landroid/content/Context;

    goto :goto_0
.end method

.method private a(I)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cmdline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    :cond_4
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    :cond_6
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_9
    throw v0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v1, v0

    goto :goto_2

    :catch_4
    move-exception v4

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    goto :goto_1

    :catch_6
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :catch_7
    move-exception v4

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x65

    const-string v1, ""

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    sget-object v0, Lcom/baidu/b/a/b;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/b/a/c;

    if-eqz v0, :cond_0

    const/16 v2, 0x65

    const/16 v3, 0x65

    const-string v4, "AndroidManifest.xml\u7684application\u4e2d\u6ca1\u6709meta-data\u6807\u7b7e"

    invoke-static {v3, v4}, Lcom/baidu/b/a/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/baidu/b/a/c;->a(ILjava/lang/String;)V

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.baidu.lbsapi.API_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/baidu/b/a/b;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/b/a/c;

    if-eqz v0, :cond_3

    const/16 v2, 0x65

    const/16 v3, 0x65

    const-string v4, "\u65e0\u6cd5\u5728AndroidManifest.xml\u4e2d\u83b7\u53d6com.baidu.android.lbs.API_KEY\u7684\u503c"

    invoke-static {v3, v4}, Lcom/baidu/b/a/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/baidu/b/a/c;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/baidu/b/a/b;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/b/a/c;

    if-eqz v0, :cond_3

    const-string v2, "\u65e0\u6cd5\u5728AndroidManifest.xml\u4e2d\u83b7\u53d6com.baidu.android.lbs.API_KEY\u7684\u503c"

    invoke-static {v5, v2}, Lcom/baidu/b/a/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Lcom/baidu/b/a/c;->a(ILjava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/baidu/b/a/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/b/a/b;ZLjava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/b/a/b;->a(ZLjava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/b/a/b;ZLjava/lang/String;Ljava/util/Hashtable;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/baidu/b/a/b;->a(ZLjava/lang/String;Ljava/util/Hashtable;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v1, -0x1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/baidu/b/a/b;->f()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/baidu/b/a/b;->h:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "status"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "status"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    const-string v3, "current"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "current"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/baidu/b/a/b;->c(Ljava/lang/String;)V

    const-string v3, "current"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "current"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_3
    const-string v3, "status"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "listenerKey"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/b/a/b;->h:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    sget-object v0, Lcom/baidu/b/a/b;->d:Lcom/baidu/b/a/o;

    invoke-virtual {v0}, Lcom/baidu/b/a/o;->c()V

    sget v0, Lcom/baidu/b/a/b;->e:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/baidu/b/a/b;->e:I

    sget-boolean v0, Lcom/baidu/b/a/d;->a:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "httpRequest called mAuthCounter-- = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/baidu/b/a/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    :cond_4
    sget v0, Lcom/baidu/b/a/b;->e:I

    if-nez v0, :cond_5

    sget-object v0, Lcom/baidu/b/a/b;->d:Lcom/baidu/b/a/o;

    invoke-virtual {v0}, Lcom/baidu/b/a/o;->a()V

    sget-object v0, Lcom/baidu/b/a/b;->d:Lcom/baidu/b/a/o;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/b/a/b;->d:Lcom/baidu/b/a/o;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iput v1, v2, Landroid/os/Message;->what:I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "listenerKey"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/b/a/b;->h:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(ZLjava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/baidu/b/a/b;->a:Landroid/content/Context;

    invoke-direct {p0, v0, p4}, Lcom/baidu/b/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v1, "url"

    const-string v3, "https://api.map.baidu.com/sdkcs/verify"

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "url:https://api.map.baidu.com/sdkcs/verify"

    invoke-static {v1}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    const-string v1, "output"

    const-string v3, "json"

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ak"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ak:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    const-string v0, "mcode"

    sget-object v1, Lcom/baidu/b/a/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/b/a/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "from"

    const-string v1, "lbs_yunsdk"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string v0, ""

    :try_start_0
    sget-object v1, Lcom/baidu/b/a/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/a/a/a/b/a;->a(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cuid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "cuid"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    const-string v0, "pcn"

    sget-object v1, Lcom/baidu/b/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "version"

    const-string v1, "1.0.20"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ""

    :try_start_1
    sget-object v1, Lcom/baidu/b/a/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/b/a/e;->c(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "macaddr"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    const-string v0, ""

    :try_start_2
    invoke-static {}, Lcom/baidu/b/a/e;->a()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :goto_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "language"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    if-eqz p1, :cond_4

    const-string v1, "force"

    if-eqz p1, :cond_8

    const-string v0, "1"

    :goto_8
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-nez p2, :cond_9

    const-string v0, "from_service"

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    new-instance v0, Lcom/baidu/b/a/f;

    sget-object v1, Lcom/baidu/b/a/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/b/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/b/a/b;->b:Lcom/baidu/b/a/f;

    iget-object v0, p0, Lcom/baidu/b/a/b;->b:Lcom/baidu/b/a/f;

    new-instance v1, Lcom/baidu/b/a/m;

    invoke-direct {v1, p0, p4}, Lcom/baidu/b/a/m;-><init>(Lcom/baidu/b/a/b;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lcom/baidu/b/a/f;->a(Ljava/util/HashMap;Lcom/baidu/b/a/f$a;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "cuid"

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    const-string v0, "macaddr"

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    const-string v0, "language"

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_8
    const-string v0, "0"

    goto :goto_8

    :cond_9
    const-string v0, "from_service"

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto/16 :goto_2
.end method

.method private a(ZLjava/lang/String;Ljava/util/Hashtable;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/baidu/b/a/b;->a:Landroid/content/Context;

    invoke-direct {p0, v0, p5}, Lcom/baidu/b/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v1, "url"

    const-string v3, "https://api.map.baidu.com/sdkcs/verify"

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "output"

    const-string v3, "json"

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ak"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "from"

    const-string v1, "lbs_yunsdk"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string v0, ""

    :try_start_0
    sget-object v1, Lcom/baidu/b/a/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/a/a/a/b/a;->a(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "cuid"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    const-string v0, "pcn"

    sget-object v1, Lcom/baidu/b/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "version"

    const-string v1, "1.0.20"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ""

    :try_start_1
    sget-object v1, Lcom/baidu/b/a/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/b/a/e;->c(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "macaddr"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    const-string v0, ""

    :try_start_2
    invoke-static {}, Lcom/baidu/b/a/e;->a()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :goto_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "language"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    if-eqz p1, :cond_4

    const-string v1, "force"

    if-eqz p1, :cond_8

    const-string v0, "1"

    :goto_8
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-nez p2, :cond_9

    const-string v0, "from_service"

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    new-instance v0, Lcom/baidu/b/a/h;

    sget-object v1, Lcom/baidu/b/a/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/b/a/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/b/a/b;->c:Lcom/baidu/b/a/h;

    iget-object v0, p0, Lcom/baidu/b/a/b;->c:Lcom/baidu/b/a/h;

    new-instance v1, Lcom/baidu/b/a/n;

    invoke-direct {v1, p0, p5}, Lcom/baidu/b/a/n;-><init>(Lcom/baidu/b/a/b;Ljava/lang/String;)V

    invoke-virtual {v0, v2, p4, v1}, Lcom/baidu/b/a/h;->a(Ljava/util/HashMap;[Ljava/lang/String;Lcom/baidu/b/a/h$a;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "cuid"

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    const-string v0, "macaddr"

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    const-string v0, "language"

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_8
    const-string v0, "0"

    goto :goto_8

    :cond_9
    const-string v0, "from_service"

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/baidu/b/a/b;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/b/a/b;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b()Ljava/util/Hashtable;
    .locals 1

    sget-object v0, Lcom/baidu/b/a/b;->f:Ljava/util/Hashtable;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    sget-object v1, Lcom/baidu/b/a/b;->a:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/baidu/b/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/baidu/b/a/b;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ak"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "ak"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v2

    goto :goto_1
.end method

.method static synthetic c()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/baidu/b/a/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/baidu/b/a/b;->a(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-nez v0, :cond_1

    sget-object v0, Lcom/baidu/b/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/baidu/b/a/b;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authStatus_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/b/a/b;->a:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/baidu/b/a/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "status"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic d()Lcom/baidu/b/a/o;
    .locals 1

    sget-object v0, Lcom/baidu/b/a/b;->d:Lcom/baidu/b/a/o;

    return-object v0
.end method

.method private e()V
    .locals 4

    const-class v1, Lcom/baidu/b/a/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/b/a/b;->d:Lcom/baidu/b/a/o;

    if-nez v0, :cond_1

    new-instance v0, Lcom/baidu/b/a/o;

    const-string v2, "auth"

    invoke-direct {v0, v2}, Lcom/baidu/b/a/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/b/a/b;->d:Lcom/baidu/b/a/o;

    sget-object v0, Lcom/baidu/b/a/b;->d:Lcom/baidu/b/a/o;

    invoke-virtual {v0}, Lcom/baidu/b/a/o;->start()V

    :goto_0
    sget-object v0, Lcom/baidu/b/a/b;->d:Lcom/baidu/b/a/o;

    iget-object v0, v0, Lcom/baidu/b/a/o;->a:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    sget-boolean v0, Lcom/baidu/b/a/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "wait for create auth thread."

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v2, 0x3

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/baidu/b/a/b;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authStatus_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/b/a/b;->a:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/baidu/b/a/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "status"

    const-string v2, "{\"status\":601}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(ZLjava/lang/String;Ljava/util/Hashtable;Lcom/baidu/b/a/c;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/baidu/b/a/c;",
            ")I"
        }
    .end annotation

    const-class v7, Lcom/baidu/b/a/b;

    monitor-enter v7

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz p4, :cond_0

    sget-object v0, Lcom/baidu/b/a/b;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, v4, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/baidu/b/a/b;->a:Landroid/content/Context;

    invoke-direct {p0, v0, v4}, Lcom/baidu/b/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/16 v2, 0x65

    monitor-exit v7

    :goto_0
    return v2

    :cond_2
    sget v0, Lcom/baidu/b/a/b;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/baidu/b/a/b;->e:I

    sget-boolean v0, Lcom/baidu/b/a/d;->a:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAuthCounter  ++ = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/baidu/b/a/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/baidu/b/a/b;->f()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/baidu/b/a/d;->a:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAuthMessage from cache:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0, v0}, Lcom/baidu/b/a/b;->a(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/16 v0, 0x259

    if-ne v2, v0, :cond_5

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "status"

    const/16 v3, 0x25a

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/b/a/b;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/baidu/b/a/b;->e()V

    sget-boolean v0, Lcom/baidu/b/a/d;->a:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mThreadLooper.mHandler = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/baidu/b/a/b;->d:Lcom/baidu/b/a/o;

    iget-object v1, v1, Lcom/baidu/b/a/o;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    :cond_6
    sget-object v0, Lcom/baidu/b/a/b;->d:Lcom/baidu/b/a/o;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/baidu/b/a/b;->d:Lcom/baidu/b/a/o;

    iget-object v0, v0, Lcom/baidu/b/a/o;->a:Landroid/os/Handler;

    if-nez v0, :cond_8

    :cond_7
    const/4 v2, -0x1

    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/baidu/b/a/b;->d:Lcom/baidu/b/a/o;

    iget-object v8, v0, Lcom/baidu/b/a/o;->a:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/b/a/l;

    move-object v1, p0

    move v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/baidu/b/a/l;-><init>(Lcom/baidu/b/a/b;IZLjava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/b/a/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/baidu/b/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/b/a/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.baidu.lbsapi.API_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
