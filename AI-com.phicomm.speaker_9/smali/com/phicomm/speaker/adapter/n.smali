.class public Lcom/phicomm/speaker/adapter/n;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SpeakerIconAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/adapter/n$b;,
        Lcom/phicomm/speaker/adapter/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a<",
        "Lcom/phicomm/speaker/adapter/n$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/net/resultbean/GroupPic;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/phicomm/speaker/adapter/n$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/phicomm/speaker/adapter/n$a;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/phicomm/speaker/adapter/n;->b:I

    .line 36
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/n;->a:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/phicomm/speaker/adapter/n;->d:Lcom/phicomm/speaker/adapter/n$a;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/adapter/n;)Lcom/phicomm/speaker/adapter/n$a;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/phicomm/speaker/adapter/n;->d:Lcom/phicomm/speaker/adapter/n$a;

    return-object p0
.end method

.method private a(Lcom/phicomm/speaker/adapter/n$b;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 109
    invoke-static {p1}, Lcom/phicomm/speaker/adapter/n$b;->d(Lcom/phicomm/speaker/adapter/n$b;)Landroid/widget/ImageView;

    move-result-object p2

    const v0, 0x7f0801bb

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    invoke-static {p1}, Lcom/phicomm/speaker/adapter/n$b;->d(Lcom/phicomm/speaker/adapter/n$b;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {p1}, Lcom/phicomm/speaker/adapter/n$b;->d(Lcom/phicomm/speaker/adapter/n$b;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/phicomm/speaker/adapter/n$b;
    .locals 2

    .line 56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b00ee

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 57
    new-instance p2, Lcom/phicomm/speaker/adapter/n$b;

    invoke-direct {p2, p0, p1}, Lcom/phicomm/speaker/adapter/n$b;-><init>(Lcom/phicomm/speaker/adapter/n;Landroid/view/View;)V

    return-object p2
.end method

.method public a(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/phicomm/speaker/adapter/n;->b:I

    .line 104
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/n;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/adapter/n$b;I)V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/n;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/net/resultbean/GroupPic;

    .line 64
    iget v1, p0, Lcom/phicomm/speaker/adapter/n;->b:I

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/adapter/n;->a(Lcom/phicomm/speaker/adapter/n$b;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, v1}, Lcom/phicomm/speaker/adapter/n;->a(Lcom/phicomm/speaker/adapter/n$b;Z)V

    .line 68
    invoke-static {p1}, Lcom/phicomm/speaker/adapter/n$b;->a(Lcom/phicomm/speaker/adapter/n$b;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/phicomm/speaker/adapter/n$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/phicomm/speaker/adapter/n$1;-><init>(Lcom/phicomm/speaker/adapter/n;Lcom/phicomm/speaker/net/resultbean/GroupPic;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :goto_0
    invoke-virtual {v0}, Lcom/phicomm/speaker/net/resultbean/GroupPic;->getGroup_pics()Ljava/util/List;

    move-result-object p2

    const-string v0, ""

    if-eqz p2, :cond_2

    .line 81
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 82
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/net/resultbean/GroupPic$GroupPicType;

    const-string v2, "normal_v2"

    .line 83
    invoke-virtual {v1}, Lcom/phicomm/speaker/net/resultbean/GroupPic$GroupPicType;->getPic_type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    invoke-virtual {v1}, Lcom/phicomm/speaker/net/resultbean/GroupPic$GroupPicType;->getPic_url()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 88
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v1, 0x4

    if-nez p2, :cond_3

    .line 89
    iget-object p2, p0, Lcom/phicomm/speaker/adapter/n;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/phicomm/speaker/manager/imageloader/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object p2

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/c;

    move-result-object p2

    .line 90
    invoke-static {p1}, Lcom/phicomm/speaker/adapter/n$b;->b(Lcom/phicomm/speaker/adapter/n$b;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    goto :goto_2

    .line 92
    :cond_3
    invoke-static {p1}, Lcom/phicomm/speaker/adapter/n$b;->b(Lcom/phicomm/speaker/adapter/n$b;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    :goto_2
    invoke-static {p1}, Lcom/phicomm/speaker/adapter/n$b;->c(Lcom/phicomm/speaker/adapter/n$b;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/net/resultbean/GroupPic;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/n;->c:Ljava/util/List;

    const/4 p1, 0x0

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/n;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/n;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/net/resultbean/GroupPic;

    invoke-virtual {v0}, Lcom/phicomm/speaker/net/resultbean/GroupPic;->getPic_group_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iput p1, p0, Lcom/phicomm/speaker/adapter/n;->b:I

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 51
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/n;->notifyDataSetChanged()V

    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/n;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/n;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$t;I)V
    .locals 0

    .line 24
    check-cast p1, Lcom/phicomm/speaker/adapter/n$b;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/adapter/n;->a(Lcom/phicomm/speaker/adapter/n$b;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$t;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/adapter/n;->a(Landroid/view/ViewGroup;I)Lcom/phicomm/speaker/adapter/n$b;

    move-result-object p1

    return-object p1
.end method
