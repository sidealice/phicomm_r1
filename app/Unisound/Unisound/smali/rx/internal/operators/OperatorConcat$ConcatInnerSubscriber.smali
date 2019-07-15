.class Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;
.super Lrx/Subscriber;
.source "OperatorConcat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorConcat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConcatInnerSubscriber"
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
.field private final arbiter:Lrx/internal/producers/ProducerArbiter;

.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final once:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final parent:Lrx/internal/operators/OperatorConcat$ConcatSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorConcat$ConcatSubscriber",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;Lrx/Subscriber;Lrx/internal/producers/ProducerArbiter;)V
    .locals 1
    .param p3, "arbiter"    # Lrx/internal/producers/ProducerArbiter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorConcat$ConcatSubscriber",
            "<TT;>;",
            "Lrx/Subscriber",
            "<TT;>;",
            "Lrx/internal/producers/ProducerArbiter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber<TT;>;"
    .local p1, "parent":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 188
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;->once:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 192
    iput-object p1, p0, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;->parent:Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    .line 193
    iput-object p2, p0, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;->child:Lrx/Subscriber;

    .line 194
    iput-object p3, p0, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    .line 195
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    .line 214
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;->once:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;->parent:Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->completeInner()V

    .line 218
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 206
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;->once:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;->parent:Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 210
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;->parent:Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    invoke-static {v0}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;->access$200(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;)V

    .line 201
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lrx/internal/producers/ProducerArbiter;->produced(J)V

    .line 202
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 222
    .local p0, "this":Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    .line 223
    return-void
.end method
