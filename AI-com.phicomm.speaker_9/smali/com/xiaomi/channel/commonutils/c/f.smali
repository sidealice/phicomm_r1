.class public Lcom/xiaomi/channel/commonutils/c/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/channel/commonutils/c/f$b;,
        Lcom/xiaomi/channel/commonutils/c/f$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/xiaomi/channel/commonutils/c/f;


# instance fields
.field private b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/ScheduledFuture;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Object;

.field private e:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/c/f;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/c/f;->c:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/c/f;->d:Ljava/lang/Object;

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/channel/commonutils/c/f;->e:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/channel/commonutils/c/f;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/channel/commonutils/c/f;->e:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/c/f;
    .locals 2

    sget-object v0, Lcom/xiaomi/channel/commonutils/c/f;->a:Lcom/xiaomi/channel/commonutils/c/f;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/channel/commonutils/c/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/channel/commonutils/c/f;->a:Lcom/xiaomi/channel/commonutils/c/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/channel/commonutils/c/f;

    invoke-direct {v1, p0}, Lcom/xiaomi/channel/commonutils/c/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/channel/commonutils/c/f;->a:Lcom/xiaomi/channel/commonutils/c/f;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/xiaomi/channel/commonutils/c/f;->a:Lcom/xiaomi/channel/commonutils/c/f;

    return-object p0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_job_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/xiaomi/channel/commonutils/c/f$a;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/f;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/channel/commonutils/c/f;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/xiaomi/channel/commonutils/c/f$a;->a()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/channel/commonutils/c/f;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;I)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/f;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    int-to-long v1, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v1, v2, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public a(Lcom/xiaomi/channel/commonutils/c/f$a;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/channel/commonutils/c/f;->a(Lcom/xiaomi/channel/commonutils/c/f$a;II)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/xiaomi/channel/commonutils/c/f$a;II)Z
    .locals 8

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/xiaomi/channel/commonutils/c/f;->a(Lcom/xiaomi/channel/commonutils/c/f$a;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/channel/commonutils/c/f$a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/f;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/xiaomi/channel/commonutils/c/g;

    invoke-direct {v2, p0, p1, v0}, Lcom/xiaomi/channel/commonutils/c/g;-><init>(Lcom/xiaomi/channel/commonutils/c/f;Lcom/xiaomi/channel/commonutils/c/f$a;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/channel/commonutils/c/f;->e:Landroid/content/SharedPreferences;

    const-wide/16 v3, 0x0

    invoke-interface {v1, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v5, v3, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    sub-int v3, p2, p3

    int-to-long v3, v3

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    int-to-long v3, p2

    sub-long v5, v3, v0

    long-to-int p3, v5

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/channel/commonutils/c/f;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    int-to-long v3, p3

    int-to-long v5, p2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v1 .. v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    iget-object p3, p0, Lcom/xiaomi/channel/commonutils/c/f;->d:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/f;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/xiaomi/channel/commonutils/c/f$a;->a()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit p3

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
