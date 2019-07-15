.class final Lrx/internal/operators/OperatorReplay$InnerProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerProducer"
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
.field static final UNSUBSCRIBED:J = -0x8000000000000000L

.field private static final serialVersionUID:J = -0x3dcf6c3b2e70d8baL


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field emitting:Z

.field index:Ljava/lang/Object;

.field missed:Z

.field final parent:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorReplay$ReplaySubscriber",
            "<TT;>;"
        }
    .end annotation
.end field

.field final totalRequested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorReplay$ReplaySubscriber;Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$ReplaySubscriber",
            "<TT;>;",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 595
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    .local p1, "parent":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 596
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->parent:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    .line 597
    iput-object p2, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->child:Lrx/Subscriber;

    .line 598
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 599
    return-void
.end method


# virtual methods
.method addTotalRequested(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .line 650
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :cond_0
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 651
    .local v0, "r":J
    add-long v2, v0, p1

    .line 652
    .local v2, "u":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 653
    const-wide v2, 0x7fffffffffffffffL

    .line 655
    :cond_1
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 656
    return-void
.end method

.method index()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()TU;"
        }
    .end annotation

    .prologue
    .line 725
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;

    return-object v0
.end method

.method public isUnsubscribed()Z
    .locals 4

    .prologue
    .line 695
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$InnerProducer;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public produced(J)J
    .locals 11
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const-wide/16 v8, 0x0

    const-wide/high16 v4, -0x8000000000000000L

    .line 668
    cmp-long v6, p1, v8

    if-gtz v6, :cond_0

    .line 669
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Cant produce zero or less"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 673
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$InnerProducer;->get()J

    move-result-wide v0

    .line 675
    .local v0, "r":J
    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    move-wide v2, v4

    .line 687
    :goto_0
    return-wide v2

    .line 679
    :cond_1
    sub-long v2, v0, p1

    .line 681
    .local v2, "u":J
    cmp-long v6, v2, v8

    if-gez v6, :cond_2

    .line 682
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "More produced ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") than requested ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 685
    :cond_2
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/OperatorReplay$InnerProducer;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0
.end method

.method public request(J)V
    .locals 9
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const-wide/16 v6, 0x0

    .line 604
    cmp-long v4, p1, v6

    if-gez v4, :cond_1

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$InnerProducer;->get()J

    move-result-wide v0

    .line 614
    .local v0, "r":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 618
    cmp-long v4, v0, v6

    if-ltz v4, :cond_2

    cmp-long v4, p1, v6

    if-eqz v4, :cond_0

    .line 622
    :cond_2
    add-long v2, v0, p1

    .line 624
    .local v2, "u":J
    cmp-long v4, v2, v6

    if-gez v4, :cond_3

    .line 626
    const-wide v2, 0x7fffffffffffffffL

    .line 629
    :cond_3
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/OperatorReplay$InnerProducer;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 631
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorReplay$InnerProducer;->addTotalRequested(J)V

    .line 634
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->parent:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    invoke-virtual {v4}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->manageRequests()V

    .line 636
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->parent:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    iget-object v4, v4, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-interface {v4, p0}, Lrx/internal/operators/OperatorReplay$ReplayBuffer;->replay(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 6

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const-wide/high16 v4, -0x8000000000000000L

    .line 699
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$InnerProducer;->get()J

    move-result-wide v0

    .line 701
    .local v0, "r":J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 706
    invoke-virtual {p0, v4, v5}, Lrx/internal/operators/OperatorReplay$InnerProducer;->getAndSet(J)J

    move-result-wide v0

    .line 708
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 710
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->parent:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    invoke-virtual {v2, p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->remove(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    .line 715
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->parent:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    invoke-virtual {v2}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->manageRequests()V

    .line 718
    :cond_0
    return-void
.end method
