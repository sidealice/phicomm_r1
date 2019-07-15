.class Lcom/tencent/smtt/sdk/q;
.super Ljava/lang/Object;


# static fields
.field static a:Z = false

.field private static c:Lcom/tencent/smtt/sdk/q; = null

.field private static f:I = 0x0

.field private static g:I = 0x0

.field private static h:I = 0x3

.field private static j:Ljava/lang/String;


# instance fields
.field private b:Lcom/tencent/smtt/sdk/bd;

.field private d:Z

.field private e:Z

.field private i:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/q;->b:Lcom/tencent/smtt/sdk/bd;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/q;->d:Z

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/q;->e:Z

    iput-object v0, p0, Lcom/tencent/smtt/sdk/q;->i:Ljava/io/File;

    return-void
.end method

.method public static a(Z)Lcom/tencent/smtt/sdk/q;
    .locals 1

    sget-object v0, Lcom/tencent/smtt/sdk/q;->c:Lcom/tencent/smtt/sdk/q;

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    const-class p0, Lcom/tencent/smtt/sdk/q;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/tencent/smtt/sdk/q;->c:Lcom/tencent/smtt/sdk/q;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/smtt/sdk/q;

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/q;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/q;->c:Lcom/tencent/smtt/sdk/q;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    sget-object p0, Lcom/tencent/smtt/sdk/q;->c:Lcom/tencent/smtt/sdk/q;

    return-object p0
.end method

.method static a(I)V
    .locals 0

    sput p0, Lcom/tencent/smtt/sdk/q;->f:I

    return-void
.end method

.method private b(I)V
    .locals 4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sget-object v1, Lcom/tencent/smtt/sdk/q;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/q;->i:Ljava/io/File;

    const-string v3, "count.prop"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d()I
    .locals 1

    sget v0, Lcom/tencent/smtt/sdk/q;->f:I

    return v0
.end method

