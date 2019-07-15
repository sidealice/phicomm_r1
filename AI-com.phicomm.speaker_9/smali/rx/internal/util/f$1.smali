.class Lrx/internal/util/f$1;
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
.field final synthetic a:Lrx/internal/schedulers/b;

.field final synthetic b:Lrx/internal/util/f;


# direct methods
.method constructor <init>(Lrx/internal/util/f;Lrx/internal/schedulers/b;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lrx/internal/util/f$1;->b:Lrx/internal/util/f;

    iput-object p2, p0, Lrx/internal/util/f$1;->a:Lrx/internal/schedulers/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 99
    check-cast p1, Lrx/b/a;

    invoke-virtual {p0, p1}, Lrx/internal/util/f$1;->a(Lrx/b/a;)Lrx/j;

    move-result-object p1

    return-object p1
.end method

.method public a(Lrx/b/a;)Lrx/j;
    .locals 1

    .line 102
    iget-object v0, p0, Lrx/internal/util/f$1;->a:Lrx/internal/schedulers/b;

    invoke-virtual {v0, p1}, Lrx/internal/schedulers/b;->a(Lrx/b/a;)Lrx/j;

    move-result-object p1

    return-object p1
.end method
