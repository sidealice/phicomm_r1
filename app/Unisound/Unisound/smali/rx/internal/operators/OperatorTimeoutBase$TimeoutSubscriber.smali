.class final Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;
.super Lrx/Subscriber;
.source "OperatorTimeoutBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorTimeoutBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutSubscriber"
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
.field final actual:Ljava/util/concurrent/atomic/AtomicLong;

.field private final gate:Ljava/lang/Object;

.field private final inner:Lrx/Scheduler$Worker;

.field private final other:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final serial:Lrx/subscriptions/SerialSubscription;

.field private final serializedSubscriber:Lrx/observers/SerializedSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observers/SerializedSubscriber",
            "<TT;>;"
        }
    .end annotation
.end field

.field final terminated:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final timeoutStub:Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/observers/SerializedSubscriber;Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;Lrx/subscriptions/SerialSubscription;Lrx/Observable;Lrx/Scheduler$Worker;)V
    .locals 1
    .param p3, "serial"    # Lrx/subscriptions/SerialSubscription;
    .param p5, "inner"    # Lrx/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observers/SerializedSubscriber",
            "<TT;>;",
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub",
            "<TT;>;",
            "Lrx/subscriptions/SerialSubscription;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    .local p1, "serializedSubscriber":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<TT;>;"
    .local p2, "timeoutStub":Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub<TT;>;"
    .local p4, "other":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->gate:Ljava/lang/Object;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->terminated:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->actual:Ljava/util/concurrent/atomic/AtomicLong;

    .line 102
    iput-object p1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    .line 103
    iput-object p2, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->timeoutStub:Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;

    .line 104
    iput-object p3, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    .line 105
    iput-object p4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->other:Lrx/Observable;

    .line 106
    iput-object p5, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->inner:Lrx/Scheduler$Worker;

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Lrx/observers/SerializedSubscriber;Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;Lrx/subscriptions/SerialSubscription;Lrx/Observable;Lrx/Scheduler$Worker;Lrx/internal/operators/OperatorTimeoutBase$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/observers/SerializedSubscriber;
    .param p2, "x1"    # Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;
    .param p3, "x2"    # Lrx/subscriptions/SerialSubscription;
    .param p4, "x3"    # Lrx/Observable;
    .param p5, "x4"    # Lrx/Scheduler$Worker;
    .param p6, "x5"    # Lrx/internal/operators/OperatorTimeoutBase$1;

    .prologue
    .line 80
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    invoke-direct/range {p0 .. p5}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;-><init>(Lrx/observers/SerializedSubscriber;Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;Lrx/subscriptions/SerialSubscription;Lrx/Observable;Lrx/Scheduler$Worker;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .prologue
    .line 140
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    const/4 v0, 0x0

    .line 141
    .local v0, "onCompletedWins":Z
    iget-object v2, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->gate:Ljava/lang/Object;

    monitor-enter v2

    .line 142
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->terminated:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 145
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    if-eqz v0, :cond_1

    .line 147
    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    .line 148
    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v1}, Lrx/observers/SerializedSubscriber;->onCompleted()V

    .line 150
    :cond_1
    return-void

    .line 145
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    const/4 v0, 0x0

    .line 127
    .local v0, "onErrorWins":Z
    iget-object v2, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->gate:Ljava/lang/Object;

    monitor-enter v2

    .line 128
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->terminated:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 129
    const/4 v0, 0x1

    .line 131
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    if-eqz v0, :cond_1

    .line 133
    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    .line 134
    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v1, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 136
    :cond_1
    return-void

    .line 131
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 112
    .local v0, "onNextWins":Z
    iget-object v2, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->gate:Ljava/lang/Object;

    monitor-enter v2

    .line 113
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->terminated:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_0

    .line 114
    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->actual:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 115
    const/4 v0, 0x1

    .line 117
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    if-eqz v0, :cond_1

    .line 119
    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v1, p1}, Lrx/observers/SerializedSubscriber;->onNext(Ljava/lang/Object;)V

    .line 120
    iget-object v2, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->timeoutStub:Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;

    iget-object v3, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->actual:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->inner:Lrx/Scheduler$Worker;

    invoke-interface {v1, p0, v3, p1, v4}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscription;

    invoke-virtual {v2, v1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 122
    :cond_1
    return-void

    .line 117
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onTimeout(J)V
    .locals 9
    .param p1, "seqId"    # J

    .prologue
    .line 153
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    move-wide v0, p1

    .line 154
    .local v0, "expected":J
    const/4 v2, 0x0

    .line 155
    .local v2, "timeoutWins":Z
    iget-object v4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->gate:Ljava/lang/Object;

    monitor-enter v4

    .line 156
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->actual:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    cmp-long v3, v0, v6

    if-nez v3, :cond_0

    iget-object v3, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->terminated:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 157
    const/4 v2, 0x1

    .line 159
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    if-eqz v2, :cond_1

    .line 161
    iget-object v3, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->other:Lrx/Observable;

    if-nez v3, :cond_2

    .line 162
    iget-object v3, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {v3, v4}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 168
    :cond_1
    :goto_0
    return-void

    .line 159
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 164
    :cond_2
    iget-object v3, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->other:Lrx/Observable;

    iget-object v4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v3, v4}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 165
    iget-object v3, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    iget-object v4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v3, v4}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    goto :goto_0
.end method
