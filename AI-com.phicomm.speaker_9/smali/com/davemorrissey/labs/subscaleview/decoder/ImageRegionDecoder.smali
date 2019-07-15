.class public interface abstract Lcom/davemorrissey/labs/subscaleview/decoder/ImageRegionDecoder;
.super Ljava/lang/Object;
.source "ImageRegionDecoder.java"


# virtual methods
.method public abstract decodeRegion(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract init(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Point;
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isReady()Z
.end method

.method public abstract recycle()V
.end method
