.class public final Lrx/f/a;
.super Ljava/lang/Object;
.source "Schedulers.java"


# static fields
.field private static final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lrx/f/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lrx/f;

.field private final b:Lrx/f;

.field private final c:Lrx/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lrx/f/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lrx/e/f;->a()Lrx/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e/f;->f()Lrx/e/g;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lrx/e/g;->d()Lrx/f;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 61
    iput-object v1, p0, Lrx/f/a;->a:Lrx/f;

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {}, Lrx/e/g;->a()Lrx/f;

    move-result-object v1

    iput-object v1, p0, Lrx/f/a;->a:Lrx/f;

    .line 66
    :goto_0
    invoke-virtual {v0}, Lrx/e/g;->e()Lrx/f;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 68
    iput-object v1, p0, Lrx/f/a;->b:Lrx/f;

    goto :goto_1

    .line 70
    :cond_1
    invoke-static {}, Lrx/e/g;->b()Lrx/f;

    move-result-object v1

    iput-object v1, p0, Lrx/f/a;->b:Lrx/f;

    .line 73
    :goto_1
    invoke-virtual {v0}, Lrx/e/g;->f()Lrx/f;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 75
    iput-object v0, p0, Lrx/f/a;->c:Lrx/f;

    goto :goto_2

    .line 77
    :cond_2
    invoke-static {}, Lrx/e/g;->c()Lrx/f;

    move-result-object v0

    iput-object v0, p0, Lrx/f/a;->c:Lrx/f;

    :goto_2
    return-void
.end method

.method public static a()Lrx/f;
    .locals 1

    .line 123
    invoke-static {}, Lrx/f/a;->c()Lrx/f/a;

    move-result-object v0

    iget-object v0, v0, Lrx/f/a;->a:Lrx/f;

    invoke-static {v0}, Lrx/e/c;->a(Lrx/f;)Lrx/f;

    move-result-object v0

    return-object v0
.end method

.method private static c()Lrx/f/a;
    .locals 3

    .line 42
    :goto_0
    sget-object v0, Lrx/f/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/f/a;

    if-eqz v0, :cond_0

    return-object v0

    .line 46
    :cond_0
    new-instance v0, Lrx/f/a;

    invoke-direct {v0}, Lrx/f/a;-><init>()V

    .line 47
    sget-object v1, Lrx/f/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 50
    :cond_1
    invoke-virtual {v0}, Lrx/f/a;->b()V

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v0, p0, Lrx/f/a;->a:Lrx/f;

    instance-of v0, v0, Lrx/internal/schedulers/h;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lrx/f/a;->a:Lrx/f;

    check-cast v0, Lrx/internal/schedulers/h;

    invoke-interface {v0}, Lrx/internal/schedulers/h;->d()V

    .line 233
    :cond_0
    iget-object v0, p0, Lrx/f/a;->b:Lrx/f;

    instance-of v0, v0, Lrx/internal/schedulers/h;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lrx/f/a;->b:Lrx/f;

    check-cast v0, Lrx/internal/schedulers/h;

    invoke-interface {v0}, Lrx/internal/schedulers/h;->d()V

    .line 236
    :cond_1
    iget-object v0, p0, Lrx/f/a;->c:Lrx/f;

    instance-of v0, v0, Lrx/internal/schedulers/h;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lrx/f/a;->c:Lrx/f;

    check-cast v0, Lrx/internal/schedulers/h;

    invoke-interface {v0}, Lrx/internal/schedulers/h;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 229
    monitor-exit p0

    throw v0
.end method
