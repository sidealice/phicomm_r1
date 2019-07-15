.class final Lrx/internal/operators/TakeLastQueueProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "TakeLastQueueProducer.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;"
    }
.end annotation


# instance fields
.field private final deque:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile emittingStarted:Z

.field private final notification:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/NotificationLite;Ljava/util/Deque;Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;",
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lrx/internal/operators/TakeLastQueueProducer;, "Lrx/internal/operators/TakeLastQueueProducer<TT;>;"
    .local p1, "n":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .local p2, "q":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/Object;>;"
    .local p3, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->emittingStarted:Z

    .line 34
    iput-object p1, p0, Lrx/internal/operators/TakeLastQueueProducer;->notification:Lrx/internal/operators/NotificationLite;

    .line 35
    iput-object p2, p0, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    .line 36
    iput-object p3, p0, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    .line 37
    return-void
.end method


# virtual methods
.method emit(J)V
    .locals 19
    .param p1, "previousRequested"    # J

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/TakeLastQueueProducer;, "Lrx/internal/operators/TakeLastQueueProducer<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/TakeLastQueueProducer;->get()J

    move-result-wide v14

    const-wide v16, 0x7fffffffffffffffL

    cmp-long v13, v14, v16

    if-nez v13, :cond_3

    .line 67
    const-wide/16 v14, 0x0

    cmp-long v13, p1, v14

    if-nez v13, :cond_0

    .line 69
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    invoke-interface {v13}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 70
    .local v12, "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    invoke-virtual {v13}, Lrx/Subscriber;->isUnsubscribed()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    if-eqz v13, :cond_1

    .line 77
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    invoke-interface {v13}, Ljava/util/Deque;->clear()V

    .line 123
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v12    # "value":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-void

    .line 72
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/TakeLastQueueProducer;->notification:Lrx/internal/operators/NotificationLite;

    move-object/from16 v0, p0

    iget-object v14, v0, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    invoke-virtual {v13, v14, v12}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v12    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    invoke-static {v2, v13}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    invoke-interface {v13}, Ljava/util/Deque;->clear()V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    invoke-interface {v13}, Ljava/util/Deque;->clear()V

    goto :goto_1

    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    invoke-interface {v14}, Ljava/util/Deque;->clear()V

    throw v13

    .line 84
    :cond_3
    const-wide/16 v14, 0x0

    cmp-long v13, p1, v14

    if-nez v13, :cond_0

    .line 90
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/TakeLastQueueProducer;->get()J

    move-result-wide v8

    .line 91
    .local v8, "numToEmit":J
    const/4 v3, 0x0

    .line 93
    .local v3, "emitted":I
    :goto_2
    const-wide/16 v14, 0x1

    sub-long/2addr v8, v14

    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-ltz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    invoke-interface {v13}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v5

    .local v5, "o":Ljava/lang/Object;
    if-eqz v5, :cond_5

    .line 94
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    invoke-virtual {v13}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v13

    if-nez v13, :cond_0

    .line 97
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/TakeLastQueueProducer;->notification:Lrx/internal/operators/NotificationLite;

    move-object/from16 v0, p0

    iget-object v14, v0, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    invoke-virtual {v13, v14, v5}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 105
    .end local v5    # "o":Ljava/lang/Object;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/TakeLastQueueProducer;->get()J

    move-result-wide v10

    .line 106
    .local v10, "oldRequested":J
    int-to-long v14, v3

    sub-long v6, v10, v14

    .line 107
    .local v6, "newRequested":J
    const-wide v14, 0x7fffffffffffffffL

    cmp-long v13, v10, v14

    if-eqz v13, :cond_4

    .line 112
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v6, v7}, Lrx/internal/operators/TakeLastQueueProducer;->compareAndSet(JJ)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 113
    const-wide/16 v14, 0x0

    cmp-long v13, v6, v14

    if-nez v13, :cond_4

    goto/16 :goto_1
.end method

.method public request(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/TakeLastQueueProducer;, "Lrx/internal/operators/TakeLastQueueProducer<TT;>;"
    const-wide v4, 0x7fffffffffffffffL

    .line 48
    invoke-virtual {p0}, Lrx/internal/operators/TakeLastQueueProducer;->get()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    cmp-long v2, p1, v4

    if-nez v2, :cond_2

    .line 53
    invoke-virtual {p0, v4, v5}, Lrx/internal/operators/TakeLastQueueProducer;->getAndSet(J)J

    move-result-wide v0

    .line 57
    .local v0, "_c":J
    :goto_1
    iget-boolean v2, p0, Lrx/internal/operators/TakeLastQueueProducer;->emittingStarted:Z

    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/TakeLastQueueProducer;->emit(J)V

    goto :goto_0

    .line 55
    .end local v0    # "_c":J
    :cond_2
    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    .restart local v0    # "_c":J
    goto :goto_1
.end method

.method startEmitting()V
    .locals 2

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/TakeLastQueueProducer;, "Lrx/internal/operators/TakeLastQueueProducer<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->emittingStarted:Z

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->emittingStarted:Z

    .line 42
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/TakeLastQueueProducer;->emit(J)V

    .line 44
    :cond_0
    return-void
.end method
