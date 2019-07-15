.class public final Lrx/internal/operators/k;
.super Ljava/lang/Object;
.source "OperatorZip.java"

# interfaces
.implements Lrx/c$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/k$a;,
        Lrx/internal/operators/k$b;,
        Lrx/internal/operators/k$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/c$b<",
        "TR;[",
        "Lrx/c<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/h<",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/b/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/h<",
            "+TR;>;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lrx/internal/operators/k;->a:Lrx/b/h;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, Lrx/i;

    invoke-virtual {p0, p1}, Lrx/internal/operators/k;->a(Lrx/i;)Lrx/i;

    move-result-object p1

    return-object p1
.end method

.method public a(Lrx/i;)Lrx/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i<",
            "-TR;>;)",
            "Lrx/i<",
            "-[",
            "Lrx/c;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Lrx/internal/operators/k$a;

    iget-object v1, p0, Lrx/internal/operators/k;->a:Lrx/b/h;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/k$a;-><init>(Lrx/i;Lrx/b/h;)V

    .line 100
    new-instance v1, Lrx/internal/operators/k$b;

    invoke-direct {v1, v0}, Lrx/internal/operators/k$b;-><init>(Lrx/internal/operators/k$a;)V

    .line 101
    new-instance v2, Lrx/internal/operators/k$c;

    invoke-direct {v2, p0, p1, v0, v1}, Lrx/internal/operators/k$c;-><init>(Lrx/internal/operators/k;Lrx/i;Lrx/internal/operators/k$a;Lrx/internal/operators/k$b;)V

    .line 103
    invoke-virtual {p1, v2}, Lrx/i;->a(Lrx/j;)V

    .line 104
    invoke-virtual {p1, v1}, Lrx/i;->a(Lrx/e;)V

    return-object v2
.end method
