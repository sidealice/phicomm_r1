.class public Lcom/phicomm/speaker/adapter/b/i;
.super Lcom/phicomm/speaker/adapter/b/a;
.source "SpeakerFmItemView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/adapter/b/a<",
        "Lcom/phicomm/speaker/adapter/a/g;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/b/a;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0b00a5

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0900e6

    .line 40
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/i;->c:Landroid/widget/ImageView;

    const v2, 0x7f0900e7

    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/i;->d:Landroid/widget/ImageView;

    const v2, 0x7f090264

    .line 42
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/i;->e:Landroid/widget/TextView;

    const v2, 0x7f090265

    .line 43
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/i;->f:Landroid/widget/TextView;

    const v2, 0x7f09026c

    .line 44
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/i;->b:Landroid/widget/TextView;

    const v2, 0x7f090161

    .line 45
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/i;->g:Landroid/view/View;

    const v2, 0x7f090178

    .line 46
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/i;->h:Landroid/view/View;

    const v2, 0x7f090175

    .line 47
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/i;->i:Landroid/view/View;

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/phicomm/speaker/manager/imageloader/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v2

    const v3, 0x7f0800a8

    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/h;->a(Ljava/lang/Integer;)Lcom/bumptech/glide/d;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 50
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/c;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v4, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;

    .line 51
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/c;->a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/c;

    move-result-object p1

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/b/i;->c:Landroid/widget/ImageView;

    .line 52
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    return-object v0
.end method

.method public a(Lcom/phicomm/speaker/adapter/a/g;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/i;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/a/g;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/a/g;->b()Lnluparser/scheme/AudioResult$Music;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/b/i;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lnluparser/scheme/AudioResult$Music;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/i;->d:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/a/g;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/i;->b:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/adapter/b/i;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method public synthetic b(Lcom/phicomm/speaker/adapter/a/a/a;)V
    .locals 0

    .line 21
    check-cast p1, Lcom/phicomm/speaker/adapter/a/g;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/adapter/b/i;->a(Lcom/phicomm/speaker/adapter/a/g;)V

    return-void
.end method

.method public c()Landroid/view/View;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/i;->g:Landroid/view/View;

    return-object v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/i;->h:Landroid/view/View;

    return-object v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/i;->i:Landroid/view/View;

    return-object v0
.end method
