.class Landroid/support/v7/widget/t$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/t;->u(Landroid/support/v7/widget/RecyclerView$t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$t;

.field final synthetic b:Landroid/view/ViewPropertyAnimator;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/support/v7/widget/t;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/t;Landroid/support/v7/widget/RecyclerView$t;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 203
    iput-object p1, p0, Landroid/support/v7/widget/t$4;->d:Landroid/support/v7/widget/t;

    iput-object p2, p0, Landroid/support/v7/widget/t$4;->a:Landroid/support/v7/widget/RecyclerView$t;

    iput-object p3, p0, Landroid/support/v7/widget/t$4;->b:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Landroid/support/v7/widget/t$4;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 211
    iget-object p1, p0, Landroid/support/v7/widget/t$4;->b:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 212
    iget-object p1, p0, Landroid/support/v7/widget/t$4;->c:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 213
    iget-object p1, p0, Landroid/support/v7/widget/t$4;->d:Landroid/support/v7/widget/t;

    iget-object v0, p0, Landroid/support/v7/widget/t$4;->a:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/t;->i(Landroid/support/v7/widget/RecyclerView$t;)V

    .line 214
    iget-object p1, p0, Landroid/support/v7/widget/t$4;->d:Landroid/support/v7/widget/t;

    iget-object p1, p1, Landroid/support/v7/widget/t;->f:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/v7/widget/t$4;->a:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 215
    iget-object p1, p0, Landroid/support/v7/widget/t$4;->d:Landroid/support/v7/widget/t;

    invoke-virtual {p1}, Landroid/support/v7/widget/t;->c()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 206
    iget-object p1, p0, Landroid/support/v7/widget/t$4;->d:Landroid/support/v7/widget/t;

    iget-object v0, p0, Landroid/support/v7/widget/t$4;->a:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/t;->l(Landroid/support/v7/widget/RecyclerView$t;)V

    return-void
.end method
