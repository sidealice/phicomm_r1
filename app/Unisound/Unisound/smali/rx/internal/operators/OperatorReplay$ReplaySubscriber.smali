.class final Lrx/internal/operators/OperatorReplay$ReplaySubscriber;
.super Lrx/Subscriber;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplaySubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lrx/internal/operators/OperatorReplay$InnerProducer;

.field static final TERMINATED:[Lrx/internal/operators/OperatorReplay$InnerProducer;


# instance fields
.field final buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorReplay$ReplayBuffer",
            "<TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field emitting:Z

.field maxChildRequested:J

.field maxUpstreamRequested:J

.field missed:Z

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile producer:Lrx/Producer;

.field final producers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[",
            "Lrx/internal/operators/OperatorReplay$InnerProducer;",
            ">;"
        }
    .end annotation
.end field

.field final shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 298
    new-array v0, v1, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    sput-object v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->EMPTY:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 300
    new-array v0, v1, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    sput-object v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->TERMINATED:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lrx/internal/operators/OperatorReplay$ReplayBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/operators/OperatorReplay$ReplaySubscriber",
            "<TT;>;>;",
            "Lrx/internal/operators/OperatorReplay$ReplayBuffer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    .local p1, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;>;"
    .local p2, "buffer":Lrx/internal/operators/OperatorReplay$ReplayBuffer;, "Lrx/internal/operators/OperatorReplay$ReplayBuffer<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 325
    iput-object p2, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    .line 327
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 328
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->EMPTY:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 329
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 332
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->request(J)V

    .line 333
    return-void
.end method


# virtual methods
.method add(Lrx/internal/operators/OperatorReplay$InnerProducer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    .local p1, "producer":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const/4 v3, 0x0

    .line 355
    if-nez p1, :cond_0

    .line 356
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 361
    :cond_0
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 364
    .local v0, "c":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    sget-object v4, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->TERMINATED:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    if-ne v0, v4, :cond_1

    .line 374
    :goto_0
    return v3

    .line 368
    :cond_1
    array-length v1, v0

    .line 369
    .local v1, "len":I
    add-int/lit8 v4, v1, 0x1

    new-array v2, v4, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 370
    .local v2, "u":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    aput-object p1, v2, v1

    .line 373
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 374
    const/4 v3, 0x1

    goto :goto_0
.end method

.method init()V
    .locals 1

    .prologue
    .line 336
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;-><init>(Lrx/internal/operators/OperatorReplay$ReplaySubscriber;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->add(Lrx/Subscription;)V

    .line 347
    return-void
.end method

.method manageRequests()V
    .locals 22

    .prologue
    .line 483
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->isUnsubscribed()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    monitor-enter p0

    .line 487
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->emitting:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 488
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->missed:Z

    .line 489
    monitor-exit p0

    goto :goto_0

    .line 492
    :catchall_0
    move-exception v20

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v20

    .line 491
    :cond_2
    const/16 v20, 0x1

    :try_start_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->emitting:Z

    .line 492
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->isUnsubscribed()Z

    move-result v20

    if-nez v20, :cond_0

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 502
    .local v4, "a":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    move-object/from16 v0, p0

    iget-wide v14, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxChildRequested:J

    .line 503
    .local v14, "ri":J
    move-wide v10, v14

    .line 505
    .local v10, "maxTotalRequests":J
    move-object v5, v4

    .local v5, "arr$":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    array-length v9, v5

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_2
    if-ge v8, v9, :cond_3

    aget-object v13, v5, v8

    .line 506
    .local v13, "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    iget-object v0, v13, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 505
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 509
    .end local v13    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxUpstreamRequested:J

    move-wide/from16 v18, v0

    .line 510
    .local v18, "ur":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producer:Lrx/Producer;

    .line 512
    .local v12, "p":Lrx/Producer;
    sub-long v6, v10, v14

    .line 513
    .local v6, "diff":J
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-eqz v20, :cond_8

    .line 514
    move-object/from16 v0, p0

    iput-wide v10, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxChildRequested:J

    .line 515
    if-eqz v12, :cond_6

    .line 516
    const-wide/16 v20, 0x0

    cmp-long v20, v18, v20

    if-eqz v20, :cond_5

    .line 517
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxUpstreamRequested:J

    .line 518
    add-long v20, v18, v6

    move-wide/from16 v0, v20

    invoke-interface {v12, v0, v1}, Lrx/Producer;->request(J)V

    .line 538
    :cond_4
    :goto_3
    monitor-enter p0

    .line 539
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->missed:Z

    move/from16 v20, v0

    if-nez v20, :cond_9

    .line 540
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->emitting:Z

    .line 541
    monitor-exit p0

    goto/16 :goto_0

    .line 544
    :catchall_1
    move-exception v20

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v20

    .line 520
    :cond_5
    invoke-interface {v12, v6, v7}, Lrx/Producer;->request(J)V

    goto :goto_3

    .line 524
    :cond_6
    add-long v16, v18, v6

    .line 525
    .local v16, "u":J
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-gez v20, :cond_7

    .line 526
    const-wide v16, 0x7fffffffffffffffL

    .line 528
    :cond_7
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxUpstreamRequested:J

    goto :goto_3

    .line 532
    .end local v16    # "u":J
    :cond_8
    const-wide/16 v20, 0x0

    cmp-long v20, v18, v20

    if-eqz v20, :cond_4

    if-eqz v12, :cond_4

    .line 533
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxUpstreamRequested:J

    .line 535
    move-wide/from16 v0, v18

    invoke-interface {v12, v0, v1}, Lrx/Producer;->request(J)V

    goto :goto_3

    .line 543
    :cond_9
    const/16 v20, 0x0

    :try_start_3
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->missed:Z

    .line 544
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 467
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->done:Z

    if-nez v0, :cond_0

    .line 468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->done:Z

    .line 470
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-interface {v0}, Lrx/internal/operators/OperatorReplay$ReplayBuffer;->complete()V

    .line 471
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->replay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->unsubscribe()V

    .line 476
    :cond_0
    return-void

    .line 473
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 453
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->done:Z

    if-nez v0, :cond_0

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->done:Z

    .line 456
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-interface {v0, p1}, Lrx/internal/operators/OperatorReplay$ReplayBuffer;->error(Ljava/lang/Throwable;)V

    .line 457
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->replay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->unsubscribe()V

    .line 462
    :cond_0
    return-void

    .line 459
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->unsubscribe()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->done:Z

    if-nez v0, :cond_0

    .line 445
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-interface {v0, p1}, Lrx/internal/operators/OperatorReplay$ReplayBuffer;->next(Ljava/lang/Object;)V

    .line 446
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->replay()V

    .line 448
    :cond_0
    return-void
.end method

.method remove(Lrx/internal/operators/OperatorReplay$InnerProducer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    .local p1, "producer":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const/4 v7, 0x0

    .line 389
    :cond_0
    iget-object v5, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 391
    .local v0, "c":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    sget-object v5, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->EMPTY:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    if-eq v0, v5, :cond_1

    sget-object v5, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->TERMINATED:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    if-ne v0, v5, :cond_2

    .line 424
    :cond_1
    :goto_0
    return-void

    .line 396
    :cond_2
    const/4 v2, -0x1

    .line 397
    .local v2, "j":I
    array-length v3, v0

    .line 398
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 399
    aget-object v5, v0, v1

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 400
    move v2, v1

    .line 405
    :cond_3
    if-ltz v2, :cond_1

    .line 412
    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    .line 413
    sget-object v4, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->EMPTY:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 423
    .local v4, "u":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    :goto_2
    iget-object v5, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 398
    .end local v4    # "u":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 416
    :cond_5
    add-int/lit8 v5, v3, -0x1

    new-array v4, v5, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 418
    .restart local v4    # "u":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    invoke-static {v0, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v3, v2

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method replay()V
    .locals 6

    .prologue
    .line 553
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    iget-object v5, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 554
    .local v0, "a":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    move-object v1, v0

    .local v1, "arr$":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 555
    .local v4, "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    iget-object v5, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-interface {v5, v4}, Lrx/internal/operators/OperatorReplay$ReplayBuffer;->replay(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    .line 554
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 557
    .end local v4    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :cond_0
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 3
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 433
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producer:Lrx/Producer;

    .line 434
    .local v0, "p0":Lrx/Producer;
    if-eqz v0, :cond_0

    .line 435
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Only a single producer can be set on a Subscriber."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 437
    :cond_0
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producer:Lrx/Producer;

    .line 438
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->manageRequests()V

    .line 439
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->replay()V

    .line 440
    return-void
.end method
