.class Lrx/internal/operators/OperatorScan$2;
.super Lrx/Subscriber;
.source "OperatorScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorScan;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field once:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorScan;

.field final synthetic val$child:Lrx/Subscriber;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorScan;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/operators/OperatorScan$2;, "Lrx/internal/operators/OperatorScan.2;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorScan$2;->this$0:Lrx/internal/operators/OperatorScan;

    iput-object p3, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Lrx/internal/operators/OperatorScan$2;, "Lrx/internal/operators/OperatorScan.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 126
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 121
    .local p0, "this":Lrx/internal/operators/OperatorScan$2;, "Lrx/internal/operators/OperatorScan.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 122
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
    .line 103
    .local p0, "this":Lrx/internal/operators/OperatorScan$2;, "Lrx/internal/operators/OperatorScan.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v2, p0, Lrx/internal/operators/OperatorScan$2;->once:Z

    if-nez v2, :cond_0

    .line 104
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorScan$2;->once:Z

    .line 105
    move-object v1, p1

    .line 116
    .local v1, "v":Ljava/lang/Object;, "TR;"
    :goto_0
    iput-object v1, p0, Lrx/internal/operators/OperatorScan$2;->value:Ljava/lang/Object;

    .line 117
    iget-object v2, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 118
    :goto_1
    return-void

    .line 107
    .end local v1    # "v":Ljava/lang/Object;, "TR;"
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorScan$2;->value:Ljava/lang/Object;

    .line 109
    .restart local v1    # "v":Ljava/lang/Object;, "TR;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorScan$2;->this$0:Lrx/internal/operators/OperatorScan;

    invoke-static {v2}, Lrx/internal/operators/OperatorScan;->access$000(Lrx/internal/operators/OperatorScan;)Lrx/functions/Func2;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 112
    iget-object v2, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
