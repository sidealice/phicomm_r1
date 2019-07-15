.class public Lcom/phicomm/speaker/fragment/FavoriteListFragment;
.super Lcom/phicomm/speaker/base/a;
.source "FavoriteListFragment.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/g;
.implements Lcom/phicomm/speaker/presenter/b/h;


# instance fields
.field private c:Lcom/phicomm/speaker/views/LoadingPlayingDialog;

.field private d:Lcom/phicomm/speaker/adapter/a;

.field private e:Lcom/phicomm/speaker/adapter/e;

.field private f:Lcom/phicomm/speaker/adapter/k;

.field private g:Lcom/phicomm/speaker/presenter/j;

.field private h:Lcom/phicomm/speaker/presenter/g;

.field private i:Z

.field ivManage:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090109
    .end annotation
.end field

.field private j:Z

.field private k:I

.field private l:Ljava/lang/String;

.field llManage:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090169
    .end annotation
.end field

.field rvFavoriteList:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901ef
    .end annotation
.end field

.field tvHint:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090292
    .end annotation
.end field

.field tvManage:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902a0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/phicomm/speaker/base/a;-><init>()V

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/fragment/FavoriteListFragment;)Lcom/phicomm/speaker/adapter/a;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->d:Lcom/phicomm/speaker/adapter/a;

    return-object p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/fragment/FavoriteListFragment;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->b(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->tvHint:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 308
    :pswitch_0
    iget-object p2, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->tvHint:Landroid/widget/TextView;

    const v2, 0x7f0f01c2

    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 305
    :pswitch_1
    iget-object p2, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->tvHint:Landroid/widget/TextView;

    const v2, 0x7f0f01c1

    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Z)V
    .locals 1

    .line 152
    iget v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->k:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 157
    :pswitch_0
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->g:Lcom/phicomm/speaker/presenter/j;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/j;->g(Z)V

    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->g:Lcom/phicomm/speaker/presenter/j;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/j;->f(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/phicomm/speaker/fragment/FavoriteListFragment;)Lcom/phicomm/speaker/adapter/k;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->j()Lcom/phicomm/speaker/adapter/k;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .line 291
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->h:Lcom/phicomm/speaker/presenter/g;

    iget v1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->k:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v2, v2, v1}, Lcom/phicomm/speaker/presenter/g;->a(Ljava/lang/String;ZZZ)V

    :cond_1
    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->llManage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 323
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->ivManage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 324
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->tvManage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method static synthetic c(Lcom/phicomm/speaker/fragment/FavoriteListFragment;)Lcom/phicomm/speaker/adapter/a;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->h()Lcom/phicomm/speaker/adapter/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/phicomm/speaker/fragment/FavoriteListFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->l()V

    return-void
.end method

.method static synthetic e(Lcom/phicomm/speaker/fragment/FavoriteListFragment;)Lcom/phicomm/speaker/adapter/e;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->i()Lcom/phicomm/speaker/adapter/e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/phicomm/speaker/fragment/FavoriteListFragment;)Lcom/phicomm/speaker/presenter/g;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->h:Lcom/phicomm/speaker/presenter/g;

    return-object p0
.end method

