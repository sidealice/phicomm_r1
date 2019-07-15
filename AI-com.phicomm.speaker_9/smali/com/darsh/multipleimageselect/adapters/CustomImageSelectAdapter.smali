.class public Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;
.super Lcom/darsh/multipleimageselect/adapters/CustomGenericAdapter;
.source "CustomImageSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/darsh/multipleimageselect/adapters/CustomGenericAdapter<",
        "Lcom/darsh/multipleimageselect/models/Image;",
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
            "Lcom/darsh/multipleimageselect/models/Image;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/darsh/multipleimageselect/adapters/CustomGenericAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 28
    iget-object p2, p0, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/darsh/multipleimageselect/R$layout;->grid_view_item_image_select:I

    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 30
    new-instance v0, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter$ViewHolder;

    invoke-direct {v0, p3}, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter$ViewHolder;-><init>(Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter$1;)V

    .line 31
    sget v1, Lcom/darsh/multipleimageselect/R$id;->image_view_image_select:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 32
    sget v1, Lcom/darsh/multipleimageselect/R$id;->view_alpha:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter$ViewHolder;->view:Landroid/view/View;

    .line 34
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter$ViewHolder;

    .line 40
    :goto_0
    iget-object v1, v0, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;->size:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 41
    iget-object v1, v0, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;->size:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 43
    iget-object v1, v0, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;->size:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 44
    iget-object v1, v0, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;->size:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 46
    iget-object v1, p0, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/darsh/multipleimageselect/models/Image;

    iget-boolean v1, v1, Lcom/darsh/multipleimageselect/models/Image;->isSelected:Z

    if-eqz v1, :cond_1

    .line 47
    iget-object p3, v0, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter$ViewHolder;->view:Landroid/view/View;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 48
    move-object p3, p2

    check-cast p3, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/darsh/multipleimageselect/R$drawable;->ic_done_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 51
    :cond_1
    iget-object v1, v0, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter$ViewHolder;->view:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 52
    move-object v1, p2

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, p3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 55
    :goto_1
    iget-object p3, p0, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;->context:Landroid/content/Context;

    invoke-static {p3}, Lcom/bumptech/glide/g;->b(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p3

    iget-object v1, p0, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter;->arrayList:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/darsh/multipleimageselect/models/Image;

    iget-object p1, p1, Lcom/darsh/multipleimageselect/models/Image;->path:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object p1

    sget p3, Lcom/darsh/multipleimageselect/R$drawable;->image_placeholder:I

    .line 57
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/d;->a(I)Lcom/bumptech/glide/c;

    move-result-object p1

    iget-object p3, v0, Lcom/darsh/multipleimageselect/adapters/CustomImageSelectAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    return-object p2
.end method
