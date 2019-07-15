.class public Landroid/support/v7/widget/a/a;
.super Landroid/support/v7/widget/RecyclerView$f;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/a/a$b;,
        Landroid/support/v7/widget/a/a$a;,
        Landroid/support/v7/widget/a/a$c;
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/support/v7/widget/RecyclerView$t;

.field c:F

.field d:F

.field e:F

.field f:F

.field g:F

.field h:F

.field i:I

.field j:Landroid/support/v7/widget/a/a$a;

.field k:I

.field l:I

.field m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field n:Landroid/support/v7/widget/RecyclerView;

.field o:Landroid/view/VelocityTracker;

.field p:Landroid/view/View;

.field q:I

.field private final r:[F

.field private s:Landroid/support/v7/widget/RecyclerView$d;

.field private t:J


# direct methods
.method private a([F)V
    .locals 3

    .line 513
    iget v0, p0, Landroid/support/v7/widget/a/a;->l:I

    and-int/lit8 v0, v0, 0xc

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 514
    iget v0, p0, Landroid/support/v7/widget/a/a;->g:F

    iget v2, p0, Landroid/support/v7/widget/a/a;->e:F

    add-float/2addr v0, v2

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/RecyclerView$t;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$t;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p1, v1

    goto :goto_0

    .line 516
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/RecyclerView$t;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$t;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    aput v0, p1, v1

    .line 518
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/a/a;->l:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 519
    iget v0, p0, Landroid/support/v7/widget/a/a;->h:F

    iget v2, p0, Landroid/support/v7/widget/a/a;->f:F

    add-float/2addr v0, v2

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/RecyclerView$t;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$t;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p1, v1

    goto :goto_1

    .line 521
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/RecyclerView$t;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$t;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    aput v0, p1, v1

    :goto_1
    return-void
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 5

    .line 1164
    iget v0, p0, Landroid/support/v7/widget/a/a;->k:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v1

    .line 1167
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/a$a;

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2, p1}, Landroid/support/v7/widget/a/a$a;->getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v0

    .line 1168
    iget-object v2, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/a$a;

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->n:Landroid/support/v7/widget/RecyclerView;

    .line 1170
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 1168
    invoke-virtual {v2, v0, v3}, Landroid/support/v7/widget/a/a$a;->convertToAbsoluteDirection(II)I

    move-result v2

    const v3, 0xff00

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    return v1

    :cond_1
    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    .line 1179
    iget v3, p0, Landroid/support/v7/widget/a/a;->e:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/a/a;->f:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 1180
    invoke-direct {p0, p1, v2}, Landroid/support/v7/widget/a/a;->b(Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v3

    if-lez v3, :cond_3

    and-int p1, v0, v3

    if-nez p1, :cond_2

    .line 1184
    iget-object p1, p0, Landroid/support/v7/widget/a/a;->n:Landroid/support/v7/widget/RecyclerView;

    .line 1185
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    .line 1184
    invoke-static {v3, p1}, Landroid/support/v7/widget/a/a$a;->convertToRelativeDirection(II)I

    move-result p1

    return p1

    :cond_2
    return v3

    .line 1189
    :cond_3
    invoke-direct {p0, p1, v2}, Landroid/support/v7/widget/a/a;->c(Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result p1

    if-lez p1, :cond_7

    return p1

    .line 1193
    :cond_4
    invoke-direct {p0, p1, v2}, Landroid/support/v7/widget/a/a;->c(Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result v3

    if-lez v3, :cond_5

    return v3

    .line 1196
    :cond_5
    invoke-direct {p0, p1, v2}, Landroid/support/v7/widget/a/a;->b(Landroid/support/v7/widget/RecyclerView$t;I)I

    move-result p1

    if-lez p1, :cond_7

    and-int/2addr v0, p1

    if-nez v0, :cond_6

    .line 1200
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->n:Landroid/support/v7/widget/RecyclerView;

    .line 1201
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 1200
    invoke-static {p1, v0}, Landroid/support/v7/widget/a/a$a;->convertToRelativeDirection(II)I

    move-result p1

    return p1

    :cond_6
    return p1

    :cond_7
    return v1
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$t;I)I
    .locals 8

    and-int/lit8 v0, p2, 0xc

    if-eqz v0, :cond_3

    .line 1211
    iget v0, p0, Landroid/support/v7/widget/a/a;->e:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1212
    :goto_0
    iget-object v4, p0, Landroid/support/v7/widget/a/a;->o:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/support/v7/widget/a/a;->i:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_2

    .line 1213
    iget-object v4, p0, Landroid/support/v7/widget/a/a;->o:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    iget-object v6, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/a$a;

    iget v7, p0, Landroid/support/v7/widget/a/a;->d:F

    .line 1214
    invoke-virtual {v6, v7}, Landroid/support/v7/widget/a/a$a;->getSwipeVelocityThreshold(F)F

    move-result v6

    .line 1213
    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1215
    iget-object v4, p0, Landroid/support/v7/widget/a/a;->o:Landroid/view/VelocityTracker;

    iget v5, p0, Landroid/support/v7/widget/a/a;->i:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 1216
    iget-object v5, p0, Landroid/support/v7/widget/a/a;->o:Landroid/view/VelocityTracker;

    iget v6, p0, Landroid/support/v7/widget/a/a;->i:I

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    cmpl-float v1, v4, v1

    if-lez v1, :cond_1

    move v2, v3

    .line 1218
    :cond_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    and-int v3, v2, p2

    if-eqz v3, :cond_2

    if-ne v0, v2, :cond_2

    .line 1219
    iget-object v3, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/a$a;

    iget v4, p0, Landroid/support/v7/widget/a/a;->c:F

    .line 1220
    invoke-virtual {v3, v4}, Landroid/support/v7/widget/a/a$a;->getSwipeEscapeVelocity(F)F

    move-result v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_2

    .line 1221
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    return v2

    .line 1226
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/a/a;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/a$a;

    .line 1227
    invoke-virtual {v2, p1}, Landroid/support/v7/widget/a/a$a;->getSwipeThreshold(Landroid/support/v7/widget/RecyclerView$t;)F

    move-result p1

    mul-float/2addr v1, p1

    and-int p1, p2, v0

    if-eqz p1, :cond_3

    .line 1229
    iget p1, p0, Landroid/support/v7/widget/a/a;->e:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private c(Landroid/support/v7/widget/RecyclerView$t;I)I
    .locals 8

    and-int/lit8 v0, p2, 0x3

    if-eqz v0, :cond_3

    .line 1238
    iget v0, p0, Landroid/support/v7/widget/a/a;->f:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1239
    :goto_0
    iget-object v4, p0, Landroid/support/v7/widget/a/a;->o:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/support/v7/widget/a/a;->i:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_2

    .line 1240
    iget-object v4, p0, Landroid/support/v7/widget/a/a;->o:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    iget-object v6, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/a$a;

    iget v7, p0, Landroid/support/v7/widget/a/a;->d:F

    .line 1241
    invoke-virtual {v6, v7}, Landroid/support/v7/widget/a/a$a;->getSwipeVelocityThreshold(F)F

    move-result v6

    .line 1240
    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1242
    iget-object v4, p0, Landroid/support/v7/widget/a/a;->o:Landroid/view/VelocityTracker;

    iget v5, p0, Landroid/support/v7/widget/a/a;->i:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 1243
    iget-object v5, p0, Landroid/support/v7/widget/a/a;->o:Landroid/view/VelocityTracker;

    iget v6, p0, Landroid/support/v7/widget/a/a;->i:I

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    cmpl-float v1, v5, v1

    if-lez v1, :cond_1

    move v2, v3

    .line 1245
    :cond_1
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    and-int v3, v2, p2

    if-eqz v3, :cond_2

    if-ne v2, v0, :cond_2

    .line 1246
    iget-object v3, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/a$a;

    iget v5, p0, Landroid/support/v7/widget/a/a;->c:F

    .line 1247
    invoke-virtual {v3, v5}, Landroid/support/v7/widget/a/a$a;->getSwipeEscapeVelocity(F)F

    move-result v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_2

    .line 1248
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    return v2

    .line 1253
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/a/a;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/a$a;

    .line 1254
    invoke-virtual {v2, p1}, Landroid/support/v7/widget/a/a$a;->getSwipeThreshold(Landroid/support/v7/widget/RecyclerView$t;)F

    move-result p1

    mul-float/2addr v1, p1

    and-int p1, p2, v0

    if-eqz p1, :cond_3

    .line 1255
    iget p1, p0, Landroid/support/v7/widget/a/a;->f:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private c()V
    .locals 1

    .line 919
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->o:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 921
    iput-object v0, p0, Landroid/support/v7/widget/a/a;->o:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .line 1263
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    return-void

    .line 1266
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->s:Landroid/support/v7/widget/RecyclerView$d;

    if-nez v0, :cond_1

    .line 1267
    new-instance v0, Landroid/support/v7/widget/a/a$3;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/a/a$3;-><init>(Landroid/support/v7/widget/a/a;)V

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->s:Landroid/support/v7/widget/RecyclerView$d;

    .line 1285
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->n:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->s:Landroid/support/v7/widget/RecyclerView$d;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setChildDrawingOrderCallback(Landroid/support/v7/widget/RecyclerView$d;)V

    return-void
.end method


# virtual methods
.method a(Landroid/support/v7/widget/RecyclerView$t;Z)I
    .locals 3

    .line 890
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 892
    iget-object v1, p0, Landroid/support/v7/widget/a/a;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/a/a$b;

    .line 893
    iget-object v2, v1, Landroid/support/v7/widget/a/a$b;->h:Landroid/support/v7/widget/RecyclerView$t;

    if-ne v2, p1, :cond_1

    .line 894
    iget-boolean p1, v1, Landroid/support/v7/widget/a/a$b;->n:Z

    or-int/2addr p1, p2

    iput-boolean p1, v1, Landroid/support/v7/widget/a/a$b;->n:Z

    .line 895
    iget-boolean p1, v1, Landroid/support/v7/widget/a/a$b;->o:Z

    if-nez p1, :cond_0

    .line 896
    invoke-virtual {v1}, Landroid/support/v7/widget/a/a$b;->b()V

    .line 898
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/a/a;->m:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 899
    iget p1, v1, Landroid/support/v7/widget/a/a$b;->j:I

    return p1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 9

    .line 528
    iget-object p3, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/RecyclerView$t;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 529
    iget-object p3, p0, Landroid/support/v7/widget/a/a;->r:[F

    invoke-direct {p0, p3}, Landroid/support/v7/widget/a/a;->a([F)V

    .line 530
    iget-object p3, p0, Landroid/support/v7/widget/a/a;->r:[F

    const/4 v0, 0x0

    aget v0, p3, v0

    .line 531
    iget-object p3, p0, Landroid/support/v7/widget/a/a;->r:[F

    const/4 v1, 0x1

    aget p3, p3, v1

    move v8, p3

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, v0

    move v8, v7

    .line 533
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/a$a;

    iget-object v4, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/RecyclerView$t;

    iget-object v5, p0, Landroid/support/v7/widget/a/a;->m:Ljava/util/List;

    iget v6, p0, Landroid/support/v7/widget/a/a;->k:I

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v8}, Landroid/support/v7/widget/a/a$a;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$t;Ljava/util/List;IFF)V

    return-void
.end method

.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 908
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 2

    .line 1067
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/a$a;

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/a/a$a;->hasDragFlag(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$t;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "ItemTouchHelper"

    const-string v0, "Start drag has been called but dragging is not enabled"

    .line 1068
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1071
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$t;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->n:Landroid/support/v7/widget/RecyclerView;

    if-eq v0, v1, :cond_1

    const-string p1, "ItemTouchHelper"

    const-string v0, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    .line 1072
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1076
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/a/a;->b()V

    const/4 v0, 0x0

    .line 1077
    iput v0, p0, Landroid/support/v7/widget/a/a;->f:F

    iput v0, p0, Landroid/support/v7/widget/a/a;->e:F

    const/4 v0, 0x2

    .line 1078
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/RecyclerView$t;I)V

    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$t;I)V
    .locals 24

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    .line 559
    iget-object v0, v11, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/RecyclerView$t;

    if-ne v12, v0, :cond_0

    iget v0, v11, Landroid/support/v7/widget/a/a;->k:I

    if-ne v13, v0, :cond_0

    return-void

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 562
    iput-wide v0, v11, Landroid/support/v7/widget/a/a;->t:J

    .line 563
    iget v4, v11, Landroid/support/v7/widget/a/a;->k:I

    const/4 v14, 0x1

    .line 565
    invoke-virtual {v11, v12, v14}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/RecyclerView$t;Z)I

    .line 566
    iput v13, v11, Landroid/support/v7/widget/a/a;->k:I

    const/4 v15, 0x2

    if-ne v13, v15, :cond_1

    .line 571
    iget-object v0, v12, Landroid/support/v7/widget/RecyclerView$t;->itemView:Landroid/view/View;

    iput-object v0, v11, Landroid/support/v7/widget/a/a;->p:Landroid/view/View;

    .line 572
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/a/a;->d()V

    :cond_1
    const/16 v10, 0x8

    mul-int v0, v10, v13

    add-int/2addr v0, v10

    shl-int v0, v14, v0

    add-int/lit8 v16, v0, -0x1

    .line 578
    iget-object v0, v11, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/RecyclerView$t;

    const/4 v9, 0x0

    if-eqz v0, :cond_7

    .line 579
    iget-object v8, v11, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/RecyclerView$t;

    .line 580
    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView$t;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    if-ne v4, v15, :cond_2

    move v7, v9

    goto :goto_0

    .line 582
    :cond_2
    invoke-direct {v11, v8}, Landroid/support/v7/widget/a/a;->b(Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v0

    move v7, v0

    .line 583
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/a/a;->c()V

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq v7, v0, :cond_3

    if-eq v7, v10, :cond_3

    const/16 v2, 0x10

    if-eq v7, v2, :cond_3

    const/16 v2, 0x20

    if-eq v7, v2, :cond_3

    packed-switch v7, :pswitch_data_0

    move/from16 v17, v1

    move/from16 v18, v17

    goto :goto_1

    .line 598
    :pswitch_0
    iget v2, v11, Landroid/support/v7/widget/a/a;->f:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    iget-object v3, v11, Landroid/support/v7/widget/a/a;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move/from16 v17, v1

    move/from16 v18, v2

    goto :goto_1

    .line 593
    :cond_3
    iget v2, v11, Landroid/support/v7/widget/a/a;->e:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    iget-object v3, v11, Landroid/support/v7/widget/a/a;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move/from16 v18, v1

    move/from16 v17, v2

    :goto_1
    if-ne v4, v15, :cond_4

    move v6, v10

    goto :goto_2

    :cond_4
    if-lez v7, :cond_5

    move v6, v15

    goto :goto_2

    :cond_5
    move v6, v0

    .line 611
    :goto_2
    iget-object v0, v11, Landroid/support/v7/widget/a/a;->r:[F

    invoke-direct {v11, v0}, Landroid/support/v7/widget/a/a;->a([F)V

    .line 612
    iget-object v0, v11, Landroid/support/v7/widget/a/a;->r:[F

    aget v19, v0, v9

    .line 613
    iget-object v0, v11, Landroid/support/v7/widget/a/a;->r:[F

    aget v20, v0, v14

    .line 614
    new-instance v5, Landroid/support/v7/widget/a/a$1;

    move-object v0, v5

    move-object v1, v11

    move-object v2, v8

    move v3, v6

    move-object v14, v5

    move/from16 v5, v19

    move v15, v6

    move/from16 v6, v20

    move/from16 v21, v7

    move/from16 v7, v17

    move-object/from16 v22, v8

    move/from16 v8, v18

    move/from16 v9, v21

    move/from16 v21, v10

    move-object/from16 v10, v22

    invoke-direct/range {v0 .. v10}, Landroid/support/v7/widget/a/a$1;-><init>(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/RecyclerView$t;IIFFFFILandroid/support/v7/widget/RecyclerView$t;)V

    .line 643
    iget-object v0, v11, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/a$a;

    iget-object v1, v11, Landroid/support/v7/widget/a/a;->n:Landroid/support/v7/widget/RecyclerView;

    sub-float v2, v17, v19

    sub-float v3, v18, v20

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/support/v7/widget/a/a$a;->getAnimationDuration(Landroid/support/v7/widget/RecyclerView;IFF)J

    move-result-wide v0

    .line 645
    invoke-virtual {v14, v0, v1}, Landroid/support/v7/widget/a/a$b;->a(J)V

    .line 646
    iget-object v0, v11, Landroid/support/v7/widget/a/a;->m:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    invoke-virtual {v14}, Landroid/support/v7/widget/a/a$b;->a()V

    const/4 v9, 0x1

    goto :goto_3

    :cond_6
    move-object v0, v8

    move/from16 v21, v10

    .line 650
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$t;->itemView:Landroid/view/View;

    invoke-virtual {v11, v1}, Landroid/support/v7/widget/a/a;->c(Landroid/view/View;)V

    .line 651
    iget-object v1, v11, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/a$a;

    iget-object v2, v11, Landroid/support/v7/widget/a/a;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/a/a$a;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$t;)V

    const/4 v9, 0x0

    :goto_3
    const/4 v0, 0x0

    .line 653
    iput-object v0, v11, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/RecyclerView$t;

    goto :goto_4

    :cond_7
    move/from16 v21, v10

    const/4 v9, 0x0

    :goto_4
    if-eqz v12, :cond_8

    .line 656
    iget-object v0, v11, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/a$a;

    iget-object v1, v11, Landroid/support/v7/widget/a/a;->n:Landroid/support/v7/widget/RecyclerView;

    .line 657
    invoke-virtual {v0, v1, v12}, Landroid/support/v7/widget/a/a$a;->getAbsoluteMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v0

    and-int v0, v0, v16

    iget v1, v11, Landroid/support/v7/widget/a/a;->k:I

    mul-int/lit8 v1, v1, 0x8

    shr-int/2addr v0, v1

    iput v0, v11, Landroid/support/v7/widget/a/a;->l:I

    .line 659
    iget-object v0, v12, Landroid/support/v7/widget/RecyclerView$t;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, v11, Landroid/support/v7/widget/a/a;->g:F

    .line 660
    iget-object v0, v12, Landroid/support/v7/widget/RecyclerView$t;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, v11, Landroid/support/v7/widget/a/a;->h:F

    .line 661
    iput-object v12, v11, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/RecyclerView$t;

    const/4 v0, 0x2

    if-ne v13, v0, :cond_8

    .line 664
    iget-object v0, v11, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/RecyclerView$t;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$t;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    .line 667
    :goto_5
    iget-object v0, v11, Landroid/support/v7/widget/a/a;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 669
    iget-object v2, v11, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/RecyclerView$t;

    if-eqz v2, :cond_9

    const/4 v1, 0x1

    :cond_9
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_a
    if-nez v9, :cond_b

    .line 672
    iget-object v0, v11, Landroid/support/v7/widget/a/a;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$g;->M()V

    .line 674
    :cond_b
    iget-object v0, v11, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/a$a;

    iget-object v1, v11, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/RecyclerView$t;

    iget v2, v11, Landroid/support/v7/widget/a/a;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/a/a$a;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$t;I)V

    .line 675
    iget-object v0, v11, Landroid/support/v7/widget/a/a;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method a(Landroid/support/v7/widget/a/a$b;I)V
    .locals 2

    .line 680
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->n:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/a/a$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v7/widget/a/a$2;-><init>(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/a/a$b;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method a()Z
    .locals 4

    .line 702
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 704
    iget-object v3, p0, Landroid/support/v7/widget/a/a;->m:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/a/a$b;

    iget-boolean v3, v3, Landroid/support/v7/widget/a/a$b;->o:Z

    if-nez v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method b()V
    .locals 1

    .line 912
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->o:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 915
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->o:Landroid/view/VelocityTracker;

    return-void
.end method

.method public b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 9

    const/4 p3, -0x1

    .line 540
    iput p3, p0, Landroid/support/v7/widget/a/a;->q:I

    .line 542
    iget-object p3, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/RecyclerView$t;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 543
    iget-object p3, p0, Landroid/support/v7/widget/a/a;->r:[F

    invoke-direct {p0, p3}, Landroid/support/v7/widget/a/a;->a([F)V

    .line 544
    iget-object p3, p0, Landroid/support/v7/widget/a/a;->r:[F

    const/4 v0, 0x0

    aget v0, p3, v0

    .line 545
    iget-object p3, p0, Landroid/support/v7/widget/a/a;->r:[F

    const/4 v1, 0x1

    aget p3, p3, v1

    move v8, p3

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, v0

    move v8, v7

    .line 547
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/a$a;

    iget-object v4, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/RecyclerView$t;

    iget-object v5, p0, Landroid/support/v7/widget/a/a;->m:Ljava/util/List;

    iget v6, p0, Landroid/support/v7/widget/a/a;->k:I

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v8}, Landroid/support/v7/widget/a/a$a;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$t;Ljava/util/List;IFF)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .line 871
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/a/a;->c(Landroid/view/View;)V

    .line 872
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$t;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 876
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/RecyclerView$t;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/RecyclerView$t;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 877
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/RecyclerView$t;I)V

    goto :goto_0

    .line 879
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/RecyclerView$t;Z)I

    .line 880
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->a:Ljava/util/List;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$t;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 881
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->j:Landroid/support/v7/widget/a/a$a;

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/a/a$a;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$t;)V

    :cond_2
    :goto_0
    return-void
.end method

.method c(Landroid/view/View;)V
    .locals 1

    .line 1289
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 1290
    iput-object p1, p0, Landroid/support/v7/widget/a/a;->p:Landroid/view/View;

    .line 1292
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->s:Landroid/support/v7/widget/RecyclerView$d;

    if-eqz v0, :cond_0

    .line 1293
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->n:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setChildDrawingOrderCallback(Landroid/support/v7/widget/RecyclerView$d;)V

    :cond_0
    return-void
.end method
