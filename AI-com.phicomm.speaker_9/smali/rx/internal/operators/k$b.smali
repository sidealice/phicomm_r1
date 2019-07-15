.class final Lrx/internal/operators/k$b;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorZip.java"

# interfaces
.implements Lrx/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/e;"
    }
.end annotation


# instance fields
.field final a:Lrx/internal/operators/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/k$a<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/k$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/k$a<",
            "TR;>;)V"
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 156
    iput-object p1, p0, Lrx/internal/operators/k$b;->a:Lrx/internal/operators/k$a;

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 0

    .line 161
    invoke-static {p0, p1, p2}, Lrx/internal/operators/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 163
    iget-object p1, p0, Lrx/internal/operators/k$b;->a:Lrx/internal/operators/k$a;

    invoke-virtual {p1}, Lrx/internal/operators/k$a;->a()V

    return-void
.end method
