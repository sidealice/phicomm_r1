.class public Landroid/support/v7/widget/RecyclerView$h;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field c:Landroid/support/v7/widget/RecyclerView$t;

.field final d:Landroid/graphics/Rect;

.field e:Z

.field f:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 11215
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 11203
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$h;->d:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 11204
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$h;->e:Z

    const/4 p1, 0x0

    .line 11208
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$h;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 11211
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11203
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$h;->d:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 11204
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$h;->e:Z

    const/4 p1, 0x0

    .line 11208
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$h;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$h;)V
    .locals 0

    .line 11227
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11203
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$h;->d:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 11204
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$h;->e:Z

    const/4 p1, 0x0

    .line 11208
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$h;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 11223
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11203
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$h;->d:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 11204
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$h;->e:Z

    const/4 p1, 0x0

    .line 11208
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$h;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 11219
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 11203
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$h;->d:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 11204
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$h;->e:Z

    const/4 p1, 0x0

    .line 11208
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$h;->f:Z

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 11247
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->c:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$t;->isInvalid()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .line 11258
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->c:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$t;->isRemoved()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .line 11269
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->c:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$t;->isUpdated()Z

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .line 11287
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$h;->c:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$t;->getLayoutPosition()I

    move-result v0

    return v0
.end method
