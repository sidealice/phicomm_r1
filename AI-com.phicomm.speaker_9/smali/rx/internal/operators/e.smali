.class public final Lrx/internal/operators/e;
.super Ljava/lang/Object;
.source "OnSubscribeMap.java"

# interfaces
.implements Lrx/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/e$a;
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
        "Lrx/c$a<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/f<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/c;Lrx/b/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c<",
            "TT;>;",
            "Lrx/b/f<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lrx/internal/operators/e;->a:Lrx/c;

    .line 41
    iput-object p2, p0, Lrx/internal/operators/e;->b:Lrx/b/f;

    return-void
.end method


# virtual methods
.method public a(Lrx/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i<",
            "-TR;>;)V"
        }
    .end annotation

    .line 46
    new-instance v0, Lrx/internal/operators/e$a;

    iget-object v1, p0, Lrx/internal/operators/e;->b:Lrx/b/f;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/e$a;-><init>(Lrx/i;Lrx/b/f;)V

    .line 47
    invoke-virtual {p1, v0}, Lrx/i;->a(Lrx/j;)V

    .line 48
    iget-object p1, p0, Lrx/internal/operators/e;->a:Lrx/c;

    invoke-virtual {p1, v0}, Lrx/c;->a(Lrx/i;)Lrx/j;

    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Lrx/i;

    invoke-virtual {p0, p1}, Lrx/internal/operators/e;->a(Lrx/i;)V

    return-void
.end method
