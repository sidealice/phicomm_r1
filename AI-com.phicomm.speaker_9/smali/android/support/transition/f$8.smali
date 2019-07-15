.class Landroid/support/transition/f$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/f;->a(Landroid/view/ViewGroup;Landroid/support/transition/z;Landroid/support/transition/z;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/transition/f$a;

.field final synthetic b:Landroid/support/transition/f;

.field private mViewBounds:Landroid/support/transition/f$a;


# direct methods
.method constructor <init>(Landroid/support/transition/f;Landroid/support/transition/f$a;)V
    .locals 0

    .line 322
    iput-object p1, p0, Landroid/support/transition/f$8;->b:Landroid/support/transition/f;

    iput-object p2, p0, Landroid/support/transition/f$8;->a:Landroid/support/transition/f$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 325
    iget-object p1, p0, Landroid/support/transition/f$8;->a:Landroid/support/transition/f$a;

    iput-object p1, p0, Landroid/support/transition/f$8;->mViewBounds:Landroid/support/transition/f$a;

    return-void
.end method
