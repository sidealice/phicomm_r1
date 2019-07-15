.class Lrx/internal/operators/g$1;
.super Ljava/lang/Object;
.source "OperatorDoOnRequest.java"

# interfaces
.implements Lrx/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/g;->a(Lrx/i;)Lrx/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/g$a;

.field final synthetic b:Lrx/internal/operators/g;


# direct methods
.method constructor <init>(Lrx/internal/operators/g;Lrx/internal/operators/g$a;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lrx/internal/operators/g$1;->b:Lrx/internal/operators/g;

    iput-object p2, p0, Lrx/internal/operators/g$1;->a:Lrx/internal/operators/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 2

    .line 46
    iget-object v0, p0, Lrx/internal/operators/g$1;->b:Lrx/internal/operators/g;

    iget-object v0, v0, Lrx/internal/operators/g;->a:Lrx/b/b;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/b/b;->call(Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lrx/internal/operators/g$1;->a:Lrx/internal/operators/g$a;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/g$a;->a(Lrx/internal/operators/g$a;J)V

    return-void
.end method
