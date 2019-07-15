.class Landroid/support/transition/x$a;
.super Landroid/support/transition/u;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/support/transition/x;


# direct methods
.method constructor <init>(Landroid/support/transition/x;)V
    .locals 0

    .line 378
    invoke-direct {p0}, Landroid/support/transition/u;-><init>()V

    .line 379
    iput-object p1, p0, Landroid/support/transition/x$a;->a:Landroid/support/transition/x;

    return-void
.end method


# virtual methods
.method public a(Landroid/support/transition/Transition;)V
    .locals 2
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 392
    iget-object v0, p0, Landroid/support/transition/x$a;->a:Landroid/support/transition/x;

    invoke-static {v0}, Landroid/support/transition/x;->b(Landroid/support/transition/x;)I

    .line 393
    iget-object v0, p0, Landroid/support/transition/x$a;->a:Landroid/support/transition/x;

    invoke-static {v0}, Landroid/support/transition/x;->c(Landroid/support/transition/x;)I

    move-result v0

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Landroid/support/transition/x$a;->a:Landroid/support/transition/x;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/transition/x;->a(Landroid/support/transition/x;Z)Z

    .line 396
    iget-object v0, p0, Landroid/support/transition/x$a;->a:Landroid/support/transition/x;

    invoke-virtual {v0}, Landroid/support/transition/x;->k()V

    .line 398
    :cond_0
    invoke-virtual {p1, p0}, Landroid/support/transition/Transition;->b(Landroid/support/transition/Transition$c;)Landroid/support/transition/Transition;

    return-void
.end method

.method public d(Landroid/support/transition/Transition;)V
    .locals 1
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 384
    iget-object p1, p0, Landroid/support/transition/x$a;->a:Landroid/support/transition/x;

    invoke-static {p1}, Landroid/support/transition/x;->a(Landroid/support/transition/x;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 385
    iget-object p1, p0, Landroid/support/transition/x$a;->a:Landroid/support/transition/x;

    invoke-virtual {p1}, Landroid/support/transition/x;->j()V

    .line 386
    iget-object p1, p0, Landroid/support/transition/x$a;->a:Landroid/support/transition/x;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/transition/x;->a(Landroid/support/transition/x;Z)Z

    :cond_0
    return-void
.end method
