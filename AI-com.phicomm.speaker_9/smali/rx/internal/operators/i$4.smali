.class final Lrx/internal/operators/i$4;
.super Ljava/lang/Object;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/i;->a(Lrx/c;Lrx/b/e;)Lrx/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Lrx/b/e;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lrx/b/e;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lrx/internal/operators/i$4;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lrx/internal/operators/i$4;->b:Lrx/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i<",
            "-TT;>;)V"
        }
    .end annotation

    .line 209
    :goto_0
    iget-object v0, p0, Lrx/internal/operators/i$4;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/i$e;

    if-nez v0, :cond_1

    .line 213
    new-instance v1, Lrx/internal/operators/i$e;

    iget-object v2, p0, Lrx/internal/operators/i$4;->b:Lrx/b/e;

    invoke-interface {v2}, Lrx/b/e;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/internal/operators/i$d;

    invoke-direct {v1, v2}, Lrx/internal/operators/i$e;-><init>(Lrx/internal/operators/i$d;)V

    .line 215
    invoke-virtual {v1}, Lrx/internal/operators/i$e;->b()V

    .line 217
    iget-object v2, p0, Lrx/internal/operators/i$4;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 227
    :cond_1
    new-instance v1, Lrx/internal/operators/i$b;

    invoke-direct {v1, v0, p1}, Lrx/internal/operators/i$b;-><init>(Lrx/internal/operators/i$e;Lrx/i;)V

    .line 231
    invoke-virtual {v0, v1}, Lrx/internal/operators/i$e;->a(Lrx/internal/operators/i$b;)Z

    .line 234
    invoke-virtual {p1, v1}, Lrx/i;->a(Lrx/j;)V

    .line 237
    iget-object v0, v0, Lrx/internal/operators/i$e;->a:Lrx/internal/operators/i$d;

    invoke-interface {v0, v1}, Lrx/internal/operators/i$d;->a(Lrx/internal/operators/i$b;)V

    .line 241
    invoke-virtual {p1, v1}, Lrx/i;->a(Lrx/e;)V

    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 202
    check-cast p1, Lrx/i;

    invoke-virtual {p0, p1}, Lrx/internal/operators/i$4;->a(Lrx/i;)V

    return-void
.end method
