.class public Lcom/phicomm/speaker/views/player/LyricsView;
.super Lcom/phicomm/speaker/views/MyScrollView;
.source "LyricsView.java"


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Landroid/view/View$OnClickListener;

.field private c:Lcom/phicomm/speaker/adapter/h;

.field private d:Lcom/phicomm/speaker/adapter/g;

.field private e:I

.field private f:Z

.field private g:I

.field private h:Z

.field private i:Landroid/view/GestureDetector;

.field private j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 72
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/MyScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/phicomm/speaker/views/player/LyricsView;->f:Z

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/phicomm/speaker/views/player/LyricsView;->g:I

    .line 63
    new-instance v1, Lcom/phicomm/speaker/views/player/LyricsView$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/views/player/LyricsView$1;-><init>(Lcom/phicomm/speaker/views/player/LyricsView;)V

    iput-object v1, p0, Lcom/phicomm/speaker/views/player/LyricsView;->j:Ljava/lang/Runnable;

    .line 73
    new-instance v1, Lcom/phicomm/speaker/views/player/LyricsView$2;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/views/player/LyricsView$2;-><init>(Lcom/phicomm/speaker/views/player/LyricsView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/phicomm/speaker/views/player/LyricsView;->a:Landroid/support/v7/widget/RecyclerView;

    .line 81
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/views/player/LyricsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v1, p0, Lcom/phicomm/speaker/views/player/LyricsView;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/phicomm/speaker/views/player/LyricsView$3;

    invoke-direct {v2, p0, p1}, Lcom/phicomm/speaker/views/player/LyricsView$3;-><init>(Lcom/phicomm/speaker/views/player/LyricsView;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$g;)V

    const/high16 v1, 0x41a00000    # 20.0f

    .line 88
    invoke-static {p1, v1}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result v1

    .line 89
    invoke-virtual {p0, v1, v0, v1, v0}, Lcom/phicomm/speaker/views/player/LyricsView;->setPadding(IIII)V

    .line 90
    iget-object v1, p0, Lcom/phicomm/speaker/views/player/LyricsView;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/views/player/LyricsView;->addView(Landroid/view/View;)V

    .line 92
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/player/LyricsView;->setVerticalScrollBarEnabled(Z)V

    const/4 v0, 0x2

    .line 94
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/player/LyricsView;->setOverScrollMode(I)V

    .line 95
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/phicomm/speaker/views/player/LyricsView$4;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/views/player/LyricsView$4;-><init>(Lcom/phicomm/speaker/views/player/LyricsView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/phicomm/speaker/views/player/LyricsView;->i:Landroid/view/GestureDetector;

    .line 105
    new-instance p1, Lcom/phicomm/speaker/views/player/a;

    invoke-direct {p1, p0}, Lcom/phicomm/speaker/views/player/a;-><init>(Lcom/phicomm/speaker/views/player/LyricsView;)V

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/player/LyricsView;->setScrollCompleteListener(Lcom/phicomm/speaker/views/MyScrollView$a;)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/views/player/LyricsView;)I
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/phicomm/speaker/views/player/LyricsView;->getScrollOffset()I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/views/player/LyricsView;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/phicomm/speaker/views/player/LyricsView;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/views/player/LyricsView;)Ljava/lang/Runnable;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/phicomm/speaker/views/player/LyricsView;->j:Ljava/lang/Runnable;

    return-object p0
.end method

