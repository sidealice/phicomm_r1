.class final Lrx/internal/util/InternalObservableUtils$p;
.super Ljava/lang/Object;
.source "InternalObservableUtils.java"

# interfaces
.implements Lrx/b/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/b/f<",
        "Lrx/c<",
        "TT;>;",
        "Lrx/c<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/f<",
            "-",
            "Lrx/c<",
            "TT;>;+",
            "Lrx/c<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field final b:Lrx/f;


# direct methods
.method public constructor <init>(Lrx/b/f;Lrx/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/f<",
            "-",
            "Lrx/c<",
            "TT;>;+",
            "Lrx/c<",
            "TR;>;>;",
            "Lrx/f;",
            ")V"
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$p;->a:Lrx/b/f;

    .line 193
    iput-object p2, p0, Lrx/internal/util/InternalObservableUtils$p;->b:Lrx/f;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 185
    check-cast p1, Lrx/c;

    invoke-virtual {p0, p1}, Lrx/internal/util/InternalObservableUtils$p;->a(Lrx/c;)Lrx/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lrx/c;)Lrx/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c<",
            "TT;>;)",
            "Lrx/c<",
            "TR;>;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$p;->a:Lrx/b/f;

    invoke-interface {v0, p1}, Lrx/b/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrx/c;

    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$p;->b:Lrx/f;

    invoke-virtual {p1, v0}, Lrx/c;->a(Lrx/f;)Lrx/c;

    move-result-object p1

    return-object p1
.end method
