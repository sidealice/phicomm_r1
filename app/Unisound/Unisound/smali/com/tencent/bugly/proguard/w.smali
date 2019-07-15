.class public final Lcom/tencent/bugly/proguard/w;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Lcom/tencent/bugly/proguard/w;


# instance fields
.field private b:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/w;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 22
    new-instance v0, Lcom/tencent/bugly/proguard/w$1;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/w$1;-><init>(Lcom/tencent/bugly/proguard/w;)V

    .line 30
    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/w;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 38
    iget-object v0, p0, Lcom/tencent/bugly/proguard/w;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/w;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    :cond_0
    const-string v0, "[AsyncTaskHandler] ScheduledExecutorService is not valiable!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 47
    :cond_1
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/proguard/w;
    .locals 2

    .prologue
    .line 53
    const-class v1, Lcom/tencent/bugly/proguard/w;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/proguard/w;->a:Lcom/tencent/bugly/proguard/w;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/tencent/bugly/proguard/w;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/w;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/w;->a:Lcom/tencent/bugly/proguard/w;

    .line 56
    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/w;->a:Lcom/tencent/bugly/proguard/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Runnable;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 122
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/w;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 123
    const-string v1, "[AsyncTaskHandler] Async handler was closed, should not post task."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 127
    :cond_1
    if-nez p1, :cond_2

    .line 128
    :try_start_1
    const-string v1, "[AsyncTaskHandler] Task input is null."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 132
    :cond_2
    :try_start_2
    const-string v2, "[AsyncTaskHandler] Post a normal task: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    :try_start_3
    iget-object v2, p0, Lcom/tencent/bugly/proguard/w;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    .line 135
    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    :try_start_4
    sget-boolean v2, Lcom/tencent/bugly/b;->c:Z

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/lang/Runnable;J)Z
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 94
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/w;->c()Z

    move-result v4

    if-nez v4, :cond_1

    .line 95
    const-string v1, "[AsyncTaskHandler] Async handler was closed, should not post task."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 99
    :cond_1
    if-nez p1, :cond_2

    .line 100
    :try_start_1
    const-string v1, "[AsyncTaskHandler] Task input is null."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 104
    :cond_2
    cmp-long v4, p2, v2

    if-lez v4, :cond_3

    .line 106
    :goto_1
    :try_start_2
    const-string v2, "[AsyncTaskHandler] Post a delay(time: %dms) task: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    :try_start_3
    iget-object v2, p0, Lcom/tencent/bugly/proguard/w;->b:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, p1, p2, p3, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    .line 109
    goto :goto_0

    :cond_3
    move-wide p2, v2

    .line 104
    goto :goto_1

    .line 110
    :catch_0
    move-exception v1

    .line 111
    :try_start_4
    sget-boolean v2, Lcom/tencent/bugly/b;->c:Z

    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/w;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/w;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    const-string v0, "[AsyncTaskHandler] Close async handler."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/tencent/bugly/proguard/w;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_0
    monitor-exit p0

    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 1

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/w;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/w;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
