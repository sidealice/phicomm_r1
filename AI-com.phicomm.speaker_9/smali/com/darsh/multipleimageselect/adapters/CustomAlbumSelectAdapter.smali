.class public Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;
.super Lcom/darsh/multipleimageselect/adapters/CustomGenericAdapter;
.source "CustomAlbumSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/darsh/multipleimageselect/adapters/CustomGenericAdapter<",
        "Lcom/darsh/multipleimageselect/models/Album;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/darsh/multipleimageselect/models/Album;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/darsh/multipleimageselect/adapters/CustomGenericAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 28
    iget-object p2, p0, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/darsh/multipleimageselect/R$layout;->grid_view_item_album_select:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 30
    new-instance p3, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter$ViewHolder;

    invoke-direct {p3, v0}, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter$ViewHolder;-><init>(Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter$1;)V

    .line 31
    sget v0, Lcom/darsh/multipleimageselect/R$id;->image_view_album_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 32
    sget v0, Lcom/darsh/multipleimageselect/R$id;->text_view_album_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 34
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter$ViewHolder;

    .line 40
    :goto_0
    iget-object v0, p3, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;->size:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 41
    iget-object v0, p3, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;->size:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 43
    iget-object v0, p3, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/darsh/multipleimageselect/models/Album;

    iget-object v1, v1, Lcom/darsh/multipleimageselect/models/Album;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    iget-object v1, p0, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter;->arrayList:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/darsh/multipleimageselect/models/Album;

    iget-object p1, p1, Lcom/darsh/multipleimageselect/models/Album;->cover:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object p1

    sget v0, Lcom/darsh/multipleimageselect/R$drawable;->image_placeholder:I

    .line 46
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/d;->a(I)Lcom/bumptech/glide/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/c;->a()Lcom/bumptech/glide/c;

    move-result-object p1

    iget-object p3, p3, Lcom/darsh/multipleimageselect/adapters/CustomAlbumSelectAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    return-object p2
.end method
