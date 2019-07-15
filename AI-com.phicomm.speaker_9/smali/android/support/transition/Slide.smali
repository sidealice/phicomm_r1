.class public Landroid/support/transition/Slide;
.super Landroid/support/transition/Visibility;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/Slide$c;,
        Landroid/support/transition/Slide$b;,
        Landroid/support/transition/Slide$a;,
        Landroid/support/transition/Slide$GravityFlag;
    }
.end annotation


# static fields
.field private static final g:Landroid/animation/TimeInterpolator;

.field private static final h:Landroid/animation/TimeInterpolator;

.field private static final j:Landroid/support/transition/Slide$a;

.field private static final k:Landroid/support/transition/Slide$a;

.field private static final l:Landroid/support/transition/Slide$a;

.field private static final m:Landroid/support/transition/Slide$a;

.field private static final n:Landroid/support/transition/Slide$a;

.field private static final o:Landroid/support/transition/Slide$a;


# instance fields
.field private i:Landroid/support/transition/Slide$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/transition/Slide;->g:Landroid/animation/TimeInterpolator;

    .line 54
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/transition/Slide;->h:Landroid/animation/TimeInterpolator;

    .line 91
    new-instance v0, Landroid/support/transition/Slide$1;

    invoke-direct {v0}, Landroid/support/transition/Slide$1;-><init>()V

    sput-object v0, Landroid/support/transition/Slide;->j:Landroid/support/transition/Slide$a;

    .line 98
    new-instance v0, Landroid/support/transition/Slide$2;

    invoke-direct {v0}, Landroid/support/transition/Slide$2;-><init>()V

    sput-object v0, Landroid/support/transition/Slide;->k:Landroid/support/transition/Slide$a;

    .line 113
    new-instance v0, Landroid/support/transition/Slide$3;

    invoke-direct {v0}, Landroid/support/transition/Slide$3;-><init>()V

    sput-object v0, Landroid/support/transition/Slide;->l:Landroid/support/transition/Slide$a;

    .line 120
    new-instance v0, Landroid/support/transition/Slide$4;

    invoke-direct {v0}, Landroid/support/transition/Slide$4;-><init>()V

    sput-object v0, Landroid/support/transition/Slide;->m:Landroid/support/transition/Slide$a;

    .line 127
    new-instance v0, Landroid/support/transition/Slide$5;

    invoke-direct {v0}, Landroid/support/transition/Slide$5;-><init>()V

    sput-object v0, Landroid/support/transition/Slide;->n:Landroid/support/transition/Slide$a;

    .line 142
    new-instance v0, Landroid/support/transition/Slide$6;

    invoke-direct {v0}, Landroid/support/transition/Slide$6;-><init>()V

    sput-object v0, Landroid/support/transition/Slide;->o:Landroid/support/transition/Slide$a;

    return-void
.end method

.method private d(Landroid/support/transition/z;)V
    .locals 2

    .line 175
    iget-object v0, p1, Landroid/support/transition/z;->b:Landroid/view/View;

    const/4 v1, 0x2

    .line 176
    new-array v1, v1, [I

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 178
    iget-object p1, p1, Landroid/support/transition/z;->a:Ljava/util/Map;

    const-string v0, "android:slide:screenPosition"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/z;Landroid/support/transition/z;)Landroid/animation/Animator;
    .locals 9

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 249
    :cond_0
    iget-object p3, p4, Landroid/support/transition/z;->a:Ljava/util/Map;

    const-string v0, "android:slide:screenPosition"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    .line 250
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v6

    .line 251
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v7

    .line 252
    iget-object v0, p0, Landroid/support/transition/Slide;->i:Landroid/support/transition/Slide$a;

    invoke-interface {v0, p1, p2}, Landroid/support/transition/Slide$a;->a(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v4

    .line 253
    iget-object v0, p0, Landroid/support/transition/Slide;->i:Landroid/support/transition/Slide$a;

    invoke-interface {v0, p1, p2}, Landroid/support/transition/Slide$a;->b(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v5

    const/4 p1, 0x0

    .line 254
    aget v2, p3, p1

    const/4 p1, 0x1

    aget v3, p3, p1

    sget-object v8, Landroid/support/transition/Slide;->g:Landroid/animation/TimeInterpolator;

    move-object v0, p2

    move-object v1, p4

    .line 255
    invoke-static/range {v0 .. v8}, Landroid/support/transition/ab;->a(Landroid/view/View;Landroid/support/transition/z;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/support/transition/z;)V
    .locals 0
    .param p1    # Landroid/support/transition/z;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 183
    invoke-super {p0, p1}, Landroid/support/transition/Visibility;->a(Landroid/support/transition/z;)V

    .line 184
    invoke-direct {p0, p1}, Landroid/support/transition/Slide;->d(Landroid/support/transition/z;)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/z;Landroid/support/transition/z;)Landroid/animation/Animator;
    .locals 9

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 265
    :cond_0
    iget-object p4, p3, Landroid/support/transition/z;->a:Ljava/util/Map;

    const-string v0, "android:slide:screenPosition"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [I

    .line 266
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    .line 267
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    .line 268
    iget-object v0, p0, Landroid/support/transition/Slide;->i:Landroid/support/transition/Slide$a;

    invoke-interface {v0, p1, p2}, Landroid/support/transition/Slide$a;->a(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v6

    .line 269
    iget-object v0, p0, Landroid/support/transition/Slide;->i:Landroid/support/transition/Slide$a;

    invoke-interface {v0, p1, p2}, Landroid/support/transition/Slide$a;->b(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v7

    const/4 p1, 0x0

    .line 270
    aget v2, p4, p1

    const/4 p1, 0x1

    aget v3, p4, p1

    sget-object v8, Landroid/support/transition/Slide;->h:Landroid/animation/TimeInterpolator;

    move-object v0, p2

    move-object v1, p3

    .line 271
    invoke-static/range {v0 .. v8}, Landroid/support/transition/ab;->a(Landroid/view/View;Landroid/support/transition/z;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/support/transition/z;)V
    .locals 0
    .param p1    # Landroid/support/transition/z;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 189
    invoke-super {p0, p1}, Landroid/support/transition/Visibility;->b(Landroid/support/transition/z;)V

    .line 190
    invoke-direct {p0, p1}, Landroid/support/transition/Slide;->d(Landroid/support/transition/z;)V

    return-void
.end method
