.class Lcom/phicomm/speaker/presenter/yanry/a/h$2;
.super Lcom/phicomm/speaker/e/c/b;
.source "SingerMusicPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/a/h;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/e/c/b<",
        "Ljava/util/List<",
        "Lcom/unisound/lib/music/bean/SingerBean$SingerInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/yanry/a/h;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a/h;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/h$2;->a:Lcom/phicomm/speaker/presenter/yanry/a/h;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a/h$2;->a(ILjava/util/List;)V

    return-void
.end method

.method public a(ILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/SingerBean$SingerInfo;",
            ">;)V"
        }
    .end annotation

    .line 78
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/h$2;->a:Lcom/phicomm/speaker/presenter/yanry/a/h;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/a/h;->a(Lcom/phicomm/speaker/presenter/yanry/a/h;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/16 p1, 0x8

    .line 79
    new-array v0, p1, [I

    fill-array-data v0, :array_0

    .line 80
    new-array v1, p1, [I

    fill-array-data v1, :array_1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_0

    .line 81
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 82
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/unisound/lib/music/bean/SingerBean$SingerInfo;

    .line 83
    iget-object v5, p0, Lcom/phicomm/speaker/presenter/yanry/a/h$2;->a:Lcom/phicomm/speaker/presenter/yanry/a/h;

    invoke-static {v5}, Lcom/phicomm/speaker/presenter/yanry/a/h;->d(Lcom/phicomm/speaker/presenter/yanry/a/h;)Landroid/view/View;

    move-result-object v5

    aget v6, v0, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 84
    iget-object v6, p0, Lcom/phicomm/speaker/presenter/yanry/a/h$2;->a:Lcom/phicomm/speaker/presenter/yanry/a/h;

    invoke-static {v6}, Lcom/phicomm/speaker/presenter/yanry/a/h;->a(Lcom/phicomm/speaker/presenter/yanry/a/h;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/phicomm/speaker/manager/imageloader/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v6

    .line 85
    invoke-virtual {v4}, Lcom/unisound/lib/music/bean/SingerBean$SingerInfo;->getAvatar()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v6

    sget-object v7, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESULT:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 86
    invoke-virtual {v6, v7}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/c;

    move-result-object v6

    const/4 v7, 0x1

    .line 87
    invoke-virtual {v6, v7}, Lcom/bumptech/glide/c;->a(Z)Lcom/bumptech/glide/c;

    move-result-object v6

    const v8, 0x7f0800d4

    .line 88
    invoke-virtual {v6, v8}, Lcom/bumptech/glide/c;->a(I)Lcom/bumptech/glide/c;

    move-result-object v6

    new-array v7, v7, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v8, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;

    iget-object v9, p0, Lcom/phicomm/speaker/presenter/yanry/a/h$2;->a:Lcom/phicomm/speaker/presenter/yanry/a/h;

    .line 89
    invoke-static {v9}, Lcom/phicomm/speaker/presenter/yanry/a/h;->a(Lcom/phicomm/speaker/presenter/yanry/a/h;)Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v8, v7, v2

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/c;->a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/c;

    move-result-object v6

    .line 90
    invoke-virtual {v6, v5}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    .line 91
    iget-object v6, p0, Lcom/phicomm/speaker/presenter/yanry/a/h$2;->a:Lcom/phicomm/speaker/presenter/yanry/a/h;

    invoke-static {v6}, Lcom/phicomm/speaker/presenter/yanry/a/h;->d(Lcom/phicomm/speaker/presenter/yanry/a/h;)Landroid/view/View;

    move-result-object v6

    aget v7, v1, v3

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 92
    invoke-virtual {v4}, Lcom/unisound/lib/music/bean/SingerBean$SingerInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    new-instance v7, Lcom/phicomm/speaker/presenter/yanry/a/j;

    invoke-direct {v7, p0, v4}, Lcom/phicomm/speaker/presenter/yanry/a/j;-><init>(Lcom/phicomm/speaker/presenter/yanry/a/h$2;Lcom/unisound/lib/music/bean/SingerBean$SingerInfo;)V

    .line 95
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x7f090122
        0x7f090123
        0x7f090124
        0x7f090125
        0x7f090126
        0x7f090127
        0x7f090128
        0x7f090129
    .end array-data

    :array_1
    .array-data 4
        0x7f0902da
        0x7f0902db
        0x7f0902dc
        0x7f0902dd
        0x7f0902de
        0x7f0902df
        0x7f0902e0
        0x7f0902e1
    .end array-data
.end method

.method final synthetic a(Lcom/unisound/lib/music/bean/SingerBean$SingerInfo;Landroid/view/View;)V
    .locals 0

    .line 94
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/h$2;->a:Lcom/phicomm/speaker/presenter/yanry/a/h;

    invoke-virtual {p2, p1}, Lcom/phicomm/speaker/presenter/yanry/a/h;->a(Lcom/unisound/lib/music/bean/SingerBean$SingerInfo;)V

    return-void
.end method
