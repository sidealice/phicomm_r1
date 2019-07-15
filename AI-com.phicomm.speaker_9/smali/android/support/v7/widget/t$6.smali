.class Landroid/support/v7/widget/t$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/t;->b(Landroid/support/v7/widget/RecyclerView$t;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$t;

.field final synthetic b:I

.field final synthetic c:Landroid/view/View;

.field final synthetic d:I

.field final synthetic e:Landroid/view/ViewPropertyAnimator;

.field final synthetic f:Landroid/support/v7/widget/t;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/t;Landroid/support/v7/widget/RecyclerView$t;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 292
    iput-object p1, p0, Landroid/support/v7/widget/t$6;->f:Landroid/support/v7/widget/t;

    iput-object p2, p0, Landroid/support/v7/widget/t$6;->a:Landroid/support/v7/widget/RecyclerView$t;

    iput p3, p0, Landroid/support/v7/widget/t$6;->b:I

    iput-object p4, p0, Landroid/support/v7/widget/t$6;->c:Landroid/view/View;

    iput p5, p0, Landroid/support/v7/widget/t$6;->d:I

    iput-object p6, p0, Landroid/support/v7/widget/t$6;->e:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 300
    iget p1, p0, Landroid/support/v7/widget/t$6;->b:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 301
    iget-object p1, p0, Landroid/support/v7/widget/t$6;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 303
    :cond_0
    iget p1, p0, Landroid/support/v7/widget/t$6;->d:I

    if-eqz p1, :cond_1

    .line 304
    iget-object p1, p0, Landroid/support/v7/widget/t$6;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 310
    iget-object p1, p0, Landroid/support/v7/widget/t$6;->e:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 311
    iget-object p1, p0, Landroid/support/v7/widget/t$6;->f:Landroid/support/v7/widget/t;

    iget-object v0, p0, Landroid/support/v7/widget/t$6;->a:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/t;->j(Landroid/support/v7/widget/RecyclerView$t;)V

    .line 312
    iget-object p1, p0, Landroid/support/v7/widget/t$6;->f:Landroid/support/v7/widget/t;

    iget-object p1, p1, Landroid/support/v7/widget/t;->e:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/v7/widget/t$6;->a:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 313
    iget-object p1, p0, Landroid/support/v7/widget/t$6;->f:Landroid/support/v7/widget/t;

    invoke-virtual {p1}, Landroid/support/v7/widget/t;->c()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 295
    iget-object p1, p0, Landroid/support/v7/widget/t$6;->f:Landroid/support/v7/widget/t;

    iget-object v0, p0, Landroid/support/v7/widget/t$6;->a:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/t;->m(Landroid/support/v7/widget/RecyclerView$t;)V

    return-void
.end method
