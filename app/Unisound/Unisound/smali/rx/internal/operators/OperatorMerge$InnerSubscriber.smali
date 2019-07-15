.class final Lrx/internal/operators/OperatorMerge$InnerSubscriber;
.super Lrx/Subscriber;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerSubscriber"
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


# static fields
.field static final limit:I


# instance fields
.field volatile done:Z

.field final id:J

.field outstanding:I

.field final parent:Lrx/internal/operators/OperatorMerge$MergeSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorMerge$MergeSubscriber",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile queue:Lrx/internal/util/RxRingBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 791
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    div-int/lit8 v0, v0, 0x4

    sput v0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->limit:I

    return-void
.end method

.method public constructor <init>(Lrx/internal/operators/OperatorMerge$MergeSubscriber;J)V
    .locals 0
    .param p2, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorMerge$MergeSubscriber",
            "<TT;>;J)V"
        }
    .end annotation

    .prologue
    .line 793
    .local p0, "this":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .local p1, "parent":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 794
    iput-object p1, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->parent:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    .line 795
    iput-wide p2, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->id:J

    .line 796
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 814
    .local p0, "this":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->done:Z

    .line 815
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->parent:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    .line 816
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 808
    .local p0, "this":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->done:Z

    .line 809
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->parent:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->getOrCreateErrorQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 810
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->parent:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    .line 811
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
    .line 804
    .local p0, "this":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->parent:Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-virtual {v0, p0, p1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->tryEmit(Lrx/internal/operators/OperatorMerge$InnerSubscriber;Ljava/lang/Object;)V

    .line 805
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 799
    .local p0, "this":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    iput v0, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->outstanding:I

    .line 800
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->request(J)V

    .line 801
    return-void
.end method

.method public requestMore(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .line 818
    .local p0, "this":Lrx/internal/operators/OperatorMerge$InnerSubscriber;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    iget v2, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->outstanding:I

    long-to-int v3, p1

    sub-int v1, v2, v3

    .line 819
    .local v1, "r":I
    sget v2, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->limit:I

    if-le v1, v2, :cond_1

    .line 820
    iput v1, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->outstanding:I

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    sget v2, Lrx/internal/util/RxRingBuffer;->SIZE:I

    iput v2, p0, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->outstanding:I

    .line 824
    sget v2, Lrx/internal/util/RxRingBuffer;->SIZE:I

    sub-int v0, v2, v1

    .line 825
    .local v0, "k":I
    if-lez v0, :cond_0

    .line 826
    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OperatorMerge$InnerSubscriber;->request(J)V

    goto :goto_0
.end method
