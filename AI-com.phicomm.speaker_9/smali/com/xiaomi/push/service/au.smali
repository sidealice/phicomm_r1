.class public Lcom/xiaomi/push/service/au;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/au$a;,
        Lcom/xiaomi/push/service/au$c;,
        Lcom/xiaomi/push/service/au$d;,
        Lcom/xiaomi/push/service/au$b;
    }
.end annotation


# static fields
.field private static a:J

.field private static b:J

.field private static c:J


# instance fields
.field private final d:Lcom/xiaomi/push/service/au$c;

.field private final e:Lcom/xiaomi/push/service/au$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    :cond_0
    sput-wide v2, Lcom/xiaomi/push/service/au;->a:J

    sget-wide v0, Lcom/xiaomi/push/service/au;->a:J

    sput-wide v0, Lcom/xiaomi/push/service/au;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/au;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/push/service/au;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v0, Lcom/xiaomi/push/service/au$c;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/push/service/au$c;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/xiaomi/push/service/au;->d:Lcom/xiaomi/push/service/au$c;

    new-instance p1, Lcom/xiaomi/push/service/au$a;

    iget-object p2, p0, Lcom/xiaomi/push/service/au;->d:Lcom/xiaomi/push/service/au$c;

    invoke-direct {p1, p2}, Lcom/xiaomi/push/service/au$a;-><init>(Lcom/xiaomi/push/service/au$c;)V

    iput-object p1, p0, Lcom/xiaomi/push/service/au;->e:Lcom/xiaomi/push/service/au$a;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/push/service/au;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/push/service/au;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method static declared-synchronized a()J
    .locals 9

    const-class v0, Lcom/xiaomi/push/service/au;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/xiaomi/push/service/au;->b:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    sget-wide v3, Lcom/xiaomi/push/service/au;->a:J

    sget-wide v5, Lcom/xiaomi/push/service/au;->b:J

    sub-long v7, v1, v5

    add-long v5, v3, v7

    sput-wide v5, Lcom/xiaomi/push/service/au;->a:J

    :cond_0
    sput-wide v1, Lcom/xiaomi/push/service/au;->b:J

    sget-wide v1, Lcom/xiaomi/push/service/au;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private b(Lcom/xiaomi/push/service/au$b;J)V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/push/service/au;->d:Lcom/xiaomi/push/service/au$c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/au;->d:Lcom/xiaomi/push/service/au$c;

    invoke-static {v1}, Lcom/xiaomi/push/service/au$c;->b(Lcom/xiaomi/push/service/au$c;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Timer was canceled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-static {}, Lcom/xiaomi/push/service/au;->a()J

    move-result-wide v1

    add-long v3, p2, v1

    const-wide/16 p2, 0x0

    cmp-long v1, v3, p2

    if-gez v1, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal delay to start the TimerTask: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Lcom/xiaomi/push/service/au$d;

    invoke-direct {p2}, Lcom/xiaomi/push/service/au$d;-><init>()V

    iget p3, p1, Lcom/xiaomi/push/service/au$b;->f:I

    iput p3, p2, Lcom/xiaomi/push/service/au$d;->e:I

    iput-object p1, p2, Lcom/xiaomi/push/service/au$d;->d:Lcom/xiaomi/push/service/au$b;

    iput-wide v3, p2, Lcom/xiaomi/push/service/au$d;->c:J

    iget-object p1, p0, Lcom/xiaomi/push/service/au;->d:Lcom/xiaomi/push/service/au$c;

    invoke-static {p1, p2}, Lcom/xiaomi/push/service/au$c;->a(Lcom/xiaomi/push/service/au$c;Lcom/xiaomi/push/service/au$d;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static declared-synchronized e()J
    .locals 7

    const-class v0, Lcom/xiaomi/push/service/au;

    monitor-enter v0

    :try_start_0
    sget-wide v1, Lcom/xiaomi/push/service/au;->c:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    sput-wide v5, Lcom/xiaomi/push/service/au;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(ILcom/xiaomi/push/service/au$b;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/au;->d:Lcom/xiaomi/push/service/au$c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/au;->d:Lcom/xiaomi/push/service/au$c;

    invoke-static {v1}, Lcom/xiaomi/push/service/au$c;->a(Lcom/xiaomi/push/service/au$c;)Lcom/xiaomi/push/service/au$c$a;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/push/service/au$c$a;->a(ILcom/xiaomi/push/service/au$b;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/xiaomi/push/service/au$b;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/channel/commonutils/b/c;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/au;->d:Lcom/xiaomi/push/service/au$c;

    if-eq v0, v1, :cond_0

    const-string p1, "run job outside job job thread"

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->d(Ljava/lang/String;)V

    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    const-string v0, "Run job outside job thread"

    invoke-direct {p1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/push/service/au$b;->run()V

    return-void
.end method

.method public a(Lcom/xiaomi/push/service/au$b;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delay < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/push/service/au;->b(Lcom/xiaomi/push/service/au$b;J)V

    return-void
.end method

.method public a(I)Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/au;->d:Lcom/xiaomi/push/service/au$c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/au;->d:Lcom/xiaomi/push/service/au$c;

    invoke-static {v1}, Lcom/xiaomi/push/service/au$c;->a(Lcom/xiaomi/push/service/au$c;)Lcom/xiaomi/push/service/au$c$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaomi/push/service/au$c$a;->a(I)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/au;->d:Lcom/xiaomi/push/service/au$c;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/au$c;->a()V

    return-void
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/au;->d:Lcom/xiaomi/push/service/au$c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/au;->d:Lcom/xiaomi/push/service/au$c;

    invoke-static {v1}, Lcom/xiaomi/push/service/au$c;->a(Lcom/xiaomi/push/service/au$c;)Lcom/xiaomi/push/service/au$c$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaomi/push/service/au$c$a;->b(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/au;->d:Lcom/xiaomi/push/service/au$c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/au;->d:Lcom/xiaomi/push/service/au$c;

    invoke-static {v1}, Lcom/xiaomi/push/service/au$c;->a(Lcom/xiaomi/push/service/au$c;)Lcom/xiaomi/push/service/au$c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/au$c$a;->c()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/au;->d:Lcom/xiaomi/push/service/au$c;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/au$c;->b()Z

    move-result v0

    return v0
.end method
