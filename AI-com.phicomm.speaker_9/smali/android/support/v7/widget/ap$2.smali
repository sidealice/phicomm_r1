.class Landroid/support/v7/widget/ap$2;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "ToolbarWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ap;->a(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/support/v7/widget/ap;

.field private c:Z


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ap;I)V
    .locals 0

    .line 568
    iput-object p1, p0, Landroid/support/v7/widget/ap$2;->b:Landroid/support/v7/widget/ap;

    iput p2, p0, Landroid/support/v7/widget/ap$2;->a:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 569
    iput-boolean p1, p0, Landroid/support/v7/widget/ap$2;->c:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 585
    iput-boolean p1, p0, Landroid/support/v7/widget/ap$2;->c:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 578
    iget-boolean p1, p0, Landroid/support/v7/widget/ap$2;->c:Z

    if-nez p1, :cond_0

    .line 579
    iget-object p1, p0, Landroid/support/v7/widget/ap$2;->b:Landroid/support/v7/widget/ap;

    iget-object p1, p1, Landroid/support/v7/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    iget v0, p0, Landroid/support/v7/widget/ap$2;->a:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 573
    iget-object p1, p0, Landroid/support/v7/widget/ap$2;->b:Landroid/support/v7/widget/ap;

    iget-object p1, p1, Landroid/support/v7/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    return-void
.end method
