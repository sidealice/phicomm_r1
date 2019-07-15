.class final Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;
.super Lrx/Subscriber;
.source "OperatorObserveOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorObserveOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ObserveOnSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final action:Lrx/functions/Action0;

.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final counter:Ljava/util/concurrent/atomic/AtomicLong;

.field volatile error:Ljava/lang/Throwable;

.field volatile finished:Z

.field final on:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final recursiveScheduler:Lrx/Scheduler$Worker;

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final scheduledUnsubscribe:Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;


# direct methods
.method public constructor <init>(Lrx/Scheduler;Lrx/Subscriber;)V
    .locals 2
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 75
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->on:Lrx/internal/operators/NotificationLite;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 158
    new-instance v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$2;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$2;-><init>(Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->action:Lrx/functions/Action0;

    .line 91
    iput-object p2, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    .line 92
    invoke-virtual {p1}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lrx/Scheduler$Worker;

    .line 93
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lrx/internal/util/unsafe/SpscArrayQueue;

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Lrx/internal/util/unsafe/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Ljava/util/Queue;

    .line 98
    :goto_0
    new-instance v0, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;

    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lrx/Scheduler$Worker;

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;-><init>(Lrx/Scheduler$Worker;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->scheduledUnsubscribe:Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;

    .line 99
    return-void

    .line 96
    :cond_0
    new-instance v0, Lrx/internal/util/SynchronizedQueue;

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Lrx/internal/util/SynchronizedQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Ljava/util/Queue;

    goto :goto_0
.end method


# virtual methods
.method init()V
    .locals 2

    .prologue
    .line 104
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->scheduledUnsubscribe:Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 105
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;-><init>(Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 114
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 115
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 116
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 138
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    if-eqz v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    .line 142
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->schedule()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 147
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iput-object p1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->error:Ljava/lang/Throwable;

    .line 152
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->unsubscribe()V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    .line 155
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->schedule()V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Ljava/util/Queue;

    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->schedule()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 121
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->request(J)V

    .line 122
    return-void
.end method

.method pollQueue()V
    .locals 14

    .prologue
    .line 175
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    const/4 v0, 0x0

    .line 176
    .local v0, "emitted":I
    iget-object v3, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 177
    .local v3, "localRequested":Ljava/util/concurrent/atomic/AtomicLong;
    iget-object v2, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 179
    .local v2, "localCounter":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_0
    const-wide/16 v10, 0x1

    invoke-virtual {v2, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 180
    const-wide/16 v6, 0x0

    .line 181
    .local v6, "produced":J
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    .line 183
    .local v8, "r":J
    :goto_0
    iget-object v5, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v5}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 220
    :cond_1
    :goto_1
    return-void

    .line 186
    :cond_2
    iget-boolean v5, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->finished:Z

    if-eqz v5, :cond_4

    .line 187
    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->error:Ljava/lang/Throwable;

    .local v1, "error":Ljava/lang/Throwable;
    if-eqz v1, :cond_3

    .line 190
    iget-object v5, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->clear()V

    .line 191
    iget-object v5, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v5, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 194
    :cond_3
    iget-object v5, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 195
    iget-object v5, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v5}, Lrx/Subscriber;->onCompleted()V

    goto :goto_1

    .line 199
    .end local v1    # "error":Ljava/lang/Throwable;
    :cond_4
    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_5

    .line 200
    iget-object v5, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->queue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    .line 201
    .local v4, "o":Ljava/lang/Object;
    if-eqz v4, :cond_5

    .line 202
    iget-object v5, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->child:Lrx/Subscriber;

    iget-object v10, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v10, v4}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v10}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 203
    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    .line 204
    add-int/lit8 v0, v0, 0x1

    .line 205
    const-wide/16 v10, 0x1

    add-long/2addr v6, v10

    .line 209
    goto :goto_0

    .line 213
    .end local v4    # "o":Ljava/lang/Object;
    :cond_5
    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-lez v5, :cond_6

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v5, v10, v12

    if-eqz v5, :cond_6

    .line 214
    neg-long v10, v6

    invoke-virtual {v3, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 216
    :cond_6
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-gtz v5, :cond_0

    .line 217
    if-lez v0, :cond_1

    .line 218
    int-to-long v10, v0

    invoke-virtual {p0, v10, v11}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->request(J)V

    goto :goto_1
.end method

.method protected schedule()V
    .locals 4

    .prologue
    .line 168
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->recursiveScheduler:Lrx/Scheduler$Worker;

    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->action:Lrx/functions/Action0;

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 171
    :cond_0
    return-void
.end method
