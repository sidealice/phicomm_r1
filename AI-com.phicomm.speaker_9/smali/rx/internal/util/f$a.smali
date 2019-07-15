.class final Lrx/internal/util/f$a;
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
    name = "a"
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


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lrx/internal/util/f$a;->a:Ljava/lang/Object;

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

    .line 138
    iget-object v0, p0, Lrx/internal/util/f$a;->a:Ljava/lang/Object;

    invoke-static {p1, v0}, Lrx/internal/util/f;->a(Lrx/i;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/i;->a(Lrx/e;)V

    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 129
    check-cast p1, Lrx/i;

    invoke-virtual {p0, p1}, Lrx/internal/util/f$a;->a(Lrx/i;)V

    return-void
.end method
