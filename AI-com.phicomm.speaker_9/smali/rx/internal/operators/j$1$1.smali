.class Lrx/internal/operators/j$1$1;
.super Lrx/i;
.source "OperatorSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/j$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Thread;

.field final synthetic b:Lrx/internal/operators/j$1;


# direct methods
.method constructor <init>(Lrx/internal/operators/j$1;Lrx/i;Ljava/lang/Thread;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lrx/internal/operators/j$1$1;->b:Lrx/internal/operators/j$1;

    iput-object p3, p0, Lrx/internal/operators/j$1$1;->a:Ljava/lang/Thread;

    invoke-direct {p0, p2}, Lrx/i;-><init>(Lrx/i;)V

    return-void
.end method


# virtual methods
.method public a(Lrx/e;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lrx/internal/operators/j$1$1;->b:Lrx/internal/operators/j$1;

    iget-object v0, v0, Lrx/internal/operators/j$1;->a:Lrx/i;

    new-instance v1, Lrx/internal/operators/j$1$1$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/j$1$1$1;-><init>(Lrx/internal/operators/j$1$1;Lrx/e;)V

    invoke-virtual {v0, v1}, Lrx/i;->a(Lrx/e;)V

    return-void
.end method

.method public onCompleted()V
    .locals 2

    .line 68
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/j$1$1;->b:Lrx/internal/operators/j$1;

    iget-object v0, v0, Lrx/internal/operators/j$1;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object v0, p0, Lrx/internal/operators/j$1$1;->b:Lrx/internal/operators/j$1;

    iget-object v0, v0, Lrx/internal/operators/j$1;->b:Lrx/f$a;

    invoke-virtual {v0}, Lrx/f$a;->unsubscribe()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/j$1$1;->b:Lrx/internal/operators/j$1;

    iget-object v1, v1, Lrx/internal/operators/j$1;->b:Lrx/f$a;

    invoke-virtual {v1}, Lrx/f$a;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 59
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/j$1$1;->b:Lrx/internal/operators/j$1;

    iget-object v0, v0, Lrx/internal/operators/j$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object p1, p0, Lrx/internal/operators/j$1$1;->b:Lrx/internal/operators/j$1;

    iget-object p1, p1, Lrx/internal/operators/j$1;->b:Lrx/f$a;

    invoke-virtual {p1}, Lrx/f$a;->unsubscribe()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lrx/internal/operators/j$1$1;->b:Lrx/internal/operators/j$1;

    iget-object v0, v0, Lrx/internal/operators/j$1;->b:Lrx/f$a;

    invoke-virtual {v0}, Lrx/f$a;->unsubscribe()V

    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lrx/internal/operators/j$1$1;->b:Lrx/internal/operators/j$1;

    iget-object v0, v0, Lrx/internal/operators/j$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->onNext(Ljava/lang/Object;)V

    return-void
.end method
