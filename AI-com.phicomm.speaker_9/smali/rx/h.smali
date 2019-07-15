.class public abstract Lrx/h;
.super Ljava/lang/Object;
.source "SingleSubscriber.java"

# interfaces
.implements Lrx/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/j;"
    }
.end annotation


# instance fields
.field private final a:Lrx/internal/util/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lrx/internal/util/g;

    invoke-direct {v0}, Lrx/internal/util/g;-><init>()V

    iput-object v0, p0, Lrx/h;->a:Lrx/internal/util/g;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Throwable;)V
.end method

.method public final a(Lrx/j;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lrx/h;->a:Lrx/internal/util/g;

    invoke-virtual {v0, p1}, Lrx/internal/util/g;->a(Lrx/j;)V

    return-void
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lrx/h;->a:Lrx/internal/util/g;

    invoke-virtual {v0}, Lrx/internal/util/g;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public final unsubscribe()V
    .locals 1

    .line 72
    iget-object v0, p0, Lrx/h;->a:Lrx/internal/util/g;

    invoke-virtual {v0}, Lrx/internal/util/g;->unsubscribe()V

    return-void
.end method
