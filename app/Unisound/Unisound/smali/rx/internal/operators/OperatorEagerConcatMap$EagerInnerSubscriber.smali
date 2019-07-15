.class final Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;
.super Lrx/Subscriber;
.source "OperatorEagerConcatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorEagerConcatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EagerInnerSubscriber"
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
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final parent:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber",
            "<*TT;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;I)V
    .locals 4
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber",
            "<*TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TT;>;"
    .local p1, "parent":Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber<*TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 281
    iput-object p1, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->parent:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;

    .line 283
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    new-instance v0, Lrx/internal/util/unsafe/SpscArrayQueue;

    invoke-direct {v0, p2}, Lrx/internal/util/unsafe/SpscArrayQueue;-><init>(I)V

    .line 288
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    :goto_0
    iput-object v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->queue:Ljava/util/Queue;

    .line 289
    int-to-long v2, p2

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->request(J)V

    .line 290
    return-void

    .line 286
    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    :cond_0
    new-instance v0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;

    invoke-direct {v0, p2}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;-><init>(I)V

    .restart local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    goto :goto_0
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 307
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->done:Z

    .line 308
    iget-object v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->parent:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->drain()V

    .line 309
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 300
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TT;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->error:Ljava/lang/Throwable;

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->done:Z

    .line 302
    iget-object v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->parent:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->drain()V

    .line 303
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 295
    iget-object v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->parent:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->drain()V

    .line 296
    return-void
.end method

.method requestMore(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 312
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TT;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber;->request(J)V

    .line 313
    return-void
.end method
