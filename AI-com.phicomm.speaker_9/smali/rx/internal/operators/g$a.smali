.class final Lrx/internal/operators/g$a;
.super Lrx/i;
.source "OperatorDoOnRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i<",
            "-TT;>;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lrx/i;-><init>()V

    .line 59
    iput-object p1, p0, Lrx/internal/operators/g$a;->a:Lrx/i;

    const-wide/16 v0, 0x0

    .line 60
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/g$a;->a(J)V

    return-void
.end method

.method static synthetic a(Lrx/internal/operators/g$a;J)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lrx/internal/operators/g$a;->b(J)V

    return-void
.end method

.method private b(J)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/g$a;->a(J)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 69
    iget-object v0, p0, Lrx/internal/operators/g$a;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lrx/internal/operators/g$a;->a:Lrx/i;

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

    .line 79
    iget-object v0, p0, Lrx/internal/operators/g$a;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->onNext(Ljava/lang/Object;)V

    return-void
.end method
