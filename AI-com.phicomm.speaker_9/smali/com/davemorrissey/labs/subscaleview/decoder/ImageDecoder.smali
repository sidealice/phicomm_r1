.class public interface abstract Lcom/davemorrissey/labs/subscaleview/decoder/ImageDecoder;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# virtual methods
.method public abstract decode(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
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
