.class final Lorg/xutils/image/ImageLoader$1;
.super Lorg/xutils/cache/LruCache;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/image/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xutils/cache/LruCache",
        "<",
        "Lorg/xutils/image/MemCacheKey;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private deepClear:Z


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lorg/xutils/cache/LruCache;-><init>(I)V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xutils/image/ImageLoader$1;->deepClear:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p2, Lorg/xutils/image/MemCacheKey;

    check-cast p3, Landroid/graphics/drawable/Drawable;

    check-cast p4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/xutils/image/ImageLoader$1;->entryRemoved(ZLorg/xutils/image/MemCacheKey;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected entryRemoved(ZLorg/xutils/image/MemCacheKey;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "evicted"    # Z
    .param p2, "key"    # Lorg/xutils/image/MemCacheKey;
    .param p3, "oldValue"    # Landroid/graphics/drawable/Drawable;
    .param p4, "newValue"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xutils/cache/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/xutils/image/ImageLoader$1;->deepClear:Z

    if-eqz v0, :cond_0

    instance-of v0, p3, Lorg/xutils/image/ReusableDrawable;

    if-eqz v0, :cond_0

    .line 91
    check-cast p3, Lorg/xutils/image/ReusableDrawable;

    .end local p3    # "oldValue":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lorg/xutils/image/ReusableDrawable;->setMemCacheKey(Lorg/xutils/image/MemCacheKey;)V

    .line 93
    :cond_0
    return-void
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 64
    check-cast p1, Lorg/xutils/image/MemCacheKey;

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lorg/xutils/image/ImageLoader$1;->sizeOf(Lorg/xutils/image/MemCacheKey;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Lorg/xutils/image/MemCacheKey;Landroid/graphics/drawable/Drawable;)I
    .locals 2
    .param p1, "key"    # Lorg/xutils/image/MemCacheKey;
    .param p2, "value"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 69
    instance-of v1, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 70
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2    # "value":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 75
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return v1

    .line 71
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    goto :goto_0

    .line 72
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p2    # "value":Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v1, p2, Lorg/xutils/image/GifDrawable;

    if-eqz v1, :cond_2

    .line 73
    check-cast p2, Lorg/xutils/image/GifDrawable;

    .end local p2    # "value":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Lorg/xutils/image/GifDrawable;->getByteCount()I

    move-result v1

    goto :goto_0

    .line 75
    .restart local p2    # "value":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/xutils/cache/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    goto :goto_0
.end method

.method public trimToSize(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    .line 80
    if-gez p1, :cond_0

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xutils/image/ImageLoader$1;->deepClear:Z

    .line 83
    :cond_0
    invoke-super {p0, p1}, Lorg/xutils/cache/LruCache;->trimToSize(I)V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xutils/image/ImageLoader$1;->deepClear:Z

    .line 85
    return-void
.end method
