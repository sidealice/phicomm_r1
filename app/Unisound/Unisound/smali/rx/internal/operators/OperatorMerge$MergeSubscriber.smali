.class final Lrx/internal/operators/OperatorMerge$MergeSubscriber;
.super Lrx/Subscriber;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MergeSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<",
        "Lrx/Observable",
        "<+TT;>;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final delayErrors:Z

.field volatile done:Z

.field emitting:Z

.field volatile errors:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final innerGuard:Ljava/lang/Object;

.field volatile innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber",
            "<*>;"
        }
    .end annotation
.end field

.field lastId:J

.field lastIndex:I

.field final maxConcurrent:I

.field missed:Z

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field producer:Lrx/internal/operators/OperatorMerge$MergeProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorMerge$MergeProducer",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile subscriptions:Lrx/subscriptions/CompositeSubscription;

.field uniqueId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    new-array v0, v0, [Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    sput-object v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->EMPTY:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;ZI)V
    .locals 2
    .param p2, "delayErrors"    # Z
    .param p3, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;ZI)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 181
    iput-object p1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    .line 182
    iput-boolean p2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    .line 183
    iput p3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->maxConcurrent:I

    .line 184
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerGuard:Ljava/lang/Object;

    .line 186
    sget-object v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->EMPTY:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    iput-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 187
    const v0, 0x7fffffff

    if-ne p3, v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->request(J)V

    .line 188
    return-void

    .line 187
    :cond_0
    int-to-long v0, p3

    goto :goto_0
.end method

