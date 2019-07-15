.class Landroid/support/transition/ao;
.super Landroid/support/transition/an;
.source "ViewUtilsApi18.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x12
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/support/transition/an;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/support/transition/al;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    new-instance v0, Landroid/support/transition/ak;

    invoke-direct {v0, p1}, Landroid/support/transition/ak;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public b(Landroid/view/View;)Landroid/support/transition/av;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    new-instance v0, Landroid/support/transition/au;

    invoke-direct {v0, p1}, Landroid/support/transition/au;-><init>(Landroid/view/View;)V

    return-object v0
.end method
