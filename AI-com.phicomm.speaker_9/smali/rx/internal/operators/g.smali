.class public Lrx/internal/operators/g;
.super Ljava/lang/Object;
.source "OperatorDoOnRequest.java"

# interfaces
.implements Lrx/c$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/c$b<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/b<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/b<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lrx/internal/operators/g;->a:Lrx/b/b;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Lrx/i;

    invoke-virtual {p0, p1}, Lrx/internal/operators/g;->a(Lrx/i;)Lrx/i;

    move-result-object p1

    return-object p1
.end method

.method public a(Lrx/i;)Lrx/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i<",
            "-TT;>;)",
            "Lrx/i<",
            "-TT;>;"
        }
    .end annotation

    .line 40
    new-instance v0, Lrx/internal/operators/g$a;

    invoke-direct {v0, p1}, Lrx/internal/operators/g$a;-><init>(Lrx/i;)V

    .line 42
    new-instance v1, Lrx/internal/operators/g$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/g$1;-><init>(Lrx/internal/operators/g;Lrx/internal/operators/g$a;)V

    invoke-virtual {p1, v1}, Lrx/i;->a(Lrx/e;)V

    .line 51
    invoke-virtual {p1, v0}, Lrx/i;->a(Lrx/j;)V

    return-object v0
.end method
