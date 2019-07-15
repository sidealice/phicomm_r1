.class Landroid/support/v7/view/g$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompatSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/view/g;

.field private b:Z

.field private c:I


# direct methods
.method constructor <init>(Landroid/support/v7/view/g;)V
    .locals 0

    .line 120
    iput-object p1, p0, Landroid/support/v7/view/g$1;->a:Landroid/support/v7/view/g;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 121
    iput-boolean p1, p0, Landroid/support/v7/view/g$1;->b:Z

    .line 122
    iput p1, p0, Landroid/support/v7/view/g$1;->c:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Landroid/support/v7/view/g$1;->c:I

    .line 137
    iput-boolean v0, p0, Landroid/support/v7/view/g$1;->b:Z

    .line 138
    iget-object v0, p0, Landroid/support/v7/view/g$1;->a:Landroid/support/v7/view/g;

    invoke-virtual {v0}, Landroid/support/v7/view/g;->b()V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 143
    iget p1, p0, Landroid/support/v7/view/g$1;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/v7/view/g$1;->c:I

    iget-object v0, p0, Landroid/support/v7/view/g$1;->a:Landroid/support/v7/view/g;

    iget-object v0, v0, Landroid/support/v7/view/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 144
    iget-object p1, p0, Landroid/support/v7/view/g$1;->a:Landroid/support/v7/view/g;

    iget-object p1, p1, Landroid/support/v7/view/g;->b:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Landroid/support/v7/view/g$1;->a:Landroid/support/v7/view/g;

    iget-object p1, p1, Landroid/support/v7/view/g;->b:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 147
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/view/g$1;->a()V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 126
    iget-boolean p1, p0, Landroid/support/v7/view/g$1;->b:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 129
    iput-boolean p1, p0, Landroid/support/v7/view/g$1;->b:Z

    .line 130
    iget-object p1, p0, Landroid/support/v7/view/g$1;->a:Landroid/support/v7/view/g;

    iget-object p1, p1, Landroid/support/v7/view/g;->b:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz p1, :cond_1

    .line 131
    iget-object p1, p0, Landroid/support/v7/view/g$1;->a:Landroid/support/v7/view/g;

    iget-object p1, p1, Landroid/support/v7/view/g;->b:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    :cond_1
    return-void
.end method
