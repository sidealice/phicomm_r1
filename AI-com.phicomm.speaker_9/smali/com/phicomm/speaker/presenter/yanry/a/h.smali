.class public abstract Lcom/phicomm/speaker/presenter/yanry/a/h;
.super Lcom/phicomm/speaker/model/common/a/d;
.source "SingerMusicPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/model/common/a/d<",
        "Lcom/unisound/lib/music/bean/MusicList;",
        ">;",
        "Ljava/lang/Runnable;"
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

.field private b:Lcom/zhy/a/a/c/a;

.field private c:Landroid/content/Context;

.field private d:Lcom/phicomm/speaker/views/widget/RequestLayout;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/phicomm/speaker/views/widget/RequestLayout;Landroid/support/v7/widget/RecyclerView;)V
    .locals 4

    .line 41
    invoke-direct {p0}, Lcom/phicomm/speaker/model/common/a/d;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/h;->c:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/h;->d:Lcom/phicomm/speaker/views/widget/RequestLayout;

    .line 44
    new-instance p2, Lcom/zhy/a/a/c/a;

    invoke-direct {p2, p0}, Lcom/zhy/a/a/c/a;-><init>(Landroid/support/v7/widget/RecyclerView$a;)V

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/h;->b:Lcom/zhy/a/a/c/a;

    .line 45
    new-instance p2, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v0, 0x2

    invoke-direct {p2, p1, v0}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 46
    new-instance p2, Lcom/phicomm/speaker/model/common/c;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/phicomm/speaker/f/a/a;->a(F)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p2, v3, v0, v1, v2}, Lcom/phicomm/speaker/model/common/c;-><init>(IIIZ)V

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$f;)V

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0098

    invoke-virtual {p2, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/h;->e:Landroid/view/View;

    .line 48
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/h;->b:Lcom/zhy/a/a/c/a;

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/h;->e:Landroid/view/View;

    invoke-virtual {p2, v0}, Lcom/zhy/a/a/c/a;->a(Landroid/view/View;)V

    .line 49
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/h;->b:Lcom/zhy/a/a/c/a;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b008b

    invoke-virtual {p1, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/zhy/a/a/c/a;->b(Landroid/view/View;)V

    .line 50
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/h;->b:Lcom/zhy/a/a/c/a;

    invoke-virtual {p3, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/a/h;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/a/h;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/a/h;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/h;->a:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/yanry/a/h;)Lcom/phicomm/speaker/views/widget/RequestLayout;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/a/h;->d:Lcom/phicomm/speaker/views/widget/RequestLayout;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/yanry/a/h;)Lcom/zhy/a/a/c/a;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/a/h;->b:Lcom/zhy/a/a/c/a;

    return-object p0
.end method

.method static synthetic d(Lcom/phicomm/speaker/presenter/yanry/a/h;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/a/h;->e:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public a(I)I
    .locals 0

    const p1, 0x7f0b00b0

    return p1
.end method

.method protected a(Lcom/phicomm/speaker/model/common/a/f;Lcom/unisound/lib/music/bean/MusicList;)Landroid/view/View$OnClickListener;
    .locals 2

    .line 120
    iget-object v0, p1, Lcom/phicomm/speaker/model/common/a/f;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/manager/imageloader/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    .line 121
    invoke-virtual {p2}, Lcom/unisound/lib/music/bean/MusicList;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESULT:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 122
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/c;

    move-result-object v0

    const/4 v1, 0x1

    .line 123
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->a(Z)Lcom/bumptech/glide/c;

    move-result-object v0

    const v1, 0x7f08005f

    .line 124
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->a(I)Lcom/bumptech/glide/c;

    move-result-object v0

    .line 125
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->b(I)Lcom/bumptech/glide/c;

    move-result-object v0

    const v1, 0x7f0900f0

    .line 126
    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/model/common/a/f;->c(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    const v0, 0x7f0902e3

    .line 127
    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/common/a/f;->b(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/unisound/lib/music/bean/MusicList;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0902d9

    .line 128
    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/common/a/f;->b(I)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/unisound/lib/music/bean/MusicList;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    new-instance p1, Lcom/phicomm/speaker/presenter/yanry/a/i;

    invoke-direct {p1, p0, p2}, Lcom/phicomm/speaker/presenter/yanry/a/i;-><init>(Lcom/phicomm/speaker/presenter/yanry/a/h;Lcom/unisound/lib/music/bean/MusicList;)V

    return-object p1
.end method

.method protected bridge synthetic a(Lcom/phicomm/speaker/model/common/a/f;Ljava/lang/Object;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 34
    check-cast p2, Lcom/unisound/lib/music/bean/MusicList;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a/h;->a(Lcom/phicomm/speaker/model/common/a/f;Lcom/unisound/lib/music/bean/MusicList;)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1
.end method

.method protected a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/h;->a:Ljava/util/List;

    return-object v0
.end method

.method protected abstract a(Lcom/unisound/lib/music/bean/MusicList;)V
.end method

.method final synthetic a(Lcom/unisound/lib/music/bean/MusicList;Landroid/view/View;)V
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/yanry/a/h;->a(Lcom/unisound/lib/music/bean/MusicList;)V

    return-void
.end method

.method protected abstract a(Lcom/unisound/lib/music/bean/SingerBean$SingerInfo;)V
.end method

.method public b(I)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/h;->d:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->a()V

    .line 55
    invoke-static {}, Lcom/phicomm/speaker/e/a;->a()Lcom/phicomm/speaker/e/a;

    move-result-object v0

    const-string v1, "50"

    new-instance v2, Lcom/phicomm/speaker/presenter/yanry/a/h$1;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/presenter/yanry/a/h$1;-><init>(Lcom/phicomm/speaker/presenter/yanry/a/h;)V

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/e/a;->c(Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    .line 75
    invoke-static {}, Lcom/phicomm/speaker/e/a;->a()Lcom/phicomm/speaker/e/a;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/a/h$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/yanry/a/h$2;-><init>(Lcom/phicomm/speaker/presenter/yanry/a/h;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/e/a;->f(Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/h;->c:Landroid/content/Context;

    .line 105
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/h;->d:Lcom/phicomm/speaker/views/widget/RequestLayout;

    .line 106
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/h;->e:Landroid/view/View;

    return-void
.end method

.method public getItemId(I)J
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/h;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/lib/music/bean/MusicList;

    invoke-virtual {p1}, Lcom/unisound/lib/music/bean/MusicList;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public run()V
    .locals 0

    .line 149
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/yanry/a/h;->b()V

    return-void
.end method
