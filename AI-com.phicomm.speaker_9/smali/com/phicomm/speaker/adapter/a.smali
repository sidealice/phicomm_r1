.class public Lcom/phicomm/speaker/adapter/a;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "FavoriteListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/adapter/a$b;,
        Lcom/phicomm/speaker/adapter/a$a;,
        Lcom/phicomm/speaker/adapter/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a<",
        "Lcom/phicomm/speaker/adapter/a$c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/bean/AudioCurrentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:[Z

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Landroid/support/v7/widget/RecyclerView;

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:Lcom/unisound/lib/music/bean/MusicList;

.field private s:Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Lcom/phicomm/speaker/adapter/a$a;

.field private x:Lcom/phicomm/speaker/adapter/a$b;


# direct methods
.method public constructor <init>(ZLandroid/support/v7/widget/RecyclerView;ZI)V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/phicomm/speaker/adapter/a;->g:I

    .line 37
    iput v0, p0, Lcom/phicomm/speaker/adapter/a;->h:I

    .line 72
    iput-boolean p1, p0, Lcom/phicomm/speaker/adapter/a;->d:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 73
    :goto_0
    iput v0, p0, Lcom/phicomm/speaker/adapter/a;->e:I

    .line 74
    iput-object p2, p0, Lcom/phicomm/speaker/adapter/a;->m:Landroid/support/v7/widget/RecyclerView;

    .line 75
    iput-boolean p3, p0, Lcom/phicomm/speaker/adapter/a;->n:Z

    const p3, 0x3f158106    # 0.584f

    .line 76
    invoke-static {p3, p4}, Lcom/phicomm/speaker/f/f;->a(FI)I

    move-result p3

    iput p3, p0, Lcom/phicomm/speaker/adapter/a;->o:I

    if-eqz p1, :cond_1

    .line 77
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x42700000    # 60.0f

    :goto_1
    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result p1

    sub-int p1, p4, p1

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41f00000    # 30.0f

    goto :goto_1

    :goto_2
    iput p1, p0, Lcom/phicomm/speaker/adapter/a;->p:I

    const p1, 0x3e4ccccd    # 0.2f

    .line 78
    invoke-static {p1, p4}, Lcom/phicomm/speaker/f/f;->a(FI)I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/adapter/a;->q:I

    return-void
.end method

