.class public final Lrx/internal/operators/l;
.super Ljava/lang/Object;
.source "SingleFromObservable.java"

# interfaces
.implements Lrx/g$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/g$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lrx/internal/operators/l;->a:Lrx/c$a;

    return-void
.end method


# virtual methods
.method public a(Lrx/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h<",
            "-TT;>;)V"
        }
    .end annotation

    .line 39
    new-instance v0, Lrx/internal/operators/l$a;

    invoke-direct {v0, p1}, Lrx/internal/operators/l$a;-><init>(Lrx/h;)V

    .line 40
    invoke-virtual {p1, v0}, Lrx/h;->a(Lrx/j;)V

    .line 41
    iget-object p1, p0, Lrx/internal/operators/l;->a:Lrx/c$a;

    invoke-interface {p1, v0}, Lrx/c$a;->call(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Lrx/h;

    invoke-virtual {p0, p1}, Lrx/internal/operators/l;->a(Lrx/h;)V

    return-void
.end method
