.class Lrx/internal/operators/j$1$1$1;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/j$1$1;->a(Lrx/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/e;

.field final synthetic b:Lrx/internal/operators/j$1$1;


# direct methods
.method constructor <init>(Lrx/internal/operators/j$1$1;Lrx/e;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lrx/internal/operators/j$1$1$1;->b:Lrx/internal/operators/j$1$1;

    iput-object p2, p0, Lrx/internal/operators/j$1$1$1;->a:Lrx/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 2

    .line 79
    iget-object v0, p0, Lrx/internal/operators/j$1$1$1;->b:Lrx/internal/operators/j$1$1;

    iget-object v0, v0, Lrx/internal/operators/j$1$1;->a:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lrx/internal/operators/j$1$1$1;->a:Lrx/e;

    invoke-interface {v0, p1, p2}, Lrx/e;->request(J)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/j$1$1$1;->b:Lrx/internal/operators/j$1$1;

    iget-object v0, v0, Lrx/internal/operators/j$1$1;->b:Lrx/internal/operators/j$1;

    iget-object v0, v0, Lrx/internal/operators/j$1;->b:Lrx/f$a;

    new-instance v1, Lrx/internal/operators/j$1$1$1$1;

    invoke-direct {v1, p0, p1, p2}, Lrx/internal/operators/j$1$1$1$1;-><init>(Lrx/internal/operators/j$1$1$1;J)V

    invoke-virtual {v0, v1}, Lrx/f$a;->a(Lrx/b/a;)Lrx/j;

    :goto_0
    return-void
.end method
