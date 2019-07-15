.class Lcom/tencent/smtt/sdk/bo;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/smtt/sdk/bo;

.field private static e:Ljava/nio/channels/FileLock;


# instance fields
.field private b:Lcom/tencent/smtt/sdk/bp;

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/tencent/smtt/sdk/bo;
    .locals 2

    sget-object v0, Lcom/tencent/smtt/sdk/bo;->a:Lcom/tencent/smtt/sdk/bo;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/smtt/sdk/bo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/smtt/sdk/bo;->a:Lcom/tencent/smtt/sdk/bo;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/smtt/sdk/bo;

    invoke-direct {v1}, Lcom/tencent/smtt/sdk/bo;-><init>()V

    sput-object v1, Lcom/tencent/smtt/sdk/bo;->a:Lcom/tencent/smtt/sdk/bo;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/smtt/sdk/bo;->a:Lcom/tencent/smtt/sdk/bo;

    return-object v0
.end method


# virtual methods
.method public a(Z)Lcom/tencent/smtt/sdk/bp;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/smtt/sdk/bo;->b:Lcom/tencent/smtt/sdk/bp;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/bo;->d()Lcom/tencent/smtt/sdk/bp;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/nio/channels/FileLock;
    .locals 1

    sget-object v0, Lcom/tencent/smtt/sdk/bo;->e:Ljava/nio/channels/FileLock;

    return-object v0
.end method

.method public declared-synchronized a(Landroid/content/Context;)Ljava/nio/channels/FileLock;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/tencent/smtt/sdk/bo;->e:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    sget-object p1, Lcom/tencent/smtt/sdk/bo;->e:Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    const-string v1, "tbs_rename_lock.txt"

    invoke-static {p1, v0, v1}, Lcom/tencent/smtt/utils/k;->b(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, v0}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;Ljava/io/FileOutputStream;)Ljava/nio/channels/FileLock;

    move-result-object p1

    sput-object p1, Lcom/tencent/smtt/sdk/bo;->e:Ljava/nio/channels/FileLock;

    sget-object p1, Lcom/tencent/smtt/sdk/bo;->e:Ljava/nio/channels/FileLock;

    :goto_0
    sget-object p1, Lcom/tencent/smtt/sdk/bo;->e:Ljava/nio/channels/FileLock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/content/Context;Lcom/tencent/smtt/sdk/an;)V
    .locals 9

    monitor-enter p0

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    :try_start_0
    const-string v1, "x5_core_engine_init_sync"

    invoke-virtual {p2, v1, v0}, Lcom/tencent/smtt/sdk/an;->a(Ljava/lang/String;B)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/smtt/sdk/q;->a(Z)Lcom/tencent/smtt/sdk/q;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v3, p2}, Lcom/tencent/smtt/sdk/q;->a(Landroid/content/Context;ZZLcom/tencent/smtt/sdk/an;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_1

    const-string v5, "init_x5_core"

    invoke-virtual {p2, v5, v1}, Lcom/tencent/smtt/sdk/an;->a(Ljava/lang/String;B)V

    :cond_1
    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/q;->b()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/tencent/smtt/sdk/bo;->d:Z

    if-nez v5, :cond_5

    if-eqz p2, :cond_2

    iput-boolean v1, p2, Lcom/tencent/smtt/sdk/an;->a:Z

    :cond_2
    new-instance v5, Lcom/tencent/smtt/sdk/bp;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/q;->a()Lcom/tencent/smtt/sdk/bd;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/bd;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/tencent/smtt/sdk/bp;-><init>(Lcom/tencent/smtt/export/external/DexLoader;)V

    iput-object v5, p0, Lcom/tencent/smtt/sdk/bo;->b:Lcom/tencent/smtt/sdk/bp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p0, Lcom/tencent/smtt/sdk/bo;->b:Lcom/tencent/smtt/sdk/bp;

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/bp;->a()Z

    move-result v5

    iput-boolean v5, p0, Lcom/tencent/smtt/sdk/bo;->c:Z

    iget-boolean v5, p0, Lcom/tencent/smtt/sdk/bo;->c:Z

    if-nez v5, :cond_3

    const-string v5, "can not use X5 by x5corewizard return false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_2
    iput-boolean v3, p0, Lcom/tencent/smtt/sdk/bo;->c:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can not use x5 by throwable "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :catch_1
    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/bo;->c:Z

    :cond_3
    :goto_1
    move-object v5, v6

    :goto_2
    iget-boolean v7, p0, Lcom/tencent/smtt/sdk/bo;->c:Z

    if-eqz v7, :cond_6

    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/CookieManager;->a()V

    goto :goto_3

    :cond_4
    iput-boolean v3, p0, Lcom/tencent/smtt/sdk/bo;->c:Z

    const-string v5, "can not use X5 by !tbs available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    move-object v5, v6

    :cond_6
    :goto_3
    iget-boolean v7, p0, Lcom/tencent/smtt/sdk/bo;->c:Z

    if-nez v7, :cond_d

    const-string v7, "X5CoreEngine"

    const-string v8, "mCanUseX5 is false --> report"

    invoke-static {v7, v8}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/q;->b()Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_b

    if-nez v5, :cond_b

    :try_start_3
    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/q;->a()Lcom/tencent/smtt/sdk/bd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/bd;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v5, "com.tencent.tbs.tbsshell.TBSShell"

    const-string v6, "getLoadFailureDetails"

    new-array v7, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6, v7, v3}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :cond_7
    instance-of v2, v6, Ljava/lang/Throwable;

    if-eqz v2, :cond_8

    move-object v2, v6

    check-cast v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; cause: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; th: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    instance-of v2, v6, Ljava/lang/String;

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failure detail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v2

    :try_start_4
    invoke-static {v2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "isPreloadX5Disabled:-10000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v2

    const/16 v3, 0x198

    new-instance v5, Ljava/lang/Throwable;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "X5CoreEngine::init, mCanUseX5=false, available true, details: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v2, p1, v3, v5}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    goto :goto_7

    :cond_a
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v2

    const/16 v3, 0x197

    new-instance v5, Ljava/lang/Throwable;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "X5CoreEngine::init, mCanUseX5=false, available true, details: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/q;->b()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v2

    const/16 v3, 0x199

    new-instance v4, Ljava/lang/Throwable;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCanUseX5=false, available true, reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v2, p1, v3, v4}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    goto :goto_7

    :cond_c
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v2

    const/16 v3, 0x19a

    new-instance v4, Ljava/lang/Throwable;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCanUseX5=false, available false, reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    sget-object v2, Lcom/tencent/smtt/sdk/bo;->e:Ljava/nio/channels/FileLock;

    if-nez v2, :cond_e

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/bo;->a(Landroid/content/Context;)Ljava/nio/channels/FileLock;

    :cond_e
    :goto_7
    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/bo;->d:Z

    if-eqz p2, :cond_f

    const-string p1, "init_x5_core"

    invoke-virtual {p2, p1, v0}, Lcom/tencent/smtt/sdk/an;->a(Ljava/lang/String;B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_f
    monitor-exit p0

    return-void

    :goto_8
    monitor-exit p0

    throw p1
.end method

.method public c()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/bo;->c:Z

    return v0
.end method

.method public d()Lcom/tencent/smtt/sdk/bp;
    .locals 1

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/bo;->b:Lcom/tencent/smtt/sdk/bp;

    return-object v0
.end method

.method e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/bo;->d:Z

    return v0
.end method
