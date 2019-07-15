.class public final Lrx/internal/operators/BackpressureUtils;
.super Ljava/lang/Object;
.source "BackpressureUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addCap(JJ)J
    .locals 4
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 99
    add-long v0, p0, p2

    .line 100
    .local v0, "u":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 101
    const-wide v0, 0x7fffffffffffffffL

    .line 103
    :cond_0
    return-wide v0
.end method

.method public static getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .locals 5
    .param p0, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "n"    # J

    .prologue
    .line 68
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 69
    .local v0, "current":J
    invoke-static {v0, v1, p1, p2}, Lrx/internal/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v2

    .line 70
    .local v2, "next":J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    return-wide v0
.end method

.method public static getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;Ljava/lang/Object;J)J
    .locals 6
    .param p2, "n"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<TT;>;TT;J)J"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "requested":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 47
    .local v2, "current":J
    invoke-static {v2, v3, p2, p3}, Lrx/internal/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v4

    .local v4, "next":J
    move-object v0, p0

    move-object v1, p1

    .line 48
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    return-wide v2
.end method

.method public static multiplyCap(JJ)J
    .locals 8
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 83
    mul-long v0, p0, p2

    .line 84
    .local v0, "u":J
    or-long v2, p0, p2

    const/16 v4, 0x1f

    ushr-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 85
    cmp-long v2, p2, v6

    if-eqz v2, :cond_0

    div-long v2, v0, p2

    cmp-long v2, v2, p0

    if-eqz v2, :cond_0

    .line 86
    const-wide v0, 0x7fffffffffffffffL

    .line 89
    :cond_0
    return-wide v0
.end method
