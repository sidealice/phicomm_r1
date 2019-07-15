.class Lrx/internal/operators/OperatorTake$1;
.super Lrx/Subscriber;
.source "OperatorTake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTake;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field completed:Z

.field count:I

.field final synthetic this$0:Lrx/internal/operators/OperatorTake;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTake;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorTake$1;, "Lrx/internal/operators/OperatorTake.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTake$1;->this$0:Lrx/internal/operators/OperatorTake;

    iput-object p2, p0, Lrx/internal/operators/OperatorTake$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/OperatorTake$1;, "Lrx/internal/operators/OperatorTake.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorTake$1;->completed:Z

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorTake$1;->completed:Z

    .line 53
    iget-object v0, p0, Lrx/internal/operators/OperatorTake$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 55
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/OperatorTake$1;, "Lrx/internal/operators/OperatorTake.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorTake$1;->completed:Z

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorTake$1;->completed:Z

    .line 62
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorTake$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTake$1;->unsubscribe()V

    .line 67
    :cond_0
    return-void

    .line 64
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/OperatorTake$1;->unsubscribe()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorTake$1;, "Lrx/internal/operators/OperatorTake.1;"
    .local p1, "i":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    .line 71
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTake$1;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lrx/internal/operators/OperatorTake$1;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lrx/internal/operators/OperatorTake$1;->count:I

    iget-object v3, p0, Lrx/internal/operators/OperatorTake$1;->this$0:Lrx/internal/operators/OperatorTake;

    iget v3, v3, Lrx/internal/operators/OperatorTake;->limit:I

    if-ge v2, v3, :cond_0

    .line 72
    iget v2, p0, Lrx/internal/operators/OperatorTake$1;->count:I

    iget-object v3, p0, Lrx/internal/operators/OperatorTake$1;->this$0:Lrx/internal/operators/OperatorTake;

    iget v3, v3, Lrx/internal/operators/OperatorTake;->limit:I

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 73
    .local v0, "stop":Z
    :goto_0
    iget-object v2, p0, Lrx/internal/operators/OperatorTake$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v2, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 74
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lrx/internal/operators/OperatorTake$1;->completed:Z

    if-nez v2, :cond_0

    .line 75
    iput-boolean v1, p0, Lrx/internal/operators/OperatorTake$1;->completed:Z

    .line 77
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorTake$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTake$1;->unsubscribe()V

    .line 83
    .end local v0    # "stop":Z
    :cond_0
    return-void

    .line 72
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    .restart local v0    # "stop":Z
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lrx/internal/operators/OperatorTake$1;->unsubscribe()V

    throw v1
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 2
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 90
    .local p0, "this":Lrx/internal/operators/OperatorTake$1;, "Lrx/internal/operators/OperatorTake.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTake$1;->val$child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorTake$1$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorTake$1$1;-><init>(Lrx/internal/operators/OperatorTake$1;Lrx/Producer;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 113
    return-void
.end method
