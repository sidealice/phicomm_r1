.class public Landroid/support/v7/app/a;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/a$a;
    }
.end annotation


# instance fields
.field a:Z

.field private final b:Landroid/support/v7/app/a$a;

.field private c:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

.field private d:Z

.field private final e:I

.field private final f:I


# direct methods
.method private a(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Landroid/support/v7/app/a;->c:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->b(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 512
    iget-object v0, p0, Landroid/support/v7/app/a;->c:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->b(Z)V

    .line 514
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/a;->c:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->c(F)V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 1

    .line 501
    iget-object v0, p0, Landroid/support/v7/app/a;->b:Landroid/support/v7/app/a$a;

    invoke-interface {v0, p1}, Landroid/support/v7/app/a$a;->a(I)V

    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 446
    invoke-direct {p0, p1}, Landroid/support/v7/app/a;->a(F)V

    .line 447
    iget-boolean p1, p0, Landroid/support/v7/app/a;->a:Z

    if-eqz p1, :cond_0

    .line 448
    iget p1, p0, Landroid/support/v7/app/a;->e:I

    invoke-virtual {p0, p1}, Landroid/support/v7/app/a;->a(I)V

    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 431
    invoke-direct {p0, p1}, Landroid/support/v7/app/a;->a(F)V

    .line 432
    iget-boolean p1, p0, Landroid/support/v7/app/a;->a:Z

    if-eqz p1, :cond_0

    .line 433
    iget p1, p0, Landroid/support/v7/app/a;->f:I

    invoke-virtual {p0, p1}, Landroid/support/v7/app/a;->a(I)V

    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 1

    .line 415
    iget-boolean p1, p0, Landroid/support/v7/app/a;->d:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 416
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v7/app/a;->a(F)V

    goto :goto_0

    .line 418
    :cond_0
    invoke-direct {p0, v0}, Landroid/support/v7/app/a;->a(F)V

    :goto_0
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0

    return-void
.end method
