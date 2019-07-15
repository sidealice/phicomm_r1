.class Landroid/support/v7/widget/t$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/t;->c(Landroid/support/v7/widget/RecyclerView$t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$t;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/ViewPropertyAnimator;

.field final synthetic d:Landroid/support/v7/widget/t;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/t;Landroid/support/v7/widget/RecyclerView$t;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 233
    iput-object p1, p0, Landroid/support/v7/widget/t$5;->d:Landroid/support/v7/widget/t;

    iput-object p2, p0, Landroid/support/v7/widget/t$5;->a:Landroid/support/v7/widget/RecyclerView$t;

    iput-object p3, p0, Landroid/support/v7/widget/t$5;->b:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v7/widget/t$5;->c:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 241
    iget-object p1, p0, Landroid/support/v7/widget/t$5;->b:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 246
    iget-object p1, p0, Landroid/support/v7/widget/t$5;->c:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 247
    iget-object p1, p0, Landroid/support/v7/widget/t$5;->d:Landroid/support/v7/widget/t;

    iget-object v0, p0, Landroid/support/v7/widget/t$5;->a:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/t;->k(Landroid/support/v7/widget/RecyclerView$t;)V

    .line 248
    iget-object p1, p0, Landroid/support/v7/widget/t$5;->d:Landroid/support/v7/widget/t;

    iget-object p1, p1, Landroid/support/v7/widget/t;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/v7/widget/t$5;->a:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 249
    iget-object p1, p0, Landroid/support/v7/widget/t$5;->d:Landroid/support/v7/widget/t;

    invoke-virtual {p1}, Landroid/support/v7/widget/t;->c()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 236
    iget-object p1, p0, Landroid/support/v7/widget/t$5;->d:Landroid/support/v7/widget/t;

    iget-object v0, p0, Landroid/support/v7/widget/t$5;->a:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/t;->n(Landroid/support/v7/widget/RecyclerView$t;)V

    return-void
.end method
