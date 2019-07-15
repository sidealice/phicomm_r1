.class public abstract Lcom/phicomm/speaker/presenter/yanry/a/a;
.super Lcom/phicomm/speaker/model/common/a/d;
.source "FmAlbumPresenter.java"

# interfaces
.implements Lcom/phicomm/speaker/views/refresh/RefreshLayout$b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/model/common/a/d<",
        "Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;",
        ">;",
        "Lcom/phicomm/speaker/views/refresh/RefreshLayout$b;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:Lcom/phicomm/speaker/views/widget/RequestLayout;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/phicomm/speaker/e/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/audio/bean/AudioSecondList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/views/widget/RequestLayout;Lcom/phicomm/speaker/views/refresh/RefreshLayout;Landroid/support/v7/widget/RecyclerView;Ljava/lang/String;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/phicomm/speaker/model/common/a/d;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/a;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    .line 40
    iput-object p4, p0, Lcom/phicomm/speaker/presenter/yanry/a/a;->b:Ljava/lang/String;

    .line 41
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/phicomm/speaker/presenter/yanry/a/a;->d:Ljava/util/List;

    const/4 p4, 0x0

    .line 42
    invoke-virtual {p2, p4}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setCanPullDownRefresh(Z)V

    const/4 p4, 0x1

    .line 43
    invoke-virtual {p2, p4}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setCanPullUpRefresh(Z)V

    .line 44
    invoke-virtual {p2, p0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setPullUpRefreshListener(Lcom/phicomm/speaker/views/refresh/RefreshLayout$b;)V

    .line 45
    new-instance p4, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 46
    invoke-virtual {p3, p0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 47
    new-instance p4, Lcom/phicomm/speaker/presenter/yanry/a/a$1;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/phicomm/speaker/presenter/yanry/a/a$1;-><init>(Lcom/phicomm/speaker/presenter/yanry/a/a;Lcom/phicomm/speaker/views/widget/RequestLayout;Lcom/phicomm/speaker/views/refresh/RefreshLayout;Landroid/support/v7/widget/RecyclerView;)V

    iput-object p4, p0, Lcom/phicomm/speaker/presenter/yanry/a/a;->e:Lcom/phicomm/speaker/e/c/b;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/a/a;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/a/a;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/yanry/a/a;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/phicomm/speaker/presenter/yanry/a/a;->c:I

    return p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/yanry/a/a;)I
    .locals 1

    .line 29
    iget v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/a;->c:I

    return v0
.end method

.method private c()V
    .locals 6

    .line 99
    invoke-static {}, Lcom/phicomm/speaker/e/a;->a()Lcom/phicomm/speaker/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/a;->b:Ljava/lang/String;

    const-string v2, "1"

    iget v3, p0, Lcom/phicomm/speaker/presenter/yanry/a/a;->c:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "50"

    iget-object v5, p0, Lcom/phicomm/speaker/presenter/yanry/a/a;->e:Lcom/phicomm/speaker/e/c/b;

    invoke-virtual/range {v0 .. v5}, Lcom/phicomm/speaker/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method


# virtual methods
.method protected a(I)I
    .locals 0

    const p1, 0x7f0b00ad

    return p1
.end method

.method protected a(Lcom/phicomm/speaker/model/common/a/f;Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;)Landroid/view/View$OnClickListener;
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/a;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/manager/imageloader/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    .line 120
    invoke-virtual {p2}, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->getCover_url_middle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESULT:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 121
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/c;

    move-result-object v0

    const/4 v1, 0x1

    .line 122
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->a(Z)Lcom/bumptech/glide/c;

    move-result-object v0

    const v1, 0x7f08005f

    .line 123
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->a(I)Lcom/bumptech/glide/c;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->b(I)Lcom/bumptech/glide/c;

    move-result-object v0

    const v1, 0x7f0900f0

    .line 125
    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/model/common/a/f;->c(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    const v0, 0x7f0902fe

    .line 126
    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/common/a/f;->b(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->getAlbum_title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0902f8

    .line 127
    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/common/a/f;->b(I)Landroid/widget/TextView;

    move-result-object p1

    .line 128
    invoke-virtual {p2}, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->getAlbum_intro()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 129
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 131
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    invoke-virtual {p2}, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->getAlbum_intro()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_0
    new-instance p1, Lcom/phicomm/speaker/presenter/yanry/a/b;

    invoke-direct {p1, p0, p2}, Lcom/phicomm/speaker/presenter/yanry/a/b;-><init>(Lcom/phicomm/speaker/presenter/yanry/a/a;Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;)V

    return-object p1
.end method

.method protected bridge synthetic a(Lcom/phicomm/speaker/model/common/a/f;Ljava/lang/Object;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 29
    check-cast p2, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a/a;->a(Lcom/phicomm/speaker/model/common/a/f;Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1
.end method

.method protected a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/a;->d:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/yanry/a/a;->c()V

    return-void
.end method

.method protected abstract a(Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;)V
.end method

.method final synthetic a(Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;Landroid/view/View;)V
    .locals 0

    .line 134
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/yanry/a/a;->a(Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;)V

    return-void
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 92
    iput v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/a;->c:I

    .line 93
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/a;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->a()V

    .line 95
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/yanry/a/a;->c()V

    return-void
.end method

.method public run()V
    .locals 0

    .line 139
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/yanry/a/a;->b()V

    return-void
.end method
