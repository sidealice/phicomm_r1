.class public final Lorg/xutils/image/AsyncDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AsyncDrawable.java"


# instance fields
.field private baseDrawable:Landroid/graphics/drawable/Drawable;

.field private final imageLoaderReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/xutils/image/ImageLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/xutils/image/ImageLoader;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "imageLoader"    # Lorg/xutils/image/ImageLoader;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 25
    if-nez p1, :cond_0

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "imageLoader may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    iput-object p2, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    .line 29
    :goto_0
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/xutils/image/AsyncDrawable;

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/xutils/image/AsyncDrawable;

    iget-object v0, v0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/xutils/image/AsyncDrawable;->imageLoaderReference:Ljava/lang/ref/WeakReference;

    .line 33
    return-void
.end method


# virtual methods
.method public clearColorFilter()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 146
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 52
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 215
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 216
    invoke-virtual {p0}, Lorg/xutils/image/AsyncDrawable;->getImageLoader()Lorg/xutils/image/ImageLoader;

    move-result-object v0

    .line 217
    .local v0, "imageLoader":Lorg/xutils/image/ImageLoader;
    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0}, Lorg/xutils/image/ImageLoader;->cancel()V

    .line 220
    :cond_0
    return-void
.end method

.method public getBaseDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    goto :goto_0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getImageLoader()Lorg/xutils/image/ImageLoader;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->imageLoaderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/image/ImageLoader;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 200
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()[I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    goto :goto_0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    goto :goto_0
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 118
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "what"    # Ljava/lang/Runnable;
    .param p2, "when"    # J

    .prologue
    .line 122
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 125
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 59
    :cond_0
    return-void
.end method

.method public setBaseDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "baseDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 40
    iput-object p1, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    .line 41
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 78
    :cond_0
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 85
    :cond_0
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1
    .param p1, "configs"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 92
    :cond_0
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 136
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 139
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 66
    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 101
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 104
    :cond_0
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 111
    :cond_0
    return-void
.end method

.method public setState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .prologue
    .line 155
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 170
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 129
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/xutils/image/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 132
    :cond_0
    return-void
.end method
