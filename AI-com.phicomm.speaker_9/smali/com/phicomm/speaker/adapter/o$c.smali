.class public Lcom/phicomm/speaker/adapter/o$c;
.super Landroid/support/v7/widget/RecyclerView$t;
.source "SpeakerV2Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/adapter/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/adapter/o;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/adapter/o;Landroid/view/View;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/o$c;->a:Lcom/phicomm/speaker/adapter/o;

    .line 247
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$t;-><init>(Landroid/view/View;)V

    const p1, 0x7f090130

    .line 248
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/o$c;->b:Landroid/widget/ImageView;

    const p1, 0x7f09012e

    .line 249
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/o$c;->c:Landroid/widget/ImageView;

    const p1, 0x7f0902e9

    .line 250
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/o$c;->d:Landroid/widget/TextView;

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/o$c;->a:Lcom/phicomm/speaker/adapter/o;

    invoke-static {v0}, Lcom/phicomm/speaker/adapter/o;->b(Lcom/phicomm/speaker/adapter/o;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    .line 255
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/o$c;->itemView:Landroid/view/View;

    new-instance v2, Lcom/phicomm/speaker/adapter/o$c$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/phicomm/speaker/adapter/o$c$1;-><init>(Lcom/phicomm/speaker/adapter/o$c;Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/o$c;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/phicomm/speaker/adapter/o$c$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/adapter/o$c$2;-><init>(Lcom/phicomm/speaker/adapter/o$c;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_nickname()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 273
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/o$c;->d:Landroid/widget/TextView;

    const v1, 0x7f0f00a4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 275
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/o$c;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_nickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    :goto_0
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/o$c;->a:Lcom/phicomm/speaker/adapter/o;

    invoke-static {p1}, Lcom/phicomm/speaker/adapter/o;->a(Lcom/phicomm/speaker/adapter/o;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/manager/imageloader/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p1

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getPic_url_normal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/c;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/adapter/o$c;->c:Landroid/widget/ImageView;

    .line 278
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/adapter/o$c;I)V
    .locals 0

    .line 241
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/o$c;->a(I)V

    return-void
.end method
