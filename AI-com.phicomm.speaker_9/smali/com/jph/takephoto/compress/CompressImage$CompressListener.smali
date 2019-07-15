.class public interface abstract Lcom/jph/takephoto/compress/CompressImage$CompressListener;
.super Ljava/lang/Object;
.source "CompressImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jph/takephoto/compress/CompressImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CompressListener"
.end annotation


# virtual methods
.method public abstract onCompressFailed(Ljava/util/ArrayList;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/jph/takephoto/model/TImage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onCompressSuccess(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/jph/takephoto/model/TImage;",
            ">;)V"
        }
    .end annotation
.end method
