.class public final Lrx/internal/operators/n;
.super Ljava/lang/Object;
.source "SingleToObservable.java"

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
.field final a:Lrx/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/g$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/g$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lrx/internal/operators/n;->a:Lrx/g$a;

    return-void
.end method


# virtual methods
.method public a(Lrx/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i<",
            "-TT;>;)V"
        }
    .end annotation

    .line 37
    new-instance v0, Lrx/internal/operators/m$a;

    invoke-direct {v0, p1}, Lrx/internal/operators/m$a;-><init>(Lrx/i;)V

    .line 38
    invoke-virtual {p1, v0}, Lrx/i;->a(Lrx/j;)V

    .line 39
    iget-object p1, p0, Lrx/internal/operators/n;->a:Lrx/g$a;

    invoke-interface {p1, v0}, Lrx/g$a;->call(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lrx/i;

    invoke-virtual {p0, p1}, Lrx/internal/operators/n;->a(Lrx/i;)V

    return-void
.end method
