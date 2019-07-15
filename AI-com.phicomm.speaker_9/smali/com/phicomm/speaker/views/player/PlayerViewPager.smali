.class public Lcom/phicomm/speaker/views/player/PlayerViewPager;
.super Lcom/phicomm/speaker/views/MyViewPager;
.source "PlayerViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/views/player/PlayerViewPager$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/phicomm/speaker/views/player/LyricsView;

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Landroid/animation/ObjectAnimator;

.field private j:Lcom/phicomm/speaker/views/a/a;

.field private k:I

.field private l:Lcom/phicomm/speaker/activity/player/a;

.field private m:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/views/MyViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "-1"

    .line 45
    iput-object p2, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->a:Ljava/lang/String;

    .line 104
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/views/player/PlayerViewPager;)Landroid/widget/ImageView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .line 108
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->b(Landroid/content/Context;)V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->b:Ljava/util/List;

    const/4 v0, 0x0

    const v1, 0x7f0b00ed

    .line 110
    invoke-static {p1, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901eb

    .line 111
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->c:Landroid/widget/RelativeLayout;

    const v2, 0x7f0900e5

    .line 112
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->d:Landroid/widget/ImageView;

    const v2, 0x7f09029f

    .line 113
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->e:Landroid/widget/TextView;

    .line 114
    iget-object v2, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->e:Landroid/widget/TextView;

    new-instance v3, Lcom/phicomm/speaker/views/player/c;

    invoke-direct {v3, p0}, Lcom/phicomm/speaker/views/player/c;-><init>(Lcom/phicomm/speaker/views/player/PlayerViewPager;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v2, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v1, Lcom/phicomm/speaker/views/player/LyricsView;

    invoke-direct {v1, p1}, Lcom/phicomm/speaker/views/player/LyricsView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->f:Lcom/phicomm/speaker/views/player/LyricsView;

    .line 119
    iget-object p1, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->f:Lcom/phicomm/speaker/views/player/LyricsView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/views/player/LyricsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object p1, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->f:Lcom/phicomm/speaker/views/player/LyricsView;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance p1, Lcom/phicomm/speaker/views/player/PlayerViewPager$a;

    invoke-direct {p1, p0, v0}, Lcom/phicomm/speaker/views/player/PlayerViewPager$a;-><init>(Lcom/phicomm/speaker/views/player/PlayerViewPager;Lcom/phicomm/speaker/views/player/PlayerViewPager$1;)V

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 123
    invoke-direct {p0}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->f()Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->i:Landroid/animation/ObjectAnimator;

    const/4 p1, 0x0

    .line 125
    invoke-virtual {p0, p1, p0}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/views/player/PlayerViewPager;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->b:Ljava/util/List;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    const v0, 0x3f314dc0

    invoke-static {v0, p1}, Lcom/phicomm/speaker/f/f;->a(FI)I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->k:I

    .line 139
    iget p1, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->k:I

    const/16 v0, 0x96

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v0, 0x190

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->k:I

    return-void
.end method

.method private f()Landroid/animation/ObjectAnimator;
    .locals 3

    .line 420
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->d:Landroid/widget/ImageView;

    const-string v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x4e20

    .line 421
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 422
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, -0x1

    .line 423
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const/4 v1, 0x1

    .line 424
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private getDefaultCd()Lcom/phicomm/speaker/views/a/a;
    .locals 3

    .line 376
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->j:Lcom/phicomm/speaker/views/a/a;

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Lcom/phicomm/speaker/views/a/a;

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080144

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/views/a/a;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->j:Lcom/phicomm/speaker/views/a/a;

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->j:Lcom/phicomm/speaker/views/a/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->m:[J

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->a([J)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->f:Lcom/phicomm/speaker/views/player/LyricsView;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/player/LyricsView;->a(I)V

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->l:Lcom/phicomm/speaker/activity/player/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->l:Lcom/phicomm/speaker/activity/player/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/player/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->m:[J

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->a([J)V

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->l:Lcom/phicomm/speaker/activity/player/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->l:Lcom/phicomm/speaker/activity/player/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/player/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->l:Lcom/phicomm/speaker/activity/player/a;

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/activity/player/a;->a(J)V

    :cond_2
    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 115
    invoke-virtual {p0, p1, p1}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 348
    :cond_0
    iput-object p1, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->h:Ljava/lang/String;

    .line 349
    new-instance v0, Lcom/phicomm/speaker/views/player/PlayerViewPager$1;

    iget v1, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->k:I

    iget v2, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->k:I

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/phicomm/speaker/views/player/PlayerViewPager$1;-><init>(Lcom/phicomm/speaker/views/player/PlayerViewPager;IILandroid/view/View;)V

    .line 366
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/phicomm/speaker/manager/imageloader/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p2

    .line 367
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object p1

    .line 368
    invoke-virtual {p1}, Lcom/bumptech/glide/d;->h()Lcom/bumptech/glide/b;

    move-result-object p1

    .line 369
    invoke-direct {p0}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->getDefaultCd()Lcom/phicomm/speaker/views/a/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/b;->a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/a;

    move-result-object p1

    .line 370
    invoke-direct {p0}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->getDefaultCd()Lcom/phicomm/speaker/views/a/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/a;->b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/a;

    move-result-object p1

    .line 371
    invoke-virtual {p1}, Lcom/bumptech/glide/a;->b()Lcom/bumptech/glide/a;

    move-result-object p1

    .line 372
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/a;->a(Lcom/bumptech/glide/f/b/j;)Lcom/bumptech/glide/f/b/j;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/player/LyricBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 187
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 188
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/bean/player/LyricBean;

    if-eqz v1, :cond_1

    .line 189
    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/player/LyricBean;->getTime()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "-1"

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/player/LyricBean;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/player/LyricBean;->getLine_lyric()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 191
    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/player/LyricBean;->getLine_lyric()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 192
    array-length v2, v1

    if-lez v2, :cond_1

    .line 193
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 196
    new-instance v5, Lcom/phicomm/speaker/bean/player/LyricBean;

    invoke-direct {v5}, Lcom/phicomm/speaker/bean/player/LyricBean;-><init>()V

    .line 197
    invoke-virtual {v5, v4}, Lcom/phicomm/speaker/bean/player/LyricBean;->setLine_lyric(Ljava/lang/String;)V

    .line 198
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->f:Lcom/phicomm/speaker/views/player/LyricsView;

    invoke-virtual {v1, p1}, Lcom/phicomm/speaker/views/player/LyricsView;->a(Ljava/util/List;)V

    .line 201
    iget-object p1, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->f:Lcom/phicomm/speaker/views/player/LyricsView;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/player/LyricsView;->setCanBackPositionAfterScroll(Z)V

    const/4 p1, 0x0

    .line 202
    iput-object p1, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->m:[J

    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->f:Lcom/phicomm/speaker/views/player/LyricsView;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/player/LyricsView;->a(Ljava/util/List;)V

    .line 209
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->b(Ljava/util/List;)[J

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->m:[J

    return-void
.end method

.method public a([J)V
    .locals 2

    if-eqz p1, :cond_1

    .line 228
    array-length v0, p1

    if-lez v0, :cond_1

    .line 229
    iput-object p1, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->m:[J

    .line 230
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->l:Lcom/phicomm/speaker/activity/player/a;

    if-eqz v0, :cond_0

    .line 231
    const-class v0, Lcom/phicomm/speaker/model/common/b;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/model/common/b;

    iget-object v1, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->l:Lcom/phicomm/speaker/activity/player/a;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/common/b;->remove(Ljava/lang/Runnable;)Z

    .line 233
    :cond_0
    new-instance v0, Lcom/phicomm/speaker/activity/player/a;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/activity/player/a;-><init>([J)V

    iput-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->l:Lcom/phicomm/speaker/activity/player/a;

    .line 234
    const-class p1, Lcom/phicomm/speaker/model/common/b;

    invoke-static {p1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/model/common/b;

    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->l:Lcom/phicomm/speaker/activity/player/a;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/common/b;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->l:Lcom/phicomm/speaker/activity/player/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->l:Lcom/phicomm/speaker/activity/player/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/player/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->l:Lcom/phicomm/speaker/activity/player/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/player/a;->a()V

    const/4 v0, 0x0

    .line 279
    iput-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->l:Lcom/phicomm/speaker/activity/player/a;

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->f:Lcom/phicomm/speaker/views/player/LyricsView;

    invoke-virtual {v1, p1}, Lcom/phicomm/speaker/views/player/LyricsView;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(J)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->l:Lcom/phicomm/speaker/activity/player/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->l:Lcom/phicomm/speaker/activity/player/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/player/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->m:[J

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->a([J)V

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->l:Lcom/phicomm/speaker/activity/player/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->l:Lcom/phicomm/speaker/activity/player/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/player/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->l:Lcom/phicomm/speaker/activity/player/a;

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/activity/player/a;->b(J)V

    :cond_2
    return-void
.end method

.method public b(Ljava/util/List;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/player/LyricBean;",
            ">;)[J"
        }
    .end annotation

    .line 291
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 293
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 294
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phicomm/speaker/bean/player/LyricBean;

    if-eqz v2, :cond_0

    .line 295
    invoke-virtual {v2}, Lcom/phicomm/speaker/bean/player/LyricBean;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    goto :goto_1

    :cond_0
    if-lez v1, :cond_1

    add-int/lit8 v2, v1, -0x1

    aget-wide v2, v0, v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    aput-wide v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->g:J

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    return-void
.end method

.method public c(I)V
    .locals 1

    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->m:[J

    .line 219
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->f:Lcom/phicomm/speaker/views/player/LyricsView;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/player/LyricsView;->c(I)V

    return-void
.end method

.method public d()V
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->g:J

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 400
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 401
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->i:Landroid/animation/ObjectAnimator;

    iget-wide v1, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->g:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->f:Lcom/phicomm/speaker/views/player/LyricsView;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/player/LyricsView;->d(I)V

    return-void
.end method

.method public e()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 409
    iput-wide v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->g:J

    .line 410
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 411
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->b()V

    return-void
.end method

.method public getIvCd()Landroid/widget/ImageView;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getRlCd()Landroid/widget/RelativeLayout;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->c:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public setOnClickLyricLoading(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->f:Lcom/phicomm/speaker/views/player/LyricsView;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/player/LyricsView;->setOnClickLyricLoading(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTvLyricsEnabled(Z)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public transformPage(Landroid/view/View;F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v0, p2

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    neg-float p2, p2

    mul-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method
