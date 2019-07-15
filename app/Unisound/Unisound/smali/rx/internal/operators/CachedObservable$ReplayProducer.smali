.class final Lrx/internal/operators/CachedObservable$ReplayProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "CachedObservable.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/CachedObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplayProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x237e491daced6e1dL


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field currentBuffer:[Ljava/lang/Object;

.field currentIndexInBuffer:I

.field emitting:Z

.field index:I

.field missed:Z

.field final state:Lrx/internal/operators/CachedObservable$CacheState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/CachedObservable$CacheState",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;Lrx/internal/operators/CachedObservable$CacheState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/internal/operators/CachedObservable$CacheState",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "this":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "state":Lrx/internal/operators/CachedObservable$CacheState;, "Lrx/internal/operators/CachedObservable$CacheState<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 289
    iput-object p1, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->child:Lrx/Subscriber;

    .line 290
    iput-object p2, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/CachedObservable$CacheState;

    .line 291
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 4

    .prologue
    .line 320
    .local p0, "this":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public produced(J)J
    .locals 3
    .param p1, "n"    # J

    .prologue
    .line 315
    .local p0, "this":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/CachedObservable$ReplayProducer;->addAndGet(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public replay()V
    .locals 20

    .prologue
    .line 338
    .local p0, "this":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    monitor-enter p0

    .line 339
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 340
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->missed:Z

    .line 341
    monitor-exit p0

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 344
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 345
    const/4 v15, 0x0

    .line 347
    .local v15, "skipFinal":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/CachedObservable$CacheState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v10, v0, Lrx/internal/operators/CachedObservable$CacheState;->nl:Lrx/internal/operators/NotificationLite;

    .line 348
    .local v10, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->child:Lrx/Subscriber;

    .line 352
    .local v5, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->get()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    move-result-wide v12

    .line 354
    .local v12, "r":J
    const-wide/16 v18, 0x0

    cmp-long v17, v12, v18

    if-gez v17, :cond_2

    .line 355
    const/4 v15, 0x1

    .line 447
    if-nez v15, :cond_0

    .line 448
    monitor-enter p0

    .line 449
    const/16 v17, 0x0

    :try_start_2
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 450
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v17

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v17

    .line 344
    .end local v5    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v10    # "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .end local v12    # "r":J
    .end local v15    # "skipFinal":Z
    :catchall_1
    move-exception v17

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v17

    .line 361
    .restart local v5    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local v10    # "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .restart local v12    # "r":J
    .restart local v15    # "skipFinal":Z
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/CachedObservable$CacheState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lrx/internal/operators/CachedObservable$CacheState;->size()I

    move-result v14

    .line 362
    .local v14, "s":I
    if-eqz v14, :cond_c

    .line 363
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentBuffer:[Ljava/lang/Object;

    .line 366
    .local v4, "b":[Ljava/lang/Object;
    if-nez v4, :cond_3

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/CachedObservable$CacheState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lrx/internal/operators/CachedObservable$CacheState;->head()[Ljava/lang/Object;

    move-result-object v4

    .line 368
    move-object/from16 v0, p0

    iput-object v4, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentBuffer:[Ljava/lang/Object;

    .line 370
    :cond_3
    array-length v0, v4

    move/from16 v17, v0

    add-int/lit8 v9, v17, -0x1

    .line 371
    .local v9, "n":I
    move-object/from16 v0, p0

    iget v7, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->index:I

    .line 372
    .local v7, "j":I
    move-object/from16 v0, p0

    iget v8, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentIndexInBuffer:I

    .line 374
    .local v8, "k":I
    const-wide/16 v18, 0x0

    cmp-long v17, v12, v18

    if-nez v17, :cond_5

    .line 375
    aget-object v11, v4, v8

    .line 376
    .local v11, "o":Ljava/lang/Object;
    invoke-virtual {v10, v11}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 377
    invoke-virtual {v5}, Lrx/Subscriber;->onCompleted()V

    .line 378
    const/4 v15, 0x1

    .line 379
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->unsubscribe()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    .line 447
    if-nez v15, :cond_0

    .line 448
    monitor-enter p0

    .line 449
    const/16 v17, 0x0

    :try_start_5
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 450
    monitor-exit p0

    goto/16 :goto_0

    :catchall_2
    move-exception v17

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v17

    .line 382
    :cond_4
    :try_start_6
    invoke-virtual {v10, v11}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 383
    invoke-virtual {v10, v11}, Lrx/internal/operators/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 384
    const/4 v15, 0x1

    .line 385
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->unsubscribe()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    .line 447
    if-nez v15, :cond_0

    .line 448
    monitor-enter p0

    .line 449
    const/16 v17, 0x0

    :try_start_7
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 450
    monitor-exit p0

    goto/16 :goto_0

    :catchall_3
    move-exception v17

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v17

    .line 389
    .end local v11    # "o":Ljava/lang/Object;
    :cond_5
    const-wide/16 v18, 0x0

    cmp-long v17, v12, v18

    if-lez v17, :cond_c

    .line 390
    const/16 v16, 0x0

    .line 392
    .local v16, "valuesProduced":I
    :goto_2
    if-ge v7, v14, :cond_a

    const-wide/16 v18, 0x0

    cmp-long v17, v12, v18

    if-lez v17, :cond_a

    .line 393
    :try_start_8
    invoke-virtual {v5}, Lrx/Subscriber;->isUnsubscribed()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    move-result v17

    if-eqz v17, :cond_6

    .line 394
    const/4 v15, 0x1

    .line 447
    if-nez v15, :cond_0

    .line 448
    monitor-enter p0

    .line 449
    const/16 v17, 0x0

    :try_start_9
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 450
    monitor-exit p0

    goto/16 :goto_0

    :catchall_4
    move-exception v17

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v17

    .line 397
    :cond_6
    if-ne v8, v9, :cond_7

    .line 398
    :try_start_a
    aget-object v17, v4, v9

    check-cast v17, [Ljava/lang/Object;

    move-object/from16 v0, v17

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 399
    const/4 v8, 0x0

    .line 401
    :cond_7
    aget-object v11, v4, v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 404
    .restart local v11    # "o":Ljava/lang/Object;
    :try_start_b
    invoke-virtual {v10, v5, v11}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 405
    const/4 v15, 0x1

    .line 406
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->unsubscribe()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    .line 447
    if-nez v15, :cond_0

    .line 448
    monitor-enter p0

    .line 449
    const/16 v17, 0x0

    :try_start_c
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 450
    monitor-exit p0

    goto/16 :goto_0

    :catchall_5
    move-exception v17

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v17

    .line 409
    :catch_0
    move-exception v6

    .line 410
    .local v6, "err":Ljava/lang/Throwable;
    :try_start_d
    invoke-static {v6}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 411
    const/4 v15, 0x1

    .line 412
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->unsubscribe()V

    .line 413
    invoke-virtual {v10, v11}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    invoke-virtual {v10, v11}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 414
    invoke-virtual {v10, v11}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    .line 447
    :cond_8
    if-nez v15, :cond_0

    .line 448
    monitor-enter p0

    .line 449
    const/16 v17, 0x0

    :try_start_e
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 450
    monitor-exit p0

    goto/16 :goto_0

    :catchall_6
    move-exception v17

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v17

    .line 419
    .end local v6    # "err":Ljava/lang/Throwable;
    :cond_9
    add-int/lit8 v8, v8, 0x1

    .line 420
    add-int/lit8 v7, v7, 0x1

    .line 421
    const-wide/16 v18, 0x1

    sub-long v12, v12, v18

    .line 422
    add-int/lit8 v16, v16, 0x1

    .line 423
    goto/16 :goto_2

    .line 425
    .end local v11    # "o":Ljava/lang/Object;
    :cond_a
    :try_start_f
    invoke-virtual {v5}, Lrx/Subscriber;->isUnsubscribed()Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    move-result v17

    if-eqz v17, :cond_b

    .line 426
    const/4 v15, 0x1

    .line 447
    if-nez v15, :cond_0

    .line 448
    monitor-enter p0

    .line 449
    const/16 v17, 0x0

    :try_start_10
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 450
    monitor-exit p0

    goto/16 :goto_0

    :catchall_7
    move-exception v17

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    throw v17

    .line 430
    :cond_b
    :try_start_11
    move-object/from16 v0, p0

    iput v7, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->index:I

    .line 431
    move-object/from16 v0, p0

    iput v8, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentIndexInBuffer:I

    .line 432
    move-object/from16 v0, p0

    iput-object v4, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentBuffer:[Ljava/lang/Object;

    .line 433
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/CachedObservable$ReplayProducer;->produced(J)J

    .line 437
    .end local v4    # "b":[Ljava/lang/Object;
    .end local v7    # "j":I
    .end local v8    # "k":I
    .end local v9    # "n":I
    .end local v16    # "valuesProduced":I
    :cond_c
    monitor-enter p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 438
    :try_start_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->missed:Z

    move/from16 v17, v0

    if-nez v17, :cond_d

    .line 439
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 440
    const/4 v15, 0x1

    .line 441
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 447
    if-nez v15, :cond_0

    .line 448
    monitor-enter p0

    .line 449
    const/16 v17, 0x0

    :try_start_13
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 450
    monitor-exit p0

    goto/16 :goto_0

    :catchall_8
    move-exception v17

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    throw v17

    .line 443
    :cond_d
    const/16 v17, 0x0

    :try_start_14
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->missed:Z

    .line 444
    monitor-exit p0

    goto/16 :goto_1

    :catchall_9
    move-exception v17

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    :try_start_15
    throw v17
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 447
    .end local v5    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v10    # "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .end local v12    # "r":J
    .end local v14    # "s":I
    :catchall_a
    move-exception v17

    if-nez v15, :cond_e

    .line 448
    monitor-enter p0

    .line 449
    const/16 v18, 0x0

    :try_start_16
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 450
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    :cond_e
    throw v17

    :catchall_b
    move-exception v17

    :try_start_17
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    throw v17
.end method

.method public request(J)V
    .locals 9
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    const-wide/16 v6, 0x0

    .line 295
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->get()J

    move-result-wide v0

    .line 296
    .local v0, "r":J
    cmp-long v4, v0, v6

    if-gez v4, :cond_1

    .line 305
    :goto_0
    return-void

    .line 299
    :cond_1
    add-long v2, v0, p1

    .line 300
    .local v2, "u":J
    cmp-long v4, v2, v6

    if-gez v4, :cond_2

    .line 301
    const-wide v2, 0x7fffffffffffffffL

    .line 303
    :cond_2
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/CachedObservable$ReplayProducer;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 304
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->replay()V

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 6

    .prologue
    .local p0, "this":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    const-wide/16 v4, 0x0

    .line 324
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->get()J

    move-result-wide v0

    .line 325
    .local v0, "r":J
    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    .line 326
    const-wide/16 v2, -0x1

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/CachedObservable$ReplayProducer;->getAndSet(J)J

    move-result-wide v0

    .line 327
    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    .line 328
    iget-object v2, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/CachedObservable$CacheState;

    invoke-virtual {v2, p0}, Lrx/internal/operators/CachedObservable$CacheState;->removeProducer(Lrx/internal/operators/CachedObservable$ReplayProducer;)V

    .line 331
    :cond_0
    return-void
.end method
