.class public interface abstract Lcom/jph/takephoto/compress/CompressImageUtil$CompressListener;
.super Ljava/lang/Object;
.source "CompressImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jph/takephoto/compress/CompressImageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CompressListener"
.end annotation


# virtual methods
.method public abstract onCompressFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onCompressSuccess(Ljava/lang/String;)V
.end method
