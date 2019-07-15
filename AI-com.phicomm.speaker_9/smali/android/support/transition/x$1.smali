.class Landroid/support/transition/x$1;
.super Landroid/support/transition/u;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/x;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/transition/Transition;

.field final synthetic b:Landroid/support/transition/x;


# direct methods
.method constructor <init>(Landroid/support/transition/x;Landroid/support/transition/Transition;)V
    .locals 0

    .line 448
    iput-object p1, p0, Landroid/support/transition/x$1;->b:Landroid/support/transition/x;

    iput-object p2, p0, Landroid/support/transition/x$1;->a:Landroid/support/transition/Transition;

    invoke-direct {p0}, Landroid/support/transition/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/transition/Transition;)V
    .locals 1
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 451
    iget-object v0, p0, Landroid/support/transition/x$1;->a:Landroid/support/transition/Transition;

    invoke-virtual {v0}, Landroid/support/transition/Transition;->e()V

    .line 452
    invoke-virtual {p1, p0}, Landroid/support/transition/Transition;->b(Landroid/support/transition/Transition$c;)Landroid/support/transition/Transition;

    return-void
.end method
