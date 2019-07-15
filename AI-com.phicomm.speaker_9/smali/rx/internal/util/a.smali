.class public final Lrx/internal/util/a;
.super Lrx/i;
.source "ActionSubscriber.java"


# annotations
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
.field final a:Lrx/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/b<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/b<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lrx/b/a;


# direct methods
.method public constructor <init>(Lrx/b/b;Lrx/b/b;Lrx/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/b<",
            "-TT;>;",
            "Lrx/b/b<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/b/a;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lrx/i;-><init>()V

    .line 32
    iput-object p1, p0, Lrx/internal/util/a;->a:Lrx/b/b;

    .line 33
    iput-object p2, p0, Lrx/internal/util/a;->b:Lrx/b/b;

    .line 34
    iput-object p3, p0, Lrx/internal/util/a;->c:Lrx/b/a;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 49
    iget-object v0, p0, Lrx/internal/util/a;->c:Lrx/b/a;

    invoke-interface {v0}, Lrx/b/a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lrx/internal/util/a;->b:Lrx/b/b;

    invoke-interface {v0, p1}, Lrx/b/b;->call(Ljava/lang/Object;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lrx/internal/util/a;->a:Lrx/b/b;

    invoke-interface {v0, p1}, Lrx/b/b;->call(Ljava/lang/Object;)V

    return-void
.end method
