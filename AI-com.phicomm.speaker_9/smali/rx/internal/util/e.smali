.class public Lrx/internal/util/e;
.super Ljava/lang/Object;
.source "RxRingBuffer.java"

# interfaces
.implements Lrx/j;


# static fields
.field public static final b:I

.field public static final c:Lrx/internal/util/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/b<",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final d:Lrx/internal/util/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/b<",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public volatile a:Ljava/lang/Object;

.field private e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:I

.field private final g:Lrx/internal/util/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/b<",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 246
    invoke-static {}, Lrx/internal/util/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0x80

    :goto_0
    const-string v1, "rx.ring-buffer.size"

    .line 251
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 254
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 256
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set \'rx.buffer.size\' with value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 260
    :cond_1
    :goto_1
    sput v0, Lrx/internal/util/e;->b:I

    .line 265
    new-instance v0, Lrx/internal/util/e$1;

    invoke-direct {v0}, Lrx/internal/util/e$1;-><init>()V

    sput-object v0, Lrx/internal/util/e;->c:Lrx/internal/util/b;

    .line 275
    new-instance v0, Lrx/internal/util/e$2;

    invoke-direct {v0}, Lrx/internal/util/e$2;-><init>()V

    sput-object v0, Lrx/internal/util/e;->d:Lrx/internal/util/b;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 328
    new-instance v0, Lrx/internal/util/h;

    sget v1, Lrx/internal/util/e;->b:I

    invoke-direct {v0, v1}, Lrx/internal/util/h;-><init>(I)V

    sget v1, Lrx/internal/util/e;->b:I

    invoke-direct {p0, v0, v1}, Lrx/internal/util/e;-><init>(Ljava/util/Queue;I)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Queue;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p1, p0, Lrx/internal/util/e;->e:Ljava/util/Queue;

    const/4 p1, 0x0

    .line 302
    iput-object p1, p0, Lrx/internal/util/e;->g:Lrx/internal/util/b;

    .line 303
    iput p2, p0, Lrx/internal/util/e;->f:I

    return-void
.end method

.method private constructor <init>(Lrx/internal/util/b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/util/b<",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;>;I)V"
        }
    .end annotation

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p1, p0, Lrx/internal/util/e;->g:Lrx/internal/util/b;

    .line 308
    invoke-virtual {p1}, Lrx/internal/util/b;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Queue;

    iput-object p1, p0, Lrx/internal/util/e;->e:Ljava/util/Queue;

    .line 309
    iput p2, p0, Lrx/internal/util/e;->f:I

    return-void
.end method

.method public static a()Lrx/internal/util/e;
    .locals 3

    .line 293
    invoke-static {}, Lrx/internal/util/a/ae;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Lrx/internal/util/e;

    sget-object v1, Lrx/internal/util/e;->d:Lrx/internal/util/b;

    sget v2, Lrx/internal/util/e;->b:I

    invoke-direct {v0, v1, v2}, Lrx/internal/util/e;-><init>(Lrx/internal/util/b;I)V

    return-object v0

    .line 296
    :cond_0
    new-instance v0, Lrx/internal/util/e;

    invoke-direct {v0}, Lrx/internal/util/e;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lrx/exceptions/MissingBackpressureException;
        }
    .end annotation

    .line 340
    monitor-enter p0

    .line 341
    :try_start_0
    iget-object v0, p0, Lrx/internal/util/e;->e:Ljava/util/Queue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 343
    invoke-static {p1}, Lrx/internal/operators/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    move v1, v2

    goto :goto_0

    :cond_0
    move p1, v2

    .line 347
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 350
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This instance has been unsubscribed and the queue is no longer usable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-eqz p1, :cond_2

    .line 353
    new-instance p1, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {p1}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    throw p1

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 347
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized b()V
    .locals 3

    monitor-enter p0

    .line 313
    :try_start_0
    iget-object v0, p0, Lrx/internal/util/e;->e:Ljava/util/Queue;

    .line 314
    iget-object v1, p0, Lrx/internal/util/e;->g:Lrx/internal/util/b;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 316
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    const/4 v2, 0x0

    .line 317
    iput-object v2, p0, Lrx/internal/util/e;->e:Ljava/util/Queue;

    .line 318
    invoke-virtual {v1, v0}, Lrx/internal/util/b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 312
    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0

    .line 430
    invoke-static {p1}, Lrx/internal/operators/b;->b(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 438
    invoke-static {p1}, Lrx/internal/operators/b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 359
    iget-object v0, p0, Lrx/internal/util/e;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 360
    invoke-static {}, Lrx/internal/operators/b;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/util/e;->a:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public d()Ljava/lang/Object;
    .locals 4

    .line 394
    monitor-enter p0

    .line 395
    :try_start_0
    iget-object v0, p0, Lrx/internal/util/e;->e:Ljava/util/Queue;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 398
    monitor-exit p0

    return-object v1

    .line 400
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    .line 402
    iget-object v3, p0, Lrx/internal/util/e;->a:Ljava/lang/Object;

    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    .line 403
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 406
    iput-object v1, p0, Lrx/internal/util/e;->a:Ljava/lang/Object;

    move-object v2, v3

    .line 408
    :cond_1
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Ljava/lang/Object;
    .locals 3

    .line 414
    monitor-enter p0

    .line 415
    :try_start_0
    iget-object v0, p0, Lrx/internal/util/e;->e:Ljava/util/Queue;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 418
    monitor-exit p0

    return-object v0

    .line 420
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    .line 421
    iget-object v2, p0, Lrx/internal/util/e;->a:Ljava/lang/Object;

    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 422
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v1, v2

    .line 425
    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 452
    iget-object v0, p0, Lrx/internal/util/e;->e:Ljava/util/Queue;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public unsubscribe()V
    .locals 0

    .line 324
    invoke-virtual {p0}, Lrx/internal/util/e;->b()V

    return-void
.end method
