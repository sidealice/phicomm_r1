.class public Lcom/android/volley/toolbox/NetworkImageView;
.super Landroid/widget/ImageView;
.source "NetworkImageView.java"


# instance fields
.field private mDefaultImageId:I

.field private mErrorImageId:I

.field private mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

.field private mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/volley/toolbox/NetworkImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/volley/toolbox/NetworkImageView;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mErrorImageId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/volley/toolbox/NetworkImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/volley/toolbox/NetworkImageView;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    return v0
.end method

.method private setDefaultImageOrNull()V
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    if-eqz v0, :cond_0

    .line 199
    iget v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/NetworkImageView;->setImageResource(I)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 227
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 228
    invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->invalidate()V

    .line 229
    return-void
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method loadImageIfNecessary(Z)V
    .locals 13
    .param p1, "isInLayoutPass"    # Z

    .prologue
    const/4 v12, -0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->getWidth()I

    move-result v9

    .line 115
    .local v9, "width":I
    invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->getHeight()I

    move-result v6

    .line 116
    .local v6, "height":I
    invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    .line 118
    .local v5, "scaleType":Landroid/widget/ImageView$ScaleType;
    const/4 v11, 0x0

    .local v11, "wrapWidth":Z
    const/4 v10, 0x0

    .line 119
    .local v10, "wrapHeight":Z
    invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v12, :cond_2

    move v11, v0

    .line 121
    :goto_0
    invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v12, :cond_3

    move v10, v0

    .line 126
    :cond_0
    :goto_1
    if-eqz v11, :cond_4

    if-eqz v10, :cond_4

    move v7, v0

    .line 127
    .local v7, "isFullyWrapContent":Z
    :goto_2
    if-nez v9, :cond_5

    if-nez v6, :cond_5

    if-nez v7, :cond_5

    .line 195
    :cond_1
    :goto_3
    return-void

    .end local v7    # "isFullyWrapContent":Z
    :cond_2
    move v11, v1

    .line 120
    goto :goto_0

    :cond_3
    move v10, v1

    .line 121
    goto :goto_1

    :cond_4
    move v7, v1

    .line 126
    goto :goto_2

    .line 133
    .restart local v7    # "isFullyWrapContent":Z
    :cond_5
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 134
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_6

    .line 135
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 138
    :cond_6
    invoke-direct {p0}, Lcom/android/volley/toolbox/NetworkImageView;->setDefaultImageOrNull()V

    goto :goto_3

    .line 143
    :cond_7
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 144
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 150
    invoke-direct {p0}, Lcom/android/volley/toolbox/NetworkImageView;->setDefaultImageOrNull()V

    .line 155
    :cond_8
    if-eqz v11, :cond_9

    move v3, v1

    .line 156
    .local v3, "maxWidth":I
    :goto_4
    if-eqz v10, :cond_a

    move v4, v1

    .line 160
    .local v4, "maxHeight":I
    :goto_5
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    new-instance v2, Lcom/android/volley/toolbox/NetworkImageView$1;

    invoke-direct {v2, p0, p1}, Lcom/android/volley/toolbox/NetworkImageView$1;-><init>(Lcom/android/volley/toolbox/NetworkImageView;Z)V

    invoke-virtual/range {v0 .. v5}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;IILandroid/widget/ImageView$ScaleType;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v8

    .line 194
    .local v8, "newContainer":Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    iput-object v8, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    goto :goto_3

    .end local v3    # "maxWidth":I
    .end local v4    # "maxHeight":I
    .end local v8    # "newContainer":Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    :cond_9
    move v3, v9

    .line 155
    goto :goto_4

    .restart local v3    # "maxWidth":I
    :cond_a
    move v4, v6

    .line 156
    goto :goto_5
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 218
    invoke-virtual {p0, v1}, Lcom/android/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 220
    iput-object v1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 222
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 223
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 208
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 209
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V

    .line 210
    return-void
.end method

.method public setDefaultImageResId(I)V
    .locals 0
    .param p1, "defaultImage"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    .line 99
    return-void
.end method

.method public setErrorImageResId(I)V
    .locals 0
    .param p1, "errorImage"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mErrorImageId:I

    .line 107
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageLoader"    # Lcom/android/volley/toolbox/ImageLoader;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V

    .line 81
    return-void
.end method
