.class public Lcom/unisound/common/ba;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0xa00000

.field private static b:Lcom/unisound/common/l; = null

.field private static c:I = 0x0

.field private static final d:Ljava/lang/String; = "wakeupkeys"

.field private static final e:Ljava/lang/String; = "http://asr-wakeup.hivoice.cn:8080/uc/m/upload"

.field private static final f:I = 0x1388

.field private static final g:Ljava/lang/String; = "WakeupWordCacheAndUpload"

.field private static h:Lcom/unisound/common/ba;

.field private static i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    const/16 v0, 0x400

    sput v0, Lcom/unisound/common/ba;->c:I

    sput-object v1, Lcom/unisound/common/ba;->h:Lcom/unisound/common/ba;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/unisound/common/ba;->i:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/unisound/common/ba;
    .locals 2

    sget-object v0, Lcom/unisound/common/ba;->h:Lcom/unisound/common/ba;

    if-nez v0, :cond_1

    sget-object v1, Lcom/unisound/common/ba;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/unisound/common/ba;->h:Lcom/unisound/common/ba;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unisound/common/ba;

    invoke-direct {v0}, Lcom/unisound/common/ba;-><init>()V

    sput-object v0, Lcom/unisound/common/ba;->h:Lcom/unisound/common/ba;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/unisound/common/ba;->h:Lcom/unisound/common/ba;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/unisound/common/ba;Landroid/content/Context;Ljava/lang/String;)Lcom/unisound/common/bd;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/unisound/common/ba;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/unisound/common/bd;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/unisound/common/bd;Ljava/util/concurrent/BlockingQueue;I)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/unisound/common/bd;",
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WakeupWordCacheAndUpload httpPost params : K = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/unisound/common/bd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",UI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/unisound/common/bd;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",U = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/unisound/common/bd;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",Text = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/unisound/common/bd;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/unisound/common/bd;->f()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",Timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/unisound/common/bd;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",AC = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/unisound/common/bd;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const/4 v1, 0x0

    const-string v2, ""

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "K"

    invoke-virtual {p1}, Lcom/unisound/common/bd;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "UI"

    invoke-virtual {p1}, Lcom/unisound/common/bd;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "U"

    invoke-virtual {p1}, Lcom/unisound/common/bd;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Text"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/unisound/common/bd;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/unisound/common/bd;->f()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AC"

    invoke-virtual {p1}, Lcom/unisound/common/bd;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Timestamp"

    invoke-virtual {p1}, Lcom/unisound/common/bd;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Charset"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_2

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    sget-boolean v4, Lcom/unisound/common/y;->p:Z

    if-eqz v4, :cond_0

    const-string v4, "/sdcard/asrtest/uploadwakeup.pcm"

    invoke-static {v1, v4}, Lcom/unisound/common/j;->a([BLjava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_4

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v3, ""

    :goto_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v2

    :goto_4
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    goto :goto_2

    :cond_4
    :try_start_4
    const-string v3, "WakeupWordCacheAndUpload"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "responseCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/unisound/common/y;->a(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v1, v2

    goto :goto_4

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "WakeupWordCacheAndUpload buildGetUrl"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/unisound/common/bd;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-array v0, v9, [Ljava/lang/Object;

    const-string v1, "WakeupWordCacheAndUpload saveParamsValue"

    aput-object v1, v0, v8

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/unisound/common/bd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/unisound/common/bd;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/unisound/common/bd;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/unisound/common/bd;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/unisound/common/bd;->f()F

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/unisound/common/bd;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/unisound/common/bd;->g()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "#"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "wakeupkeys"

    invoke-virtual {p0, v0, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WakeupWordCacheAndUpload saveUploadKey : key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v4, "WakeupWordCacheAndUpload saveData2Cache"

    aput-object v4, v1, v3

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :try_start_0
    sget-object v1, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    if-nez v1, :cond_0

    const-string v1, "locationData"

    invoke-static {p0, v1}, Lcom/unisound/common/ba;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide/32 v6, 0xa00000

    invoke-static {v1, v4, v5, v6, v7}, Lcom/unisound/common/l;->a(Ljava/io/File;IIJ)Lcom/unisound/common/l;

    move-result-object v1

    sput-object v1, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    :cond_0
    sget-object v1, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    invoke-virtual {v1, p1}, Lcom/unisound/common/l;->b(Ljava/lang/String;)Lcom/unisound/common/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    if-eqz v4, :cond_5

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v4, v1}, Lcom/unisound/common/n;->c(I)Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    const/4 v0, 0x1

    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WakeupWordCacheAndUpload saveData2Cache: write BlockingQueue size :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :goto_0
    const-wide/16 v6, 0x32

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v6, v7, v0}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_3

    array-length v5, v0

    new-array v5, v5, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v5

    invoke-static {v0, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v1, v4

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Lcom/unisound/common/n;->b()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    move v0, v3

    :goto_3
    return v0

    :cond_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v4}, Lcom/unisound/common/n;->a()V

    sget-object v0, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    invoke-virtual {v0}, Lcom/unisound/common/l;->e()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_4

    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WakeupWordCacheAndUpload DiskLruCacheWrapper: edit key:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " , editor id null!"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v2

    goto :goto_3

    :catch_3
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_6

    :try_start_a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_6
    :goto_6
    throw v0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v3

    goto :goto_3

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v1

    move-object v2, v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_1
.end method

.method static synthetic a(Landroid/net/ConnectivityManager;)Z
    .locals 1

    invoke-static {p0}, Lcom/unisound/common/ba;->b(Landroid/net/ConnectivityManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/unisound/common/ba;Landroid/content/Context;Lcom/unisound/common/bd;Ljava/util/concurrent/BlockingQueue;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/unisound/common/ba;->c(Landroid/content/Context;Lcom/unisound/common/bd;Ljava/util/concurrent/BlockingQueue;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0}, Lcom/unisound/common/ba;->c(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    invoke-static {p0, p1}, Lcom/unisound/common/ba;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    return-object v0
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    invoke-virtual {v0}, Lcom/unisound/common/l;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Lcom/unisound/common/bd;Ljava/util/concurrent/BlockingQueue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unisound/common/bd;",
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "WakeupWordCacheAndUpload saveParamAndCache"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/unisound/common/ba;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, v0, p2}, Lcom/unisound/common/ba;->a(Landroid/content/Context;Ljava/lang/String;Lcom/unisound/common/bd;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/unisound/common/ba;Landroid/content/Context;Lcom/unisound/common/bd;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/unisound/common/ba;->b(Landroid/content/Context;Lcom/unisound/common/bd;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method

.method static synthetic b(Lcom/unisound/common/ba;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unisound/common/ba;->f(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/net/ConnectivityManager;)Z
    .locals 5

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "WakeupWordCacheAndUpload getCacheTimekeyList"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget-object v0, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    if-nez v0, :cond_0

    const-string v0, "locationData"

    invoke-static {p0, v0}, Lcom/unisound/common/ba;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/32 v4, 0xa00000

    invoke-static {v0, v2, v3, v4, v5}, Lcom/unisound/common/l;->a(Ljava/io/File;IIJ)Lcom/unisound/common/l;

    move-result-object v0

    sput-object v0, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    :cond_0
    sget-object v0, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    invoke-virtual {v0}, Lcom/unisound/common/l;->g()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "KEY"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "KEY"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_1
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/BlockingQueue;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v2, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "WakeupWordCacheAndUpload getCacheData"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const/4 v1, 0x0

    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    :try_start_0
    sget-object v0, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    if-nez v0, :cond_0

    const-string v0, "locationData"

    invoke-static {p0, v0}, Lcom/unisound/common/ba;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/32 v6, 0xa00000

    invoke-static {v0, v3, v4, v6, v7}, Lcom/unisound/common/l;->a(Ljava/io/File;IIJ)Lcom/unisound/common/l;

    move-result-object v0

    sput-object v0, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    :cond_0
    sget-object v0, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    invoke-virtual {v0, p1}, Lcom/unisound/common/l;->a(Ljava/lang/String;)Lcom/unisound/common/q;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/unisound/common/q;->a(I)Ljava/io/InputStream;

    move-result-object v1

    sget v0, Lcom/unisound/common/ba;->c:I

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v3

    invoke-static {v0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    return-object v2

    :cond_2
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_2
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private c(Landroid/content/Context;Lcom/unisound/common/bd;Ljava/util/concurrent/BlockingQueue;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unisound/common/bd;",
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "WakeupWordCacheAndUpload uploadWakeupContent"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/unisound/common/ba;->b(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://asr-wakeup.hivoice.cn:8080/uc/m/upload"

    const/16 v3, 0x1388

    invoke-static {v0, p2, p3, v3}, Lcom/unisound/common/ba;->a(Ljava/lang/String;Lcom/unisound/common/bd;Ljava/util/concurrent/BlockingQueue;I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WakeupWordCacheAndUpload uploadWakeup result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "rc"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    const-string v1, "-1002"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WakeupWordCacheAndUpload uploadWakeup error ! result = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "WakeupWordCacheAndUpload removeCache"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :try_start_0
    sget-object v1, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    if-nez v1, :cond_0

    const-string v1, "locationData"

    invoke-static {p0, v1}, Lcom/unisound/common/ba;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/32 v4, 0xa00000

    invoke-static {v1, v2, v3, v4, v5}, Lcom/unisound/common/l;->a(Ljava/io/File;IIJ)Lcom/unisound/common/l;

    move-result-object v1

    sput-object v1, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    :cond_0
    sget-object v1, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    invoke-virtual {v1, p1}, Lcom/unisound/common/l;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "WakeupWordCacheAndUpload removeParamsValue"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "wakeupkeys"

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WakeupWordCacheAndUpload removeUploadKey : key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/unisound/common/ba;->e(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/unisound/common/ba;->d(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method private g(Landroid/content/Context;Ljava/lang/String;)Lcom/unisound/common/bd;
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-array v0, v9, [Ljava/lang/Object;

    const-string v1, "WakeupWordCacheAndUpload getWakeupwordParam"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    new-instance v0, Lcom/unisound/common/bd;

    invoke-direct {v0}, Lcom/unisound/common/bd;-><init>()V

    const-string v1, "wakeupkeys"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, ""

    invoke-interface {v1, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-array v1, v9, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WakeupWordCacheAndUpload getWakeupwordParam length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    new-array v6, v9, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WakeupWordCacheAndUpload getWakeupwordParam value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v2

    invoke-static {v6}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    aget-object v1, v3, v2

    invoke-virtual {v0, v1}, Lcom/unisound/common/bd;->a(Ljava/lang/String;)V

    aget-object v1, v3, v9

    invoke-virtual {v0, v1}, Lcom/unisound/common/bd;->b(Ljava/lang/String;)V

    const/4 v1, 0x2

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Lcom/unisound/common/bd;->c(Ljava/lang/String;)V

    aget-object v1, v3, v10

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/unisound/common/bd;->e(Ljava/lang/String;)V

    aget-object v1, v3, v10

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v9

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unisound/common/bd;->a(F)V

    const/4 v1, 0x4

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Lcom/unisound/common/bd;->f(Ljava/lang/String;)V

    const/4 v1, 0x5

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Lcom/unisound/common/bd;->d(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/unisound/common/bc;

    invoke-direct {v0, p0, p1}, Lcom/unisound/common/bc;-><init>(Lcom/unisound/common/ba;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/unisound/common/bc;->start()V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/unisound/common/bd;Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unisound/common/bd;",
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;)V"
        }
    .end annotation

    new-instance v0, Lcom/unisound/common/bb;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/unisound/common/bb;-><init>(Lcom/unisound/common/ba;Ljava/util/concurrent/BlockingQueue;Landroid/content/Context;Lcom/unisound/common/bd;)V

    invoke-virtual {v0}, Lcom/unisound/common/bb;->start()V

    return-void
.end method