.method private h()Lcom/phicomm/speaker/adapter/a;
    .locals 5

    .line 92
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->d:Lcom/phicomm/speaker/adapter/a;

    if-nez v0, :cond_1

    .line 93
    new-instance v0, Lcom/phicomm/speaker/adapter/a;

    iget-object v1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->rvFavoriteList:Landroid/support/v7/widget/RecyclerView;

    iget v2, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->k:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 94
    :goto_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/phicomm/speaker/adapter/a;-><init>(ZLandroid/support/v7/widget/RecyclerView;ZI)V

    iput-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->d:Lcom/phicomm/speaker/adapter/a;

    .line 95
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->d:Lcom/phicomm/speaker/adapter/a;

    new-instance v1, Lcom/phicomm/speaker/fragment/d;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/fragment/d;-><init>(Lcom/phicomm/speaker/fragment/FavoriteListFragment;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/a;->a(Lcom/phicomm/speaker/adapter/a$a;)V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->d:Lcom/phicomm/speaker/adapter/a;

    return-object v0
.end method

.method private i()Lcom/phicomm/speaker/adapter/e;
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->e:Lcom/phicomm/speaker/adapter/e;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/phicomm/speaker/adapter/e;

    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08014a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0f0130

    .line 109
    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/adapter/e;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->e:Lcom/phicomm/speaker/adapter/e;

    .line 110
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->e:Lcom/phicomm/speaker/adapter/e;

    new-instance v1, Lcom/phicomm/speaker/fragment/e;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/fragment/e;-><init>(Lcom/phicomm/speaker/fragment/FavoriteListFragment;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/e;->a(Lcom/phicomm/speaker/adapter/e$a;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->e:Lcom/phicomm/speaker/adapter/e;

    return-object v0
.end method

.method private j()Lcom/phicomm/speaker/adapter/k;
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->f:Lcom/phicomm/speaker/adapter/k;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/phicomm/speaker/adapter/k;

    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->k:I

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/adapter/k;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->f:Lcom/phicomm/speaker/adapter/k;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->f:Lcom/phicomm/speaker/adapter/k;

    iget-object v1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/k;->a(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->f:Lcom/phicomm/speaker/adapter/k;

    return-object v0
.end method

.method private k()V
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->g:Lcom/phicomm/speaker/presenter/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->j:Z

    .line 141
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->a(Z)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    .line 241
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0b008e

    const/4 v1, 0x0

    .line 166
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .locals 0

    .line 341
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->b(I)V

    return-void
.end method

.method public a(ILandroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 1

    .line 111
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->rvFavoriteList:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    const/4 p1, 0x0

    .line 112
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->a(Z)V

    return-void
.end method

.method final synthetic a(Landroid/view/View;I)V
    .locals 0

    .line 96
    invoke-static {}, Lcom/phicomm/speaker/e/d;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 97
    iget p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->k:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->d:Lcom/phicomm/speaker/adapter/a;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/a;->j()I

    move-result p1

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->d:Lcom/phicomm/speaker/adapter/a;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/a;->k()I

    move-result p1

    if-eq p1, p2, :cond_2

    .line 98
    :goto_0
    iget p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->k:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->d:Lcom/phicomm/speaker/adapter/a;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/adapter/a;->a(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->d:Lcom/phicomm/speaker/adapter/a;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/adapter/a;->b(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 0

    .line 350
    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->g()V

    return-void
.end method

.method public c()V
    .locals 3

    const v0, 0x7f0f00a7

    .line 172
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->l:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->l:Ljava/lang/String;

    iget v1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->k:I

    invoke-direct {p0, v0, v1}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->a(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->b(Z)V

    .line 175
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->rvFavoriteList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 176
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->rvFavoriteList:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 177
    invoke-direct {p0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->h()Lcom/phicomm/speaker/adapter/a;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->d:Lcom/phicomm/speaker/adapter/a;

    .line 178
    new-instance v0, Lcom/phicomm/speaker/presenter/j;

    new-instance v1, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment$1;-><init>(Lcom/phicomm/speaker/fragment/FavoriteListFragment;)V

    invoke-direct {v0, v1, p0}, Lcom/phicomm/speaker/presenter/j;-><init>(Lcom/phicomm/speaker/presenter/b/i;Lcom/phicomm/speaker/presenter/b/g;)V

    iput-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->g:Lcom/phicomm/speaker/presenter/j;

    .line 229
    new-instance v0, Lcom/phicomm/speaker/presenter/g;

    new-instance v1, Lcom/phicomm/speaker/fragment/FavoriteListFragment$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment$2;-><init>(Lcom/phicomm/speaker/fragment/FavoriteListFragment;)V

    invoke-direct {v0, v1, p0}, Lcom/phicomm/speaker/presenter/g;-><init>(Lcom/phicomm/speaker/presenter/b/i;Lcom/phicomm/speaker/presenter/b/h;)V

    iput-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->h:Lcom/phicomm/speaker/presenter/g;

    .line 237
    invoke-direct {p0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->k()V

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->k:I

    return-void
.end method

.method clickManage()V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090169
        }
    .end annotation

    .line 329
    iget v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->k:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->d:Lcom/phicomm/speaker/adapter/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/a;->a()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->d:Lcom/phicomm/speaker/adapter/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/a;->b()Ljava/util/List;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 330
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 331
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 332
    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/phicomm/speaker/activity/FavoriteManageActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "favoriteType"

    .line 333
    iget v3, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->k:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "collectList"

    .line 334
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x2bd

    .line 335
    invoke-virtual {p0, v1, v0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->c:Lcom/phicomm/speaker/views/LoadingPlayingDialog;

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Lcom/phicomm/speaker/views/LoadingPlayingDialog;

    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/views/LoadingPlayingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->c:Lcom/phicomm/speaker/views/LoadingPlayingDialog;

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->c:Lcom/phicomm/speaker/views/LoadingPlayingDialog;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/LoadingPlayingDialog;->show()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->c:Lcom/phicomm/speaker/views/LoadingPlayingDialog;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/LoadingPlayingDialog;->dismiss()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 255
    invoke-super {p0, p1, p2, p3}, Lcom/phicomm/speaker/base/a;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 257
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->a(Z)V

    :cond_0
    const/16 v0, 0x2bd

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const-string p1, "favoriteType"

    const/4 p2, 0x0

    .line 260
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "collectMusicList"

    .line 261
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 269
    :pswitch_0
    new-instance p1, Lcom/phicomm/speaker/fragment/FavoriteListFragment$4;

    invoke-direct {p1, p0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment$4;-><init>(Lcom/phicomm/speaker/fragment/FavoriteListFragment;)V

    new-array v0, p2, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p3, p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 271
    iget-object p3, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->d:Lcom/phicomm/speaker/adapter/a;

    invoke-virtual {p3, p1}, Lcom/phicomm/speaker/adapter/a;->b(Ljava/util/List;)V

    goto :goto_0

    .line 264
    :pswitch_1
    new-instance p1, Lcom/phicomm/speaker/fragment/FavoriteListFragment$3;

    invoke-direct {p1, p0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment$3;-><init>(Lcom/phicomm/speaker/fragment/FavoriteListFragment;)V

    new-array v0, p2, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p3, p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 266
    iget-object p3, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->d:Lcom/phicomm/speaker/adapter/a;

    invoke-virtual {p3, p1}, Lcom/phicomm/speaker/adapter/a;->a(Ljava/util/List;)V

    .line 275
    :goto_0
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->d:Lcom/phicomm/speaker/adapter/a;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/a;->getItemCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 276
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->rvFavoriteList:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->j()Lcom/phicomm/speaker/adapter/k;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 277
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->b(Z)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAudioCollectEvent(Lcom/phicomm/speaker/e/b/a;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 421
    iget v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 422
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->rvFavoriteList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    instance-of v0, v0, Lcom/phicomm/speaker/adapter/e;

    if-nez v0, :cond_0

    .line 424
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/a;->a()Lcom/unisound/lib/audio/bean/AudioInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioInfo;->getItemId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 425
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->g:Lcom/phicomm/speaker/presenter/j;

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/presenter/j;->g(Z)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 284
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 285
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->g:Lcom/phicomm/speaker/presenter/j;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/j;->c()V

    .line 286
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->h:Lcom/phicomm/speaker/presenter/g;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/g;->b()V

    .line 287
    invoke-super {p0}, Lcom/phicomm/speaker/base/a;->onDestroy()V

    return-void
.end method

.method public onDeviceOnlineStateEvent(Lcom/phicomm/speaker/e/b/f;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 384
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/f;->a()Z

    move-result p1

    if-nez p1, :cond_0

    .line 386
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->d:Lcom/phicomm/speaker/adapter/a;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onMusicCollectEvent(Lcom/phicomm/speaker/e/b/g;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 410
    iget v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->k:I

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->rvFavoriteList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    instance-of v0, v0, Lcom/phicomm/speaker/adapter/e;

    if-nez v0, :cond_0

    .line 413
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/g;->a()Lcom/unisound/lib/msgcenter/bean/MusicInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->getItemId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 414
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->g:Lcom/phicomm/speaker/presenter/j;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/j;->f(Z)V

    :cond_0
    return-void
.end method

.method public onNetworkStatusChangeEvent(Lcom/phicomm/speaker/a/y;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 432
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 433
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->a(Z)V

    :cond_0
    return-void
.end method

.method public onPlayingInfoStickyEvent(Lcom/phicomm/speaker/e/b/l;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 392
    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->b()V

    .line 393
    iget v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->k:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 394
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/l;->c()Lcom/unisound/lib/msgcenter/bean/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->d:Lcom/phicomm/speaker/adapter/a;

    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/l;->c()Lcom/unisound/lib/msgcenter/bean/MusicInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->getItemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/adapter/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->d:Lcom/phicomm/speaker/adapter/a;

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/adapter/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_1
    iget v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->k:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 400
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/l;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/l;->b()Lcom/unisound/lib/audio/bean/AudioInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->d:Lcom/phicomm/speaker/adapter/a;

    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/l;->b()Lcom/unisound/lib/audio/bean/AudioInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioInfo;->getItemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/adapter/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :cond_2
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->d:Lcom/phicomm/speaker/adapter/a;

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/adapter/a;->b(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onSpeakerStopPlayEvent(Lcom/phicomm/speaker/e/b/m;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 373
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/m;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 374
    iget p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->k:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 375
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->d:Lcom/phicomm/speaker/adapter/a;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/adapter/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :cond_0
    iget p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->k:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 377
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->d:Lcom/phicomm/speaker/adapter/a;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/adapter/a;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 248
    invoke-super {p0, p1}, Lcom/phicomm/speaker/base/a;->setUserVisibleHint(Z)V

    .line 249
    iput-boolean p1, p0, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->i:Z

    .line 250
    invoke-direct {p0}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->k()V

    return-void
.end method
