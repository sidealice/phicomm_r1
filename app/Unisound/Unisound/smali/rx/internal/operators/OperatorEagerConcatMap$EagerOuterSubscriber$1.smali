.class Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber$1;
.super Ljava/lang/Object;
.source "OperatorEagerConcatMap.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;)V
    .locals 0

    .prologue
    .line 95
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber$1;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber$1;->this$0:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber$1;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber$1;->this$0:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->cancelled:Z

    .line 99
    iget-object v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber$1;->this$0:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber$1;->this$0:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber;->cleanup()V

    .line 102
    :cond_0
    return-void
.end method
