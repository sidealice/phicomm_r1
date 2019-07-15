.class final Lrx/internal/operators/OnSubscribeRange$RangeProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OnSubscribeRange.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RangeProducer"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x391941e9d0fd3194L


# instance fields
.field private final end:I

.field private index:J

.field private final o:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/Subscriber;II)V
    .locals 2
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 50
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->o:Lrx/Subscriber;

    .line 51
    int-to-long v0, p2

    iput-wide v0, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->index:J

    .line 52
    iput p3, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->end:I

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lrx/Subscriber;IILrx/internal/operators/OnSubscribeRange$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/Subscriber;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lrx/internal/operators/OnSubscribeRange$1;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lrx/internal/operators/OnSubscribeRange$RangeProducer;-><init>(Lrx/Subscriber;II)V

    return-void
.end method


# virtual methods
.method fastpath()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    .line 120
    iget v5, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->end:I

    int-to-long v6, v5

    add-long v0, v6, v8

    .line 121
    .local v0, "end":J
    iget-object v4, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->o:Lrx/Subscriber;

    .line 122
    .local v4, "o":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Integer;>;"
    iget-wide v2, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->index:J

    .local v2, "i":J
    :goto_0
    cmp-long v5, v2, v0

    if-eqz v5, :cond_2

    .line 123
    invoke-virtual {v4}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 131
    :cond_0
    :goto_1
    return-void

    .line 126
    :cond_1
    long-to-int v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 122
    add-long/2addr v2, v8

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {v4}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 129
    invoke-virtual {v4}, Lrx/Subscriber;->onCompleted()V

    goto :goto_1
.end method

.method public request(J)V
    .locals 9
    .param p1, "n"    # J

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    const-wide/16 v4, 0x0

    .line 57
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->get()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    cmp-long v2, p1, v6

    if-nez v2, :cond_2

    invoke-virtual {p0, v4, v5, v6, v7}, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->fastpath()V

    goto :goto_0

    .line 64
    :cond_2
    cmp-long v2, p1, v4

    if-lez v2, :cond_0

    .line 65
    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    .line 66
    .local v0, "c":J
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 68
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->slowpath(J)V

    goto :goto_0
.end method

.method slowpath(J)V
    .locals 17
    .param p1, "r"    # J

    .prologue
    .line 77
    move-object/from16 v0, p0

    iget-wide v10, v0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->index:J

    .line 83
    .local v10, "idx":J
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->end:I

    int-to-long v12, v12

    sub-long/2addr v12, v10

    const-wide/16 v14, 0x1

    add-long v6, v12, v14

    .line 84
    .local v6, "fs":J
    move-wide/from16 v0, p1

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 85
    .local v4, "e":J
    cmp-long v12, v6, p1

    if-gtz v12, :cond_2

    const/4 v2, 0x1

    .line 87
    .local v2, "complete":Z
    :goto_0
    add-long v6, v4, v10

    .line 88
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->o:Lrx/Subscriber;

    .line 90
    .local v3, "o":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Integer;>;"
    move-wide v8, v10

    .local v8, "i":J
    :goto_1
    cmp-long v12, v8, v6

    if-eqz v12, :cond_4

    .line 91
    invoke-virtual {v3}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 111
    :cond_1
    :goto_2
    return-void

    .line 85
    .end local v2    # "complete":Z
    .end local v3    # "o":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Integer;>;"
    .end local v8    # "i":J
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 94
    .restart local v2    # "complete":Z
    .restart local v3    # "o":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Integer;>;"
    .restart local v8    # "i":J
    :cond_3
    long-to-int v12, v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 90
    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    goto :goto_1

    .line 97
    :cond_4
    if-eqz v2, :cond_5

    .line 98
    invoke-virtual {v3}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v12

    if-nez v12, :cond_1

    .line 101
    invoke-virtual {v3}, Lrx/Subscriber;->onCompleted()V

    goto :goto_2

    .line 105
    :cond_5
    move-wide v10, v6

    .line 106
    move-object/from16 v0, p0

    iput-wide v6, v0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->index:J

    .line 108
    neg-long v12, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->addAndGet(J)J

    move-result-wide p1

    .line 109
    const-wide/16 v12, 0x0

    cmp-long v12, p1, v12

    if-nez v12, :cond_0

    goto :goto_2
.end method
