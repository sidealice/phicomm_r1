.class final Lrx/e/c$9;
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
        "Lrx/c;",
        "Lrx/c$a;",
        "Lrx/c$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 109
    check-cast p1, Lrx/c;

    check-cast p2, Lrx/c$a;

    invoke-virtual {p0, p1, p2}, Lrx/e/c$9;->a(Lrx/c;Lrx/c$a;)Lrx/c$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lrx/c;Lrx/c$a;)Lrx/c$a;
    .locals 1

    .line 112
    invoke-static {}, Lrx/e/f;->a()Lrx/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e/f;->c()Lrx/e/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrx/e/d;->a(Lrx/c;Lrx/c$a;)Lrx/c$a;

    move-result-object p1

    return-object p1
.end method
