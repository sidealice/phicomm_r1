.class public final Lrx/internal/operators/j;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/c$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/c$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/f;

.field final b:Lrx/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/c;Lrx/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c<",
            "TT;>;",
            "Lrx/f;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lrx/internal/operators/j;->a:Lrx/f;

    .line 37
    iput-object p1, p0, Lrx/internal/operators/j;->b:Lrx/c;

    return-void
.end method


# virtual methods
.method public a(Lrx/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i<",
            "-TT;>;)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lrx/internal/operators/j;->a:Lrx/f;

    invoke-virtual {v0}, Lrx/f;->a()Lrx/f$a;

    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Lrx/i;->a(Lrx/j;)V

    .line 45
    new-instance v1, Lrx/internal/operators/j$1;

    invoke-direct {v1, p0, p1, v0}, Lrx/internal/operators/j$1;-><init>(Lrx/internal/operators/j;Lrx/i;Lrx/f$a;)V

    invoke-virtual {v0, v1}, Lrx/f$a;->a(Lrx/b/a;)Lrx/j;

    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lrx/i;

    invoke-virtual {p0, p1}, Lrx/internal/operators/j;->a(Lrx/i;)V

    return-void
.end method
