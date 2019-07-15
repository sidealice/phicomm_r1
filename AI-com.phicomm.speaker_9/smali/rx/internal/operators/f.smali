.class public final Lrx/internal/operators/f;
.super Ljava/lang/Object;
.source "OperatorAny.java"

# interfaces
.implements Lrx/c$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/c$b<",
        "Ljava/lang/Boolean;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/f<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final b:Z


# direct methods
.method public constructor <init>(Lrx/b/f;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/f<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/internal/operators/f;->a:Lrx/b/f;

    .line 37
    iput-boolean p2, p0, Lrx/internal/operators/f;->b:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, Lrx/i;

    invoke-virtual {p0, p1}, Lrx/internal/operators/f;->a(Lrx/i;)Lrx/i;

    move-result-object p1

    return-object p1
.end method

.method public a(Lrx/i;)Lrx/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/i<",
            "-TT;>;"
        }
    .end annotation

    .line 42
    new-instance v0, Lrx/internal/producers/SingleDelayedProducer;

    invoke-direct {v0, p1}, Lrx/internal/producers/SingleDelayedProducer;-><init>(Lrx/i;)V

    .line 43
    new-instance v1, Lrx/internal/operators/f$1;

    invoke-direct {v1, p0, v0, p1}, Lrx/internal/operators/f$1;-><init>(Lrx/internal/operators/f;Lrx/internal/producers/SingleDelayedProducer;Lrx/i;)V

    .line 92
    invoke-virtual {p1, v1}, Lrx/i;->a(Lrx/j;)V

    .line 93
    invoke-virtual {p1, v0}, Lrx/i;->a(Lrx/e;)V

    return-object v1
.end method
