.class final Lrx/internal/operators/m$a;
.super Lrx/h;
.source "SingleLiftObservableOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/m;
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
        "Lrx/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i<",
            "-TT;>;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lrx/h;-><init>()V

    .line 71
    iput-object p1, p0, Lrx/internal/operators/m$a;->a:Lrx/i;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lrx/internal/operators/m$a;->a:Lrx/i;

    new-instance v1, Lrx/internal/producers/SingleProducer;

    iget-object v2, p0, Lrx/internal/operators/m$a;->a:Lrx/i;

    invoke-direct {v1, v2, p1}, Lrx/internal/producers/SingleProducer;-><init>(Lrx/i;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lrx/i;->a(Lrx/e;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lrx/internal/operators/m$a;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
