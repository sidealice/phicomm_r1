.class Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;
.super Lrx/Subscriber;
.source "OperatorTakeLastOne.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorTakeLastOne;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParentSubscriber"
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
.field private static final ABSENT:Ljava/lang/Object;

.field private static final NOT_REQUESTED_COMPLETED:I = 0x1

.field private static final NOT_REQUESTED_NOT_COMPLETED:I = 0x0

.field private static final REQUESTED_COMPLETED:I = 0x3

.field private static final REQUESTED_NOT_COMPLETED:I = 0x2


# instance fields
.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private last:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final state:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->ABSENT:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;, "Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 63
    sget-object v0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->ABSENT:Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->last:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 72
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->child:Lrx/Subscriber;

    .line 73
    return-void
.end method

.method private emit()V
    .locals 4

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;, "Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber<TT;>;"
    const/4 v3, 0x0

    .line 139
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    iput-object v3, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->last:Ljava/lang/Object;

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->last:Ljava/lang/Object;

    .line 149
    .local v1, "t":Ljava/lang/Object;, "TT;"
    iput-object v3, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->last:Ljava/lang/Object;

    .line 150
    sget-object v2, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->ABSENT:Ljava/lang/Object;

    if-eq v1, v2, :cond_2

    .line 152
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_2
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-static {v0, v2}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_0
.end method


# virtual methods
.method public onCompleted()V
    .locals 5

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;, "Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber<TT;>;"
    const/4 v4, 0x2

    .line 106
    iget-object v1, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->last:Ljava/lang/Object;

    sget-object v2, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->ABSENT:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 107
    iget-object v1, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 119
    .local v0, "s":I
    if-nez v0, :cond_2

    .line 120
    iget-object v1, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 123
    :cond_2
    if-ne v0, v4, :cond_0

    .line 124
    iget-object v1, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x3

    invoke-virtual {v1, v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    invoke-direct {p0}, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->emit()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 164
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;, "Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 165
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;, "Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->last:Ljava/lang/Object;

    .line 170
    return-void
.end method

.method requestMore(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;, "Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber<TT;>;"
    const/4 v4, 0x1

    .line 76
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_1

    .line 85
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 86
    .local v0, "s":I
    if-nez v0, :cond_2

    .line 87
    iget-object v1, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    .end local v0    # "s":I
    :cond_1
    :goto_0
    return-void

    .line 91
    .restart local v0    # "s":I
    :cond_2
    if-ne v0, v4, :cond_1

    .line 92
    iget-object v1, p0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x3

    invoke-virtual {v1, v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-direct {p0}, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->emit()V

    goto :goto_0
.end method
