.class final Lrx/internal/util/f$b;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

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
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final b:Lrx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/f<",
            "Lrx/b/a;",
            "Lrx/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lrx/b/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/b/f<",
            "Lrx/b/a;",
            "Lrx/j;",
            ">;)V"
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lrx/internal/util/f$b;->a:Ljava/lang/Object;

    .line 154
    iput-object p2, p0, Lrx/internal/util/f$b;->b:Lrx/b/f;

    return-void
.end method


# virtual methods
.method public a(Lrx/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i<",
            "-TT;>;)V"
        }
    .end annotation

    .line 159
    new-instance v0, Lrx/internal/util/f$c;

    iget-object v1, p0, Lrx/internal/util/f$b;->a:Ljava/lang/Object;

    iget-object v2, p0, Lrx/internal/util/f$b;->b:Lrx/b/f;

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/util/f$c;-><init>(Lrx/i;Ljava/lang/Object;Lrx/b/f;)V

    invoke-virtual {p1, v0}, Lrx/i;->a(Lrx/e;)V

    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 148
    check-cast p1, Lrx/i;

    invoke-virtual {p0, p1}, Lrx/internal/util/f$b;->a(Lrx/i;)V

    return-void
.end method
