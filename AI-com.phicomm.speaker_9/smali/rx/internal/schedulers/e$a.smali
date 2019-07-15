.class final Lrx/internal/schedulers/e$a;
.super Lrx/f$a;
.source "ImmediateScheduler.java"

# interfaces
.implements Lrx/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Lrx/g/a;

.field final synthetic b:Lrx/internal/schedulers/e;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/e;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lrx/internal/schedulers/e$a;->b:Lrx/internal/schedulers/e;

    invoke-direct {p0}, Lrx/f$a;-><init>()V

    .line 43
    new-instance p1, Lrx/g/a;

    invoke-direct {p1}, Lrx/g/a;-><init>()V

    iput-object p1, p0, Lrx/internal/schedulers/e$a;->a:Lrx/g/a;

    return-void
.end method


# virtual methods
.method public a(Lrx/b/a;)Lrx/j;
    .locals 0

    .line 58
    invoke-interface {p1}, Lrx/b/a;->a()V

    .line 59
    invoke-static {}, Lrx/g/c;->a()Lrx/j;

    move-result-object p1

    return-object p1
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lrx/internal/schedulers/e$a;->a:Lrx/g/a;

    invoke-virtual {v0}, Lrx/g/a;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .line 64
    iget-object v0, p0, Lrx/internal/schedulers/e$a;->a:Lrx/g/a;

    invoke-virtual {v0}, Lrx/g/a;->unsubscribe()V

    return-void
.end method
