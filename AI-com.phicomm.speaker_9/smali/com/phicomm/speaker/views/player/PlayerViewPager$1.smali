.class Lcom/phicomm/speaker/views/player/PlayerViewPager$1;
.super Lcom/bumptech/glide/f/b/g;
.source "PlayerViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/views/player/PlayerViewPager;->a(Ljava/lang/String;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/f/b/g<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/phicomm/speaker/views/player/PlayerViewPager;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/player/PlayerViewPager;IILandroid/view/View;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager$1;->b:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    iput-object p4, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager$1;->a:Landroid/view/View;

    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/f/b/g;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/f/a/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/f/a/c<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 352
    iget-object p2, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager$1;->b:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-static {p2}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->a(Lcom/phicomm/speaker/views/player/PlayerViewPager;)Landroid/widget/ImageView;

    move-result-object p2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager$1;->b:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {v1}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Lcom/phicomm/speaker/f/e;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    iget-object p2, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager$1;->b:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {p2}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 354
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager$1;->b:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 355
    iget-object v1, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager$1;->a:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager$1;->b:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {v3}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager$1;->b:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {v4}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 356
    invoke-static {p1, p2, v0}, Lcom/phicomm/speaker/f/e;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x7

    const/4 v0, 0x2

    .line 355
    invoke-static {v4, p1, p2, v0}, Lcom/phicomm/speaker/f/e;->a(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager$1;->b:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-static {v0}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->a(Lcom/phicomm/speaker/views/player/PlayerViewPager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/PlayerViewPager$1;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 363
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/f/b/g;->a(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/f/a/c;)V
    .locals 0

    .line 349
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/views/player/PlayerViewPager$1;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/f/a/c;)V

    return-void
.end method
