.class Lrx/internal/util/f$2;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/b/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/f;->c(Lrx/f;)Lrx/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b/f<",
        "Lrx/b/a;",
        "Lrx/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/f;

.field final synthetic b:Lrx/internal/util/f;


# direct methods
.method constructor <init>(Lrx/internal/util/f;Lrx/f;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lrx/internal/util/f$2;->b:Lrx/internal/util/f;

    iput-object p2, p0, Lrx/internal/util/f$2;->a:Lrx/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 106
    check-cast p1, Lrx/b/a;

    invoke-virtual {p0, p1}, Lrx/internal/util/f$2;->a(Lrx/b/a;)Lrx/j;

    move-result-object p1

    return-object p1
.end method

.method public a(Lrx/b/a;)Lrx/j;
    .locals 2

    .line 109
    iget-object v0, p0, Lrx/internal/util/f$2;->a:Lrx/f;

    invoke-virtual {v0}, Lrx/f;->a()Lrx/f$a;

    move-result-object v0

    .line 110
    new-instance v1, Lrx/internal/util/f$2$1;

    invoke-direct {v1, p0, p1, v0}, Lrx/internal/util/f$2$1;-><init>(Lrx/internal/util/f$2;Lrx/b/a;Lrx/f$a;)V

    invoke-virtual {v0, v1}, Lrx/f$a;->a(Lrx/b/a;)Lrx/j;

    return-object v0
.end method