.method private i()I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/q;->i:Ljava/io/File;

    const-string v4, "count.prop"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    return v0

    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    sget-object v3, Lcom/tencent/smtt/sdk/q;->j:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    return v1

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v2

    :goto_0
    :try_start_3
    invoke-static {v2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    return v0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_2
    return v0

    :goto_1
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_4
    move-exception v1

    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v0
.end method


# virtual methods
.method public a()Lcom/tencent/smtt/sdk/bd;
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/q;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/q;->b:Lcom/tencent/smtt/sdk/bd;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized a(Landroid/content/Context;ZZLcom/tencent/smtt/sdk/an;)V
    .locals 11

    monitor-enter p0

    const/16 v0, 0x3e7

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/tencent/smtt/utils/TbsLog;->addLog(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/tencent/smtt/utils/TbsLog;->initIfNeed(Landroid/content/Context;)V

    sget v0, Lcom/tencent/smtt/sdk/q;->g:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    sput v0, Lcom/tencent/smtt/sdk/q;->g:I

    if-eqz p4, :cond_1

    sget v0, Lcom/tencent/smtt/sdk/q;->g:I

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p4, Lcom/tencent/smtt/sdk/an;->b:Z

    :cond_1
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a()V

    if-eqz p4, :cond_2

    const-string v0, "tbs_rename_task"

    invoke-virtual {p4, v0, v2}, Lcom/tencent/smtt/sdk/an;->a(Ljava/lang/String;B)V

    :cond_2
    invoke-static {}, Lcom/tencent/smtt/sdk/ao;->a()Lcom/tencent/smtt/sdk/ao;

    move-result-object v0

    sget v4, Lcom/tencent/smtt/sdk/q;->g:I

    if-ne v4, v2, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    invoke-virtual {v0, p1, v4}, Lcom/tencent/smtt/sdk/ao;->b(Landroid/content/Context;Z)V

    const/4 v0, 0x2

    if-eqz p4, :cond_4

    const-string v4, "tbs_rename_task"

    invoke-virtual {p4, v4, v0}, Lcom/tencent/smtt/sdk/an;->a(Ljava/lang/String;B)V

    :cond_4
    invoke-static {p1, v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->forceToLoadX5ForThirdApp(Landroid/content/Context;Z)V

    if-eqz p4, :cond_5

    const-string v4, "can_load_x5"

    invoke-virtual {p4, v4, v2}, Lcom/tencent/smtt/sdk/an;->a(Ljava/lang/String;B)V

    :cond_5
    invoke-static {p1, p2, p3}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;ZZ)Z

    move-result p2

    if-eqz p4, :cond_6

    const-string p3, "can_load_x5"

    invoke-virtual {p4, p3, v0}, Lcom/tencent/smtt/sdk/an;->a(Ljava/lang/String;B)V

    :cond_6
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x7

    if-lt p3, v4, :cond_7

    move p3, v2

    goto :goto_2

    :cond_7
    move p3, v1

    :goto_2
    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    move v4, v2

    goto :goto_3

    :cond_8
    move v4, v1

    :goto_3
    if-eqz v4, :cond_15

    iget-boolean p2, p0, Lcom/tencent/smtt/sdk/q;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_1
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_d

    const/16 p2, 0x3e3

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2, v3, p3}, Lcom/tencent/smtt/utils/TbsLog;->addLog(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p4, :cond_a

    const-string p2, "read_core_info"

    invoke-virtual {p4, p2, v2}, Lcom/tencent/smtt/sdk/an;->a(Ljava/lang/String;B)V

    :cond_a
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->i(Landroid/content/Context;)Z

    move-result p2

    if-eqz p4, :cond_b

    const-string p3, "read_core_info"

    invoke-virtual {p4, p3, v0}, Lcom/tencent/smtt/sdk/an;->a(Ljava/lang/String;B)V

    :cond_b
    if-eqz p2, :cond_c

    new-instance p2, Ljava/io/File;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/ao;->a()Lcom/tencent/smtt/sdk/ao;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/tencent/smtt/sdk/ao;->k(Landroid/content/Context;)Ljava/io/File;

    move-result-object p3

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->e(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez p3, :cond_12

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/q;->d:Z

    const-string p2, "SDKEngine::useSystemWebView by error_tbs_core_dexopt_dir null!"

    invoke-static {p1, p2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_c
    :try_start_2
    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/q;->d:Z

    const-string p2, "SDKEngine::useSystemWebView by error_host_unavailable"

    invoke-static {p1, p2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_d
    const/16 p2, 0x3e4

    :try_start_3
    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2, v3, p3}, Lcom/tencent/smtt/utils/TbsLog;->addLog(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/ao;->a()Lcom/tencent/smtt/sdk/ao;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/smtt/sdk/ao;->k(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    sget p3, Lcom/tencent/smtt/sdk/q;->f:I

    const/16 v0, 0x635c

    if-eq p3, v0, :cond_f

    sget p3, Lcom/tencent/smtt/sdk/q;->f:I

    const/16 v0, 0x635d

    if-ne p3, v0, :cond_e

    goto :goto_4

    :cond_e
    move p3, v1

    goto :goto_5

    :cond_f
    :goto_4
    move p3, v2

    :goto_5
    if-eqz p3, :cond_10

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    move-object v0, p3

    goto :goto_6

    :cond_10
    move-object v0, p1

    :goto_6
    if-nez p2, :cond_11

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/q;->d:Z

    const-string p2, "SDKEngine::useSystemWebView by tbs_core_share_dir null!"

    invoke-static {p1, p2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_11
    move-object p3, p2

    :cond_12
    move-object v5, v0

    :try_start_4
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v5, v0}, Lcom/tencent/smtt/sdk/QbSdk;->getDexLoaderFileList(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move v0, v1

    :goto_7
    array-length v3, v8

    if-ge v0, v3, :cond_13

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_13
    new-instance v0, Lcom/tencent/smtt/sdk/bd;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/tencent/smtt/sdk/QbSdk;->d:Ljava/lang/String;

    move-object v3, v0

    move-object v4, p1

    move-object v10, p4

    invoke-direct/range {v3 .. v10}, Lcom/tencent/smtt/sdk/bd;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/sdk/an;)V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/q;->b:Lcom/tencent/smtt/sdk/bd;

    iput-boolean v2, p0, Lcom/tencent/smtt/sdk/q;->d:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_9

    :catch_0
    move-exception p2

    :try_start_5
    const-string p3, "SDKEngine"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "useSystemWebView by exception: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_14

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p3

    const/16 p4, 0x146

    invoke-virtual {p3, p1, p4}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;I)V

    goto :goto_8

    :cond_14
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p3

    const/16 p4, 0x147

    invoke-virtual {p3, p1, p4, p2}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    :goto_8
    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/q;->d:Z

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SDKEngine::useSystemWebView by exception: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_9

    :cond_15
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can_load_x5="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "; is_compatible="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SDKEngine"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SDKEngine.init canLoadTbs=false; failure: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p3, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    if-eqz p3, :cond_16

    iget-boolean p3, p0, Lcom/tencent/smtt/sdk/q;->d:Z

    if-eqz p3, :cond_16

    goto :goto_9

    :cond_16
    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/q;->d:Z

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p3

    const/16 p4, 0x195

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p4, v0}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    :goto_9
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ao;->m(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/q;->i:Ljava/io/File;

    iput-boolean v2, p0, Lcom/tencent/smtt/sdk/q;->e:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/tencent/smtt/sdk/q;->j:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/q;->d:Z

    return v0
.end method

.method b(Z)Z
    .locals 0

    sput-boolean p1, Lcom/tencent/smtt/sdk/q;->a:Z

    return p1
.end method

.method c()Lcom/tencent/smtt/sdk/bd;
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/q;->b:Lcom/tencent/smtt/sdk/bd;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/q;->b:Lcom/tencent/smtt/sdk/bd;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/q;->b:Lcom/tencent/smtt/sdk/bd;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bd;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "system webview get nothing..."

    return-object v0
.end method

.method f()Z
    .locals 3

    sget-boolean v0, Lcom/tencent/smtt/sdk/q;->a:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/tencent/smtt/sdk/q;->j:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/q;->i()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0, v2}, Lcom/tencent/smtt/sdk/q;->b(I)V

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    sget v2, Lcom/tencent/smtt/sdk/q;->h:I

    if-gt v0, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/q;->b(I)V

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    sget-boolean v0, Lcom/tencent/smtt/sdk/q;->a:Z

    return v0
.end method

.method g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/q;->e:Z

    return v0
.end method

.method public h()Z
    .locals 1

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->useSoftWare()Z

    move-result v0

    return v0
.end method
