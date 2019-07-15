.class public Lcom/phicomm/speaker/adapter/b/m;
.super Lcom/phicomm/speaker/adapter/b/a;
.source "UserChatItemView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/adapter/b/a<",
        "Lcom/phicomm/speaker/adapter/a/k;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/b/a;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0b00ab

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0900e9

    .line 34
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/m;->c:Landroid/widget/ImageView;

    const v2, 0x7f090270

    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/m;->d:Landroid/widget/TextView;

    const v2, 0x7f090271

    .line 36
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/m;->b:Landroid/widget/TextView;

    const v2, 0x7f090178

    .line 37
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/m;->e:Landroid/view/View;

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/phicomm/speaker/manager/imageloader/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v2

    const v3, 0x7f0800d4

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/h;->a(Ljava/lang/Integer;)Lcom/bumptech/glide/d;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v4, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/d;->a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/c;

    move-result-object p1

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/b/m;->c:Landroid/widget/ImageView;

    .line 41
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    return-object v0
.end method

.method public a(Lcom/phicomm/speaker/adapter/a/k;)V
    .locals 5

    .line 53
    sget-object v0, Lcom/phicomm/speaker/adapter/a/k;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/manager/imageloader/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    sget-object v1, Lcom/phicomm/speaker/adapter/a/k;->a:Ljava/lang/String;

    .line 55
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    const/4 v2, 0x0

    new-instance v3, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;

    iget-object v4, p0, Lcom/phicomm/speaker/adapter/b/m;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v3, v1, v2

    .line 56
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d;->a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/c;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/b/m;->c:Landroid/widget/ImageView;

    .line 57
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/m;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/a/k;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/m;->b:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/adapter/b/m;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method public synthetic b(Lcom/phicomm/speaker/adapter/a/a/a;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/phicomm/speaker/adapter/a/k;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/adapter/b/m;->a(Lcom/phicomm/speaker/adapter/a/k;)V

    return-void
.end method

.method public c()Landroid/view/View;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/m;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/m;->e:Landroid/view/View;

    return-object v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/m;->e:Landroid/view/View;

    return-object v0
.end method
