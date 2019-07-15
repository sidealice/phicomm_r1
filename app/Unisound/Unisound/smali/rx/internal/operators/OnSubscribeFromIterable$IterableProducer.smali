.class final Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OnSubscribeFromIterable.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IterableProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7928e15851eba4daL


# instance fields
.field private final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final o:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/Subscriber;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Ljava/util/Iterator",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;, "Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer<TT;>;"
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 59
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->o:Lrx/Subscriber;

    .line 60
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->it:Ljava/util/Iterator;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lrx/Subscriber;Ljava/util/Iterator;Lrx/internal/operators/OnSubscribeFromIterable$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/Subscriber;
    .param p2, "x1"    # Ljava/util/Iterator;
    .param p3, "x2"    # Lrx/internal/operators/OnSubscribeFromIterable$1;

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;, "Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer<TT;>;"
    invoke-direct {p0, p1, p2}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;-><init>(Lrx/Subscriber;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method fastpath()V
    .locals 3

    .prologue
    .line 120
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;, "Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->o:Lrx/Subscriber;

    .line 121
    .local v1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->it:Ljava/util/Iterator;

    .line 124
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    :goto_0
    invoke-virtual {v1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    :cond_0
    :goto_1
    return-void

    .line 126
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {v1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    goto :goto_1
.end method

.method public request(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;, "Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer<TT;>;"
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    .line 65
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->get()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    cmp-long v0, p1, v4

    if-nez v0, :cond_2

    invoke-virtual {p0, v2, v3, v4, v5}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->fastpath()V

    goto :goto_0

    .line 72
    :cond_2
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->slowpath(J)V

    goto :goto_0
.end method

.method slowpath(J)V
    .locals 11
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;, "Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer<TT;>;"
    const-wide/16 v8, 0x0

    .line 80
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->o:Lrx/Subscriber;

    .line 81
    .local v1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->it:Ljava/util/Iterator;

    .line 83
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    move-wide v4, p1

    .line 91
    .local v4, "r":J
    :cond_0
    move-wide v2, v4

    .line 93
    .local v2, "numToEmit":J
    :goto_0
    invoke-virtual {v1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 112
    :cond_1
    :goto_1
    return-void

    .line 95
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 96
    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    cmp-long v6, v2, v8

    if-ltz v6, :cond_4

    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {v1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v6

    if-nez v6, :cond_1

    .line 101
    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    goto :goto_1

    .line 108
    :cond_4
    neg-long v6, v4

    invoke-virtual {p0, v6, v7}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;->addAndGet(J)J

    move-result-wide v4

    .line 109
    cmp-long v6, v4, v8

    if-nez v6, :cond_0

    goto :goto_1
.end method
