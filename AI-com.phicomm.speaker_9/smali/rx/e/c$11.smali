.class final Lrx/e/c$11;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lrx/b/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/e/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b/g<",
        "Lrx/g;",
        "Lrx/g$a;",
        "Lrx/g$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 123
    check-cast p1, Lrx/g;

    check-cast p2, Lrx/g$a;

    invoke-virtual {p0, p1, p2}, Lrx/e/c$11;->a(Lrx/g;Lrx/g$a;)Lrx/g$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lrx/g;Lrx/g$a;)Lrx/g$a;
    .locals 3

    .line 127
    invoke-static {}, Lrx/e/f;->a()Lrx/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e/f;->d()Lrx/e/h;

    move-result-object v0

    .line 129
    invoke-static {}, Lrx/e/i;->a()Lrx/e/h;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object p2

    .line 133
    :cond_0
    new-instance v1, Lrx/internal/operators/l;

    new-instance v2, Lrx/internal/operators/n;

    invoke-direct {v2, p2}, Lrx/internal/operators/n;-><init>(Lrx/g$a;)V

    invoke-virtual {v0, p1, v2}, Lrx/e/h;->a(Lrx/g;Lrx/c$a;)Lrx/c$a;

    move-result-object p1

    invoke-direct {v1, p1}, Lrx/internal/operators/l;-><init>(Lrx/c$a;)V

    return-object v1
.end method
