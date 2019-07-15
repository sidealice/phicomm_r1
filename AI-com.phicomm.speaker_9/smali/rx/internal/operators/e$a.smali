.class final Lrx/internal/operators/e$a;
.super Lrx/i;
.source "OnSubscribeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final b:Lrx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/f<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method public constructor <init>(Lrx/i;Lrx/b/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i<",
            "-TR;>;",
            "Lrx/b/f<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lrx/i;-><init>()V

    .line 60
    iput-object p1, p0, Lrx/internal/operators/e$a;->a:Lrx/i;

    .line 61
    iput-object p2, p0, Lrx/internal/operators/e$a;->b:Lrx/b/f;

    return-void
.end method


# virtual methods
.method public a(Lrx/e;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lrx/internal/operators/e$a;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Lrx/e;)V

    return-void
.end method

.method public onCompleted()V
    .locals 1

    .line 94
    iget-boolean v0, p0, Lrx/internal/operators/e$a;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/e$a;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 82
    iget-boolean v0, p0, Lrx/internal/operators/e$a;->c:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p1}, Lrx/e/c;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lrx/internal/operators/e$a;->c:Z

    .line 88
    iget-object v0, p0, Lrx/internal/operators/e$a;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 69
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/e$a;->b:Lrx/b/f;

    invoke-interface {v0, p1}, Lrx/b/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    iget-object p1, p0, Lrx/internal/operators/e$a;->a:Lrx/i;

    invoke-virtual {p1, v0}, Lrx/i;->onNext(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    .line 71
    invoke-static {v0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)V

    .line 72
    invoke-virtual {p0}, Lrx/internal/operators/e$a;->unsubscribe()V

    .line 73
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrx/internal/operators/e$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
