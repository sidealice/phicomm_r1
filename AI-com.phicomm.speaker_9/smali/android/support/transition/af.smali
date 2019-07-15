.class Landroid/support/transition/af;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"


# static fields
.field private static final a:Landroid/support/transition/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 32
    new-instance v0, Landroid/support/transition/ah;

    invoke-direct {v0}, Landroid/support/transition/ah;-><init>()V

    sput-object v0, Landroid/support/transition/af;->a:Landroid/support/transition/ai;

    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Landroid/support/transition/ag;

    invoke-direct {v0}, Landroid/support/transition/ag;-><init>()V

    sput-object v0, Landroid/support/transition/af;->a:Landroid/support/transition/ai;

    :goto_0
    return-void
.end method

.method static a(Landroid/view/ViewGroup;)Landroid/support/transition/ae;
    .locals 1
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    sget-object v0, Landroid/support/transition/af;->a:Landroid/support/transition/ai;

    invoke-interface {v0, p0}, Landroid/support/transition/ai;->a(Landroid/view/ViewGroup;)Landroid/support/transition/ae;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/view/ViewGroup;Z)V
    .locals 1
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    sget-object v0, Landroid/support/transition/af;->a:Landroid/support/transition/ai;

    invoke-interface {v0, p0, p1}, Landroid/support/transition/ai;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method