.method private reportError()V
    .locals 3

    .prologue
    .line 238
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 239
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 240
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    new-instance v2, Lrx/exceptions/CompositeException;

    invoke-direct {v2, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method addInner(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "inner":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateComposite()Lrx/subscriptions/CompositeSubscription;

    move-result-object v3

    invoke-virtual {v3, p1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 260
    iget-object v4, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerGuard:Ljava/lang/Object;

    monitor-enter v4

    .line 261
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 262
    .local v0, "a":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    array-length v2, v0

    .line 263
    .local v2, "n":I
    add-int/lit8 v3, v2, 0x1

    new-array v1, v3, [Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 264
    .local v1, "b":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    aput-object p1, v1, v2

    .line 266
    iput-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 267
    monitor-exit v4

    .line 268
    return-void

    .line 267
    .end local v0    # "a":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .end local v1    # "b":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method checkTerminate()Z
    .locals 3

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    const/4 v1, 0x1

    .line 770
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 782
    :goto_0
    return v1

    .line 773
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 774
    .local v0, "e":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    iget-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 776
    :try_start_0
    invoke-direct {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->reportError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V

    throw v1

    .line 782
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method emit()V
    .locals 1

    .prologue
    .line 519
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    monitor-enter p0

    .line 520
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    if-eqz v0, :cond_0

    .line 521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    .line 522
    monitor-exit p0

    .line 527
    :goto_0
    return-void

    .line 524
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 525
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitLoop()V

    goto :goto_0

    .line 525
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method emitLoop()V
    .locals 32

    .prologue
    .line 532
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    const/16 v23, 0x0

    .line 534
    .local v23, "skipFinal":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    .line 537
    .local v4, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->checkTerminate()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result v30

    if-eqz v30, :cond_2

    .line 538
    const/16 v23, 0x1

    .line 756
    if-nez v23, :cond_1

    .line 757
    monitor-enter p0

    .line 758
    const/16 v30, 0x0

    :try_start_1
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 759
    monitor-exit p0

    .line 762
    :cond_1
    :goto_1
    return-void

    .line 759
    :catchall_0
    move-exception v30

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v30

    .line 541
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queue:Ljava/util/Queue;

    move-object/from16 v26, v0

    .line 543
    .local v26, "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lrx/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v20

    .line 544
    .local v20, "r":J
    const-wide v30, 0x7fffffffffffffffL

    cmp-long v30, v20, v30

    if-nez v30, :cond_4

    const/16 v28, 0x1

    .line 547
    .local v28, "unbounded":Z
    :goto_2
    const/16 v19, 0x0

    .line 550
    .local v19, "replenishMain":I
    if-eqz v26, :cond_8

    .line 552
    :cond_3
    const/16 v22, 0x0

    .line 553
    .local v22, "scalarEmission":I
    const/16 v16, 0x0

    .line 554
    :goto_3
    const-wide/16 v30, 0x0

    cmp-long v30, v20, v30

    if-lez v30, :cond_6

    .line 555
    invoke-interface/range {v26 .. v26}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v16

    .line 557
    .local v16, "o":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->checkTerminate()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result v30

    if-eqz v30, :cond_5

    .line 558
    const/16 v23, 0x1

    .line 756
    if-nez v23, :cond_1

    .line 757
    monitor-enter p0

    .line 758
    const/16 v30, 0x0

    :try_start_3
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 759
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception v30

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v30

    .line 544
    .end local v16    # "o":Ljava/lang/Object;
    .end local v19    # "replenishMain":I
    .end local v22    # "scalarEmission":I
    .end local v28    # "unbounded":Z
    :cond_4
    const/16 v28, 0x0

    goto :goto_2

    .line 561
    .restart local v16    # "o":Ljava/lang/Object;
    .restart local v19    # "replenishMain":I
    .restart local v22    # "scalarEmission":I
    .restart local v28    # "unbounded":Z
    :cond_5
    if-nez v16, :cond_b

    .line 582
    .end local v16    # "o":Ljava/lang/Object;
    :cond_6
    if-lez v22, :cond_7

    .line 583
    if-eqz v28, :cond_e

    .line 584
    const-wide v20, 0x7fffffffffffffffL

    .line 589
    :cond_7
    :goto_4
    const-wide/16 v30, 0x0

    cmp-long v30, v20, v30

    if-eqz v30, :cond_8

    if-nez v16, :cond_3

    .line 601
    .end local v22    # "scalarEmission":I
    :cond_8
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->done:Z

    .line 604
    .local v5, "d":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queue:Ljava/util/Queue;

    move-object/from16 v26, v0

    .line 606
    move-object/from16 v0, p0

    iget-object v9, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 607
    .local v9, "inner":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    array-length v15, v9

    .line 611
    .local v15, "n":I
    if-eqz v5, :cond_10

    if-eqz v26, :cond_9

    invoke-interface/range {v26 .. v26}, Ljava/util/Queue;->isEmpty()Z

    move-result v30

    if-eqz v30, :cond_10

    :cond_9
    if-nez v15, :cond_10

    .line 612
    move-object/from16 v0, p0

    iget-object v6, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 613
    .local v6, "e":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    if-eqz v6, :cond_a

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v30

    if-eqz v30, :cond_f

    .line 614
    :cond_a
    invoke-virtual {v4}, Lrx/Subscriber;->onCompleted()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 618
    :goto_5
    const/16 v23, 0x1

    .line 756
    if-nez v23, :cond_1

    .line 757
    monitor-enter p0

    .line 758
    const/16 v30, 0x0

    :try_start_5
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 759
    monitor-exit p0

    goto/16 :goto_1

    :catchall_2
    move-exception v30

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v30

    .line 564
    .end local v5    # "d":Z
    .end local v6    # "e":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    .end local v9    # "inner":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .end local v15    # "n":I
    .restart local v16    # "o":Ljava/lang/Object;
    .restart local v22    # "scalarEmission":I
    :cond_b
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result-object v29

    .line 567
    .local v29, "v":Ljava/lang/Object;, "TT;"
    :try_start_7
    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 578
    :goto_6
    add-int/lit8 v19, v19, 0x1

    .line 579
    add-int/lit8 v22, v22, 0x1

    .line 580
    const-wide/16 v30, 0x1

    sub-long v20, v20, v30

    .line 581
    goto/16 :goto_3

    .line 568
    :catch_0
    move-exception v27

    .line 569
    .local v27, "t":Ljava/lang/Throwable;
    :try_start_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    move/from16 v30, v0

    if-nez v30, :cond_c

    .line 570
    invoke-static/range {v27 .. v27}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 571
    const/16 v23, 0x1

    .line 572
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V

    .line 573
    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 756
    if-nez v23, :cond_1

    .line 757
    monitor-enter p0

    .line 758
    const/16 v30, 0x0

    :try_start_9
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 759
    monitor-exit p0

    goto/16 :goto_1

    :catchall_3
    move-exception v30

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v30

    .line 576
    :cond_c
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateErrorQueue()Ljava/util/Queue;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_6

    .line 756
    .end local v4    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v16    # "o":Ljava/lang/Object;
    .end local v19    # "replenishMain":I
    .end local v20    # "r":J
    .end local v22    # "scalarEmission":I
    .end local v26    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v27    # "t":Ljava/lang/Throwable;
    .end local v28    # "unbounded":Z
    .end local v29    # "v":Ljava/lang/Object;, "TT;"
    :catchall_4
    move-exception v30

    if-nez v23, :cond_d

    .line 757
    monitor-enter p0

    .line 758
    const/16 v31, 0x0

    :try_start_b
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 759
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_c

    :cond_d
    throw v30

    .line 586
    .restart local v4    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local v19    # "replenishMain":I
    .restart local v20    # "r":J
    .restart local v22    # "scalarEmission":I
    .restart local v26    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v28    # "unbounded":Z
    :cond_e
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lrx/internal/operators/OperatorMerge$MergeProducer;->produced(I)J

    move-result-wide v20

    goto/16 :goto_4

    .line 616
    .end local v22    # "scalarEmission":I
    .restart local v5    # "d":Z
    .restart local v6    # "e":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    .restart local v9    # "inner":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .restart local v15    # "n":I
    :cond_f
    invoke-direct/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->reportError()V

    goto/16 :goto_5

    .line 622
    .end local v6    # "e":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    :cond_10
    const/4 v10, 0x0

    .line 623
    .local v10, "innerCompleted":Z
    if-lez v15, :cond_23

    .line 625
    move-object/from16 v0, p0

    iget-wide v0, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastId:J

    move-wide/from16 v24, v0

    .line 626
    .local v24, "startId":J
    move-object/from16 v0, p0

    iget v8, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastIndex:I

    .line 630
    .local v8, "index":I
    if-le v15, v8, :cond_11

    aget-object v30, v9, v8

    move-object/from16 v0, v30

    iget-wide v0, v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->id:J

    move-wide/from16 v30, v0

    cmp-long v30, v30, v24

    if-eqz v30, :cond_14

    .line 631
    :cond_11
    if-gt v15, v8, :cond_12

    .line 632
    const/4 v8, 0x0

    .line 635
    :cond_12
    move v14, v8

    .line 636
    .local v14, "j":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7
    if-ge v7, v15, :cond_13

    .line 637
    aget-object v30, v9, v14

    move-object/from16 v0, v30

    iget-wide v0, v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->id:J

    move-wide/from16 v30, v0

    cmp-long v30, v30, v24

    if-nez v30, :cond_15

    .line 648
    :cond_13
    move v8, v14

    .line 649
    move-object/from16 v0, p0

    iput v14, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastIndex:I

    .line 650
    aget-object v30, v9, v14

    move-object/from16 v0, v30

    iget-wide v0, v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->id:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastId:J

    .line 653
    .end local v7    # "i":I
    .end local v14    # "j":I
    :cond_14
    move v14, v8

    .line 655
    .restart local v14    # "j":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_8
    if-ge v7, v15, :cond_22

    .line 657
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->checkTerminate()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-result v30

    if-eqz v30, :cond_17

    .line 658
    const/16 v23, 0x1

    .line 756
    if-nez v23, :cond_1

    .line 757
    monitor-enter p0

    .line 758
    const/16 v30, 0x0

    :try_start_d
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 759
    monitor-exit p0

    goto/16 :goto_1

    :catchall_5
    move-exception v30

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v30

    .line 641
    :cond_15
    add-int/lit8 v14, v14, 0x1

    .line 642
    if-ne v14, v15, :cond_16

    .line 643
    const/4 v14, 0x0

    .line 636
    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 662
    :cond_17
    :try_start_e
    aget-object v13, v9, v14

    .line 664
    .local v13, "is":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    const/16 v16, 0x0

    .line 666
    :cond_18
    const/16 v17, 0x0

    .line 667
    .local v17, "produced":I
    :goto_9
    const-wide/16 v30, 0x0

    cmp-long v30, v20, v30

    if-lez v30, :cond_1a

    .line 669
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->checkTerminate()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    move-result v30

    if-eqz v30, :cond_19

    .line 670
    const/16 v23, 0x1

    .line 756
    if-nez v23, :cond_1

    .line 757
    monitor-enter p0

    .line 758
    const/16 v30, 0x0

    :try_start_f
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 759
    monitor-exit p0

    goto/16 :goto_1

    :catchall_6
    move-exception v30

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v30

    .line 673
    :cond_19
    :try_start_10
    iget-object v0, v13, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    move-object/from16 v18, v0

    .line 674
    .local v18, "q":Lrx/internal/util/RxRingBuffer;
    if-nez v18, :cond_1e

    .line 698
    .end local v18    # "q":Lrx/internal/util/RxRingBuffer;
    :cond_1a
    if-lez v17, :cond_1b

    .line 699
    if-nez v28, :cond_1f

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lrx/internal/operators/OperatorMerge$MergeProducer;->produced(I)J

    move-result-wide v20

    .line 704
    :goto_a
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    invoke-virtual {v13, v0, v1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->requestMore(J)V

    .line 707
    :cond_1b
    const-wide/16 v30, 0x0

    cmp-long v30, v20, v30

    if-eqz v30, :cond_1c

    if-nez v16, :cond_18

    .line 711
    :cond_1c
    iget-boolean v11, v13, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->done:Z

    .line 712
    .local v11, "innerDone":Z
    iget-object v12, v13, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    .line 713
    .local v12, "innerQueue":Lrx/internal/util/RxRingBuffer;
    if-eqz v11, :cond_21

    if-eqz v12, :cond_1d

    invoke-virtual {v12}, Lrx/internal/util/RxRingBuffer;->isEmpty()Z

    move-result v30

    if-eqz v30, :cond_21

    .line 714
    :cond_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->removeInner(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)V

    .line 715
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->checkTerminate()Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-result v30

    if-eqz v30, :cond_20

    .line 716
    const/16 v23, 0x1

    .line 756
    if-nez v23, :cond_1

    .line 757
    monitor-enter p0

    .line 758
    const/16 v30, 0x0

    :try_start_11
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 759
    monitor-exit p0

    goto/16 :goto_1

    :catchall_7
    move-exception v30

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    throw v30

    .line 677
    .end local v11    # "innerDone":Z
    .end local v12    # "innerQueue":Lrx/internal/util/RxRingBuffer;
    .restart local v18    # "q":Lrx/internal/util/RxRingBuffer;
    :cond_1e
    :try_start_12
    invoke-virtual/range {v18 .. v18}, Lrx/internal/util/RxRingBuffer;->poll()Ljava/lang/Object;

    move-result-object v16

    .line 678
    .restart local v16    # "o":Ljava/lang/Object;
    if-eqz v16, :cond_1a

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move-result-object v29

    .line 684
    .restart local v29    # "v":Ljava/lang/Object;, "TT;"
    :try_start_13
    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 695
    const-wide/16 v30, 0x1

    sub-long v20, v20, v30

    .line 696
    add-int/lit8 v17, v17, 0x1

    .line 697
    goto/16 :goto_9

    .line 685
    :catch_1
    move-exception v27

    .line 686
    .restart local v27    # "t":Ljava/lang/Throwable;
    const/16 v23, 0x1

    .line 687
    :try_start_14
    invoke-static/range {v27 .. v27}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 689
    :try_start_15
    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 691
    :try_start_16
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 756
    if-nez v23, :cond_1

    .line 757
    monitor-enter p0

    .line 758
    const/16 v30, 0x0

    :try_start_17
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 759
    monitor-exit p0

    goto/16 :goto_1

    :catchall_8
    move-exception v30

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    throw v30

    .line 691
    :catchall_9
    move-exception v30

    :try_start_18
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V

    throw v30

    .line 702
    .end local v16    # "o":Ljava/lang/Object;
    .end local v18    # "q":Lrx/internal/util/RxRingBuffer;
    .end local v27    # "t":Ljava/lang/Throwable;
    .end local v29    # "v":Ljava/lang/Object;, "TT;"
    :cond_1f
    const-wide v20, 0x7fffffffffffffffL

    goto/16 :goto_a

    .line 719
    .restart local v11    # "innerDone":Z
    .restart local v12    # "innerQueue":Lrx/internal/util/RxRingBuffer;
    :cond_20
    add-int/lit8 v19, v19, 0x1

    .line 720
    const/4 v10, 0x1

    .line 723
    :cond_21
    const-wide/16 v30, 0x0

    cmp-long v30, v20, v30

    if-nez v30, :cond_25

    .line 734
    .end local v11    # "innerDone":Z
    .end local v12    # "innerQueue":Lrx/internal/util/RxRingBuffer;
    .end local v13    # "is":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .end local v17    # "produced":I
    :cond_22
    move-object/from16 v0, p0

    iput v14, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastIndex:I

    .line 735
    aget-object v30, v9, v14

    move-object/from16 v0, v30

    iget-wide v0, v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->id:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->lastId:J

    .line 738
    .end local v7    # "i":I
    .end local v8    # "index":I
    .end local v14    # "j":I
    .end local v24    # "startId":J
    :cond_23
    if-lez v19, :cond_24

    .line 739
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->request(J)V

    .line 742
    :cond_24
    if-nez v10, :cond_0

    .line 746
    monitor-enter p0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    .line 747
    :try_start_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    move/from16 v30, v0

    if-nez v30, :cond_27

    .line 748
    const/16 v23, 0x1

    .line 749
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 750
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    .line 756
    if-nez v23, :cond_1

    .line 757
    monitor-enter p0

    .line 758
    const/16 v30, 0x0

    :try_start_1a
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 759
    monitor-exit p0

    goto/16 :goto_1

    :catchall_a
    move-exception v30

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    throw v30

    .line 728
    .restart local v7    # "i":I
    .restart local v8    # "index":I
    .restart local v11    # "innerDone":Z
    .restart local v12    # "innerQueue":Lrx/internal/util/RxRingBuffer;
    .restart local v13    # "is":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .restart local v14    # "j":I
    .restart local v17    # "produced":I
    .restart local v24    # "startId":J
    :cond_25
    add-int/lit8 v14, v14, 0x1

    .line 729
    if-ne v14, v15, :cond_26

    .line 730
    const/4 v14, 0x0

    .line 655
    :cond_26
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8

    .line 752
    .end local v7    # "i":I
    .end local v8    # "index":I
    .end local v11    # "innerDone":Z
    .end local v12    # "innerQueue":Lrx/internal/util/RxRingBuffer;
    .end local v13    # "is":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .end local v14    # "j":I
    .end local v17    # "produced":I
    .end local v24    # "startId":J
    :cond_27
    const/16 v30, 0x0

    :try_start_1b
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    .line 753
    monitor-exit p0

    goto/16 :goto_0

    :catchall_b
    move-exception v30

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    :try_start_1c
    throw v30
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 759
    .end local v4    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v5    # "d":Z
    .end local v9    # "inner":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .end local v10    # "innerCompleted":Z
    .end local v15    # "n":I
    .end local v19    # "replenishMain":I
    .end local v20    # "r":J
    .end local v26    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v28    # "unbounded":Z
    :catchall_c
    move-exception v30

    :try_start_1d
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    throw v30
.end method

.method protected emitScalar(Ljava/lang/Object;J)V
    .locals 4
    .param p2, "r"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 477
    .local v0, "skipFinal":Z
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 488
    :goto_0
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    .line 489
    :try_start_1
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lrx/internal/operators/OperatorMerge$MergeProducer;->produced(I)J

    .line 491
    :cond_0
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->requestMore(J)V

    .line 493
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 494
    const/4 v0, 0x1

    .line 495
    :try_start_2
    iget-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    if-nez v2, :cond_4

    .line 496
    const/4 v2, 0x0

    iput-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 497
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 502
    if-nez v0, :cond_1

    .line 503
    monitor-enter p0

    .line 504
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 505
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 516
    :cond_1
    :goto_1
    return-void

    .line 478
    :catch_0
    move-exception v1

    .line 479
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_4
    iget-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    if-nez v2, :cond_2

    .line 480
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 481
    const/4 v0, 0x1

    .line 482
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V

    .line 483
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 502
    if-nez v0, :cond_1

    .line 503
    monitor-enter p0

    .line 504
    const/4 v2, 0x0

    :try_start_5
    iput-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 505
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 486
    :cond_2
    :try_start_6
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateErrorQueue()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 502
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    if-nez v0, :cond_3

    .line 503
    monitor-enter p0

    .line 504
    const/4 v3, 0x0

    :try_start_7
    iput-boolean v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 505
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :cond_3
    throw v2

    :catchall_2
    move-exception v2

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v2

    .line 499
    :cond_4
    const/4 v2, 0x0

    :try_start_9
    iput-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    .line 500
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 502
    if-nez v0, :cond_5

    .line 503
    monitor-enter p0

    .line 504
    const/4 v2, 0x0

    :try_start_a
    iput-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 505
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 515
    :cond_5
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitLoop()V

    goto :goto_1

    .line 500
    :catchall_3
    move-exception v2

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 505
    :catchall_4
    move-exception v2

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v2

    :catchall_5
    move-exception v2

    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v2
.end method

.method protected emitScalar(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;J)V
    .locals 5
    .param p3, "r"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber",
            "<TT;>;TT;J)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "subscriber":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 365
    .local v0, "skipFinal":Z
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2, p2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 376
    :goto_0
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p3, v2

    if-eqz v2, :cond_0

    .line 377
    :try_start_1
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lrx/internal/operators/OperatorMerge$MergeProducer;->produced(I)J

    .line 379
    :cond_0
    const-wide/16 v2, 0x1

    invoke-virtual {p1, v2, v3}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->requestMore(J)V

    .line 381
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 382
    const/4 v0, 0x1

    .line 383
    :try_start_2
    iget-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    if-nez v2, :cond_4

    .line 384
    const/4 v2, 0x0

    iput-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 385
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 390
    if-nez v0, :cond_1

    .line 391
    monitor-enter p0

    .line 392
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 393
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 404
    :cond_1
    :goto_1
    return-void

    .line 366
    :catch_0
    move-exception v1

    .line 367
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_4
    iget-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->delayErrors:Z

    if-nez v2, :cond_2

    .line 368
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 369
    const/4 v0, 0x1

    .line 370
    invoke-virtual {p1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->unsubscribe()V

    .line 371
    invoke-virtual {p1, v1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 390
    if-nez v0, :cond_1

    .line 391
    monitor-enter p0

    .line 392
    const/4 v2, 0x0

    :try_start_5
    iput-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 393
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 374
    :cond_2
    :try_start_6
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateErrorQueue()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 390
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    if-nez v0, :cond_3

    .line 391
    monitor-enter p0

    .line 392
    const/4 v3, 0x0

    :try_start_7
    iput-boolean v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 393
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :cond_3
    throw v2

    :catchall_2
    move-exception v2

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v2

    .line 387
    :cond_4
    const/4 v2, 0x0

    :try_start_9
    iput-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->missed:Z

    .line 388
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 390
    if-nez v0, :cond_5

    .line 391
    monitor-enter p0

    .line 392
    const/4 v2, 0x0

    :try_start_a
    iput-boolean v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 393
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 403
    :cond_5
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitLoop()V

    goto :goto_1

    .line 388
    :catchall_3
    move-exception v2

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 393
    :catchall_4
    move-exception v2

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v2

    :catchall_5
    move-exception v2

    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v2
.end method

.method getOrCreateComposite()Lrx/subscriptions/CompositeSubscription;
    .locals 4

    .prologue
    .line 204
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    .line 205
    .local v0, "c":Lrx/subscriptions/CompositeSubscription;
    if-nez v0, :cond_1

    .line 206
    const/4 v2, 0x0

    .line 207
    .local v2, "shouldAdd":Z
    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    .line 209
    if-nez v0, :cond_0

    .line 210
    new-instance v1, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v1}, Lrx/subscriptions/CompositeSubscription;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .end local v0    # "c":Lrx/subscriptions/CompositeSubscription;
    .local v1, "c":Lrx/subscriptions/CompositeSubscription;
    :try_start_1
    iput-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->subscriptions:Lrx/subscriptions/CompositeSubscription;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 212
    const/4 v2, 0x1

    move-object v0, v1

    .line 214
    .end local v1    # "c":Lrx/subscriptions/CompositeSubscription;
    .restart local v0    # "c":Lrx/subscriptions/CompositeSubscription;
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    if-eqz v2, :cond_1

    .line 216
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->add(Lrx/Subscription;)V

    .line 219
    .end local v2    # "shouldAdd":Z
    :cond_1
    return-object v0

    .line 214
    .restart local v2    # "shouldAdd":Z
    :catchall_0
    move-exception v3

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .end local v0    # "c":Lrx/subscriptions/CompositeSubscription;
    .restart local v1    # "c":Lrx/subscriptions/CompositeSubscription;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "c":Lrx/subscriptions/CompositeSubscription;
    .restart local v0    # "c":Lrx/subscriptions/CompositeSubscription;
    goto :goto_0
.end method

.method getOrCreateErrorQueue()Ljava/util/Queue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 192
    .local v0, "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    if-nez v0, :cond_1

    .line 193
    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 195
    if-nez v0, :cond_0

    .line 196
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    .end local v0    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    .local v1, "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    :try_start_1
    iput-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->errors:Ljava/util/concurrent/ConcurrentLinkedQueue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 199
    .end local v1    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    .restart local v0    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 201
    :cond_1
    return-object v0

    .line 199
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    .restart local v1    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    .restart local v0    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 254
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->done:Z

    .line 255
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    .line 256
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 248
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateErrorQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->done:Z

    .line 250
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    .line 251
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 142
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    check-cast p1, Lrx/Observable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->onNext(Lrx/Observable;)V

    return-void
.end method

.method public onNext(Lrx/Observable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    if-nez p1, :cond_0

    .line 235
    .end local p1    # "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :goto_0
    return-void

    .line 227
    .restart local p1    # "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :cond_0
    instance-of v1, p1, Lrx/internal/util/ScalarSynchronousObservable;

    if-eqz v1, :cond_1

    .line 228
    check-cast p1, Lrx/internal/util/ScalarSynchronousObservable;

    .end local p1    # "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-virtual {p1}, Lrx/internal/util/ScalarSynchronousObservable;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->tryEmit(Ljava/lang/Object;)V

    goto :goto_0

    .line 230
    .restart local p1    # "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :cond_1
    new-instance v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    iget-wide v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->uniqueId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->uniqueId:J

    invoke-direct {v0, p0, v2, v3}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;-><init>(Lrx/internal/operators/OperatorMerge$MergeSubscriber;J)V

    .line 231
    .local v0, "inner":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->addInner(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)V

    .line 232
    invoke-virtual {p1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 233
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    goto :goto_0
.end method

.method protected queueScalar(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 447
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queue:Ljava/util/Queue;

    .line 448
    .local v1, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 449
    iget v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->maxConcurrent:I

    .line 450
    .local v0, "mc":I
    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    .line 451
    new-instance v1, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;

    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    sget v2, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v1, v2}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;-><init>(I)V

    .line 463
    .restart local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_0
    iput-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queue:Ljava/util/Queue;

    .line 465
    .end local v0    # "mc":I
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 466
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->unsubscribe()V

    .line 467
    new-instance v2, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v2}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-static {v2, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 471
    :goto_1
    return-void

    .line 453
    .restart local v0    # "mc":I
    :cond_1
    invoke-static {v0}, Lrx/internal/util/unsafe/Pow2;->isPowerOfTwo(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 454
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 455
    new-instance v1, Lrx/internal/util/unsafe/SpscArrayQueue;

    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-direct {v1, v0}, Lrx/internal/util/unsafe/SpscArrayQueue;-><init>(I)V

    .restart local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    goto :goto_0

    .line 457
    :cond_2
    new-instance v1, Lrx/internal/util/atomic/SpscAtomicArrayQueue;

    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-direct {v1, v0}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;-><init>(I)V

    .restart local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    goto :goto_0

    .line 460
    :cond_3
    new-instance v1, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;

    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-direct {v1, v0}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;-><init>(I)V

    .restart local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    goto :goto_0

    .line 470
    .end local v0    # "mc":I
    :cond_4
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    goto :goto_1
.end method

.method protected queueScalar(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "subscriber":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v1, p1, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    .line 340
    .local v1, "q":Lrx/internal/util/RxRingBuffer;
    if-nez v1, :cond_0

    .line 341
    invoke-static {}, Lrx/internal/util/RxRingBuffer;->getSpscInstance()Lrx/internal/util/RxRingBuffer;

    move-result-object v1

    .line 342
    invoke-virtual {p1, v1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->add(Lrx/Subscription;)V

    .line 343
    iput-object v1, p1, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    .line 346
    :cond_0
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, p2}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/internal/util/RxRingBuffer;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 358
    invoke-virtual {p0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    .line 359
    :cond_1
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "ex":Lrx/exceptions/MissingBackpressureException;
    invoke-virtual {p1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->unsubscribe()V

    .line 349
    invoke-virtual {p1, v0}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 351
    .end local v0    # "ex":Lrx/exceptions/MissingBackpressureException;
    :catch_1
    move-exception v0

    .line 352
    .local v0, "ex":Ljava/lang/IllegalStateException;
    invoke-virtual {p1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 353
    invoke-virtual {p1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->unsubscribe()V

    .line 354
    invoke-virtual {p1, v0}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method removeInner(Lrx/internal/operators/OperatorMerge$InnerSubscriber;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "inner":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    iget-object v5, p1, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->queue:Lrx/internal/util/RxRingBuffer;

    .line 271
    .local v5, "q":Lrx/internal/util/RxRingBuffer;
    if-eqz v5, :cond_0

    .line 272
    invoke-virtual {v5}, Lrx/internal/util/RxRingBuffer;->release()V

    .line 276
    :cond_0
    iget-object v6, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->subscriptions:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v6, p1}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    .line 277
    iget-object v7, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerGuard:Ljava/lang/Object;

    monitor-enter v7

    .line 278
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 279
    .local v0, "a":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    array-length v4, v0

    .line 280
    .local v4, "n":I
    const/4 v3, -0x1

    .line 282
    .local v3, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 283
    aget-object v6, v0, v2

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 284
    move v3, v2

    .line 288
    :cond_1
    if-gez v3, :cond_3

    .line 289
    monitor-exit v7

    .line 300
    :goto_1
    return-void

    .line 282
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    :cond_3
    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    .line 292
    sget-object v6, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->EMPTY:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    iput-object v6, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 293
    monitor-exit v7

    goto :goto_1

    .line 299
    .end local v0    # "a":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "n":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 295
    .restart local v0    # "a":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "n":I
    :cond_4
    add-int/lit8 v6, v4, -0x1

    :try_start_1
    new-array v1, v6, [Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 296
    .local v1, "b":[Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "[Lrx/internal/operators/OperatorMerge$InnerSubscriber<*>;"
    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v6, v1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    add-int/lit8 v6, v3, 0x1

    sub-int v8, v4, v3

    add-int/lit8 v8, v8, -0x1

    invoke-static {v0, v6, v1, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    iput-object v1, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->innerSubscribers:[Lrx/internal/operators/OperatorMerge$InnerSubscriber;

    .line 299
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public requestMore(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 407
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->request(J)V

    .line 408
    return-void
.end method

.method tryEmit(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const-wide/16 v4, 0x0

    .line 422
    const/4 v2, 0x0

    .line 423
    .local v2, "success":Z
    iget-object v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v3}, Lrx/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v0

    .line 424
    .local v0, "r":J
    cmp-long v3, v0, v4

    if-eqz v3, :cond_1

    .line 425
    monitor-enter p0

    .line 427
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v3}, Lrx/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v0

    .line 428
    iget-boolean v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    if-nez v3, :cond_0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    .line 429
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 430
    const/4 v2, 0x1

    .line 432
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    :cond_1
    if-eqz v2, :cond_2

    .line 435
    invoke-virtual {p0, p1, v0, v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitScalar(Ljava/lang/Object;J)V

    .line 439
    :goto_0
    return-void

    .line 432
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 437
    :cond_2
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queueScalar(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method tryEmit(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$InnerSubscriber",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    .local p1, "subscriber":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const-wide/16 v4, 0x0

    .line 314
    const/4 v2, 0x0

    .line 315
    .local v2, "success":Z
    iget-object v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v3}, Lrx/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v0

    .line 316
    .local v0, "r":J
    cmp-long v3, v0, v4

    if-eqz v3, :cond_1

    .line 317
    monitor-enter p0

    .line 319
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-virtual {v3}, Lrx/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v0

    .line 320
    iget-boolean v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    if-nez v3, :cond_0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    .line 321
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitting:Z

    .line 322
    const/4 v2, 0x1

    .line 324
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :cond_1
    if-eqz v2, :cond_2

    .line 327
    invoke-virtual {p0, p1, p2, v0, v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emitScalar(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;J)V

    .line 331
    :goto_0
    return-void

    .line 324
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 329
    :cond_2
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->queueScalar(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;)V

    goto :goto_0
.end method
