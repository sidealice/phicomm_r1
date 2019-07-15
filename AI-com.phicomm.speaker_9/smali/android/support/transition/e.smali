.class public Landroid/support/transition/e;
.super Landroid/support/transition/x;
.source "AutoTransition.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/support/transition/x;-><init>()V

    .line 38
    invoke-direct {p0}, Landroid/support/transition/e;->p()V

    return-void
.end method

.method private p()V
    .locals 3

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Landroid/support/transition/e;->a(I)Landroid/support/transition/x;

    .line 48
    new-instance v1, Landroid/support/transition/g;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/support/transition/g;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/support/transition/e;->b(Landroid/support/transition/Transition;)Landroid/support/transition/x;

    move-result-object v1

    new-instance v2, Landroid/support/transition/f;

    invoke-direct {v2}, Landroid/support/transition/f;-><init>()V

    .line 49
    invoke-virtual {v1, v2}, Landroid/support/transition/x;->b(Landroid/support/transition/Transition;)Landroid/support/transition/x;

    move-result-object v1

    new-instance v2, Landroid/support/transition/g;

    invoke-direct {v2, v0}, Landroid/support/transition/g;-><init>(I)V

    .line 50
    invoke-virtual {v1, v2}, Landroid/support/transition/x;->b(Landroid/support/transition/Transition;)Landroid/support/transition/x;

    return-void
.end method
