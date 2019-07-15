.class final Lrx/internal/operators/k$c;
.super Lrx/i;
.source "OperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i<",
        "[",
        "Lrx/c;",
        ">;"
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

.field final b:Lrx/internal/operators/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/k$a<",
            "TR;>;"
        }
    .end annotation
.end field

.field final c:Lrx/internal/operators/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/k$b<",
            "TR;>;"
        }
    .end annotation
.end field

.field d:Z

.field final synthetic e:Lrx/internal/operators/k;


# direct methods
.method public constructor <init>(Lrx/internal/operators/k;Lrx/i;Lrx/internal/operators/k$a;Lrx/internal/operators/k$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i<",
            "-TR;>;",
            "Lrx/internal/operators/k$a<",
            "TR;>;",
            "Lrx/internal/operators/k$b<",
            "TR;>;)V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lrx/internal/operators/k$c;->e:Lrx/internal/operators/k;

    invoke-direct {p0}, Lrx/i;-><init>()V

    .line 119
    iput-object p2, p0, Lrx/internal/operators/k$c;->a:Lrx/i;

    .line 120
    iput-object p3, p0, Lrx/internal/operators/k$c;->b:Lrx/internal/operators/k$a;

    .line 121
    iput-object p4, p0, Lrx/internal/operators/k$c;->c:Lrx/internal/operators/k$b;

    return-void
.end method


# virtual methods
.method public a([Lrx/c;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 139
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lrx/internal/operators/k$c;->d:Z

    .line 143
    iget-object v0, p0, Lrx/internal/operators/k$c;->b:Lrx/internal/operators/k$a;

    iget-object v1, p0, Lrx/internal/operators/k$c;->c:Lrx/internal/operators/k$b;

    invoke-virtual {v0, p1, v1}, Lrx/internal/operators/k$a;->a([Lrx/c;Ljava/util/concurrent/atomic/AtomicLong;)V

    goto :goto_1

    .line 140
    :cond_1
    :goto_0
    iget-object p1, p0, Lrx/internal/operators/k$c;->a:Lrx/i;

    invoke-virtual {p1}, Lrx/i;->onCompleted()V

    :goto_1
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .line 126
    iget-boolean v0, p0, Lrx/internal/operators/k$c;->d:Z

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lrx/internal/operators/k$c;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->onCompleted()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lrx/internal/operators/k$c;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 109
    check-cast p1, [Lrx/c;

    invoke-virtual {p0, p1}, Lrx/internal/operators/k$c;->a([Lrx/c;)V

    return-void
.end method
