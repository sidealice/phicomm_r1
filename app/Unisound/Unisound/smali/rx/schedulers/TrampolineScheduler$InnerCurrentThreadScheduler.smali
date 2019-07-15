.class Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;
.super Lrx/Scheduler$Worker;
.source "TrampolineScheduler.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/TrampolineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerCurrentThreadScheduler"
.end annotation


# instance fields
.field final counter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final innerSubscription:Lrx/subscriptions/BooleanSubscription;

.field private final queue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lrx/schedulers/TrampolineScheduler$TimedAction;",
            ">;"
        }
    .end annotation
.end field

.field private final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lrx/Scheduler$Worker;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 51
    new-instance v0, Lrx/subscriptions/BooleanSubscription;

    invoke-direct {v0}, Lrx/subscriptions/BooleanSubscription;-><init>()V

    iput-object v0, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->innerSubscription:Lrx/subscriptions/BooleanSubscription;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lrx/schedulers/TrampolineScheduler$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/schedulers/TrampolineScheduler$1;

    .prologue
    .line 47
    invoke-direct {p0}, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;)Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 1
    .param p0, "x0"    # Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;

    .prologue
    .line 47
    iget-object v0, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    return-object v0
.end method

.method private enqueue(Lrx/functions/Action0;J)Lrx/Subscription;
    .locals 6
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "execTime"    # J

    .prologue
    .line 67
    iget-object v2, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->innerSubscription:Lrx/subscriptions/BooleanSubscription;

    invoke-virtual {v2}, Lrx/subscriptions/BooleanSubscription;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v2

    .line 83
    :goto_0
    return-object v2

    .line 70
    :cond_0
    new-instance v1, Lrx/schedulers/TrampolineScheduler$TimedAction;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, p1, v2, v3, v4}, Lrx/schedulers/TrampolineScheduler$TimedAction;-><init>(Lrx/functions/Action0;Ljava/lang/Long;ILrx/schedulers/TrampolineScheduler$1;)V

    .line 71
    .local v1, "timedAction":Lrx/schedulers/TrampolineScheduler$TimedAction;
    iget-object v2, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v2, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    if-nez v2, :cond_3

    .line 75
    :cond_1
    iget-object v2, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/schedulers/TrampolineScheduler$TimedAction;

    .line 76
    .local v0, "polled":Lrx/schedulers/TrampolineScheduler$TimedAction;
    if-eqz v0, :cond_2

    .line 77
    iget-object v2, v0, Lrx/schedulers/TrampolineScheduler$TimedAction;->action:Lrx/functions/Action0;

    invoke-interface {v2}, Lrx/functions/Action0;->call()V

    .line 79
    :cond_2
    iget-object v2, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-gtz v2, :cond_1

    .line 80
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v2

    goto :goto_0

    .line 83
    .end local v0    # "polled":Lrx/schedulers/TrampolineScheduler$TimedAction;
    :cond_3
    new-instance v2, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler$1;

    invoke-direct {v2, p0, v1}, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler$1;-><init>(Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;Lrx/schedulers/TrampolineScheduler$TimedAction;)V

    invoke-static {v2}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->innerSubscription:Lrx/subscriptions/BooleanSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/BooleanSubscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public schedule(Lrx/functions/Action0;)Lrx/Subscription;
    .locals 2
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 56
    invoke-virtual {p0}, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->now()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->enqueue(Lrx/functions/Action0;J)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .locals 6
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 61
    invoke-virtual {p0}, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->now()J

    move-result-wide v2

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long v0, v2, v4

    .line 63
    .local v0, "execTime":J
    new-instance v2, Lrx/schedulers/SleepingAction;

    invoke-direct {v2, p1, p0, v0, v1}, Lrx/schedulers/SleepingAction;-><init>(Lrx/functions/Action0;Lrx/Scheduler$Worker;J)V

    invoke-direct {p0, v2, v0, v1}, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->enqueue(Lrx/functions/Action0;J)Lrx/Subscription;

    move-result-object v2

    return-object v2
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->innerSubscription:Lrx/subscriptions/BooleanSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/BooleanSubscription;->unsubscribe()V

    .line 97
    return-void
.end method
