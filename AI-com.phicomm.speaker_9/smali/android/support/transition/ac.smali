.class Landroid/support/transition/ac;
.super Landroid/support/transition/aj;
.source "ViewGroupOverlayApi14.java"

# interfaces
.implements Landroid/support/transition/ae;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/support/transition/aj;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static a(Landroid/view/ViewGroup;)Landroid/support/transition/ac;
    .locals 0

    .line 33
    invoke-static {p0}, Landroid/support/transition/aj;->d(Landroid/view/View;)Landroid/support/transition/aj;

    move-result-object p0

    check-cast p0, Landroid/support/transition/ac;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    iget-object v0, p0, Landroid/support/transition/ac;->a:Landroid/support/transition/aj$a;

    invoke-virtual {v0, p1}, Landroid/support/transition/aj$a;->a(Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    iget-object v0, p0, Landroid/support/transition/ac;->a:Landroid/support/transition/aj$a;

    invoke-virtual {v0, p1}, Landroid/support/transition/aj$a;->b(Landroid/view/View;)V

    return-void
.end method
