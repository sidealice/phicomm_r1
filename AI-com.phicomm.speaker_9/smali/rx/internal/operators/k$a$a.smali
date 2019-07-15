.class final Lrx/internal/operators/k$a$a;
.super Lrx/i;
.source "OperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/k$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Lrx/internal/util/e;

.field final synthetic b:Lrx/internal/operators/k$a;


# direct methods
.method constructor <init>(Lrx/internal/operators/k$a;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lrx/internal/operators/k$a$a;->b:Lrx/internal/operators/k$a;

    invoke-direct {p0}, Lrx/i;-><init>()V

    .line 293
    invoke-static {}, Lrx/internal/util/e;->a()Lrx/internal/util/e;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/k$a$a;->a:Lrx/internal/util/e;

    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 0

    .line 301
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/k$a$a;->a(J)V

    return-void
.end method

.method public j_()V
    .locals 2

    .line 297
    sget v0, Lrx/internal/util/e;->b:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/k$a$a;->a(J)V

    return-void
.end method

.method public onCompleted()V
    .locals 1

    .line 306
    iget-object v0, p0, Lrx/internal/operators/k$a$a;->a:Lrx/internal/util/e;

    invoke-virtual {v0}, Lrx/internal/util/e;->c()V

    .line 307
    iget-object v0, p0, Lrx/internal/operators/k$a$a;->b:Lrx/internal/operators/k$a;

    invoke-virtual {v0}, Lrx/internal/operators/k$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lrx/internal/operators/k$a$a;->b:Lrx/internal/operators/k$a;

    iget-object v0, v0, Lrx/internal/operators/k$a;->a:Lrx/d;

    invoke-interface {v0, p1}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1

    .line 319
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/k$a$a;->a:Lrx/internal/util/e;

    invoke-virtual {v0, p1}, Lrx/internal/util/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 321
    invoke-virtual {p0, p1}, Lrx/internal/operators/k$a$a;->onError(Ljava/lang/Throwable;)V

    .line 323
    :goto_0
    iget-object p1, p0, Lrx/internal/operators/k$a$a;->b:Lrx/internal/operators/k$a;

    invoke-virtual {p1}, Lrx/internal/operators/k$a;->a()V

    return-void
.end method
