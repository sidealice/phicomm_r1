.class final Lrx/internal/operators/i$e;
.super Lrx/i;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/i<",
        "TT;>;",
        "Lrx/j;"
    }
.end annotation


# static fields
.field static final c:[Lrx/internal/operators/i$b;

.field static final d:[Lrx/internal/operators/i$b;


# instance fields
.field final a:Lrx/internal/operators/i$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/i$d<",
            "TT;>;"
        }
    .end annotation
.end field

.field b:Z

.field volatile e:Z

.field final f:Lrx/internal/util/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/c<",
            "Lrx/internal/operators/i$b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field g:[Lrx/internal/operators/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/i$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile h:J

.field i:J

.field final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field k:Z

.field l:Z

.field m:J

.field n:J

.field volatile o:Lrx/e;

.field p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrx/internal/operators/i$b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 311
    new-array v1, v0, [Lrx/internal/operators/i$b;

    sput-object v1, Lrx/internal/operators/i$e;->c:[Lrx/internal/operators/i$b;

    .line 313
    new-array v0, v0, [Lrx/internal/operators/i$b;

    sput-object v0, Lrx/internal/operators/i$e;->d:[Lrx/internal/operators/i$b;

    return-void
.end method

.method public constructor <init>(Lrx/internal/operators/i$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/i$d<",
            "TT;>;)V"
        }
    .end annotation

    .line 350
    invoke-direct {p0}, Lrx/i;-><init>()V

    .line 351
    iput-object p1, p0, Lrx/internal/operators/i$e;->a:Lrx/internal/operators/i$d;

    .line 352
    new-instance p1, Lrx/internal/util/c;

    invoke-direct {p1}, Lrx/internal/util/c;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/i$e;->f:Lrx/internal/util/c;

    .line 353
    sget-object p1, Lrx/internal/operators/i$e;->c:[Lrx/internal/operators/i$b;

    iput-object p1, p0, Lrx/internal/operators/i$e;->g:[Lrx/internal/operators/i$b;

    .line 354
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/i$e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    .line 357
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/i$e;->a(J)V

    return-void
.end method


# virtual methods
.method a(JJ)V
    .locals 6

    .line 571
    iget-wide v0, p0, Lrx/internal/operators/i$e;->n:J

    .line 572
    iget-object v2, p0, Lrx/internal/operators/i$e;->o:Lrx/e;

    sub-long v3, p1, p3

    const-wide/16 p3, 0x0

    cmp-long v5, v3, p3

    if-eqz v5, :cond_3

    .line 576
    iput-wide p1, p0, Lrx/internal/operators/i$e;->m:J

    if-eqz v2, :cond_1

    cmp-long p1, v0, p3

    if-eqz p1, :cond_0

    .line 579
    iput-wide p3, p0, Lrx/internal/operators/i$e;->n:J

    add-long p1, v0, v3

    .line 580
    invoke-interface {v2, p1, p2}, Lrx/e;->request(J)V

    goto :goto_0

    .line 582
    :cond_0
    invoke-interface {v2, v3, v4}, Lrx/e;->request(J)V

    goto :goto_0

    :cond_1
    add-long p1, v0, v3

    cmp-long v0, p1, p3

    if-gez v0, :cond_2

    const-wide p1, 0x7fffffffffffffffL

    .line 590
    :cond_2
    iput-wide p1, p0, Lrx/internal/operators/i$e;->n:J

    goto :goto_0

    :cond_3
    cmp-long p1, v0, p3

    if-eqz p1, :cond_4

    if-eqz v2, :cond_4

    .line 595
    iput-wide p3, p0, Lrx/internal/operators/i$e;->n:J

    .line 597
    invoke-interface {v2, v0, v1}, Lrx/e;->request(J)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Lrx/e;)V
    .locals 1

    .line 428
    iget-object v0, p0, Lrx/internal/operators/i$e;->o:Lrx/e;

    if-eqz v0, :cond_0

    .line 430
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Only a single producer can be set on a Subscriber."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 432
    :cond_0
    iput-object p1, p0, Lrx/internal/operators/i$e;->o:Lrx/e;

    const/4 p1, 0x0

    .line 433
    invoke-virtual {p0, p1}, Lrx/internal/operators/i$e;->c(Lrx/internal/operators/i$b;)V

    .line 434
    invoke-virtual {p0}, Lrx/internal/operators/i$e;->d()V

    return-void
.end method

.method a(Lrx/internal/operators/i$b;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/i$b<",
            "TT;>;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 389
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 391
    :cond_0
    iget-boolean v0, p0, Lrx/internal/operators/i$e;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 394
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/i$e;->f:Lrx/internal/util/c;

    monitor-enter v0

    .line 395
    :try_start_0
    iget-boolean v2, p0, Lrx/internal/operators/i$e;->e:Z

    if-eqz v2, :cond_2

    .line 396
    monitor-exit v0

    return v1

    .line 399
    :cond_2
    iget-object v1, p0, Lrx/internal/operators/i$e;->f:Lrx/internal/util/c;

    invoke-virtual {v1, p1}, Lrx/internal/util/c;->a(Ljava/lang/Object;)Z

    .line 400
    iget-wide v1, p0, Lrx/internal/operators/i$e;->h:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    iput-wide v5, p0, Lrx/internal/operators/i$e;->h:J

    .line 401
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method b()V
    .locals 1

    .line 361
    new-instance v0, Lrx/internal/operators/i$e$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/i$e$1;-><init>(Lrx/internal/operators/i$e;)V

    invoke-static {v0}, Lrx/g/c;->a(Lrx/b/a;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/i$e;->a(Lrx/j;)V

    return-void
.end method

.method b(Lrx/internal/operators/i$b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/i$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 411
    iget-boolean v0, p0, Lrx/internal/operators/i$e;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/i$e;->f:Lrx/internal/util/c;

    monitor-enter v0

    .line 415
    :try_start_0
    iget-boolean v1, p0, Lrx/internal/operators/i$e;->e:Z

    if-eqz v1, :cond_1

    .line 416
    monitor-exit v0

    return-void

    .line 418
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/i$e;->f:Lrx/internal/util/c;

    invoke-virtual {v1, p1}, Lrx/internal/util/c;->b(Ljava/lang/Object;)Z

    .line 419
    iget-object p1, p0, Lrx/internal/operators/i$e;->f:Lrx/internal/util/c;

    invoke-virtual {p1}, Lrx/internal/util/c;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 420
    sget-object p1, Lrx/internal/operators/i$e;->c:[Lrx/internal/operators/i$b;

    iput-object p1, p0, Lrx/internal/operators/i$e;->g:[Lrx/internal/operators/i$b;

    .line 422
    :cond_2
    iget-wide v1, p0, Lrx/internal/operators/i$e;->h:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    iput-wide v5, p0, Lrx/internal/operators/i$e;->h:J

    .line 423
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method c(Lrx/internal/operators/i$b;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/i$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 478
    invoke-virtual {p0}, Lrx/internal/operators/i$e;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 481
    :cond_0
    monitor-enter p0

    .line 482
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/i$e;->k:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 484
    iget-object v0, p0, Lrx/internal/operators/i$e;->p:Ljava/util/List;

    if-nez v0, :cond_1

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 487
    iput-object v0, p0, Lrx/internal/operators/i$e;->p:Ljava/util/List;

    .line 489
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 491
    :cond_2
    iput-boolean v1, p0, Lrx/internal/operators/i$e;->q:Z

    .line 493
    :goto_0
    iput-boolean v1, p0, Lrx/internal/operators/i$e;->l:Z

    .line 494
    monitor-exit p0

    return-void

    .line 496
    :cond_3
    iput-boolean v1, p0, Lrx/internal/operators/i$e;->k:Z

    .line 497
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 499
    iget-wide v0, p0, Lrx/internal/operators/i$e;->m:J

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 503
    iget-object p1, p1, Lrx/internal/operators/i$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_2

    .line 507
    :cond_4
    invoke-virtual {p0}, Lrx/internal/operators/i$e;->c()[Lrx/internal/operators/i$b;

    move-result-object p1

    .line 508
    array-length v3, p1

    move-wide v5, v0

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_6

    aget-object v7, p1, v4

    if-eqz v7, :cond_5

    .line 510
    iget-object v7, v7, Lrx/internal/operators/i$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    move-wide v3, v5

    .line 515
    :goto_2
    invoke-virtual {p0, v3, v4, v0, v1}, Lrx/internal/operators/i$e;->a(JJ)V

    .line 519
    :goto_3
    invoke-virtual {p0}, Lrx/internal/operators/i$e;->isUnsubscribed()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 525
    :cond_7
    monitor-enter p0

    .line 526
    :try_start_1
    iget-boolean p1, p0, Lrx/internal/operators/i$e;->l:Z

    if-nez p1, :cond_8

    .line 527
    iput-boolean v2, p0, Lrx/internal/operators/i$e;->k:Z

    .line 528
    monitor-exit p0

    return-void

    .line 530
    :cond_8
    iput-boolean v2, p0, Lrx/internal/operators/i$e;->l:Z

    .line 531
    iget-object p1, p0, Lrx/internal/operators/i$e;->p:Ljava/util/List;

    const/4 v0, 0x0

    .line 532
    iput-object v0, p0, Lrx/internal/operators/i$e;->p:Ljava/util/List;

    .line 533
    iget-boolean v0, p0, Lrx/internal/operators/i$e;->q:Z

    .line 534
    iput-boolean v2, p0, Lrx/internal/operators/i$e;->q:Z

    .line 535
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 537
    iget-wide v3, p0, Lrx/internal/operators/i$e;->m:J

    if-eqz p1, :cond_9

    .line 541
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-wide v5, v3

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/i$b;

    .line 542
    iget-object v1, v1, Lrx/internal/operators/i$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    goto :goto_4

    :cond_9
    move-wide v5, v3

    :cond_a
    if-eqz v0, :cond_c

    .line 547
    invoke-virtual {p0}, Lrx/internal/operators/i$e;->c()[Lrx/internal/operators/i$b;

    move-result-object p1

    .line 548
    array-length v0, p1

    move v1, v2

    :goto_5
    if-ge v1, v0, :cond_c

    aget-object v7, p1, v1

    if-eqz v7, :cond_b

    .line 550
    iget-object v7, v7, Lrx/internal/operators/i$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 555
    :cond_c
    invoke-virtual {p0, v5, v6, v3, v4}, Lrx/internal/operators/i$e;->a(JJ)V

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 535
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 497
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method c()[Lrx/internal/operators/i$b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lrx/internal/operators/i$b<",
            "TT;>;"
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lrx/internal/operators/i$e;->f:Lrx/internal/util/c;

    monitor-enter v0

    .line 561
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/i$e;->f:Lrx/internal/util/c;

    invoke-virtual {v1}, Lrx/internal/util/c;->d()[Ljava/lang/Object;

    move-result-object v1

    .line 562
    array-length v2, v1

    .line 564
    new-array v3, v2, [Lrx/internal/operators/i$b;

    const/4 v4, 0x0

    .line 565
    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    .line 567
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method d()V
    .locals 6

    .line 606
    iget-object v0, p0, Lrx/internal/operators/i$e;->g:[Lrx/internal/operators/i$b;

    .line 607
    iget-wide v1, p0, Lrx/internal/operators/i$e;->i:J

    iget-wide v3, p0, Lrx/internal/operators/i$e;->h:J

    cmp-long v5, v1, v3

    const/4 v1, 0x0

    if-eqz v5, :cond_1

    .line 608
    iget-object v2, p0, Lrx/internal/operators/i$e;->f:Lrx/internal/util/c;

    monitor-enter v2

    .line 609
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/i$e;->g:[Lrx/internal/operators/i$b;

    .line 612
    iget-object v3, p0, Lrx/internal/operators/i$e;->f:Lrx/internal/util/c;

    invoke-virtual {v3}, Lrx/internal/util/c;->d()[Ljava/lang/Object;

    move-result-object v3

    .line 613
    array-length v4, v3

    .line 614
    array-length v5, v0

    if-eq v5, v4, :cond_0

    .line 615
    new-array v0, v4, [Lrx/internal/operators/i$b;

    .line 616
    iput-object v0, p0, Lrx/internal/operators/i$e;->g:[Lrx/internal/operators/i$b;

    .line 618
    :cond_0
    invoke-static {v3, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 619
    iget-wide v3, p0, Lrx/internal/operators/i$e;->h:J

    iput-wide v3, p0, Lrx/internal/operators/i$e;->i:J

    .line 620
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 622
    :cond_1
    :goto_0
    iget-object v2, p0, Lrx/internal/operators/i$e;->a:Lrx/internal/operators/i$d;

    .line 623
    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    if-eqz v4, :cond_2

    .line 625
    invoke-interface {v2, v4}, Lrx/internal/operators/i$d;->a(Lrx/internal/operators/i$b;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .line 462
    iget-boolean v0, p0, Lrx/internal/operators/i$e;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 463
    iput-boolean v0, p0, Lrx/internal/operators/i$e;->b:Z

    .line 465
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/i$e;->a:Lrx/internal/operators/i$d;

    invoke-interface {v0}, Lrx/internal/operators/i$d;->c()V

    .line 466
    invoke-virtual {p0}, Lrx/internal/operators/i$e;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    invoke-virtual {p0}, Lrx/internal/operators/i$e;->unsubscribe()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/i$e;->unsubscribe()V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 448
    iget-boolean v0, p0, Lrx/internal/operators/i$e;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 449
    iput-boolean v0, p0, Lrx/internal/operators/i$e;->b:Z

    .line 451
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/i$e;->a:Lrx/internal/operators/i$d;

    invoke-interface {v0, p1}, Lrx/internal/operators/i$d;->a(Ljava/lang/Throwable;)V

    .line 452
    invoke-virtual {p0}, Lrx/internal/operators/i$e;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    invoke-virtual {p0}, Lrx/internal/operators/i$e;->unsubscribe()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lrx/internal/operators/i$e;->unsubscribe()V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 439
    iget-boolean v0, p0, Lrx/internal/operators/i$e;->b:Z

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lrx/internal/operators/i$e;->a:Lrx/internal/operators/i$d;

    invoke-interface {v0, p1}, Lrx/internal/operators/i$d;->a(Ljava/lang/Object;)V

    .line 441
    invoke-virtual {p0}, Lrx/internal/operators/i$e;->d()V

    :cond_0
    return-void
.end method