.method private a(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    .line 468
    iget v0, p0, Lcom/phicomm/speaker/adapter/a;->f:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/phicomm/speaker/adapter/a;->f:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Lcom/phicomm/speaker/adapter/a;->f:I

    .line 469
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->x:Lcom/phicomm/speaker/adapter/a$b;

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->x:Lcom/phicomm/speaker/adapter/a$b;

    iget v1, p0, Lcom/phicomm/speaker/adapter/a;->f:I

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/adapter/a$b;->a(I)V

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->c:[Z

    aput-boolean p2, v0, p1

    .line 473
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/adapter/a;->notifyItemChanged(I)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/adapter/a;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/a;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/adapter/a;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/phicomm/speaker/adapter/a;->n:Z

    return p0
.end method

.method static synthetic b(Lcom/phicomm/speaker/adapter/a;)Lcom/phicomm/speaker/adapter/a$a;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/phicomm/speaker/adapter/a;->w:Lcom/phicomm/speaker/adapter/a$a;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/adapter/a;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/phicomm/speaker/adapter/a;->q:I

    return p0
.end method

.method private c(I)V
    .locals 1

    .line 477
    iget-boolean v0, p0, Lcom/phicomm/speaker/adapter/a;->d:Z

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->c:[Z

    aget-boolean v0, v0, p1

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/adapter/a;->a(IZ)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/phicomm/speaker/adapter/a;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/phicomm/speaker/adapter/a;->p:I

    return p0
.end method

.method static synthetic e(Lcom/phicomm/speaker/adapter/a;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/phicomm/speaker/adapter/a;->o:I

    return p0
.end method

.method private l()V
    .locals 3

    const/4 v0, -0x1

    .line 370
    iput v0, p0, Lcom/phicomm/speaker/adapter/a;->g:I

    .line 371
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 372
    :goto_0
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/lib/music/bean/MusicList;

    iput-object v1, p0, Lcom/phicomm/speaker/adapter/a;->r:Lcom/unisound/lib/music/bean/MusicList;

    .line 374
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a;->r:Lcom/unisound/lib/music/bean/MusicList;

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a;->r:Lcom/unisound/lib/music/bean/MusicList;

    invoke-virtual {v1}, Lcom/unisound/lib/music/bean/MusicList;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/adapter/a;->t:Ljava/lang/String;

    .line 376
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a;->r:Lcom/unisound/lib/music/bean/MusicList;

    invoke-virtual {v1}, Lcom/unisound/lib/music/bean/MusicList;->getArtist()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/adapter/a;->u:Ljava/lang/String;

    .line 377
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a;->r:Lcom/unisound/lib/music/bean/MusicList;

    invoke-virtual {v1}, Lcom/unisound/lib/music/bean/MusicList;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a;->r:Lcom/unisound/lib/music/bean/MusicList;

    .line 378
    invoke-virtual {v2}, Lcom/unisound/lib/music/bean/MusicList;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    iput v0, p0, Lcom/phicomm/speaker/adapter/a;->g:I

    .line 380
    invoke-direct {p0}, Lcom/phicomm/speaker/adapter/a;->n()V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private m()V
    .locals 3

    const/4 v0, -0x1

    .line 389
    iput v0, p0, Lcom/phicomm/speaker/adapter/a;->h:I

    .line 390
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 391
    :goto_0
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 392
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    iput-object v1, p0, Lcom/phicomm/speaker/adapter/a;->s:Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    .line 393
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a;->s:Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a;->s:Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    invoke-virtual {v1}, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a;->s:Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    .line 395
    invoke-virtual {v2}, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    iput v0, p0, Lcom/phicomm/speaker/adapter/a;->h:I

    .line 397
    invoke-direct {p0}, Lcom/phicomm/speaker/adapter/a;->o()V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private n()V
    .locals 4

    .line 447
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 448
    iput-object v0, p0, Lcom/phicomm/speaker/adapter/a;->k:Ljava/lang/String;

    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->m:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$g;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 452
    iget v1, p0, Lcom/phicomm/speaker/adapter/a;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/phicomm/speaker/adapter/a;->g:I

    sub-int/2addr v1, v3

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(II)V

    return-void
.end method

.method private o()V
    .locals 4

    .line 459
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 460
    iput-object v0, p0, Lcom/phicomm/speaker/adapter/a;->l:Ljava/lang/String;

    return-void

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->m:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$g;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 464
    iget v1, p0, Lcom/phicomm/speaker/adapter/a;->h:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/phicomm/speaker/adapter/a;->h:I

    sub-int/2addr v1, v3

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/phicomm/speaker/adapter/a$c;
    .locals 2

    .line 484
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b00e3

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 485
    new-instance p2, Lcom/phicomm/speaker/adapter/a$1;

    invoke-direct {p2, p0}, Lcom/phicomm/speaker/adapter/a$1;-><init>(Lcom/phicomm/speaker/adapter/a;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    new-instance p2, Lcom/phicomm/speaker/adapter/a$c;

    invoke-direct {p2, p0, p1}, Lcom/phicomm/speaker/adapter/a$c;-><init>(Lcom/phicomm/speaker/adapter/a;Landroid/view/View;)V

    return-object p2
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/lib/music/bean/MusicList;

    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p1}, Lcom/unisound/lib/music/bean/MusicList;->getId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/phicomm/speaker/adapter/a$a;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/a;->w:Lcom/phicomm/speaker/adapter/a$a;

    return-void
.end method

.method public a(Lcom/phicomm/speaker/adapter/a$b;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/a;->x:Lcom/phicomm/speaker/adapter/a$b;

    return-void
.end method

.method public a(Lcom/phicomm/speaker/adapter/a$c;I)V
    .locals 2

    .line 511
    iget-object v0, p1, Lcom/phicomm/speaker/adapter/a$c;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-string v0, ""

    .line 512
    iput-object v0, p0, Lcom/phicomm/speaker/adapter/a;->t:Ljava/lang/String;

    const-string v0, ""

    .line 513
    iput-object v0, p0, Lcom/phicomm/speaker/adapter/a;->u:Ljava/lang/String;

    const/4 v0, 0x0

    .line 514
    iput-boolean v0, p0, Lcom/phicomm/speaker/adapter/a;->v:Z

    .line 515
    iget-boolean v0, p0, Lcom/phicomm/speaker/adapter/a;->n:Z

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/music/bean/MusicList;

    iput-object v0, p0, Lcom/phicomm/speaker/adapter/a;->r:Lcom/unisound/lib/music/bean/MusicList;

    .line 518
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->r:Lcom/unisound/lib/music/bean/MusicList;

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->r:Lcom/unisound/lib/music/bean/MusicList;

    invoke-virtual {v0}, Lcom/unisound/lib/music/bean/MusicList;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/adapter/a;->t:Ljava/lang/String;

    .line 520
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->r:Lcom/unisound/lib/music/bean/MusicList;

    invoke-virtual {v0}, Lcom/unisound/lib/music/bean/MusicList;->getArtist()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/adapter/a;->u:Ljava/lang/String;

    goto :goto_0

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    iput-object v0, p0, Lcom/phicomm/speaker/adapter/a;->s:Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    .line 526
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->s:Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->s:Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    invoke-virtual {v0}, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/adapter/a;->t:Ljava/lang/String;

    .line 531
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/phicomm/speaker/adapter/a;->d:Z

    if-nez v0, :cond_4

    .line 532
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/phicomm/speaker/adapter/a;->n:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/phicomm/speaker/adapter/a;->g:I

    if-eq v0, p2, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/phicomm/speaker/adapter/a;->n:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/phicomm/speaker/adapter/a;->h:I

    if-ne v0, p2, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 534
    iput-boolean v0, p0, Lcom/phicomm/speaker/adapter/a;->v:Z

    .line 537
    :cond_4
    iget-object v0, p1, Lcom/phicomm/speaker/adapter/a$c;->b:Landroid/widget/ImageView;

    iget v1, p0, Lcom/phicomm/speaker/adapter/a;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 538
    iget-object v0, p1, Lcom/phicomm/speaker/adapter/a$c;->a:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/phicomm/speaker/adapter/a;->v:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 539
    iget-object v0, p1, Lcom/phicomm/speaker/adapter/a$c;->c:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/phicomm/speaker/adapter/a;->v:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 540
    iget-object v0, p1, Lcom/phicomm/speaker/adapter/a$c;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v0, p1, Lcom/phicomm/speaker/adapter/a$c;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-boolean v0, p0, Lcom/phicomm/speaker/adapter/a;->d:Z

    if-eqz v0, :cond_5

    .line 543
    iget-object p1, p1, Lcom/phicomm/speaker/adapter/a$c;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->c:[Z

    aget-boolean p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_5
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->i:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 275
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    return-void

    .line 278
    :cond_1
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/a;->i:Ljava/lang/String;

    .line 279
    invoke-direct {p0}, Lcom/phicomm/speaker/adapter/a;->l()V

    .line 280
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/a;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 87
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 88
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->a:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/lib/music/bean/MusicList;

    if-eqz v1, :cond_5

    .line 91
    invoke-virtual {v1}, Lcom/unisound/lib/music/bean/MusicList;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unisound/lib/music/bean/MusicList;

    if-eqz v3, :cond_4

    .line 95
    invoke-virtual {v3}, Lcom/unisound/lib/music/bean/MusicList;->getId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 98
    :cond_3
    invoke-virtual {v1}, Lcom/unisound/lib/music/bean/MusicList;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/unisound/lib/music/bean/MusicList;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 99
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void

    .line 103
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/music/bean/MusicList;

    .line 104
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 106
    :cond_7
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/a;->a:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/adapter/a;->c(Ljava/util/List;)V

    :cond_8
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->c:[Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move v1, v0

    .line 308
    :goto_0
    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a;->c:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a;->c:[Z

    aput-boolean p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 311
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a;->c:[Z

    array-length v1, v1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput v1, p0, Lcom/phicomm/speaker/adapter/a;->f:I

    .line 312
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a;->x:Lcom/phicomm/speaker/adapter/a$b;

    if-eqz v1, :cond_3

    .line 313
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a;->x:Lcom/phicomm/speaker/adapter/a$b;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/phicomm/speaker/adapter/a;->c:[Z

    array-length v0, p1

    :cond_2
    invoke-interface {v1, v0}, Lcom/phicomm/speaker/adapter/a$b;->a(I)V

    .line 315
    :cond_3
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/a;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    if-eqz p1, :cond_0

    .line 260
    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->getId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/bean/AudioCurrentInfo;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->j:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 293
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->j:Ljava/lang/String;

    if-nez v0, :cond_1

    return-void

    .line 296
    :cond_1
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/a;->j:Ljava/lang/String;

    .line 297
    invoke-direct {p0}, Lcom/phicomm/speaker/adapter/a;->m()V

    .line 298
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/a;->notifyDataSetChanged()V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/bean/AudioCurrentInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 117
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 118
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->b:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    if-eqz v1, :cond_5

    .line 121
    invoke-virtual {v1}, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    if-eqz v3, :cond_4

    .line 125
    invoke-virtual {v3}, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->getId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 128
    :cond_3
    invoke-virtual {v1}, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void

    .line 133
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    .line 134
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 136
    :cond_7
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/a;->b:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/adapter/a;->d(Ljava/util/List;)V

    :cond_8
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->a:Ljava/util/List;

    .line 176
    iget v1, p0, Lcom/phicomm/speaker/adapter/a;->f:I

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 178
    :cond_0
    iget v1, p0, Lcom/phicomm/speaker/adapter/a;->f:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/phicomm/speaker/adapter/a;->f:I

    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 180
    :goto_0
    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 181
    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a;->c:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    .line 182
    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/a;->k:Ljava/lang/String;

    const/4 p1, 0x0

    .line 412
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/a;->l:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;)V"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/a;->a:Ljava/util/List;

    .line 143
    iget-boolean v0, p0, Lcom/phicomm/speaker/adapter/a;->d:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 144
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/a;->c:[Z

    :cond_0
    const/4 p1, 0x0

    .line 146
    iput p1, p0, Lcom/phicomm/speaker/adapter/a;->f:I

    .line 147
    invoke-direct {p0}, Lcom/phicomm/speaker/adapter/a;->l()V

    .line 148
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/a;->notifyDataSetChanged()V

    return-void
.end method

.method public d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/bean/AudioCurrentInfo;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->b:Ljava/util/List;

    .line 196
    iget v1, p0, Lcom/phicomm/speaker/adapter/a;->f:I

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 198
    :cond_0
    iget v1, p0, Lcom/phicomm/speaker/adapter/a;->f:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/phicomm/speaker/adapter/a;->f:I

    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 200
    :goto_0
    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 201
    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a;->c:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    .line 202
    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 421
    iput-object v0, p0, Lcom/phicomm/speaker/adapter/a;->k:Ljava/lang/String;

    .line 422
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/a;->l:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/bean/AudioCurrentInfo;",
            ">;)V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/a;->b:Ljava/util/List;

    .line 153
    iget-boolean v0, p0, Lcom/phicomm/speaker/adapter/a;->d:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 154
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/a;->c:[Z

    :cond_0
    const/4 p1, 0x0

    .line 156
    iput p1, p0, Lcom/phicomm/speaker/adapter/a;->f:I

    .line 157
    invoke-direct {p0}, Lcom/phicomm/speaker/adapter/a;->m()V

    .line 158
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/a;->notifyDataSetChanged()V

    return-void
.end method

.method public e()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;"
        }
    .end annotation

    .line 216
    iget v0, p0, Lcom/phicomm/speaker/adapter/a;->f:I

    if-gtz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->a:Ljava/util/List;

    goto :goto_1

    .line 218
    :cond_0
    iget v0, p0, Lcom/phicomm/speaker/adapter/a;->f:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/phicomm/speaker/adapter/a;->f:I

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 220
    :goto_0
    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 221
    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a;->c:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_1

    .line 222
    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/bean/AudioCurrentInfo;",
            ">;"
        }
    .end annotation

    .line 236
    iget v0, p0, Lcom/phicomm/speaker/adapter/a;->f:I

    if-gtz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->b:Ljava/util/List;

    goto :goto_1

    .line 238
    :cond_0
    iget v0, p0, Lcom/phicomm/speaker/adapter/a;->f:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/phicomm/speaker/adapter/a;->f:I

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 240
    :goto_0
    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 241
    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a;->c:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_1

    .line 242
    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public g()I
    .locals 1

    .line 320
    iget v0, p0, Lcom/phicomm/speaker/adapter/a;->f:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 549
    iget-boolean v0, p0, Lcom/phicomm/speaker/adapter/a;->n:Z

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public h()[Ljava/lang/String;
    .locals 5

    .line 330
    iget v0, p0, Lcom/phicomm/speaker/adapter/a;->f:I

    if-lez v0, :cond_1

    .line 331
    iget v0, p0, Lcom/phicomm/speaker/adapter/a;->f:I

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    .line 334
    :goto_0
    iget-object v3, p0, Lcom/phicomm/speaker/adapter/a;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 335
    iget-object v3, p0, Lcom/phicomm/speaker/adapter/a;->c:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_0

    .line 336
    iget-object v3, p0, Lcom/phicomm/speaker/adapter/a;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unisound/lib/music/bean/MusicList;

    if-eqz v3, :cond_0

    add-int/lit8 v4, v2, 0x1

    .line 338
    invoke-virtual {v3}, Lcom/unisound/lib/music/bean/MusicList;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    move v2, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public i()[Ljava/lang/String;
    .locals 5

    .line 353
    iget v0, p0, Lcom/phicomm/speaker/adapter/a;->f:I

    if-lez v0, :cond_1

    .line 354
    iget v0, p0, Lcom/phicomm/speaker/adapter/a;->f:I

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    .line 357
    :goto_0
    iget-object v3, p0, Lcom/phicomm/speaker/adapter/a;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 358
    iget-object v3, p0, Lcom/phicomm/speaker/adapter/a;->c:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_0

    .line 359
    iget-object v3, p0, Lcom/phicomm/speaker/adapter/a;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    if-eqz v3, :cond_0

    add-int/lit8 v4, v2, 0x1

    .line 361
    invoke-virtual {v3}, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    move v2, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public j()I
    .locals 1

    .line 431
    iget v0, p0, Lcom/phicomm/speaker/adapter/a;->g:I

    return v0
.end method

.method public k()I
    .locals 1

    .line 440
    iget v0, p0, Lcom/phicomm/speaker/adapter/a;->h:I

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$t;I)V
    .locals 0

    .line 28
    check-cast p1, Lcom/phicomm/speaker/adapter/a$c;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/adapter/a;->a(Lcom/phicomm/speaker/adapter/a$c;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$t;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/adapter/a;->a(Landroid/view/ViewGroup;I)Lcom/phicomm/speaker/adapter/a$c;

    move-result-object p1

    return-object p1
.end method
