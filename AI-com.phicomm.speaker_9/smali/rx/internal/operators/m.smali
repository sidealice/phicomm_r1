.class public final Lrx/internal/operators/m;
.super Ljava/lang/Object;
.source "SingleLiftObservableOperator.java"

# interfaces
.implements Lrx/g$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/g$a<",
        "TR;>;"
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

.field final b:Lrx/c$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c$b<",
            "+TR;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static a(Lrx/i;)Lrx/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i<",
            "TT;>;)",
            "Lrx/h<",
            "TT;>;"
        }
    .end annotation

    .line 62
    new-instance v0, Lrx/internal/operators/m$a;

    invoke-direct {v0, p0}, Lrx/internal/operators/m$a;-><init>(Lrx/i;)V

    .line 63
    invoke-virtual {p0, v0}, Lrx/i;->a(Lrx/j;)V

    return-object v0
.end method


# virtual methods
.method public a(Lrx/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h<",
            "-TR;>;)V"
        }
    .end annotation

    .line 45
    new-instance v0, Lrx/internal/operators/l$a;

    invoke-direct {v0, p1}, Lrx/internal/operators/l$a;-><init>(Lrx/h;)V

    .line 46
    invoke-virtual {p1, v0}, Lrx/h;->a(Lrx/j;)V

    .line 49
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/m;->b:Lrx/c$b;

    invoke-static {v1}, Lrx/e/c;->b(Lrx/c$b;)Lrx/c$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lrx/c$b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/i;

    .line 51
    invoke-static {v0}, Lrx/internal/operators/m;->a(Lrx/i;)Lrx/h;

    move-result-object v1

    .line 53
    invoke-virtual {v0}, Lrx/i;->j_()V

    .line 55
    iget-object v0, p0, Lrx/internal/operators/m;->a:Lrx/g$a;

    invoke-interface {v0, v1}, Lrx/g$a;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 57
    invoke-static {v0, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/h;)V

    :goto_0
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Lrx/h;

    invoke-virtual {p0, p1}, Lrx/internal/operators/m;->a(Lrx/h;)V

    return-void
.end method