.method private e(I)Lcom/phicomm/speaker/adapter/h;
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/LyricsView;->c:Lcom/phicomm/speaker/adapter/h;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/phicomm/speaker/adapter/h;

    iget v1, p0, Lcom/phicomm/speaker/views/player/LyricsView;->e:I

    new-instance v2, Lcom/phicomm/speaker/views/player/b;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/views/player/b;-><init>(Lcom/phicomm/speaker/views/player/LyricsView;)V

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/adapter/h;-><init>(ILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/phicomm/speaker/views/player/LyricsView;->c:Lcom/phicomm/speaker/adapter/h;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/LyricsView;->c:Lcom/phicomm/speaker/adapter/h;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/adapter/h;->a(I)V

    .line 218
    iget-object p1, p0, Lcom/phicomm/speaker/views/player/LyricsView;->c:Lcom/phicomm/speaker/adapter/h;

    return-object p1
.end method

.method private getLyricsAdapter()Lcom/phicomm/speaker/adapter/g;
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/LyricsView;->d:Lcom/phicomm/speaker/adapter/g;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcom/phicomm/speaker/adapter/g;

    iget v1, p0, Lcom/phicomm/speaker/views/player/LyricsView;->e:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/phicomm/speaker/views/player/LyricsView;->e:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/adapter/g;-><init>(II)V

    iput-object v0, p0, Lcom/phicomm/speaker/views/player/LyricsView;->d:Lcom/phicomm/speaker/adapter/g;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/LyricsView;->d:Lcom/phicomm/speaker/adapter/g;

    return-object v0
.end method

.method private getScrollOffset()I
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/LyricsView;->a:Landroid/support/v7/widget/RecyclerView;

    iget v1, p0, Lcom/phicomm/speaker/views/player/LyricsView;->g:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 200
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/player/LyricsView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method final synthetic a()V
    .locals 3

    .line 106
    iget-boolean v0, p0, Lcom/phicomm/speaker/views/player/LyricsView;->f:Z

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/LyricsView;->j:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/phicomm/speaker/views/player/LyricsView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 135
    iput p1, p0, Lcom/phicomm/speaker/views/player/LyricsView;->e:I

    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/LyricsView;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/LyricsView;->b:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/player/LyricBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 144
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lcom/phicomm/speaker/views/player/LyricsView;->g:I

    .line 148
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/LyricsView;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Lcom/phicomm/speaker/views/player/LyricsView;->getLyricsAdapter()Lcom/phicomm/speaker/adapter/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 149
    invoke-direct {p0}, Lcom/phicomm/speaker/views/player/LyricsView;->getLyricsAdapter()Lcom/phicomm/speaker/adapter/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/adapter/g;->a(Ljava/util/List;)V

    goto :goto_1

    .line 145
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/player/LyricsView;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/views/player/LyricsView;->e(I)Lcom/phicomm/speaker/adapter/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    :goto_1
    return-void
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    .line 160
    invoke-direct {p0}, Lcom/phicomm/speaker/views/player/LyricsView;->getLyricsAdapter()Lcom/phicomm/speaker/adapter/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/adapter/g;->b(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(I)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/LyricsView;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/player/LyricsView;->e(I)Lcom/phicomm/speaker/adapter/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    return-void
.end method

.method public d(I)V
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 178
    invoke-direct {p0}, Lcom/phicomm/speaker/views/player/LyricsView;->getLyricsAdapter()Lcom/phicomm/speaker/adapter/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/adapter/g;->a()I

    move-result v1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 182
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/views/player/LyricsView;->setCanBackPositionAfterScroll(Z)V

    add-int/2addr p1, v1

    .line 183
    iput p1, p0, Lcom/phicomm/speaker/views/player/LyricsView;->g:I

    .line 184
    invoke-direct {p0}, Lcom/phicomm/speaker/views/player/LyricsView;->getLyricsAdapter()Lcom/phicomm/speaker/adapter/g;

    move-result-object p1

    iget v1, p0, Lcom/phicomm/speaker/views/player/LyricsView;->g:I

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/adapter/g;->a(I)V

    .line 185
    iget-boolean p1, p0, Lcom/phicomm/speaker/views/player/LyricsView;->h:Z

    if-nez p1, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/phicomm/speaker/views/player/LyricsView;->getScrollOffset()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/phicomm/speaker/views/player/LyricsView;->smoothScrollTo(II)V

    :cond_1
    return-void

    .line 179
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/player/LyricsView;->setCanBackPositionAfterScroll(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/phicomm/speaker/views/player/LyricsView;->f:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/LyricsView;->i:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 117
    :cond_0
    invoke-super {p0, p1}, Lcom/phicomm/speaker/views/MyScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCanBackPositionAfterScroll(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/phicomm/speaker/views/player/LyricsView;->f:Z

    return-void
.end method

.method public setOnClickLyricLoading(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/phicomm/speaker/views/player/LyricsView;->b:Landroid/view/View$OnClickListener;

    return-void
.end method
