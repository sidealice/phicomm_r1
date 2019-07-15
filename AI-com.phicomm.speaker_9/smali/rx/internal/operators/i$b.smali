.class final Lrx/internal/operators/i$b;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/e;
.implements Lrx/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/e;",
        "Lrx/j;"
    }
.end annotation


# instance fields
.field final a:Lrx/internal/operators/i$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/i$e<",
            "TT;>;"
        }
    .end annotation
.end field

.field b:Lrx/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i<",
            "-TT;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Object;

.field final d:Ljava/util/concurrent/atomic/AtomicLong;

.field e:Z

.field f:Z


# direct methods
.method public constructor <init>(Lrx/internal/operators/i$e;Lrx/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/i$e<",
            "TT;>;",
            "Lrx/i<",
            "-TT;>;)V"
        }
    .end annotation

    .line 666
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 667
    iput-object p1, p0, Lrx/internal/operators/i$b;->a:Lrx/internal/operators/i$e;

    .line 668
    iput-object p2, p0, Lrx/internal/operators/i$b;->b:Lrx/i;

    .line 669
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/i$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()TU;"
        }
    .end annotation

    .line 798
    iget-object v0, p0, Lrx/internal/operators/i$b;->c:Ljava/lang/Object;

    return-object v0
.end method

.method a(J)V
    .locals 7

    .line 721
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/i$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    add-long v2, v0, p1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    .line 726
    :cond_1
    iget-object v4, p0, Lrx/internal/operators/i$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public b(J)J
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 740
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cant produce zero or less"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 744
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/i$b;->get()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    return-wide v4

    :cond_1
    sub-long v4, v2, p1

    cmp-long v6, v4, v0

    if-gez v6, :cond_2

    .line 753
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "More produced ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") than requested ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 756
    :cond_2
    invoke-virtual {p0, v2, v3, v4, v5}, Lrx/internal/operators/i$b;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    return-wide v4
.end method

.method public isUnsubscribed()Z
    .locals 5

    .line 766
    invoke-virtual {p0}, Lrx/internal/operators/i$b;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public request(J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-void

    .line 683
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/i$b;->get()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    return-void

    :cond_1
    cmp-long v4, v2, v0

    if-ltz v4, :cond_2

    cmp-long v4, p1, v0

    if-nez v4, :cond_2

    return-void

    :cond_2
    add-long v4, v2, p1

    cmp-long v6, v4, v0

    if-gez v6, :cond_3

    const-wide v4, 0x7fffffffffffffffL

    .line 700
    :cond_3
    invoke-virtual {p0, v2, v3, v4, v5}, Lrx/internal/operators/i$b;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 702
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/i$b;->a(J)V

    .line 705
    iget-object p1, p0, Lrx/internal/operators/i$b;->a:Lrx/internal/operators/i$e;

    invoke-virtual {p1, p0}, Lrx/internal/operators/i$e;->c(Lrx/internal/operators/i$b;)V

    .line 707
    iget-object p1, p0, Lrx/internal/operators/i$b;->a:Lrx/internal/operators/i$e;

    iget-object p1, p1, Lrx/internal/operators/i$e;->a:Lrx/internal/operators/i$d;

    invoke-interface {p1, p0}, Lrx/internal/operators/i$d;->a(Lrx/internal/operators/i$b;)V

    return-void
.end method

.method public unsubscribe()V
    .locals 5

    .line 770
    invoke-virtual {p0}, Lrx/internal/operators/i$b;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 777
    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/i$b;->getAndSet(J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 781
    iget-object v0, p0, Lrx/internal/operators/i$b;->a:Lrx/internal/operators/i$e;

    invoke-virtual {v0, p0}, Lrx/internal/operators/i$e;->b(Lrx/internal/operators/i$b;)V

    .line 786
    iget-object v0, p0, Lrx/internal/operators/i$b;->a:Lrx/internal/operators/i$e;

    invoke-virtual {v0, p0}, Lrx/internal/operators/i$e;->c(Lrx/internal/operators/i$b;)V

    const/4 v0, 0x0

    .line 788
    iput-object v0, p0, Lrx/internal/operators/i$b;->b:Lrx/i;

    :cond_0
    return-void
.end method
